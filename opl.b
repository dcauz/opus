%{

#include <memory>
#include <cstring>

#include "yyerror.h"
#include "yylex.h"
#include "parse_context.h"
#include "expr.h"
#include "statement.h"
#include "symtbl.h"

#include "bool.h"
#include "complex.h"
#include "constraints.h"
#include "datetime.h"
#include "dequeue.h"
#include "dynamic.h"
#include "enum.h"
#include "float.h"
#include "grammar.h"
#include "integer.h"
#include "matrix.h"
#include "multiset.h"
#include "nodes.h"
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
%token <ex>  DATE_LIT       "date-literal"
%token <ex> DATETIME_LIT    "datetime-literal"
%token <ex>  PERIOD_LIT     "period-literal"
%token <ex>  TIME_LIT       "time-literal"

%token ALIAS				"alias"
%token AS					"as"
%token ATOMIC				"atomic"

%token BOOL					"bool"	
%token BREAK				"break"
%token BY					"by"

%token C					"C"
%token CASE					"case"
%token CLASS				"class"
%token <str> CLASS_NAME		"class-name"
%token CONTINUE				"continue"

%token DATE                 "date"
%token DATETIME             "datetime"
%token DEFAULT				"default"
%token DEQUEUE				"dequeue"
%token DISTINCT				"distinct"
%token DOT_DOT			    ".."
%token DYNAMIC				"dynamic"

%token _E					"e"
%token ELSE					"else"
%token ENUM					"enum"

%token <b> FALSE			"false"
%token FLOAT				"float"
%token <dbl> FLOAT_LIT		"float-literal"
%token FOR					"for"
%token FROM					"from"
%token FUN					"fun"

%token GRAMMAR				"grammar"
%token GROUP				"group"

%token HAVING				"having"

%token I 					"i"
%token IF 					"if"
%token IMPORT				"import"
%token IN					"in"
%token <i32> INT_LIT		"int-literal"
%token <i> INTEGER_LIT		"integer-literal"
%token INTERSECT			"intersect"
%token INVALID_NUMBER		"invalid-number"
%token INVALID_STRING		"invalid-string"
%token ISNULL				"isnull"

%token JOIN					"join"

%token LEFT					"left"
%token <i64> LONG_LIT		"long-literal"

%token M_MULT				"(*)"
%token M_DIV 				"(/)"
%token MATRIX				"matrix"
%token MODEL				"model"
%token MULTISET				"multiset"

%token N					"N"
%token <str> NAME			"name"
%token _NULL				"null"

%token OBJECT				"object"
%token ORDER 				"order"
%token OUTER				"outer"

%token PERCENT				"percent"
%token PERIOD               "period"
%token _PI					"pi"
%token POW					"**"
%token PQUEUE				"pqueue"

%token Q					"Q"
%token QUEUE				"queue"

%token R					"R"
%token <i> RATIONAL_LIT		"rational-literal"
%token RETURN				"return"
%token RIGHT				"right"

%token SELECT				"select"
%token SET					"set"
%token SHARED				"shared"
%token STACK				"stack"
%token STRING				"string"
%token <str> STRING_LIT		"string-literal"
%token SWITCH				"switch"

%token TENSOR				"tensor"
%token TIES					"ties"
%token TIME                 "time"
%token TOP					"top"
%token <b> TRUE				"true"
%token TUPLE				"tuple"

%token UNION				"union"
%token UNIQUE				"unique"

%token IND					"ind"
%token VECTOR				"vector"
%token VOID					"void"

%token WEAK					"weak"
%token WHERE				"where"
%token WITH					"with"

%token Z					"Z"

%token A_ASS 				"&="
%token D_ASS 				"/="
%token M_ASS 				"*="
%token O_ASS 				"|="
%token P_ASS 				"+="
%token S_ASS 				"-="
%token X_ASS				"^="
%token m_ASS 				"%="

%token IMPLES				":-"

%token EQ					"=="
%token GE					">="
%token LE					"<="
%token NE					"!="

%token DEC					"--"
%token INC					"++"
%token POST_DEC				".--"
%token POST_INC				".++"

%token UNIARY_MINUS			"-"


%right '=' P_ASS S_ASS M_ASS D_ASS m_ASS A_ASS O_ASS X_ASS '?' ':'
%left IN DOT_DOT
%left UNION INTERSECT
%left '|'
%left '&'
%left '^'
%right NE EQ
%right GE '>' LE '<'
%left JOIN LEFT RIGHT OUTER WHERE
%left '+' '-'
%left '*' '/' '%' M_MULT M_DIV
%right POW 
%left '.' 
%nonassoc '!' UNIARY_MINUS 
%left '(' '['


%type <adef> alias
%type <ar>   arg
%type <arL>  args
%type <ex>   assignment
%type <bl>   body
%type <col>  col
%type <cols> colList
%type <ex>   condExpr
%type <cd>   constraintDef
%type <cds>  constraintDefs
%type <cdef> ctor
%type <dcl>  model
%type <ex>   decExpr
%type <dcl>  definition
%type <dclL> definitions
%type <i32>  dim
%type <i32L> dims
%type <i32>  optDistinct
%type <ex>   expr
%type <exL>  exprList
%type <fdef> function
%type <dcl>  grammar
%type <gd>   grammarDef
%type <gds>  grammarDefs
%type <gb>   optGroupBy
%type <h>    optHaving
%type <dcl>  indeterminate
%type <dcl>  import
%type <dclL> imports
%type <ex>   incExpr
%type <ex>   literal
%type <ex>   lvalue
%type <en>   member
%type <enL>  members
%type <nL>   nameList
%type <i32>  declarators
%type <rdef> routine
%type <gd>   ruleDef
%type <ex>   sExpr
%type <st>   statement
%type <stL>  statements
%type <top>	 optTop
%type <gd>	 tokenDef
%type <nL>   tokens
%type <dclL> topDefinitions
%type <ty>   type
%type <ty>   typeDecl
%type <tdef> typeDef
%type <vdef> variableDefinition
%type <str>  varFrom
%type <exL>  varWhere
%type <ex>   wConstraint
%type <exL>  wConstraints
%type <w>    optWhere


%expect 74


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
     std::vector<up<Arg>> * arL;

                    Block * bl;
                       bool b;

            ConstraintDef * cd;
std::vector<up<ConstraintDef>> 
                          * cds;
                   Column * col;
    std::vector<up<Column>> 
                          * cols;
                  CtorDef * cdef;

                     double dbl;
               Definition * dcl;
std::vector<up<Definition>> * dclL;

               EnumMember * en;
std::vector<up<EnumMember>> * enL;
                     Expr * ex;
      std::vector<up<Expr>> * exL;

                   FunDef * fdef;

               GrammarDef * gd;
std::vector<up<GrammarDef>> * gds;
                  GroupBy * gb;

                   Having * h;

                     char * i;
                        int i32;
         std::vector<int> * i32L;
                    int64_t i64;

 std::vector<std::string> * nL;

                       char r[1024];
               RoutineDef * rdef;

                Statement * st;
std::vector<up<Statement>> * stL;
                       char str[1024];

                      Top * top;
                     Type * ty;
                  TypeDef * tdef;

               unsigned int u32;
              unsigned long u64;

                   VarDef * vdef;

                    Where * w;
}

