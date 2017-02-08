#pragma once

#include <vector>
#include <string>


class Expr;


class Type
{
public:

};

class VoidType: public Type
{
public:

};

class ObjectType: public Type
{
public:

};

class DynamicType: public Type
{
public:

};

class IntType : public Type
{
public:

};

class UnsignedType : public Type
{
public:

};

class LongType : public Type
{
public:

};

class UnsignedLongType : public Type
{
public:

};

class ShortType : public Type
{
public:

};

class UnsignedShortType : public Type
{
public:

};

class TinyType : public Type
{
public:

};

class UnsignedTinyType : public Type
{
public:

};

class FloatType: public Type
{
public:

};

class DoubleType: public Type
{
public:

};

class LongDoubleType: public Type
{
public:

};

class BoolType: public Type
{
public:

};

class StringType: public Type
{
public:

};

class RawStringType: public Type
{
public:

};

class CollectionType: public Type
{
public:
	CollectionType( Type * ele ):ele_(ele) {}

protected:
	Type	* ele_;
};

class SetType: public CollectionType
{
public:
	SetType( Type * ele ):CollectionType(ele) {}

};

class StackType: public CollectionType
{
public:
	StackType( Type * ele ):CollectionType(ele) {}

};

class VectorType: public CollectionType
{
public:
	VectorType( Type * ele, int d ):CollectionType(ele), dim_(d) {}

private:
	int dim_;
};

class MatrixType: public CollectionType
{
public:
	MatrixType( Type * ele, int r, int c ):CollectionType(ele), 
		rows_(r), cols_(c) {}

private:
	int rows_;
	int cols_;
};

class TensorType: public CollectionType
{
public:
	TensorType( Type * ele, std::vector<int> * ds ):CollectionType(ele), 
		dims_(ds) {}

private:
	std::vector<int> * dims_;
};

class QueueType: public CollectionType
{
public:
	QueueType( Type * ele ):CollectionType(ele) {}

};

class DEQueueType: public CollectionType
{
public:
	DEQueueType( Type * ele ):CollectionType(ele) {}

};

class PQueueType: public CollectionType
{
public:
	PQueueType( Type * ele, const char * fname ):CollectionType(ele), 
		compFunc_(fname) {}

private:
	std::string compFunc_;
};

class EnumMember
{
public:
	EnumMember( const char * n, Expr * v = nullptr ):name_(n),
		value_(v)
	{
	}

private:
	std::string	name_;
	Expr		* value_;
};


class Enum : public Type
{
public:

};


extern IntType				intType;
extern UnsignedType			unsignedType;
extern LongType				longType;
extern UnsignedLongType		unsignedLongType;
extern ShortType			shortType;
extern UnsignedShortType	unsignedShortType;
extern TinyType				tinyType;
extern UnsignedTinyType		unsignedTinyType;
extern FloatType			floatType;
extern DoubleType			doubleType;
extern LongDoubleType		longDoubleType;
extern StringType			stringType;
extern BoolType				boolType;
extern VoidType				voidType;
extern ObjectType			objectType;
extern DynamicType			dynamicType;
