#pragma once


class Log
{
public:
	enum Out
	{
	};
	Log();

	void operator () ( int, ... );

private:
};


#define LOG( id, __VAR_ARGS__ )	theLog( id __VAR_ARGS__ );