%%

program
	: imports topDefinitions
	{
		// TODO
	}
	| imports
	{
		// TODO
	}
	| topDefinitions
	{
		// TODO
	}
	;

imports
	: imports import
	{
		$$ = nullptr; // TODO
	}
	| import
	{
		$$ = nullptr; // TODO
	}
	;

import
	: IMPORT NAME
	{
		$$ = nullptr; // TODO
	}
	;

topDefinitions
	: topDefinitions definition
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
	| ctor
	{
		$$ = $1;
	}
	| indeterminate
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
	| model
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

ctor
	: CLASS_NAME '(' args ')'
	{
		$$ = new CtorDef( context->start, context->end, $1, $3 );
	}
	| NAME '(' args ')' body
	{
		$$ = new CtorDef( context->start, context->end, $1, $3, $5 );
	}
	;

function
	: FUN NAME '(' args ')' '=' expr
	{
		$$ = new FunDef( context->start, context->end, $2, $4, $7 );
	}
	;

indeterminate
	: IND nameList
	{
		$$ = new Variables( context->start, context->end, $2 );
	}

grammar
	: GRAMMAR NAME '{' grammarDefs '}'
	{
		$$ = new Grammar( context->start, context->end, $2, $4 );
	}
	;

model
	: MODEL NAME '{' constraintDefs '}'
	{
		$$ = new Constraints( context->start, context->end, $2, $4 );
	}
	;

