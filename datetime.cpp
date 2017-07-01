#include "datetime.h"


sp<DateType>		dateType;
sp<TimeType>		timeType;
sp<DatetimeType>	datetimeType;
sp<DurationType>	durationType;


bool Date::genCode( GenCodeContext & gcc ) const
{
TODO // genCode
	return false;
}

sp<Type> Date::semCheck( SemCheckContext & scc ) const
{
	return dateType;
}

bool Time::genCode( GenCodeContext & gcc ) const
{
TODO // genCode
	return false;
}

sp<Type> Time::semCheck( SemCheckContext & scc ) const
{
	return timeType;
}

bool Datetime::genCode( GenCodeContext & gcc ) const
{
TODO // genCode
	return false;
}

sp<Type> Datetime::semCheck( SemCheckContext & scc ) const
{
	return datetimeType;
}

bool Duration::genCode( GenCodeContext & gcc ) const
{
TODO // genCode
	return false;
}

sp<Type> Duration::semCheck( SemCheckContext & scc ) const
{
	return durationType;
}

bool DateType::eqCompareTo( Type * ) const
{
	TODO // comp/assign
	return false;
}

bool DateType::compareTo( Type * )  const
{
	TODO // comp/assign
	return false;
}

bool DateType::assignableTo( Type * ) const
{
	TODO // comp/assign
	return false;
}

bool TimeType::eqCompareTo( Type * ) const
{
	TODO // comp/assign
	return false;
}

bool TimeType::compareTo( Type * )  const
{
	TODO // comp/assign
	return false;
}

bool TimeType::assignableTo( Type * ) const
{
	TODO // comp/assign
	return false;
}

bool DatetimeType::eqCompareTo( Type * ) const
{
	TODO // comp/assign
	return false;
}

bool DatetimeType::compareTo( Type * )  const
{
	TODO // comp/assign
	return false;
}

bool DatetimeType::assignableTo( Type * ) const
{
	TODO // comp/assign
	return false;
}

bool DurationType::eqCompareTo( Type * ) const
{
	TODO // comp/assign
	return false;
}

bool DurationType::compareTo( Type * )  const
{
	TODO // comp/assign
	return false;
}

bool DurationType::assignableTo( Type * ) const
{
	TODO // comp/assign
	return false;
}
