
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

void Log::addLogger( const char * fileName, Log::Level levelFilter, Log::Part parts )
{
	FILE * fh = fopen( fileName, "w" );
	if( fh == nullptr )
		std::cerr << "Unable to open log file " << fileName << std::endl;
	else
		loggers_.push_back(up<Logger>(new Logger( fh, (int)levelFilter, (int)parts, true )));
}

void Log::addLogger( FILE * fh, Log::Level levelFilter, Log::Part parts )
{
	loggers_.push_back(up<Logger>(new Logger( fh, (int)levelFilter, (int)parts, false )));
}

namespace
{
const char * level( int l )
{
	Log::Level lvl = static_cast<Log::Level>(l);

	switch(lvl)
	{
	case Log::Level::AUDIT:		return "AUDIT";
	case Log::Level::FATAL:		return "FATAL";
	case Log::Level::ERROR: 	return "ERROR";
	case Log::Level::WARNING:	return "WARNING";
	case Log::Level::INFO:		return "INFO";
	case Log::Level::DEBUG:		return "DEBUG";
	case Log::Level::TRACE:		return "TRACE";
	}

	assert(false);
	return "";
}

};

void Log::Logger::write( const Msg & m )
{
	if( m.level & filter_ )
	{
		const int MAX_LOG_MSG = 256;
		char buff[MAX_LOG_MSG];

		struct tm t;
		localtime_r( &m.ts.tv_sec, &t );

		if( parts_ == static_cast<int>(Part::ALL) )
		{
			std::ostringstream tids;
			tids << m.tid;

			if(m.syserr == 0 )
				snprintf( buff, MAX_LOG_MSG-1, "%d-%d-%d:%d.%d.%d.%ld[%s]:%s:%s:%s:%s(%d)\n",
					t.tm_year+1900, t.tm_mon+1, t.tm_mday,
					t.tm_hour, t.tm_min, t.tm_sec, 
					m.ts.tv_nsec/1000,
					tids.str().c_str(),
					m.code,
					level(m.level),
					m.text,
					m.file,
					m.line );
			else
				snprintf( buff, MAX_LOG_MSG-1, "%d-%d-%d:%d.%d.%d.%ld[%s]:%s:%s:%s:syserr=[%s] %s(%d)\n",
					t.tm_year+1900, t.tm_mon+1, t.tm_mday,
					t.tm_hour, t.tm_min, t.tm_sec, 
					m.ts.tv_nsec/1000,
					tids.str().c_str(),
					m.code,
					level(m.level),
					m.text,
					strerror(m.syserr),
					m.file,
					m.line );
		}
		else
		{
			int offset = 0;
			if( parts_ & static_cast<int>(Part::YEAR) )
			{
				if( parts_ & static_cast<int>(Part::DAY) )
					offset = sprintf( buff, "%d-", t.tm_year+1900 );
				else
					offset = sprintf( buff, "%d", t.tm_year+1900 );
			}
			if( parts_ & static_cast<int>(Part::DAY) )
			{
				if( ( parts_ & static_cast<int>(Part::TIME) ) || 
				    ( parts_ & static_cast<int>(Part::MSECS) ) )
					offset += sprintf( buff+offset, "%d-%d:", t.tm_mon+1, t.tm_mday );
				else
					offset += sprintf( buff+offset, "%d-%d", t.tm_mon+1, t.tm_mday );
			}
			if( parts_ & static_cast<int>(Part::TIME) )
			{
				if( parts_ & static_cast<int>(Part::MSECS) )
					offset += sprintf( buff+offset, "%d.%d.%d.", t.tm_hour, t.tm_min, t.tm_sec );
				else
					offset += sprintf( buff+offset, "%d.%d.%d", t.tm_hour, t.tm_min, t.tm_sec );
			}
			if( parts_ & static_cast<int>(Part::MSECS) )
			{
				offset += sprintf( buff+offset, "%ld", m.ts.tv_nsec/1000 );
			}

			if( parts_ & static_cast<int>(Part::THR_ID) )
			{
				std::ostringstream tids;
				tids << m.tid;

				offset += sprintf( buff+offset, "[%s]", tids.str().c_str() );
			}
			if( parts_ & static_cast<int>(Part::CODE) )
			{
				offset+= sprintf( buff+offset, ":%s", m.code );
			}
			if( parts_ & static_cast<int>(Part::LEVEL) )
			{
				offset += sprintf( buff+offset, ":%s", level(m.level) );
			}
			if( parts_ & static_cast<int>(Part::TEXT) )
			{
				if(m.syserr == 0 )
					offset += sprintf( buff+offset,	":%s", m.text );
				else
					offset += sprintf( buff+offset,	":%s:syserr=[%s]", m.text, strerror(m.syserr) );
			}
			if( parts_ & static_cast<int>(Part::FILE_LOC) )
			{
				offset += sprintf( buff+offset,	"%s(%d)", m.file, m.line );
			}
			fprintf( file_, "%s\n", buff );
		}

		fputs( buff, file_ );
	}
}
