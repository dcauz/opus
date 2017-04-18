%{

#include "yyerror.h"
#include "yylex.h"
#include "parse_context.h"
#include "expr.h"
#include "statement.h"
#include "symtbl.h"

#include "bool.h"
#include "complex.h"
#include "dequeue.h"
#include "dynamic.h"
#include "enum.h"
#include "float.h"
#include "integer.h"
#include "matrix.h"
#include "multiset.h"
#include "object.h"
#include "pqueue.h"
#include "queue.h"
#include "rational.h"
#include "real.h"
#include "set.h"
#include "stack.h"
#include "string.h"
#include "tensor.h"
#include "vector.h"
#include "void.h"

%}

%token ALIAS					"alias"

%token BOOL						"bool"	
%token BREAK					"break"

%token C						"C"
%token CASE						"case"
%token CLASS					"class"
%token CONSTRAINTS				"constraints"
%token CONTINUE					"continue"

%token DEFAULT					"default"
%token DEQUEUE					"dequeue"
%token DOT_DOT_DOT				"..."
%token <dbl> DOUBLE_LIT			"double-literal"
%token DYNAMIC					"dynamic"

%token _E						"e"
%token ELSE						"else"
%token ENUM						"enum"

%token <b> FALSE				"false"
%token FLOAT					"float"
%token FOR						"for"
%token FUN						"fun"

%token GRAMMAR					"grammar"

%token I 						"i"
%token IF 						"if"
%token IMPLES					":-"
%token <i32> INT_LIT			"int-literal"
%token INVALID_NUMBER			"invalid-number"
%token INVALID_STRING			"invalid-string"
%token ISNULL					"isnull"

%token <i64> LONG_LIT			"long-literal"

%token MATRIX					"matrix"
%token MULTISET					"multiset"

%token N						"N"
%token <str> NAME				"name"
%token _NULL					"null"

%token OBJECT					"object"

%token _PI						"pi"
%token PQUEUE					"pqueue"

%token Q						"Q"
%token QUEUE					"queue"

%token R						"R"
%token <str> RAW_STRING_LIT		"raw-string-literal"
%token RETURN					"return"

%token SET						"set"
%token STACK					"stack"
%token STRING					"string"
%token <str> STRING_LIT			"string-literal"
%token SWITCH					"switch"

%token TENSOR					"tensor"
%token <b> TRUE					"true"
%token TUPLE					"tuple"

%token <u32> UNSIGNED_LIT		"unsigned-literal"
%token <u64> UNSIGNED_LONG_LIT	"unsigned-long-literal"

%token VECTOR					"vector"
%token VOID						"void"

%token WHERE					"where"

%token Z						"Z"

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
%type <dcl>  constraints
%type <dcl>  definition
%type <dclL> definitions
%type <i32>  dim
%type <i32L> dims
%type <ex>   expr
%type <ex>   exprs
%type <exL>  exprList
%type <fdef> function
%type <dcl>  grammar
%type <en>   member
%type <enL>  members
%type <rdef> routine
%type <ex>   row
%type <ex>   rows
%type <st>   statement
%type <stL>  statements
%type <ty>   type
%type <tdef> typeDef
%type <vdef> variableDefinition

%expect 56

%define api.pure

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
               RoutineDef * rdef;
                   FunDef * fdef;
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
	: routine
	{
		$$ = $1;
	}
	| function
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
	| grammar
	{
		$$ = $1;
	}
	| constraints
	{
		$$ = $1;
	}
	;

routine
	: type NAME '(' args ')'
	{
		$$ = new RoutineDef( context->start, context->end, $1, $2, $4 );
	}
	| type NAME '(' args ')' body
	{
		$$ = new RoutineDef( context->start, context->end, $1, $2, $4, $6 );
	}
	;

function
	: FUN NAME '(' args ')' '=' expr
	{
		$$ = new FunDef( context->start, context->end, $2, $4, $7 );
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
	: type NAME
	{
		$$ = new VarDef( context->start, context->end, $1, $2 );
	}
	;

alias
	: ALIAS NAME '=' type
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
	| Z
	{
		$$ = &integerType;
	}
	| FLOAT
	{
		$$ = &floatType;
	}
	| Q
	{
		$$ = &rationalType;
	}
	| R
	{
		$$ = &realType;
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
	| MULTISET '<' type '>'
	{
		$$ = new MultisetType( $3 );
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
	: expr
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
	| BREAK
	{
		$$ = new Break(context->start);
	}
	| CONTINUE
	{
		$$ = new Continue(context->start);
	}
	| RETURN expr
	{
		$$ = new Return( context->start, context->end, $2 );
	}
	| '{' statements '}'
	{
		$$ = new Block( context->start, context->end, $2 );
	}
	;

expr
	: NAME '=' expr
	{
		$$ = new Assign( new Name($1), $3 );
	}
	| INT_LIT
	{
		$$ = new Integer($1);
	}
	| I
	{
		$$ = new Complex(0,1);
	}
	| _E
	{
		$$ = new E;
	}
	| _NULL
	{
		$$ = new Void;
	}
	| ISNULL '(' expr ')'
	{
		$$ = new IsVoid( $3 );
	}
	| _PI
	{
		$$ = new PI;
	}
	| UNSIGNED_LIT
	{
		$$ = new Integer($1);
	}
	| UNSIGNED_LONG_LIT
	{
		$$ = new Integer($1);
	}
	| LONG_LIT
	{
		$$ = new Integer($1);
	}
	| DOUBLE_LIT
	{
		$$ = new Float($1);
	}
	| STRING_LIT
	{
		$$ = new String($1);
	}
	| RAW_STRING_LIT
	{
		$$ = new String($1);
	}
	| '(' expr ')'
	{
		$$ = $2;
	}
	| rows
	{
		$$ = static_cast<Expr *>(nullptr);
	}
	| TRUE
	{
		$$ = new Bool($1);
	}
	| FALSE
	{
		$$ = new Bool($1);
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

rows
	: rows row
	{
		$$ = static_cast<Expr *>(nullptr);
	}
	| row
	{
		$$ = static_cast<Expr *>(nullptr);
	}
	;

row
	: '|' exprs '|'
	{
		$$ = static_cast<Expr *>(nullptr);
	}
	| '|' '|'
	{
		$$ = static_cast<Expr *>(nullptr);
	}
	;

exprs
	: exprs expr
	{
		$$ = static_cast<Expr *>(nullptr);
	}
	| expr
	{
		$$ = static_cast<Expr *>(nullptr);
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

grammar
	: GRAMMAR NAME '{' grammarDefs '}'
	{
		$$ = static_cast<Definition *>(nullptr); // TODO
	}
	;

grammarDefs
	: grammarDefs grammarDef
	| grammarDef
	;

grammarDef
	: tokenDef
	| ruleDef
	;

tokenDef
	: type NAME '=' STRING_LIT
	;

ruleDef
	: NAME ':' names ';'
	| NAME ':' ';'
	;

names
	: names NAME
	| NAME
	;

constraints
	: CONSTRAINTS NAME '{' constraintDefs '}'
	{
		$$ = static_cast<Definition *>(nullptr); // TODO
	}
	;

constraintDefs
	: constraintDefs constraint
	| constraint
	;

constraint
	: NAME '(' args ')' IMPLES exprs
	;

%%

