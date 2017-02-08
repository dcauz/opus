%{

#include "yyerror.h"
#include "yylex.h"
#include "parse_context.h"
#include "expr.h"
#include "statement.h"
#include "type.h"
#include "symtbl.h"

%}

%token ALIAS					"alias"

%token BOOL						"bool"	
%token BREAK					"break"

%token CASE						"case"
%token CLASS					"class"
%token CONTINUE					"continue"

%token DEFAULT					"default"
%token DEQUEUE					"dequeue"
%token DOT_DOT_DOT				"..."
%token DOUBLE					"double"
%token <dbl> DOUBLE_LIT			"double-literal"
%token DYNAMIC					"dynamic"

%token ELSE						"else"
%token ENUM						"enum"

%token <b> FALSE				"false"
%token FLOAT					"float"
%token FOR						"for"

%token IF 						"if"
%token <i32> INT_LIT			"int-literal"
%token INT						"int"
%token INVALID_NUMBER			"invalid-number"
%token INVALID_STRING			"invalid-string"

%token LONG						"long"
%token <i64> LONG_LIT			"long-literal"

%token MATRIX					"matrix"

%token <str> NAME				"name"

%token OBJECT					"object"

%token PQUEUE					"pqueue"

%token QUEUE					"queue"

%token <str> RAW_STRING_LIT		"raw-string-literal"
%token RETURN					"return"

%token SET						"set"
%token SHORT					"short"
%token STACK					"stack"
%token STRING					"string"
%token <str> STRING_LIT			"string-literal"
%token SWITCH					"switch"

%token TENSOR					"tensor"
%token TINY						"tiny"
%token <b> TRUE					"true"
%token TUPLE					"tuple"

%token UNSIGNED					"unsigned"
%token <u32> UNSIGNED_LIT		"unsigned-literal"
%token <u64> UNSIGNED_LONG_LIT	"unsigned-long-literal"

%token VECTOR					"vector"
%token VOID						"void"

%token WHERE					"where"


%right '=' P_ASS S_ASS M_ASS D_ASS m_ASS A_ASS O_ASS X_ASS '?' ':'
%left LOR
%left LAND
%left OR
%left XOR
%left AND
%right NE EQ
%right GE GT LE LT
%left JOIN LJOIN RJOIN OJOIN WHERE
%left '+' '-'
%left '*' '/' '%' 
%right INC DEC '.' '!' '~' UNIARY_MINUS
%left POST_INC POST_DEC '(' '['

%type <adef> alias
%type <ar>   arg
%type <arL>  args
%type <bl>   body
%type <dcl>	 definition
%type <dclL> definitions
%type <i32>  dim
%type <i32L> dims
%type <ex>	 expr
%type <exL>	 exprList
%type <fdef> function
%type <en>	 member
%type <enL>	 members
%type <st>   statement
%type <stL>  statements
%type <ty>   type
%type <tdef> typeDef
%type <vdef> variableDefinition

%expect 2

%define api.pure full
%define parse.error verbose
%define parse.lac full

%locations

%parse-param
{
	ParseContext * context
}
%lex-param
{
	LexContext * context
}

%union
{
                 AliasDef * adef;
                      Arg * ar;
      std::vector<Arg * > * arL;
                    Block * bl;
                       bool b;
                     double dbl;
               Definition * dcl;
std::vector<Definition *> * dclL;
               EnumMember * en;
std::vector<EnumMember *> * enL;
                     Expr * ex;
      std::vector<Expr *> * exL;
                  FuncDef * fdef;
                        int i32;
         std::vector<int> * i32L;
                       long i64;
                Statement * st;
std::vector<Statement * > * stL;
                       char str[1024];
                     Type * ty;
                  TypeDef * tdef;
               unsigned int u32;
              unsigned long u64;
                   VarDef * vdef;
}

%%

program
	: program definition
	{
		context->program.definitions().push_back($2);
	}
	| definition
	{
		context->program.definitions().push_back($1);
	}
	;

definition
	: function
	{
		$$ = $1;
	}
	| variableDefinition
	{
		$$ = $1;
	}
	| alias
	{
		$$ = $1;
	}
	| typeDef
	{
		$$ = $1;
	}
	;

function
	: type NAME '(' args ')' ';'
	{
		$$ = new FuncDef( context->start, context->end, $1, $2, $4 );
	}
	| type NAME '(' args ')' body
	{
		$$ = new FuncDef( context->start, context->end, $1, $2, $4, $6 );
	}
	;

