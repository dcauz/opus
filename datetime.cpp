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

bool DateType::eqCompareTo( Type * ) const
{
	TODO
	return false;
}

bool DateType::compareTo( Type * )  const
{
	TODO
	return false;
}

bool DateType::assignableTo( Type * ) const
{
	TODO
	return false;
}

bool TimeType::eqCompareTo( Type * ) const
{
	TODO
	return false;
}

bool TimeType::compareTo( Type * )  const
{
	TODO
	return false;
}

bool TimeType::assignableTo( Type * ) const
{
	TODO
	return false;
}

bool DatetimeType::eqCompareTo( Type * ) const
{
	TODO
	return false;
}

bool DatetimeType::compareTo( Type * )  const
{
	TODO
	return false;
}

bool DatetimeType::assignableTo( Type * ) const
{
	TODO
	return false;
}

bool DurationType::eqCompareTo( Type * ) const
{
	TODO
	return false;
}

bool DurationType::compareTo( Type * )  const
{
	TODO
	return false;
}

bool DurationType::assignableTo( Type * ) const
{
	TODO
	return false;
}
