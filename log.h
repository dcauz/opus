#pragma once

#include <mutex>
#include <vector>
#include <string>
#include <atomic>
#include <thread>
#include <condition_variable>
#include "opus.h"
#include "log_msgs.h"


class Log
{
public:
	enum Level
	{
		AUDIT   = 1,
		FATAL   = 2,
		ERROR   = 4,
		WARNING = 8,
		INFO    = 16,
		DEBUG   = 32,
		TRACE   = 64,

		ERR =  AUDIT | FATAL | ERROR | WARNING,
		OUT =  INFO | DEBUG | TRACE,
		ALL =  OUT | ERR 
	};
	enum MsgPart
	{
		DATE,
		YEAR,
		DAY,
		MSECS,
		LEVEL,
		CODE,
		FILE_LOC,
		TEXT,
		THR_ID,
	};

	struct Logger
	{
		struct Msg
		{
			struct timespec ts;
			const char * code;
			int level;
			char text[256];
			const char * file;
			int line;
			std::thread::id tid;
			int syserr;
		};

		Logger( FILE * fh, int filter, bool owns ):file_(fh), filter_(filter), owns_(owns)
		{}

		~Logger()
		{
			if(owns_)
				fclose(file_);
		}

		void write( const Msg & );

		FILE 	* file_;
		bool	owns_;
		int		filter_;
	};

	Log();
	~Log();

	void operator () ( const char *, int, int, ... );

	void addLogger( const char *, int levels = ALL );
	void addLogger( FILE *, int levels = ALL );

	std::mutex 				& mutex()	{ return mutex_; }
	std::condition_variable	& mcond()	{ return mcond_; }

	void stop() 			{ stop_ = true; }
	bool stopped() const 	{ return stop_; }

	std::vector<up<Logger>> & loggers() 	{ return loggers_; }
	std::vector<Logger::Msg> & messages()	{ return messages_; }


private:

	std::vector<up<Logger>> loggers_;
	std::vector<Logger::Msg> messages_;

	std::mutex 				mutex_;
	std::condition_variable	mcond_;
	std::atomic<bool>		stop_;
	std::thread				thread_;
};

extern Log theLog;

#define LOG( id, ... )	theLog( __FILE__, __LINE__, id,  __VA_ARGS__ );
