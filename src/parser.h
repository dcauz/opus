#pragma once

#include "program.h"
#include "symtbl.h"
#include "token.h"
#include "lex.h"


#include <stack>

struct Ptrace
{
Ptrace( const char * f ):f_(f)	{ printf( "ENTER:[ %s\n", f_ ); fflush(stdout); }
~Ptrace( )						{ printf( "EXIT:] %s\n", f_ ); fflush(stdout); }

const char * f_;
};

#define PENTER	Ptrace	_(__func__);

class Parser
{
public:
	Parser( const char * file ):
		lineNo(0),
		columnNo(0),
		typeSeen(false),
		inSelect(false),
		currSymTbl(&globalSymTbl_),
		program_(file),
		declarators_(0),
		selectNests_(0)
	{
		fh = fopen( file, "r" );

		charLookahead[0] = -1;
		charLookahead[1] = -1;

		cp = NULL;
		typeSeen = false;
	}
	~Parser()
	{
		fclose( fh );
	}

	bool parse();

	void pushSymTbl( const std::string & n )
	{
		auto st = new SymbolTable( currSymTbl, n );
		currSymTbl = st;
	}

	void popSymTbl()	
	{ 
		currSymTbl = currSymTbl->parent(); 
	}

	void populateGlobalSymTbl();

	Program	& program() { return program_; }


	char * cp;
	int  charLookahead[2];

	unsigned short lineNo;
	unsigned short columnNo;

	static const int MAX_LINE = 2028;
	char line[MAX_LINE];

	FILE * fh;

	bool typeSeen;
	bool inSelect;

	SymbolTable	* currSymTbl;

	std::stack<std::string> classes;
	std::stack<int>			opStack;
	std::stack<Expr *>		exprStack;

	Token lookahead;

private:
	Program		program_;
	SymbolTable	globalSymTbl_;

	unsigned	declarators_;
	int		selectNests_;

	void parserError( const char * );

	bool parseArgs( std::vector<up<Arg>> ** );
	bool parseExpr( Expr ** expr, Token & );
	bool parseExprTypes( std::vector<up<TypeArg>> & );
	bool parseSelect( Select ** );
	bool parseStatement( Statement ** );
	bool parseType( unsigned &, Type ** );
	bool parseTypeParams( std::vector<up<TemplateParam>> ** );
	bool parseVarDefOrExpr( VarDef ** variableDef, Expr ** initExpr );
	bool parseVariableDef( VarDef ** variableDef );

	bool parseAlias( Alias ** );
	bool parseBlock( Block ** );
	bool parseBreak( Break ** );
	bool parseCase( Case ** );
	bool parseCatch( CatchBlock ** );
	bool parseClass( ClassType ** );
	bool parseContinue( Continue ** );
	bool parseDefault( Default ** );
	bool parseDo( Do ** );
	bool parseEnum( EnumType **);
	bool parseExprStatement( ExprStatement **);
	bool parseFor( For ** );
	bool parseIf( If ** );
	bool parseInterface( InterfaceType ** );
	bool parseNamespace( Namespace ** );
	bool parsePureFunction( PureFuncDef ** );
	bool parseReturn(  Return ** );
	bool parseSwitch( Switch ** );
	bool parseTry( Try ** );
	bool parseTypeDef( TypeType ** );
	bool parseUnion( UnionType ** );
	bool parseUsing( Using **, UsingNamespace ** );
	bool parseVarFuncDef( Token & token, VarDef ** variableDef, Executable ** );
	bool parseWhile( While ** );

	bool evalStacks( Expr ** );
};