args
	: 
	{
		$$ = nullptr;
	}
	| args ',' arg
	{
		$$ = $1;
		$$->push_back($3);
	}
	| arg
	{
		$$ = new std::vector<Arg *>();
		$$->push_back($1);
	}
	;

arg
	: type NAME
	{
		$$ = new Arg( $1, $2 );
	}
	;

body
	: '{' statements '}'
	{
		$$ = new Block( context->start, context->end, $2 );
	}
	| '{' '}'
	{
		$$ = new Block( context->start, context->end );
	}
	;

variableDefinition
	: type NAME ';'
	{
		$$ = new VarDef( context->start, context->end, $1, $2 );
	}
	;

alias
	: ALIAS NAME '=' type ';'
	{
		$$ = new AliasDef( context->start, context->end, $2, $4 );
	}
	;

typeDef
	: ENUM NAME '{' members '}'
	{
		$$ = new EnumDef( context->start, context->end, $2, $4 );
	}
	| ENUM NAME '{' '}'
	{
		$$ = new EnumDef( context->start, context->end, $2 );
	}
	| CLASS NAME '{' definitions '}'
	{
		$$ = new ClassDef( context->start, context->end, $2, $4 );
	}
	| CLASS NAME '{' '}'
	{
		$$ = new ClassDef( context->start, context->end, $2 );
	}
	| TUPLE NAME '{' definitions '}'
	{
		$$ = new TupleDef( context->start, context->end, $2, $4 );
	}
	| TUPLE NAME '{' '}'
	{
		$$ = new TupleDef( context->start, context->end, $2 );
	}
	;

members
	: members ',' member
	{
		$$ = $1;
		$$->push_back($3);
	}
	| member
	{
		$$ = new std::vector<EnumMember *>();
		$$->push_back($1);
	}
	;

member
	: NAME
	{
		$$ = new EnumMember( $1 );
	}
	| NAME '=' expr
	{
		$$ = new EnumMember( $1, $3 );
	}
	;

definitions
	: definitions definition
	{
		$$ = $1;
		$$->push_back($2);
	}
	| definition
	{
		$$ = new std::vector<Definition *>();
		$$->push_back($1);
	}
	;

type
	: NAME
	{
		$$ = context->symtbl.findType($1);
	}
	| INT
	{
		$$ = &intType;
	}
	| LONG
	{
		$$ = &longType;
	}
	| SHORT
	{
		$$ = &shortType;
	}
	| UNSIGNED SHORT
	{
		$$ = &unsignedShortType;
	}
	| TINY
	{
		$$ = &tinyType;
	}
	| UNSIGNED TINY
	{
		$$ = &unsignedTinyType;
	}
	| UNSIGNED
	{
		$$ = &unsignedType;
	}
	| UNSIGNED INT
	{
		$$ = &unsignedType;
	}
	| UNSIGNED LONG
	{
		$$ = &unsignedLongType;
	}
	| FLOAT
	{
		$$ = &floatType;
	}
	| DOUBLE
	{
		$$ = &doubleType;
	}
	| LONG DOUBLE
	{
		$$ = &longDoubleType;
	}
	| STRING
	{
		$$ = &stringType;
	}
	| BOOL
	{
		$$ = &boolType;
	}
	| VOID
	{
		$$ = &voidType;
	}
	| OBJECT
	{
		$$ = &objectType;
	}
	| DYNAMIC
	{
		$$ = &dynamicType;
	}
	| SET '<' type '>'
	{
		$$ = new SetType( $3 );
	}
	| VECTOR '<' type '>' '[' INT_LIT ']'
	{
		$$ = new VectorType( $3, $6 );
	}
	| VECTOR '<' type '>' '[' ']'
	{
		$$ = new VectorType( $3, -1 );
	}
	| MATRIX '<' type '>' '[' INT_LIT ',' INT_LIT ']'
	{
		$$ = new MatrixType( $3, $6, $8 );
	}
	| MATRIX '<' type '>' '[' ',' INT_LIT ']'
	{
		$$ = new MatrixType( $3, -1, $7 );
	}
	| MATRIX '<' type '>' '[' INT_LIT ',' ']'
	{
		$$ = new MatrixType( $3, $6, -1 );
	}
	| MATRIX '<' type '>' '[' ',' ']'
	{
		$$ = new MatrixType( $3, -1, -1 );
	}
	| TENSOR '<' type '>' '[' dims ']'
	{
		$$ = new TensorType( $3, $6 );
	}
	| STACK '<' type '>'
	{
		$$ = new StackType( $3 );
	}
	| PQUEUE '<' type ',' NAME '>'
	{
		$$ = new PQueueType( $3, $5 );
	}
	| QUEUE '<' type '>'
	{
		$$ = new QueueType( $3 );
	}
	| DEQUEUE '<' type '>'
	{
		$$ = new DEQueueType( $3 );
	}
	;

