#pragma once

#include <vector>
#include <memory>
#include <string>
#include "opus.h"
#include "enum.h"


class Expr;
class Type;
class GenCodeContext;
class SemCheckContext;


class Statement
{
public:
	Statement( int s, int e ):startLine_(s), endLine_(e) {}
	virtual ~Statement() {}

	virtual bool genCode( GenCodeContext & ) const = 0;
	virtual Type * semCheck( SemCheckContext & )  const= 0;
	
protected:
	int	startLine_;
	int endLine_;
};

///////////////////////////////////////////////////////////////////////////

class Empty: public Statement
{
public:
	Empty( int s):Statement(s,s) {}

	bool genCode( GenCodeContext & ) const final;
	Type * semCheck( SemCheckContext & ) const final;
};

class AtomicBlock: public Statement
{
public:
	AtomicBlock( 
		int s, 
		int e, 
		std::vector<up<Statement>> * sts = nullptr ):
		Statement(s,e), statements_(sts) {}

	bool genCode( GenCodeContext & ) const final;
	Type * semCheck( SemCheckContext & ) const final;

private:
	up<std::vector<up<Statement>>> statements_;
};

class Block: public Statement
{
public:
	Block( 
		int s, 
		int e, 
		std::vector<up<Statement>> * sts = nullptr ):
		Statement(s,e), statements_(sts) {}

	bool genCode( GenCodeContext & ) const final;
	Type * semCheck( SemCheckContext & ) const final;

private:
	up<std::vector<up<Statement>>> statements_;
};

class ExprStatement : public Statement
{
public:
	ExprStatement( int s, int e, Expr * ex ):Statement(s,e), expr_(ex) {}

	bool genCode( GenCodeContext & ) const final;
	Type * semCheck( SemCheckContext & ) const final;

private:
	up<Expr> expr_;
};

class Definition: public Statement
{
public:
	Definition( int s, int e ):Statement(s,e), isPrivate_(false) {}
	void isPrivate() { isPrivate_ = true; }

private:
	bool isPrivate_;
};

class Private: public Definition
{
public:
	Private( int s, int e ):Definition(s,e) {}

	bool genCode( GenCodeContext & ) const final;
	Type * semCheck( SemCheckContext & ) const final;
};

class Namespace: public Definition
{
public:
	Namespace( 
		int s, 
		int e, 
		const char * n,
		std::vector<up<Statement>> * sts = nullptr ):
		name_(n),
		Definition(s,e), statements_(sts) {}

	bool genCode( GenCodeContext & ) const final;
	Type * semCheck( SemCheckContext & ) const final;

private:
	std::string name_;
	up<std::vector<up<Statement>>> statements_;
};

class Variables: public Definition
{
public:
	Variables( int s, int e, std::vector<std::string> * );

	bool genCode( GenCodeContext & ) const final;
	Type * semCheck( SemCheckContext & ) const final;
};

class TypeDef: public Definition
{
public:
	TypeDef( int s, int e ):Definition(s,e) {}
};

class EnumMember;

class EnumDef: public TypeDef
{
public:
	EnumDef( 
		int s, 
		int e, 
		const char * n, 
		std::vector<up<EnumMember>> * moe = nullptr );

	bool genCode( GenCodeContext & ) const final;
	Type * semCheck( SemCheckContext & ) const final;

private:
	std::string	name_;
	up<std::vector<up<EnumMember>>> moe_;
};

class ClassDef: public TypeDef
{
public:
	ClassDef( 
		int s, 
		int e, 
		const char * n, 
		std::vector<up<Definition>> * mbrs = nullptr ):
	TypeDef(s,e), name_(n), members_(mbrs) {}

	bool genCode( GenCodeContext & ) const final;
	Type * semCheck( SemCheckContext & ) const final;

private:
	std::string	name_;
	up<std::vector<up<Definition>>> members_;
};

class InterfaceDef: public TypeDef
{
public:
	InterfaceDef( 
		int s, 
		int e, 
		const char * n, 
		std::vector<up<Definition>> * mbrs = nullptr ):
	TypeDef(s,e), name_(n), members_(mbrs) {}