nameList
	: nameList ',' NAME
	{
		$$ = $1;
		$$->push_back($3);
	}
	| NAME
	{
		$$ = new std::vector<std::string>();
		$$->push_back($1);
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
		$$->push_back(up<Arg>($3));
	}
	| arg
	{
		$$ = new std::vector<up<Arg>>();
		$$->push_back(up<Arg>($1));
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
		$$ = new VarDef( context->start, context->end, $1, $2, 0, nullptr, static_cast<const char *>(nullptr) );
	}
	| declarators type NAME 
	{
		$$ = new VarDef( context->start, context->end, $2, $3, $1, nullptr, static_cast<const char *>(nullptr) );
	}
	| type NAME varFrom
	{
		$$ = new VarDef( context->start, context->end, $1, $2, 0, nullptr, $3 );
	}
	| declarators type NAME varFrom
	{
		$$ = new VarDef( context->start, context->end, $2, $3, $1, nullptr, $4);
	}

	| type NAME varWhere 
	{
		$$ = new VarDef( context->start, context->end, $1, $2, 0, $3, static_cast<const char *>(nullptr) );
	}
	| declarators type NAME varWhere 
	{
		$$ = new VarDef( context->start, context->end, $2, $3, $1, $4, static_cast<const char *>(nullptr));
	}
	| type NAME varWhere varFrom
	{
		$$ = new VarDef( context->start, context->end, $1, $2, 0, $3, $4 );
	}
	| declarators type NAME varWhere varFrom
	{
		$$ = new VarDef( context->start, context->end, $2, $3, $1, $4, $5 );
	}


	| type NAME '=' expr
	{
		$$ = new VarDef( context->start, context->end, $1, $2, 0, nullptr, $4 );
	}
	| declarators type NAME '=' expr
	{
		$$ = new VarDef( context->start, context->end, $2, $3, $1, nullptr, $5 );
	}
	| type NAME varWhere '=' expr
	{
		$$ = new VarDef( context->start, context->end, $1, $2, 0, $3, $5 );
	}
	| declarators type NAME varWhere '=' expr
	{
		$$ = new VarDef( context->start, context->end, $2, $3, $1, $4, $6 );
	}
	;

varWhere
	: WHERE wConstraints
	{
		$$ = $2;
	}
	;

wConstraints
	: wConstraints ',' wConstraint
	{
		$$ = $1;
		$$->push_back(up<Expr>($3));
	}
	| wConstraint
	{
		$$ = new std::vector<up<Expr>>();
		$$->push_back(up<Expr>($1));
	}
	;

wConstraint
	: OBJECT DISTINCT
	{
		$$ = nullptr; // TODO
	}
	| ORDER BY expr
	{
		$$ = nullptr; // TODO
	}
	| ORDER BY '(' exprList ')'
	{
		$$ = nullptr; // TODO
	}
	| expr DISTINCT
	{
		$$ = nullptr; // TODO
	}
	| '(' exprList ')' DISTINCT
	{
		$$ = nullptr; // TODO
	}
	| expr
	;

