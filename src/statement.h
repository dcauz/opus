#pragma once

#include <vector>
#include <memory>
#include <string>
#include "opus.h"
#include "symtbl.h"
#include "type.h"
#include "expr.h"
#include "token.h"


class GenCodeContext;
class SemCheckContext;


class Statement
{
public:
	Statement( int s, int e ):startLine_(s), endLine_(e) {}
	virtual ~Statement() {}

	virtual bool genCode( GenCodeContext & ) const = 0;
	virtual sp<Type> semCheck( SemCheckContext & )  const= 0;
	
protected:
	int	startLine_;
	int endLine_;
};

///////////////////////////////////////////////////////////////////////////

class Using: public Statement
{
public:
	Using( int s, int e, std::vector<std::string> && n ):Statement(s,e), name_(n) {}

	bool genCode( GenCodeContext & ) const final;
	sp<Type> semCheck( SemCheckContext & ) const final;

private:
	std::vector<std::string> name_;
};

class UsingNamespace: public Statement
{
public:
	UsingNamespace( int s, int e, std::vector<std::string> && n ):Statement(s,e), name_(n) {}

	bool genCode( GenCodeContext & ) const final;
	sp<Type> semCheck( SemCheckContext & ) const final;

private:
	std::vector<std::string> name_;
};

class Empty: public Statement
{
public:
	Empty( int s):Statement(s,s) {}

	bool genCode( GenCodeContext & ) const final;
	sp<Type> semCheck( SemCheckContext & ) const final;
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
	sp<Type> semCheck( SemCheckContext & ) const final;

	std::vector<up<Statement>>::iterator begin() { return statements_->begin();}
	std::vector<up<Statement>>::iterator end()   { return statements_->end(); }

private:
	up<std::vector<up<Statement>>> statements_;
};

class AtomicBlock: public Statement
{
public:
	AtomicBlock( 
		int s, 
		int e, 
		Statement * st = nullptr ):
		Statement(s,e), block_(static_cast<Block *>(st)) {}

	bool genCode( GenCodeContext & ) const final;
	sp<Type> semCheck( SemCheckContext & ) const final;

private:
	up<Block> block_;
};

class ExprStatement : public Statement
{
public:
	ExprStatement( int s, int e, Expr * ex ):Statement(s,e), expr_(ex) {}

	bool genCode( GenCodeContext & ) const final;
	sp<Type> semCheck( SemCheckContext & ) const final;

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
	sp<Type> semCheck( SemCheckContext & ) const final;
};

class Namespace: public Definition, public Symbol
{
public:
	Namespace( int s, int e, const char * n, Statement * st = nullptr ):
			Definition(s,e), Symbol(n), block_(static_cast<Block *>(st))
	{ }
	Namespace( int s, int e, const std::string & n, Statement * st = nullptr ):
			Definition(s,e), Symbol(n), block_(static_cast<Block *>(st))
	{ }

	bool genCode( GenCodeContext & ) const final;
	sp<Type> semCheck( SemCheckContext & ) const final;

private:
	up<Block> block_;
};

class TemplateParam;

class TypeDef: public Definition, public Type
{
public:
	TypeDef(int s, 
			int e, 
			const char * name,
			std::vector<up<TemplateParam>>   * params, 
			std::vector<up<Type>>   * bases,
			Statement * st = nullptr ): 
		Definition(s,e), 
		Type(name),
		params_(params),
		bases_(bases),
		body_(st)
	{}

	TypeDef(int s, 
			int e, 
			const std::string & name,
			std::vector<up<TemplateParam>>   * params, 
			std::vector<up<Type>>   * bases,
			Statement * st = nullptr ): 
		Definition(s,e), 
		Type(name),
		params_(params),
		bases_(bases),
		body_(st)
	{}

private:
	up<std::vector<up<TemplateParam>>>	params_;
	up<std::vector<up<Type>>>	bases_;
	up<Statement>				body_;
};

enum Pointer
{
	NONE		= 0,
	OPTIONAL    = '?',
	UNIQUE_PTR	= '&',
	SHARED_PTR	= '*',
	WEAK_PTR	= '#'
};

class TypeArg
{
public:
	TypeArg( Type * type ):type_(type) {}
	TypeArg( Expr * expr ):expr_(expr) {}

private:
	up<Type>	type_;
	up<Expr>	expr_;
};

