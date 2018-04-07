
#include <iostream>
#include <set>
#include <cstring>

#include "log_msgs.h"
#include "log.h"
#define  DEFINE_MSGS
#include "log_msgs.h"


inline const char * level( int l )
{
	switch(static_cast<Log::Level>(l))
	{
	case Log::Level::AUDIT:		return "AUDIT";
	case Log::Level::FATAL:		return "FATAL";
	case Log::Level::ERROR:		return "ERROR";
	case Log::Level::WARNING:	return "WARNING";
	case Log::Level::INFO:		return "INFO";
	case Log::Level::DEBUG:		return "DEBUG";
	case Log::Level::TRACE:		return "TRACE";
	}

	return "<unknown>";
}


int main( )
{

	std::cout << "<html>\n";

	std::cout << "<head>\n";
	std::cout << "<style>\n";
	std::cout << ".head { background:DarkSeaGreen; }\n";
	std::cout << ".spacer { border-right-style:none; border-left-style:none;}\n";
	std::cout << "</style>\n";
	std::cout << "</head>\n";

	std::cout << "<body>" << std::endl;

	std::cout << "<h1>LLMM Log Messages</h1>" << std::endl;

	std::cout << "<h2>Log Messages Levels</h2>" << std::endl;

	std::cout << "<table cellspacing=0 border=1>" << std::endl;
	std::cout << "<tr class=head><th>Level</th><th>Description</th></tr>" << std::endl;
	std::cout << "<tr><td>AUDIT</td><td>Messages that must be output in order to meet company auditing requirements</td></tr>" << std::endl;
	std::cout << "<tr><td>FATAL</td><td>Messages that diagnose an unrecoverable failure. The process should terminate immediately after a fatal failure.</td></tr>" << std::endl;
	std::cout << "<tr><td>ERROR</td><td>Messages that diagnose an error has occurred. The process may continue with partial functionality.</td></tr>" << std::endl;
	std::cout << "<tr><td>WARNING</td><td>Messages that diagnose a possible issue with process. The diagnosed behavior should be investigated to ensure it does not affect processing.</td></tr>" << std::endl;
	std::cout << "<tr><td>INFO</td><td>These message report normal behavior. No actions are required.</td></tr>" << std::endl;
	std::cout << "<tr><td>DEBUG</td><td>These messages are issued during product debugging.</td></tr>" << std::endl;
	std::cout << "<tr><td>TRACE</td><td>These messages are issued during product debugging. Typically tracing messages provide a greater level of detail of what processing is done then debug level messages.</td></tr>" << std::endl;
	std::cout << "</table>" << std::endl;

	std::cout << "<h2>Log Messages</h2>" << std::endl;

	std::cout << "<table class=spacer cellspacing=0 border=1>\n";

	auto i = std::begin(logMsgs);
	auto e = std::end(logMsgs);

	auto cmp =  [](const LogMsg & a, const LogMsg & b ) 
				{ return strcmp( a.codeName_, b.codeName_ ) < 0; };

	std::set<LogMsg, decltype(cmp)> msgSet(cmp);

	while( i != e )
	{
		msgSet.insert( *i );

		++i;
	}

	auto oi = std::begin(msgSet);
	auto oe = std::end(msgSet);

	while( true )
	{
		const auto & m = *oi;

		std::cout << "<tr><th class=head>Code</th>";
		std::cout << "<td>" << m.codeName_ << "</td>";
		std::cout << "</tr>" << std::endl;

		std::cout << "<tr><th class=head>Level</th>";
		std::cout << "<td>" << level(m.level_) << "</td>";
		std::cout << "</tr>" << std::endl;

		std::cout << "<tr><th class=head>Text</th>";
		std::cout << "<td>" << m.text_ << "</td>";
		std::cout << "</tr>" << std::endl;

		if( m.action_ )
		{
			std::cout << "<tr><th class=head>Corrective Action</th>";
			std::cout << "<td>" << m.action_ << "</td>";
			std::cout << "</tr>" << std::endl;
		}

		++oi;

		if( oi != oe )
			std::cout << "<tr class=spacer><td class=spacer colspan=\"2\">&nbsp</td></tr>" << std::endl;
		else
			break;
	}
	std::cout << "</table>\n";

	std::cout << "</body>\n</html>" << std::endl;

	return 0;
}

