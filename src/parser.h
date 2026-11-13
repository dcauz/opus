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

	bool reduce( int, int, ID );

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
	int  charLookahead[4];

	unsigned short lineNo;
	unsigned short columnNo;

	static const int MAX_LINE = 2028;
	char line[MAX_LINE];

	FILE * fh;

	bool typeSeen;
	bool inSelect;

	SymbolTable	* currSymTbl;

	std::stack<std::string> classes;
	std::stack<Token>		opStack;
	std::stack<Expr *>		exprStack;

	Token lookahead;

	// Expression terminating characters
	enum class ETC
	{
		COMMA		= 1,		// e1 , e2 , ...
		COLON		= 2,		// e1 ? e2 : e3
		RPAREN	= 4,		// ( e1 )
		SCOLON	= 8,		// e ;
		RBRACE	= 16,		// }
		RBRACKET= 32,		// ]
		BOR			= 64,		// | e |
		GT			= 128,	// >

		COMMA_OR_COLON_OR_RBRACE = COMMA | COLON | RBRACE,
		COMMA_OR_GT              = COMMA | GT,
		COMMA_OR_RBRACE          = COMMA | RBRACE,
		COMMA_OR_RBRACKET        = COMMA | RBRACKET,
		COMMA_OR_RPAREN          = COMMA | RPAREN,
		COMMA_OR_SCOLON          = COMMA | SCOLON,

		SCOLON_OR_RPAREN         = SCOLON | RPAREN,
	};

	// Select expression terminating reserved words
	enum class STR
	{
		NOT_IN_SELECT                         = 1,
		FROM																	= 2,
		WHERE_GROUP_HAVING_ORDER_OFFSET_FETCH = 3,
		GROUP_HAVING_ORDER_OFFSET_FETCH       = 4,
		HAVING_ORDER_OFFSET_FETCH             = 5,
		ORDER_OFFSET_FETCH                    = 6,
		OFFSET_FETCH                          = 7,
		FETCH                                 = 8,
	};

private:
	Program		program_;
	SymbolTable	globalSymTbl_;

	unsigned	declarators_;
	int		selectNests_;

	void parserError( const char * );

	bool parseArgs( Token &, std::vector<Arg *> ** );
	bool parseExpr( Expr ** expr, ETC et, STR set, Token &, int, int );
	bool parseExprTypes( std::vector<TypeArg *> & );
	bool parseSelect( Select **, ETC et );
	bool parseIdMapping( std::map<std::string,std::string> & mapping );
	bool parseColumnList( Token & token, Select * select );
	bool parseTableId( Token & token, Select * select, bool onTerm );
	bool parseGroupByColumns( Token & token, ETC, Select * select );
	bool parseSortByColumns( Token & token, Select * select );

	bool parseStatement( Statement ** );
	bool parseType( Token &, unsigned &, Type ** );
	bool parseTypeArgs( std::vector<TemplateArg *> **, bool );
	bool parseTypeParams( std::vector<TemplateParam *> ** );
	bool parseVarDefOrExpr( Token & , ETC, VarDef ** variableDef, Expr ** initExpr );
	bool parseVariableDef( Token & token, ETC et, VarDef ** variableDef );

	bool parseAlias( Alias ** );
	bool parseBlock( Block ** );
	bool parseBreak( Break ** );
	bool parseCase( Case ** );
	bool parseCatch( CatchBlock ** );
	bool parseClass( Class ** );
	bool parseContinue( Continue ** );
	bool parseDefault( Default ** );
	bool parseDo( Do ** );
	bool parseEnum( Enum **);
	bool parseExprStatement( ExprStatement **, Token & );
	bool parseFor( For ** );
	bool parseIf( If ** );
	bool parseNamespace( Namespace ** );
	bool parsePureFunction( PureFuncDef ** );
	bool parseRelation(  Relation ** );
	bool parseReturn(  Return ** );
	bool parseSwitch( Switch ** );
	bool parseTry( Try ** );
	bool parseUsing( Using **, UsingNamespace ** );
	bool parseVarFuncDef( Token & token, VarDef ** variableDef, Executable ** );
	bool parseWhile( While ** );
};