class TypeInstance : public Definition, public Type
{
public:
	TypeInstance( int s, int e, Type * base, unsigned declarators, 
		std::vector<up<TypeArg>> & typeArgs, 
		std::vector<up<Expr>> & dims,
		Pointer	typePtr,
		Pointer	elePtr );

private:
	Type * baseType_;
	unsigned declarators_;
	std::vector<up<TypeArg>> typeArgs_;
	std::vector<up<Expr>> dims_;
	Pointer	typePtr_;
	Pointer	elePtr_;
};

class EnumMember: public Statement, public Symbol
{
public:
    EnumMember( int s, int e, const char * n, Expr * v = nullptr ):
        Statement(s,e),
		Symbol(n),
        value_(v)
    {
    }
    EnumMember( int s, int e, const std::string & n, Expr * v = nullptr ):
        Statement(s,e),
		Symbol(n),
        value_(v)
    {
    }

	bool genCode( GenCodeContext & ) const final;
	sp<Type> semCheck( SemCheckContext & ) const final;

private:
    Expr * value_;
};

class EnumType: public TypeDef
{
public:
	EnumType( 
		int s, 
		int e, 
		const char * n, 
		std::vector<up<TemplateParam>>   * params, 
		std::vector<up<Type>>   * bases,
		std::vector<up<Statement>> * sts = nullptr ):
			TypeDef(s,e,n,params,bases,new Block(s,e, sts)) 
	{}

	EnumType( 
		int s, 
		int e, 
		const std::string & n, 
		std::vector<up<TemplateParam>>   * params, 
		std::vector<up<Type>>   * bases,
		std::vector<up<Statement>> * sts = nullptr ):
			TypeDef(s,e,n,params,bases,new Block(s,e, sts)) 
	{}

	bool genCode( GenCodeContext & ) const final;
	sp<Type> semCheck( SemCheckContext & ) const final;

	bool eqCompareTo( Type * ) const final;
	bool compareTo( Type * ) const final;
	bool assignableTo( Type * ) const final;
};

class TypeType: public TypeDef
{
public:
	TypeType( 
		int s, 
		int e, 
		const char * n, 
		std::vector<up<TemplateParam>>   * params, 
		std::vector<up<Type>>   * bases,
		Statement * mbrs = nullptr ):
			TypeDef(s,e,n,params,bases,mbrs) 
	{}

	bool genCode( GenCodeContext & ) const final;
	sp<Type> semCheck( SemCheckContext & ) const final;

	bool eqCompareTo( Type * ) const final;
	bool compareTo( Type * ) const final;
	bool assignableTo( Type * ) const final;
};

class ClassType: public TypeDef
{
public:
	ClassType( 
		int s, 
		int e, 
		const char * n, 
		std::vector<up<TemplateParam>>   * params, 
		std::vector<up<Type>>   * bases,
		Statement * mbrs = nullptr ):
			TypeDef(s,e,n,params,bases, mbrs)
	{}

	bool genCode( GenCodeContext & ) const final;
	sp<Type> semCheck( SemCheckContext & ) const final;

	bool eqCompareTo( Type * ) const final;
	bool compareTo( Type * ) const final;
	bool assignableTo( Type * ) const final;
};

class InterfaceType: public TypeDef
{
public:
	InterfaceType( 
		int s, 
		int e, 
		const char * n, 
		std::vector<up<TemplateParam>>   * params, 
		std::vector<up<Type>>   * bases,
		Statement * mbrs = nullptr ):
			TypeDef(s,e,n,params,bases, mbrs)
	{}

	bool genCode( GenCodeContext & ) const final;
	sp<Type> semCheck( SemCheckContext & ) const final;

	bool eqCompareTo( Type * ) const final;
	bool compareTo( Type * ) const final;
	bool assignableTo( Type * ) const final;
};

class UnionType: public TypeDef
{
public:
	UnionType( 
		int s, 
		int e, 
		const char * n, 
		std::vector<up<TemplateParam>>   * params, 
		std::vector<up<Type>>   * bases,
		Statement * mbrs = nullptr ):
			TypeDef(s,e,n,params, bases,mbrs)
	{}

	bool genCode( GenCodeContext & ) const final;
	sp<Type> semCheck( SemCheckContext & ) const final;

	bool eqCompareTo( Type * ) const final;
	bool compareTo( Type * ) const final;
	bool assignableTo( Type * ) const final;
};

