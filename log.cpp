
#include <cassert>
#include <iostream>
#include <sstream>
#include <time.h>
#include <stdarg.h>
#include <string.h>


#include "log.h"

Log theLog;


// The first include defines the message code enumeration
//
#include "log_msgs.h"

namespace
{

// The second include defines the messages
//
#define  DEFINE_MSGS
#include "log_msgs.h"

void writeMessages( void * vp )
{
	Log * log = reinterpret_cast<Log *>(vp);

	while( !log->stopped() )
	{
		std::vector<Log::Logger::Msg> toLog;
		{
			std::unique_lock<std::mutex> lck { log->mutex() };

			log->mcond().wait_for(lck, std::chrono::milliseconds(200) ) ;

			if( log->messages().size() )
				toLog = std::move(log->messages());
			assert( log->messages().size() == 0 );
		}
		auto i = toLog.begin();
		auto e = toLog.end();

		while( i != e )
		{
			auto li = log->loggers().begin();
			auto le = log->loggers().end();
			
			while( li != le )
			{
				li->get()->write( *i );
				++li;
			}

			++i;
		}
	}
}

}

Log::Log():stop_(false), thread_( writeMessages, this )
{
}

Log::~Log()
{
	stop_ = true;
	thread_.join();
}

void Log::operator () ( const char * file, int line, int code, ... )
{
	int syserr = errno;
	errno = 0;
	timespec ts;
	clock_gettime( CLOCK_REALTIME, & ts );

	assert( code < sizeof(logMsgs) );

	const LogMsg & msg = logMsgs[code];

	assert( code == msg.code_ );

	const char * text = msg.text_;

	va_list va;
	va_start( va, code );

	Logger::Msg lmsg;

	lmsg.file  = file;
	lmsg.line  = line;
	lmsg.code  = msg.codeName_;
	lmsg.level = msg.level_;
	lmsg.tid   = std::this_thread::get_id();
	lmsg.ts    = ts;
	lmsg.syserr= syserr;

	vsnprintf( lmsg.text, sizeof(lmsg.text)-1, text, va );

	std::unique_lock<std::mutex> lock (mutex_);
	messages_.push_back(lmsg);
}

void Log::addLogger( const char * fileName, int levelFilter )
{
	FILE * fh = fopen( fileName, "w" );
	if( fh == nullptr )
		std::cerr << "Unable to open log file " << fileName << std::endl;
	else
		loggers_.push_back(up<Logger>(new Logger( fh, levelFilter, true )));
}

void Log::addLogger( FILE * fh, int levelFilter )
{
	loggers_.push_back(up<Logger>(new Logger( fh, levelFilter, false )));
}

namespace
{
const char * level( int l )
{
	switch(l)
	{
	case Log::AUDIT:	return "AUDIT";
	case Log::FATAL:	return "FATAL";
	case Log::ERROR: 	return "ERROR";
	case Log::WARNING:	return "WARNING";
	case Log::INFO:		return "INFO";
	case Log::DEBUG:	return "DEBUG";
	case Log::TRACE:	return "TRACE";
	}

	assert(false);
	return "";
}

};

void Log::Logger::write( const Msg & m )
{
	if( m.level & filter_ )
	{
		struct tm t;
		localtime_r( &m.ts.tv_sec, &t );

		const int MAX_LOG_MSG = 512;
		char buff[MAX_LOG_MSG];

		std::ostringstream tids;

		tids << m.tid;

		if(m.syserr == 0 )
			snprintf( buff, MAX_LOG_MSG-1, "%d-%d-%d:%d.%d.%d.%ld[%s]:%s:%s:%s:%s(%d)\n",
				t.tm_year+1900, t.tm_mon+1, t.tm_mday,
				t.tm_hour, t.tm_min, t.tm_sec, m.ts.tv_nsec/1000,
				tids.str().c_str(),
				m.code,
				level(m.level),
				m.text,
				m.file,
				m.line );
		else
			snprintf( buff, MAX_LOG_MSG-1, "%d-%d-%d:%d.%d.%d.%ld[%s]:%s:%s:%s:syserr=[%s] %s(%d)\n",
				t.tm_year+1900, t.tm_mon+1, t.tm_mday,
				t.tm_hour, t.tm_min, t.tm_sec, m.ts.tv_nsec/1000,
				tids.str().c_str(),
				m.code,
				level(m.level),
				m.text,
				strerror(m.syserr),
				m.file,
				m.line );

		fputs( buff, file_ );
	}
}