dims
	: dims ',' dim
	{
		$$ = $1;
		$$->push_back($3);
	}
	| dim
	{
		$$ = new std::vector<int>();
		$$->push_back($1);
	}
	;

dim
	:
	{
		$$ = -1;
	}
	| INT_LIT
	{
		$$ = $1;
	}
	;

statements
	: statements statement
	{
		$$ = $1;
		$$->push_back($2);
	}
	| statement
	{
		$$ = new std::vector<Statement *>();
		$$->push_back($1);
	}
	;

statement
	: expr ';'
	{
		$$ = new ExprStatement( context->start, context->end, $1 );
	}
	| IF '(' expr ')' statement
	{
		$$ = new If( context->start, context->end, $3, $5 );
	}
	| IF '(' expr ')' statement ELSE statement
	{
		$$ = new If( context->start, context->end, $3, $5, $7 );
	}
	| IF '(' variableDefinition ')' statement
	{
		$$ = new If( context->start, context->end, $3, $5 );
	}
	| IF '(' variableDefinition ')' statement ELSE statement
	{
		$$ = new If( context->start, context->end, $3, $5, $7 );
	}
	| FOR '(' expr ';' expr ';' expr ')' statement
	{
		$$ = new For( context->start, context->end, $3, $5, $7, $9 );
	}
	| FOR '(' ';' ';' expr ')' statement
	{
		$$ = new For( context->start, context->end, nullptr, $5, $7 );
	}
	| FOR '(' expr ';' expr ';'  ')' statement
	{
		$$ = new For( context->start, context->end, $3, $5, nullptr, $8 );
	}
	| FOR '(' ';' expr ';'  ')' statement
	{
		$$ = new For( context->start, context->end,  $4, nullptr, $7 );
	}
	| FOR '(' expr ';' ';'  ')' statement
	{
		$$ = new For( context->start, context->end, $3, nullptr, nullptr, $7 );
	}
	| FOR '(' ';' ';'  ')' statement
	{
		$$ = new For( context->start, context->end, nullptr, nullptr, $6 );
	}
	| FOR '(' variableDefinition ';' expr ';' expr ')' statement
	{
		$$ = new For( context->start, context->end, $3, $5, $7, $9 );
	}
	| FOR '(' variableDefinition ';' ';' ')' statement
	{
		$$ = new For( context->start, context->end, $3, nullptr, nullptr, $7 );
	}
	| FOR '(' variableDefinition ';' expr ';' ')' statement
	{
		$$ = new For( context->start, context->end, $3, $5, nullptr, $8 );
	}
	| FOR '(' expr ';' ';' expr ')' statement
	{
		$$ = new For( context->start, context->end, $3, nullptr, $6, $8 );
	}
	| FOR '(' variableDefinition ';' ';' expr ')' statement
	{
		$$ = new For( context->start, context->end, $3, nullptr, $6, $8 );
	}
	| FOR '(' ';' expr ';' expr ')' statement
	{
		$$ = new For( context->start, context->end, $4, $6, $8 );
	}
	| SWITCH '(' expr ')' statement
	{
		$$ = new Switch( context->start, context->end, $3, $5 );
	}
	| SWITCH '(' variableDefinition ')' statement
	{
		$$ = new Switch( context->start, context->end, $3, $5 );
	}
	| DEFAULT  ':' statement
	{
		$$ = new Default( context->start, context->end, $3 );
	}
	| CASE expr ':' statement
	{
		$$ = new Case( context->start, context->end, $2, nullptr, $4 );
	}
	| CASE expr DOT_DOT_DOT expr ':' statement
	{
		$$ = new Case( context->start, context->end, $2, $4, $6 );
	}
	| BREAK ';'
	{
		$$ = new Break(context->start);
	}
	| CONTINUE ';'
	{
		$$ = new Continue(context->start);
	}
	| RETURN expr ';'
	{
		$$ = new Return( context->start, context->end, $2 );
	}
	| '{' statements '}'
	{
		$$ = new Block( context->start, context->end, $2 );
	}
	| ';'
	{
		$$ = new Empty( context->start );
	}
	;