class VarDef: public Definition, public Variable
{
public:
	VarDef( int s, int e, 
		Type * t, 
		const char * n, 
		int pt=0,
		std::vector<up<Expr>> * w=nullptr,
		const char * f=nullptr ): 
	Definition(s,e), 
	Variable(n),
	type_(t),
	where_(w),
	ptrType_(pt)
	{
		if(f)
			from_ = f;
	}

	VarDef( int s, int e, 
		Type * t, 
		const char * n, 
		int pt=0,
		std::vector<up<Expr>> * = nullptr,
		Expr * init = nullptr ):
	Definition(s,e), 
	Variable(n),
	type_(t),
	ptrType_(pt),
	init_(init) {}

	bool genCode( GenCodeContext & ) const final;
	sp<Type> semCheck( SemCheckContext & ) const final;

	sp<Type> type() const { return type_; }

private:
                 sp<Type> type_;
up<std::vector<up<Expr>>> where_;
                      int ptrType_;
              std::string from_;
                 up<Expr> init_;
};

class Arg: public Definition, public Variable
{
public:
	Arg( int s, int e, unsigned decl, Type * t, const std::string & n, Expr * d = nullptr ): 
		Definition(s,e),
		Variable(n),
		decl_(decl), 
		type_(t),
		default_(d)
	{
	}

	bool genCode( GenCodeContext & ) const final;
	sp<Type> semCheck( SemCheckContext & ) const final;

private:
	unsigned decl_;
	sp<Type> type_;
	up<Expr> default_;
};

class TemplateParam: public Definition, public Variable
{
public:
	TemplateParam( int s, int e, const char * n): Definition(s,e), Variable(n) {}
	TemplateParam( int s, int e, const std::string & n): Definition(s,e), Variable(n) {}
	TemplateParam( int s, int e, Type * t, const char * n): 
		Definition(s,e), Variable(n), type_(t) {}
	TemplateParam( int s, int e, Type * t, const std::string & n): 
		Definition(s,e), Variable(n), type_(t) {}

	bool genCode( GenCodeContext & ) const final;
	sp<Type> semCheck( SemCheckContext & ) const final;

	Type	* type() { return type_.get(); }

private:
	up<Type>	type_;
};

class Executable: public Definition
{
public:
	Executable( int s, int e, Statement * st ) : Definition(s,e), body_(st) {}

private:
	up<Statement> body_;
};

// Definition or declaration
class FunctionDef: public Executable, public FunctionType
{
public:
	FunctionDef( 
		int s, 
		int e, 
		int dec,
		Type * t, 
		const char * n, 
		std::vector<up<Arg>> * args, 
		Statement * bl = nullptr ):
			Executable(s,e,bl),
			FunctionType(dec, n, t, args )
	{
	}
	~FunctionDef();

	bool genCode( GenCodeContext & ) const final;
	sp<Type> semCheck( SemCheckContext & ) const final;
};

class PureFuncDef: public Executable, public FunctionType
{
public:
	PureFuncDef( 
		int s, 
		int e, 
		Type * t, 
		const char * n, 
		std::vector<up<Arg>> * args, 
		Expr * ex = nullptr ):
			Executable(s,e,new ExprStatement(s,e, ex)),
			FunctionType(0, n, t, args )
	{
	}

	bool genCode( GenCodeContext & ) const final;
	sp<Type> semCheck( SemCheckContext & ) const final;
};

class OperatorDef: public Executable, public FunctionType
{
public:
	OperatorDef( 
		int s, 
		int e, 
		Type * t, 
		ID n, 
		std::vector<up<Arg>> * args, 
		Statement * bl = nullptr ):
			Executable(s,e,static_cast<Block *>(bl)),
			FunctionType(0, opName(n), t, args )
	{
	}

	bool genCode( GenCodeContext & ) const final;
	sp<Type> semCheck( SemCheckContext & ) const final;

private:
	const char * opName( ID );
};

class CtorDef: public Executable, public FunctionType
{
public:
	CtorDef( 
		int s, 
		int e, 
		const char * n, 
		std::vector<up<Arg>> * args, 
		Statement * bl = nullptr ):
		Executable(s,e,static_cast<Block *>(bl)),
		FunctionType(0, n, nullptr, args )
	{
	}

	bool genCode( GenCodeContext & ) const final;
	sp<Type> semCheck( SemCheckContext & ) const final;
};