varFrom
	: FROM STRING_LIT
	{
		strcpy($$, $2 );
	}
	;

declarators
	: ATOMIC
	{
		$$ = ATOMIC;
	}
	| UNIQUE
	{
		$$ = UNIQUE;
	}
	| SHARED
	{
		$$ = SHARED;
	}
	| WEAK
	{
		$$ = WEAK;
	}
	| ATOMIC UNIQUE
	{
		$$ = UNIQUE + ATOMIC;
	}
	| ATOMIC SHARED
	{
		$$ = SHARED + ATOMIC;
	}
	| ATOMIC WEAK
	{
		$$ = WEAK + ATOMIC;
	}
	| UNIQUE ATOMIC 
	{
		$$ = UNIQUE + ATOMIC;
	}
	| SHARED ATOMIC
	{
		$$ = SHARED + ATOMIC;
	}
	| WEAK ATOMIC
	{
		$$ = WEAK + ATOMIC;
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
		$$->push_back(up<EnumMember>($3));
	}
	| member
	{
		$$ = new std::vector<up<EnumMember>>();
		$$->push_back(up<EnumMember>($1));
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
		$$->push_back(up<Definition>($2));
	}
	| definition
	{
		$$ = new std::vector<up<Definition>>();
		$$->push_back(up<Definition>($1));
	}
	;

type
	: typeDecl '?'
	{
		$$ = new Nullable( $1 );
	}
	| typeDecl
	{
		$$ = $1;
	}
	;

typeDecl
	: NAME
	{
		$$ = context->symtbl.findType($1);
	}
	| Z
	{
		$$ = &integerType;
	}
	| Z '[' expr ']'
	{
		$$ = &integerType;
	}
	| Z '[' expr ',' expr ']'
	{
		$$ = &integerType;
	}
	| Z '[' expr ',' ']'
	{
		$$ = &integerType;
	}
	| N
	{
		$$ = &naturalType;
	}
	| N '[' expr ']'
	{
		$$ = &naturalType;
	}
	| N '[' expr ',' expr ']'
	{
		$$ = &naturalType;
	}
	| N '[' expr ',' ']'
	{
		$$ = &naturalType;
	}
	| FLOAT
	{
		$$ = &floatType;
	}
	| Q
	{
		$$ = &rationalType;
	}
	| Q '[' expr ']'
	{
		$$ = &rationalType;
	}
	| Q '[' expr ',' expr ']'
	{
		$$ = &rationalType;
	}
	| Q '[' expr ',' ']'
	{
		$$ = &rationalType;
	}
	| R
	{
		$$ = &realType;
	}
	| R '[' expr ']'
	{
		$$ = &realType;
	}
	| R '[' expr ',' expr ']'
	{
		$$ = &realType;
	}
	| R '[' expr ',' ']'
	{
		$$ = &realType;
	}
	| STRING
	{
		$$ = &stringType;
	}
	| DATE
	{
		$$ = &dateType;
	}
	| DATETIME
	{
		$$ = &datetimeType;
	}
	| TIME
	{
		$$ = &timeType;
	}
	| PERIOD
	{
		$$ = &periodType;
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
		$$->push_back(up<Statement>($2));
	}
	| statement
	{
		$$ = new std::vector<up<Statement>>();
		$$->push_back(up<Statement>($1));
	}
	;

statement
	: sExpr
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
	| ATOMIC '{' statements '}'
	{
		$$ = new AtomicBlock( context->start, context->end, $3 );
	}
	| '{' statements '}'
	{
		$$ = new Block( context->start, context->end, $2 );
	}
	;

sExpr
	: assignment
	| incExpr
	| decExpr
	;