	bool genCode( GenCodeContext & ) const final;
	Type * semCheck( SemCheckContext & ) const final;

private:
	std::string	name_;
	up<std::vector<up<Definition>>> members_;
};

class TupleDef: public TypeDef
{
public:
	TupleDef( 
		int s, 
		int e, 
		const char * n, 
		std::vector<up<Definition>> * mbrs = nullptr ):
	TypeDef(s,e), name_(n), members_(mbrs) {}

	bool genCode( GenCodeContext & ) const final;
	Type * semCheck( SemCheckContext & ) const final;

private:
	std::string	name_;
	up<std::vector<up<Definition>>> members_;
};

class UnionDef: public TypeDef
{
public:
	UnionDef( 
		int s, 
		int e, 
		const char * n, 
		std::vector<up<Definition>> * mbrs = nullptr ):
	TypeDef(s,e), name_(n), members_(mbrs) {}

	bool genCode( GenCodeContext & ) const final;
	Type * semCheck( SemCheckContext & ) const final;

private:
	std::string	name_;
	up<std::vector<up<Definition>>> members_;
};

class VarDef: public Definition
{
public:
	VarDef( int s, int e, 
		Type * t, 
		const char * n, 
		int pt=0,
		std::vector<up<Expr>> * w=nullptr,
		const char * f=nullptr ):
	Definition(s,e), 
	type_(t),
	name_(n),
	ptrType_(pt),
	where_(w)
	{
		if(f)
			from_ = f;
	}

	VarDef( int s, int e, 
		Type * t, 
		const char * n, 
		int pt=0,
		std::vector<up<Expr>> * w=nullptr,
		Expr * init=nullptr ):
	Definition(s,e), 
	type_(t),
	name_(n),
	ptrType_(pt),
	init_(init) {}

	bool genCode( GenCodeContext & ) const final;
	Type * semCheck( SemCheckContext & ) const final;

private:
                 sp<Type> type_;
              std::string name_;
up<std::vector<up<Expr>>> where_;
                      int ptrType_;
              std::string from_;
                 up<Expr> init_;
	
};

class Arg
{
public:
	Arg( Type * t, const char * n ): type_(t), name_(n) {}

private:
	sp<Type> type_;
 std::string name_;
};

class RoutineDef: public Definition
{
public:
	RoutineDef( 
		int s, 
		int e, 
		Type * t, 
		const char * n, 
		std::vector<up<Arg>> * args, 
		Block * bl = nullptr ):Definition(s,e),
		returnType_(t), name_(n), body_(bl) 
	{
	}

	bool genCode( GenCodeContext & ) const final;
	Type * semCheck( SemCheckContext & ) const final;

	const Type	* returnType() const	{ return returnType_.get(); }

private:
	   sp<Type> returnType_;
	std::string	name_;
	  up<Block> body_;
};

class OperatorDef: public Definition
{
public:
	OperatorDef( 
		int s, 
		int e, 
		Type * t, 
		int n, 
		std::vector<up<Arg>> * args, 
		Block * bl = nullptr ):Definition(s,e),
		returnType_(t), op_(n), body_(bl) 
	{
	}

	bool genCode( GenCodeContext & ) const final;
	Type * semCheck( SemCheckContext & ) const final;

	const Type	* returnType() const	{ return returnType_.get(); }

private:
	   sp<Type> returnType_;
	        int op_;
	  up<Block> body_;
};

class CtorDef: public Definition
{
public:
	CtorDef( 
		int s, 
		int e, 
		const char * n, 
		std::vector<up<Arg>> * args, 
		Block * bl = nullptr ):Definition(s,e),
		name_(n), body_(bl) 
	{
	}

	bool genCode( GenCodeContext & ) const final;
	Type * semCheck( SemCheckContext & ) const final;

private:
	std::string	name_;
	  up<Block> body_;
};

class FunDef: public Definition
{
public:
	FunDef( 
		int s, 
		int e, 
		const char * n, 
		std::vector<up<Arg>> * args, 
		Expr * ex):
		Definition(s,e), name_(n), body_(ex) 
	{
	}