class Alias: public Definition, public Symbol
{
public:
	Alias( int s, int e, const char * n, Type * t ): Definition(s,e), Symbol(n), type_(t) {} 
	Alias( int s, int e, const std::string & n, Type * t ): Definition(s,e), Symbol(n), type_(t) {} 

	bool genCode( GenCodeContext & ) const final;
	sp<Type> semCheck( SemCheckContext & ) const final;

private:
   sp<Type> type_;
};

class Import: public Statement
{
public:
	// TODO
};

class RelDelete: public Statement
{
public:
	// TODO
};

class RelInsert: public Statement
{
public:
	// TODO
};

class RelUpdate: public Statement
{
public:
	// TODO
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
	sp<Type> semCheck( SemCheckContext & ) const final;

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
	sp<Type> semCheck( SemCheckContext & ) const final;

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
	Default( int s, int e ):Statement(s,e) {}

	bool genCode( GenCodeContext & ) const final;
	sp<Type> semCheck( SemCheckContext & ) const final;
};

class Continue: public Statement
{
public:
	Continue( int s ):Statement(s,s) {}

	bool genCode( GenCodeContext & ) const final;
	sp<Type> semCheck( SemCheckContext & ) const final;
};

class Break: public Statement
{
public:
	Break( int s ):Statement(s,s) {}

	bool genCode( GenCodeContext & ) const final;
	sp<Type> semCheck( SemCheckContext & ) const final;
};

class Return: public Statement
{
public:
	Return( int s, int e, Expr * v ):Statement(s,e), value_(v) {}

	bool genCode( GenCodeContext & ) const final;
	sp<Type> semCheck( SemCheckContext & ) const final;

private:
	up<Expr> value_;
};

class Assert: public Statement
{
public:
	Assert( int s, int e, Expr * ex ): Statement(s,e), expr_(ex)
	{
	}
	
	bool genCode( GenCodeContext & ) const final;
	sp<Type> semCheck( SemCheckContext & ) const final;

private:
	up<Expr> expr_;
};


class Case: public Statement
{
public:
	Case( int s, int e, Expr * ex ): Statement(s,e), expr_(ex)
	{
	}
	
	bool genCode( GenCodeContext & ) const final;
	sp<Type> semCheck( SemCheckContext & ) const final;

private:
	up<Expr> expr_;
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
	sp<Type> semCheck( SemCheckContext & ) const final;

private:
     up<Expr> cond_;
   up<VarDef> varDef_;
up<Statement> statement_;
};

class CatchBlock: public Statement
{
public:
	CatchBlock( int e, int s, Statement * d, 
		Statement * st):
		Statement(e,s), var_(d), block_(static_cast<Block *>(st))
	{
	}

	bool genCode( GenCodeContext & ) const final;
	sp<Type> semCheck( SemCheckContext & ) const final;

private:
	up<Statement> var_;
	    up<Block> block_;
};

class Try: public Statement
{
public:
	Try(int e, int s, 
		Statement * sl, 
		std::vector<up<CatchBlock>> * cbs = nullptr ):
	Statement(e,s), block_(static_cast<Block *>(sl)), catchBlocks_(cbs) {}

	bool genCode( GenCodeContext & ) const final;
	sp<Type> semCheck( SemCheckContext & ) const final;

	void addCatchBlock( CatchBlock * );

private:
	                      up<Block> block_;
	up<std::vector<up<CatchBlock>>>	catchBlocks_;
};

class While: public Statement
{
public:
	While( int e, int s, Expr * con, Statement * st):
		Statement(e,s),
		cond_(con),
		statement_(st)
	{
	}

	While( int e, int s, VarDef * , Statement * st):
		Statement(e,s),
		statement_(st)
	{
	}

	bool genCode( GenCodeContext & ) const final;
	sp<Type> semCheck( SemCheckContext & ) const final;

private:

	     up<Expr> cond_;
	   up<VarDef> variable_;
	up<Statement> statement_;
};

class Do: public Statement
{
public:
	Do( int e, int s, Expr * con, Statement * st):
		Statement(e,s),
		cond_(con),
		statement_(st)
	{
	}

	bool genCode( GenCodeContext & ) const final;
	sp<Type> semCheck( SemCheckContext & ) const final;

private:

	up<Expr>      cond_;
	up<Statement> statement_;
};