assignment
	: lvalue '=' expr
	{
		$$ = new Assign( $1, $3 );
	}
	| lvalue P_ASS expr
	{
		$$ = new AddAssign( $1, $3 );
	}
	| lvalue S_ASS expr
	{
		$$ = new SubAssign( $1, $3 );
	}
	| lvalue M_ASS expr
	{
		$$ = new MulAssign( $1, $3 );
	}
	| lvalue D_ASS expr
	{
		$$ = new DivAssign( $1, $3 );
	}
	| lvalue m_ASS expr
	{
		$$ = new ModAssign( $1, $3 );
	}
	| lvalue A_ASS expr
	{
		$$ = new AndAssign( $1, $3 );
	}
	| lvalue O_ASS expr
	{
		$$ = new OrAssign( $1, $3 );
	}
	| lvalue X_ASS expr
	{
		$$ = new XorAssign( $1, $3 );
	}
	;


lvalue
	: NAME
	{
	}
	| lvalue '[' expr ']'
	{
	}
	| lvalue '.' lvalue
	{
	}
	;

incExpr
	: INC lvalue
	{
		$$ = new Inc( $2 );
	}
	| lvalue INC %prec POST_INC
	{
		$$ = new PostInc( $1 );
	}
	;

decExpr
	: DEC lvalue
	{
		$$ = new Dec( $2 );
	}
	| lvalue DEC %prec POST_DEC
	{
		$$ = new PostDec( $1 );
	}
	;