	bool genCode( GenCodeContext & ) const final;
	Type * semCheck( SemCheckContext & ) const final;

	const Type	* returnType() const	{ return returnType_.get(); }

private:
	   sp<Type> returnType_;
	std::string	name_;
	   up<Expr> body_;
};

class AliasDef: public Definition
{
public:
	AliasDef( int s, int e, const char * n, Type * t ):Definition(s,e), 
		type_(t), name_(n) {}

	bool genCode( GenCodeContext & ) const final;
	Type * semCheck( SemCheckContext & ) const final;

private:
	std::string name_;
	   sp<Type> type_;
};

class If: public Statement
{
public:
	If( int s, int e, Expr * c, Statement * ist, Statement * est = nullptr ):
		Statement(s,e), cond_(c),variable_(nullptr), if_(ist), else_(est)
	{
	}

	If( int s, int e, VarDef * vd, Statement * ist, Statement * est = nullptr ):
		Statement(s,e), cond_(nullptr),variable_(vd), if_(ist), else_(est)
	{
	}

	bool genCode( GenCodeContext & ) const final;
	Type * semCheck( SemCheckContext & ) const final;

private:
     up<Expr> cond_;
   up<VarDef> variable_;
up<Statement> if_;
up<Statement> else_;
};

class For: public Statement
{
public:
	For( int s, int e, Expr * in, Expr * c, Expr * i, Statement * st ):
		Statement(s,e), init_(in), variable_(nullptr), cond_(c), incr_(i), 
		statement_(st)
	{
	}

	For( int s, int e, VarDef * f, Expr * c, Expr * i, Statement * st ):
		Statement(s,e), init_(nullptr), variable_(f), cond_(c), incr_(i), 
		statement_(st)
	{
	}

	For( int s, int e, Expr * c, Expr * i, Statement * st ):
		Statement(s,e), init_(nullptr), variable_(nullptr), cond_(c), incr_(i),
		statement_(st)
	{
	}

	bool genCode( GenCodeContext & ) const final;
	Type * semCheck( SemCheckContext & ) const final;

private:

     up<Expr> init_;
   up<VarDef> variable_;
     up<Expr> cond_;
     up<Expr> incr_;
up<Statement> statement_;
};

class Default: public Statement
{
public:
	Default( int s, int e, Statement * st ):Statement(s,e), statement_(st) {}

	bool genCode( GenCodeContext & ) const final;
	Type * semCheck( SemCheckContext & ) const final;

private:
	up<Statement> statement_;
};

class Continue: public Statement
{
public:
	Continue( int s ):Statement(s,s) {}

	bool genCode( GenCodeContext & ) const final;
	Type * semCheck( SemCheckContext & ) const final;
};

class Break: public Statement
{
public:
	Break( int s ):Statement(s,s) {}

	bool genCode( GenCodeContext & ) const final;
	Type * semCheck( SemCheckContext & ) const final;
};

class Return: public Statement
{
public:
	Return( int s, int e, Expr * v ):Statement(s,e), value_(v) {}

	bool genCode( GenCodeContext & ) const final;
	Type * semCheck( SemCheckContext & ) const final;

private:
	up<Expr> value_;
};

class Case: public Statement
{
public:
	Case( int s, int e, Expr * l, Expr * u, Statement * st ):
		Statement(s,e), lower_(l), upper_(u), statement_(st) 
	{
	}
	
	bool genCode( GenCodeContext & ) const final;
	Type * semCheck( SemCheckContext & ) const final;

private:
     up<Expr> lower_;
     up<Expr> upper_;
up<Statement> statement_;
};

class Switch: public Statement
{
public:
	Switch( int e, int s, Expr * con, Statement * st ):
		Statement(e,s), cond_(con), varDef_(nullptr), statement_(st)
	{
	}
	Switch( int e, int s, VarDef * var, Statement * st ):
		Statement(e,s), cond_(nullptr), varDef_(var), statement_(st)
	{
	}

	bool genCode( GenCodeContext & ) const final;
	Type * semCheck( SemCheckContext & ) const final;

private:
     up<Expr> cond_;
   up<VarDef> varDef_;
up<Statement> statement_;
};

