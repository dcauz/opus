#pragma once

#include <mutex>
#include <vector>
#include <string>
#include <atomic>
#include <thread>
#include <condition_variable>
#include "opus.h"


class Log
{
public:
	enum class Level
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
	enum class Part
	{
		YEAR      = 1,
		DAY       = 2,
		TIME      = 4,
		MSECS     = 8,
		DATE = YEAR | DAY | TIME | MSECS,
		THR_ID    = 16,
		CODE      = 32,
		LEVEL     = 64,
		TEXT      = 128,
		FILE_LOC  = 256,

		ALL = DATE | THR_ID | CODE | LEVEL | TEXT | FILE_LOC
	};

	struct Logger
	{
		struct Msg
		{
			struct timespec	ts;
			std::thread::id	tid;
			const char	* code;
			const char	* file;
			int			level;
			int			line;
			int			syserr;
			char		text[128];
		};

		Logger( FILE * fh, int filter, int parts, bool owns ):
			file_(fh), filter_(filter), parts_(parts), owns_(owns)
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
		int		parts_;
	};

	Log();
	~Log();

	void operator () ( const char *, int, int, ... );

	void addLogger( const char *, Log::Level levels = Level::ALL,
								  Log::Part parts = Part::ALL );
	void addLogger( FILE *, Log::Level levels = Level::ALL,
							Log::Part part = Part::ALL );

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

#define LOG( ... )	theLog( __FILE__, __LINE__,  __VA_ARGS__ );

#include "log_msgs.h"