literal
	: INT_LIT
	{
		$$ = new Integer($1);
	}
	| INTEGER_LIT
	{
		$$ = new Integer($1);
	}
	| RATIONAL_LIT
	{
		$$ = new Rational($1);
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
	| _PI
	{
		$$ = new PI;
	}
	| LONG_LIT
	{
		$$ = new Integer($1);
	}
	| FLOAT_LIT
	{
		$$ = new Float($1);
	}
	| STRING_LIT
	{
		$$ = new String($1);
	}
	| TRUE
	{
		$$ = new Bool($1);
	}
	| FALSE
	{
		$$ = new Bool($1);
	}
	| '<' exprList '>'
	{
		$$ = nullptr; // TODO
	}
	| '{' exprList '}'
	{
		$$ = nullptr; // TODO
	}
	| DATE_LIT
	| DATETIME_LIT
	| PERIOD_LIT
	| TIME_LIT
	;

condExpr
	: ISNULL '(' expr ')'
	{
		$$ = new IsVoid( $3 );
	}
	| expr IN expr
	{
		$$ = new In($1, $3 );
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
	| expr '>' expr
	{
		$$ = new Greater( $1, $3 );
	}
	| expr LE expr
	{
		$$ = new LessEq( $1, $3 );
	}
	| expr '<' expr
	{
		$$ = new Less( $1, $3 );
	}
	| '!' expr
	{
		$$ = new Not( $2 );
	}
	;
	
expr
	: literal
	| condExpr
	| incExpr
	| decExpr
	| '(' expr ')'
	{
		$$ = $2;
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
	| expr M_MULT expr
	{
		$$ = new Mul($1, $3);
	}
	| expr M_DIV expr
	{
		$$ = new Mul($1, $3);
	}
	| expr '%' expr
	{
		$$ = new Mod($1, $3);
	}
	| expr POW expr
	{
		$$ = new Div($1, $3);
	}
	| expr '.' expr
	{
		$$ = new Dot( $1, $3 );
	}
	| expr '|' expr
	{
		$$ = new Or( $1, $3 );
	}
	| expr '^' expr
	{
		$$ = new Xor( $1, $3 );
	}
	| expr '&' expr
	{
		$$ = new And( $1, $3 );
	}
	| expr DOT_DOT expr
	{
		$$ = nullptr; // TODO
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
	| '-' expr %prec UNIARY_MINUS
	{
		$$ = new Minus( $2 );
	}
	| expr JOIN expr 
	{
		$$ = new Join( $1, $3, nullptr );
	}
	| expr LEFT JOIN expr 
	{
		$$ = new LeftJoin( $1, $4, nullptr );
	}
	| expr RIGHT JOIN expr 
	{
		$$ = new RightJoin( $1, $4, nullptr );
	}
	| expr OUTER JOIN expr
	{
		$$ = new OuterJoin( $1, $4, nullptr );
	}
	| expr UNION expr
	{
		$$ = new Union( $1, $3 );
	}
	| expr INTERSECT expr
	{
		$$ = new Intersect( $1, $3 );
	}
	| expr '?' expr ':' expr
	{
		$$ = new Conditional( $1, $3, $5 );
	}
	| SELECT optDistinct optTop colList FROM 
		nameList 
		optWhere 
		optGroupBy 
		optHaving
	{
		$$ = new SelectEx( $2, $3, $4, $6, $7, $8, $9 );
	}
	;


colList
	: colList ',' col
	{
		$$ = $1;
		$$->push_back(up<Column>($3));
	}
	| col
	{
		$$ = new std::vector<up<Column>>();
		$$->push_back(up<Column>($1));
	}
	;

col
	: '*'
	{
		$$ = new Column();
	}
	| expr
	{
		$$ = new Column( $1 );
	}
	| expr AS NAME
	{
		$$ = new Column( $1, $3 );
	}
	;

optDistinct
	:
	{
		$$ = 0;
	}
	| DISTINCT
	{
		$$ = DISTINCT;
	}
	;

optTop
	:
	{
		$$ = nullptr;
	}
	| TOP expr
	{
		$$ = new Top( $2 );
	}
	| TOP expr PERCENT
	{
		$$ = new Top( $2, true );
	}
	| TOP expr WITH TIES
	{
		$$ = new Top( $2, false, true );
	}
	| TOP expr PERCENT WITH TIES
	{
		$$ = new Top( $2, true, true );
	}
	;

optWhere 
	:
	{
		$$ = nullptr;
	}
	| WHERE expr
	{
		$$ = new Where($2);
	}
	;

optGroupBy 
	:
	{
		$$ = nullptr;
	}
	| GROUP BY expr
	{
		$$ = new GroupBy($3);
	}
	;

optHaving
	:
	{
		$$ = nullptr;
	}
	| HAVING expr
	{
		$$ = new Having($2);
	}
	;

exprList
	: exprList ',' expr
	{
		$$ = $1;
		$$->push_back(up<Expr>($3));
	}
	| expr
	{
		$$ = new std::vector<up<Expr>>();
		$$->push_back(up<Expr>($1));
	}
	;

grammarDefs
	: grammarDefs grammarDef
	{
		$$ = $1;
		$$->push_back(up<GrammarDef>($2));
	}
	| grammarDef
	{
		$$ = new std::vector<up<GrammarDef>>();
		$$->push_back(up<GrammarDef>($1));
	}
	;

grammarDef
	: tokenDef
	| ruleDef
	;

tokenDef
	: type NAME '=' STRING_LIT
	{
		$$ = new TokenDef( $2, $4 );
	}
	;

ruleDef
	: NAME ':' tokens ';'
	{
		$$ = new RuleDef( $1, $3 );
	}
	| NAME ':' ';'
	{
		$$ = new RuleDef( $1, nullptr );
	}
	;

tokens
	: tokens NAME
	{
		$$ = $1;
		$$->push_back($2);
	}
	| tokens STRING_LIT
	{
		$$ = $1;
		$$->push_back($2);
	}
	| NAME
	{
		$$ = new std::vector<std::string>();
		$$->push_back($1);
	}
	| STRING_LIT
	{
		$$ = new std::vector<std::string>();
		$$->push_back($1);
	}
	;

constraintDefs
	: constraintDefs constraintDef
	{
		$$ = $1;
		$$->push_back(up<ConstraintDef>($2));
	}
	| constraintDef
	{
		$$ = new std::vector<up<ConstraintDef>>();
		$$->push_back(up<ConstraintDef>($1));
	}
	;

constraintDef
	: NAME '(' nameList ')' IMPLES exprList
	{
		$$ = new ConstraintDef( $1, $3, $6 );
	}
	;

%%

