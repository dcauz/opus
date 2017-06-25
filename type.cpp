#include "type.h"

ErrorType	errorType;

bool Nullable::eqCompareTo( Type * ) const
{	
	TODO
	return false;
}

bool Nullable::compareTo( Type * ) const
{	
	TODO
	return false;
}

bool Nullable::assignableTo( Type * ) const
{	
	TODO
	return false;
}


bool UnknownType::eqCompareTo( Type * ) const
{	
	TODO
	return false;
}

bool UnknownType::compareTo( Type * ) const
{	
	TODO
	return false;
}

bool UnknownType::assignableTo( Type * ) const
{	
	TODO
	return false;
}


bool ErrorType::eqCompareTo( Type * ) const
{	
	TODO
	return false;
}

bool ErrorType::compareTo( Type * ) const
{	
	TODO
	return false;
}

bool ErrorType::assignableTo( Type * ) const
{	
	TODO
	return false;
}