expr
	: NAME '=' expr
	{
		$$ = new Assign( new Name($1), $3 );
	}
	| INT_LIT
	{
		$$ = new IntLit($1);
	}
	| UNSIGNED_LIT
	{
		$$ = new UnsignedLit($1);
	}
	| UNSIGNED_LONG_LIT
	{
		$$ = new UnsignedLongLit($1);
	}
	| LONG_LIT
	{
		$$ = new LongLit($1);
	}
	| DOUBLE_LIT
	{
		$$ = new DoubleLit($1);
	}
	| STRING_LIT
	{
		$$ = new StringLit($1);
	}
	| RAW_STRING_LIT
	{
		$$ = new RawStringLit($1);
	}
	| TRUE
	{
		$$ = new BoolLit($1);
	}
	| FALSE
	{
		$$ = new BoolLit($1);
	}
	| expr '+' expr
	{
		$$ = new Add($1, $3 );
	}
	| expr '-' expr
	{
		$$ = new Sub($1, $3);
	}
	| expr '*' expr
	{
		$$ = new Mul($1, $3);
	}
	| expr '/' expr
	{
		$$ = new Div($1, $3);
	}
	| expr '%' expr
	{
		$$ = new Mod($1, $3);
	}
	| INC expr
	{
		$$ = new Inc( $2 );
	}
	| DEC expr
	{
		$$ = new Dec( $2 );
	}
	| expr POST_INC
	{
		$$ = new PostInc( $1 );
	}
	| expr POST_DEC
	{
		$$ = new PostDec( $1 );
	}
	| expr NE expr
	{
		$$ = new NotEq( $1, $3 );
	}
	| expr EQ expr
	{
		$$ = new Eq( $1, $3 );
	}
	| expr GE expr
	{
		$$ = new GreaterEq( $1, $3 );
	}
	| expr GT expr
	{
		$$ = new Greater( $1, $3 );
	}
	| expr LE expr
	{
		$$ = new LessEq( $1, $3 );
	}
	| expr LT expr
	{
		$$ = new Less( $1, $3 );
	}
	| expr '.' expr
	{
		$$ = new Dot( $1, $3 );
	}
	| expr P_ASS expr
	{
		$$ = new AddAssign( $1, $3 );
	}
	| expr S_ASS expr
	{
		$$ = new SubAssign( $1, $3 );
	}
	| expr M_ASS expr
	{
		$$ = new MulAssign( $1, $3 );
	}
	| expr D_ASS expr
	{
		$$ = new DivAssign( $1, $3 );
	}
	| expr m_ASS expr
	{
		$$ = new ModAssign( $1, $3 );
	}
	| expr A_ASS expr
	{
		$$ = new AndAssign( $1, $3 );
	}
	| expr O_ASS expr
	{
		$$ = new OrAssign( $1, $3 );
	}
	| expr X_ASS expr
	{
		$$ = new XorAssign( $1, $3 );
	}
	| expr LOR expr
	{
		$$ = new Lor( $1, $3 );
	}
	| expr LAND expr
	{
		$$ = new Land( $1, $3 );
	}
	| expr OR expr
	{
		$$ = new Or( $1, $3 );
	}
	| expr XOR expr
	{
		$$ = new Xor( $1, $3 );
	}
	| expr AND expr
	{
		$$ = new And( $1, $3 );
	}
	| expr '[' exprList ']'
	{
		$$ = new Index( $1, $3 );
	}
	| expr '(' ')'
	{
		$$ = new FuncCall( $1 );
	}
	| expr '(' exprList ')'
	{
		$$ = new FuncCall( $1, $3 );
	}
	| '!' expr
	{
		$$ = new Lnot( $2 );
	}
	| '~' expr
	{
		$$ = new Not( $2 );
	}
	| '-' expr %prec UNIARY_MINUS
	{
		$$ = new Minus( $2 );
	}
	| expr JOIN expr WHERE expr
	{
		$$ = new Join( $1, $3, $5 );
	}
	| expr LJOIN expr WHERE expr
	{
		$$ = new LeftJoin( $1, $3, $5 );
	}
	| expr RJOIN expr WHERE expr
	{
		$$ = new RightJoin( $1, $3, $5 );
	}
	| expr OJOIN expr WHERE expr
	{
		$$ = new OuterJoin( $1, $3, $5 );
	}
	| expr '?' expr ':' expr
	{
		$$ = new Conditional( $1, $3, $5 );
	}
	;

exprList
	: exprList ',' expr
	{
		$$ = $1;
		$$->push_back($3);
	}
	| expr
	{
		$$ = new std::vector<Expr *>();
		$$->push_back($1);
	}
	;

%%
