#include "datetime.h"


DateType		dateType;
TimeType		timeType;
DatetimeType	datetimeType;
DurationType	durationType;


bool Date::genCode( GenCodeContext & gcc ) const
{
TODO // genCode
	return false;
}

Type * Date::semCheck( SemCheckContext & scc ) const
{
	return &dateType;
}

bool Time::genCode( GenCodeContext & gcc ) const
{
TODO // genCode
	return false;
}

Type * Time::semCheck( SemCheckContext & scc ) const
{
	return &timeType;
}

bool Datetime::genCode( GenCodeContext & gcc ) const
{
TODO // genCode
	return false;
}

Type * Datetime::semCheck( SemCheckContext & scc ) const
{
	return &datetimeType;
}

bool Duration::genCode( GenCodeContext & gcc ) const
{
TODO // genCode
	return false;
}

Type * Duration::semCheck( SemCheckContext & scc ) const
{
	return &durationType;
}
