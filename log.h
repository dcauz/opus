#pragma once

#include <mutex>
#include <vector>
#include <string>
#include "opus.h"


class Log
{
public:

	Log( const char * );	// file
	Log( FILE * );			// stdout / stderr / arbitrary file

	void operator () ( int, ... );

private:

	struct Logger
	{
//		std::mutex lock_;
		void write( const std::string & );
		FILE * file_;
	};

	std::vector<up<Logger>> loggers_;
};


#define LOG( id, __VAR_ARGS__ )	theLog( id __VAR_ARGS__ );
