#include "vector.h"


Vector::Vector( std::vector<up<Expr>> * v ):values_(v)
{
}

bool Vector::genCode( GenCodeContext & gcc ) const
{
TODO // genCode
	return false;
}

sp<Type> Vector::semCheck( SemCheckContext & scc ) const
{
TODO // semCheck
	return errorType;
}

bool VectorType::eqCompareTo( Type * t ) const
{
	VectorType * vt = dynamic_cast<VectorType *>(t);

	if(nullptr == vt )
		return false;

	// Allow dynamically lengthed vectors to participate
	if( dim_ != -1 && vt->dim() != -1 && dim_ != vt->dim() )
		return false;

	return ele_->eqCompareTo( vt->ele().get());
}

bool VectorType::compareTo( Type * t )  const
{
	VectorType * vt = dynamic_cast<VectorType *>(t);

	if(nullptr == vt )
		return false;

	// Allow dynamically lengthed vectors to participate
	if( dim_ != -1 && vt->dim() != -1 && dim_ != vt->dim() )
		return false;

	return ele_->compareTo( vt->ele().get());
}

bool VectorType::assignableTo( Type * t ) const
{
	VectorType * vt = dynamic_cast<VectorType *>(t);

	if(nullptr == vt )
		return false;

	// Allow dynamically lengthed vectors to participate
	if( dim_ != -1 && vt->dim() != -1 && dim_ != vt->dim() )
		return false;

	return ele_->assignableTo( vt->ele().get());
}
