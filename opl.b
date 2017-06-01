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
#include "regex.h"
#include "set.h"
#include "stack.h"
#include "string.h"
#include "tensor.h"
#include "tuple.h"
#include "vector.h"
#include "void.h"

%}

%union
{

                      Arg * ar;
     std::vector<up<Arg>> * arL;

                    Block * bl;
                       bool b;

               CatchBlock * cb;
std::vector<up<CatchBlock>>* cbL;
            ConstraintDef * cd;
std::vector<up<ConstraintDef>> 
                          * cds;
                   Column * col;
    std::vector<up<Column>> 
                          * cols;

                     double dbl;

               EnumMember * en;
std::vector<up<EnumMember>> * enL;
                     Expr * ex;
      std::vector<up<Expr>> * exL;

               GrammarDef * gd;
std::vector<up<GrammarDef>> * gds;
                  GroupBy * gb;

                   Having * h;

                     char * i;
                        int i32;
         std::vector<int> * i32L;
                    int64_t i64;

 std::vector<std::string> * nL;
std::pair<std::string,up<Expr>> *
                            nv;
std::vector<up<std::pair<std::string,up<Expr>>>> *
                            nvL;

                       char r[1024];

                Statement * st;
std::vector<up<Statement>> * stL;
                       char str[1024];

 std::vector<up<TypeArg>> * tnL;
                      Top * top;
                     Type * ty;

               unsigned int u32;
              unsigned long u64;

                    Where * w;
}

%token ALIAS				"alias"
%token AS					"as"
%token ATOMIC				"atomic"

%token BOOL					"bool"	
%token BREAK				"break"
%token BY					"by"

%token C					"C"
%token CASE					"case"
%token CATCH                "catch"
%token CLASS				"class"
%token <str> CLASS_NAME		"class-name"
%token CONST				"const"
%token CONTINUE				"continue"

%token DATE                 "date"
%token <ex>  DATE_LIT       "date-literal"
%token DATETIME             "datetime"
%token <ex> DATETIME_LIT    "datetime-literal"
%token DEFAULT				"default"
%token DELETE               "delete"
%token DEQUEUE				"dequeue"
%token DISTINCT				"distinct"
%token DO                   "do"
%token DOT_DOT			    ".."
%token DYNAMIC				"dynamic"

%token ELSE					"else"
%token ENUM					"enum"

%token <b> FALSE			"false"
%token FINAL				"final"
%token FLOAT				"float"
%token <dbl> FLOAT_LIT		"float-literal"
%token FOR					"for"
%token FROM					"from"
%token FUN					"fun"

%token GRAMMAR				"grammar"
%token GROUP				"group"

%token HAVING				"having"

%token IF 					"if"
%token IMPORT				"import"
%token IN					"in"
%token INSERT               "insert"
%token <i32> INT_LIT		"int-literal"
%token <i> INTEGER_LIT		"integer-literal"
%token INTERFACE			"interface"
%token INTO                 "into"
%token INVALID_NUMBER		"invalid-number"
%token INVALID_STRING		"invalid-string"
%token ISVOID				"isvoid"

%token JOIN					"join"

%token LEFT					"left"
%token <i64> LONG_LIT		"long-literal"

%token MATRIX				"matrix"
%token MODEL				"model"
%token MULTISET				"multiset"

%token N					"N"
%token <str> NAME			"name"
%token NAMESPACE			"namespace"

%token OBJECT				"object"
%token OPERATOR 			"operator"
%token ORDER 				"order"
%token OUTER				"outer"
%token OVERRIDE         	"override"

%token PERCENT				"percent"
%token DURATION             "duration"
%token <ex>  DURATION_LIT   "duration-literal"

%token POW					"**"
%token PQUEUE				"pqueue"
%token PRIVATE              "private"

%token Q					"Q"
%token QUEUE				"queue"

%token R					"R"
%token <i> RATIONAL_LIT		"rational-literal"
%token REGEX                "regex"
%token <ex> REGEX_LIT       "regex-literal"
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
%token THROW                "throw"
%token TIES					"ties"
%token TIME                 "time"
%token <ex>  TIME_LIT       "time-literal"
%token TOP					"top"
%token <b> TRUE				"true"
%token TRY                  "try"
%token TUPLE				"tuple"

%token UNION				"union"
%token UNIQUE				"unique"
%token UNTIL				"until"
%token UPDATE               "update"

%token VALUES               "values"
%token VECTOR				"vector"
%token VOID					"void"

%token WEAK					"weak"
%token WHERE				"where"
%token WHILE                "while"
%token WITH					"with"

%token Z					"Z"


%token IMPLES				":-"

%token M_MULT				"(*)"
%token M_DIV 				"(/)"

%token A_ASS 				"&="
%token D_ASS 				"/="
%token M_ASS 				"*="
%token O_ASS 				"|="
%token P_ASS 				"+="
%token S_ASS 				"-="
%token X_ASS				"^="
%token m_ASS 				"%="

%token EQ					"=="
%token GE					">="
%token LE					"<="
%token NE					"!="

%token DEC					"--"
%token INC					"++"
%token POST_DEC				".--"
%token POST_INC				".++"

%token UNIARY_MINUS			"-"


%right '=' P_ASS S_ASS M_ASS D_ASS m_ASS A_ASS O_ASS X_ASS ':'
%left IN DOT_DOT
%left '|'
%left '&'
%left '^'
%right NE EQ
%right GE '>' LE '<'
%left JOIN LEFT RIGHT OUTER WHERE
%left '+' '-'
%left '*' '/' '%' M_MULT M_DIV
%right POW 
%nonassoc '!' UNIARY_MINUS INC DEC POST_DEC POST_INC
%left '.' '['
%left '('


%type <st>   alias
%type <ar>   arg
%type <arL>  args
%type <ex>   assignment
%type <tnL>  optBaseTypes
%type <st>   block
%type <cb>   catchBlock
%type <cbL>  catchBlocks
%type <col>  col
%type <nv>   colAssign
%type <nvL>  colAssignList
%type <cols> colList
%type <ex>   condExpr
%type <cd>   constraintDef
%type <cds>  constraintDefs
%type <st>   ctor
%type <st>   dtor
%type <st>   model
%type <ex>   decExpr
%type <i32>  declarators
%type <st>   definition
%type <i32>  dim
%type <i32L> dims
%type <i32>  optDistinct
%type <ex>   expr
%type <exL>  exprList
%type <st>   function
%type <st>   grammar
%type <gd>   grammarDef
%type <gds>  grammarDefs
%type <nv>   nv
%type <nvL>  nvList
%type <gb>   optGroupBy
%type <h>    optHaving
%type <str>  import
%type <nL>   imports
%type <ex>   incExpr
%type <ex>   literal
%type <ex>   lvalue
%type <en>   member
%type <enL>  members
%type <nL>   nameList
%type <st>   namespace
%type <i32>  op
%type <st>   operator
%type <nL>   optParams
%type <st>   private
%type <st>   routine
%type <gd>   ruleDef
%type <ex>   sExpr
%type <st>   statement
%type <stL>  statements
%type <ex>   throwExpr
%type <tnL>  tArgList
%type <top>	 optTop
%type <gd>	 tokenDef
%type <nL>   tokens
%type <ty>   type
%type <ty>   typeDecl
%type <st>   typeDef
%type <st>   variableDefinition
%type <str>  varFrom
%type <exL>  varWhere
%type <ex>   wConstraint
%type <exL>  wConstraints
%type <w>    where


%expect 127


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

%%

program
	: imports statements
	{
		context->program.imports( $1 );
		context->program.statements( $2 );
	}
	| imports
	{
		context->program.imports( $1 );
	}
	| statements
	{
		context->program.statements( $1 );
	}
	;

imports
	: imports import
	{
		$$ = $1;
		$$->push_back($2);
	}
	| import
	{
		$$ = new std::vector<std::string>();
		$$->push_back($1);
	}
	;

import
	: IMPORT STRING_LIT
	{
		strcpy($$,$2);
	}
	;

definition
	: routine
	| function
	| operator
	| ctor
	| dtor
	| namespace
	| variableDefinition
	| alias
	| typeDef
	| grammar
	| model
	| private
	;

private
	: PRIVATE ':'
	{
		$$ = new Private( context->start, context->end );
	}
	;

namespace
	: NAMESPACE NAME block
	{
		$$ = new Namespace( context->start, context->end, $2, $3 );
	}
	;

routine
	: type NAME '(' args ')' block
	{
		$$ = new RoutineDef( context->start, context->end, $1, $2, $4, $6 );
	}
	| type NAME '(' args ')'
	{
		$$ = new RoutineDef( context->start, context->end, $1, $2, $4 );
	}
	;

operator
	: type OPERATOR op '(' args ')' block
	{
		$$ = new OperatorDef( context->start, context->end, $1, $3, $5, $7 );
	}
	| type OPERATOR op '(' args ')'
	{
		$$ = new OperatorDef( context->start, context->end, $1, $3, $5 );
	}
	;

op
	: '+'		{ $$ = '+'; }
	| '-'		{ $$ = '-'; }
	| '&'		{ $$ = '&'; }
	| '/'		{ $$ = '/'; }
	| '*'		{ $$ = '*'; }
	| '|'		{ $$ = '|'; }
	| '^'		{ $$ = '^'; }
	| '%'		{ $$ = '%'; }
	| '='		{ $$ = '='; }
	| '>'		{ $$ = '>'; }
	| '<'		{ $$ = '<'; }
	| EQ		{ $$ = EQ; }
	| GE		{ $$ = GE; }
	| LE		{ $$ = LE; }
	| A_ASS 	{ $$ = A_ASS; }
	| D_ASS 	{ $$ = D_ASS; }
	| M_ASS 	{ $$ = M_ASS; }
	| O_ASS		{ $$ = O_ASS; }
	| P_ASS		{ $$ = P_ASS; }
	| S_ASS		{ $$ = S_ASS; }
	| X_ASS		{ $$ = X_ASS; }
	| m_ASS		{ $$ = m_ASS; }
	| M_MULT	{ $$ = M_MULT; }
	| M_DIV 	{ $$ = M_DIV; }
	;

ctor
	: CLASS_NAME '(' args ')'
	{
		$$ = new CtorDef( context->start, context->end, $1, $3 );
	}
	| CLASS_NAME '(' args ')' block
	{
		$$ = new CtorDef( context->start, context->end, $1, $3, $5 );
	}
	;

dtor
	: '~' CLASS_NAME '(' ')' 
	{
		$$ = new DtorDef( context->start, context->end, $2 );
	}
	| '~' CLASS_NAME '(' ')' block
	{
		$$ = new DtorDef( context->start, context->end, $2, $5 );
	}
	;

function
	: FUN NAME '(' args ')' '=' expr
	{
		$$ = new FunDef( context->start, context->end, $2, $4, $7 );
	}
	;

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
		$$ = new Distinct();
	}
	| expr DISTINCT
	{
		$$ = new Distinct( $1 );
	}
	| '(' exprList ')' DISTINCT
	{
		$$ = new Distinct( $2 );
	}
	| ORDER BY OBJECT
	{
		$$ = new Distinct( );
	}
	| ORDER BY expr
	{
		$$ = new OrderBy( $3 );
	}
	| ORDER BY '(' exprList ')'
	{
		$$ = new OrderBy( $4 );
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
	| CONST
	{
		$$ = CONST;
	}
	| OVERRIDE
	{
		$$ = OVERRIDE;
	}
	| FINAL
	{
		$$ = FINAL;
	}
	| PRIVATE
	{
		$$ = PRIVATE;
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
	: ENUM NAME optBaseTypes '{' members '}'
	{
		$$ = new EnumDef( context->start, context->end, $2, $5 );
	}
	| ENUM NAME optBaseTypes '{' '}'
	{
		$$ = new EnumDef( context->start, context->end, $2 );
	}
	| CLASS NAME optParams optBaseTypes   block
	{
		$$ = new ClassDef( context->start, context->end, $2, $5 );
		context->classes.pop();
	}
	| INTERFACE NAME optParams optBaseTypes block
	{
		$$ = new InterfaceDef( context->start, context->end, $2, $5 );
	}
	| UNION NAME optParams optBaseTypes block
	{
		$$ = new UnionDef( context->start, context->end, $2, $5 );
	}
	| TUPLE NAME optParams optBaseTypes block
	{
		$$ = new TupleDef( context->start, context->end, $2, $5 );
	}
	;

optBaseTypes
	:
	{
		$$ = nullptr;
	}
	| ':' tArgList
	{
		$$ = $2;
	}
	;

optParams
	: 
	{
		$$ = nullptr;
	}
	| '<' nameList '>'
	{
		$$ = $2;
	}
	;

tArgList
	: tArgList ',' type
	{
		$$ = $1;
		$$->push_back(up<TypeArg>(new TypeArg($3)));
	}
	| tArgList ',' expr
	{
		$$ = $1;
		$$->push_back(up<TypeArg>(new TypeArg($3)));
	}
	| type
	{
		$$ = new std::vector<up<TypeArg>>();
		$$->push_back(up<TypeArg>(new TypeArg($1)));
	}
	| expr
	{
		$$ = new std::vector<up<TypeArg>>();
		$$->push_back(up<TypeArg>(new TypeArg($1)));
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

type
	: typeDecl '?'
	{
		$$ = new Nullable( $1 );
	}
	| typeDecl
	;

typeDecl
	: NAME '<' tArgList '>'
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
	| STRING '[' expr ']'
	{
		$$ = &stringType;
	}
	| DATE
	{
		$$ = &dateType;
	}
	| REGEX
	{
		$$ = &regexType;
	}
	| DATETIME
	{
		$$ = &datetimeType;
	}
	| TIME
	{
		$$ = &timeType;
	}
	| DURATION
	{
		$$ = &durationType;
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
	| definition
	{
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
		$$ = new If( context->start, context->end, static_cast<VarDef *>($3), $5 );
	}
	| IF '(' variableDefinition ')' statement ELSE statement
	{
		$$ = new If( context->start, context->end, static_cast<VarDef *>($3), 
			$5, $7 );
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
		$$ = new For( context->start, context->end, static_cast<VarDef *>($3),
			 $5, $7, $9 );
	}
	| FOR '(' variableDefinition ';' ';' ')' statement
	{
		$$ = new For( context->start, context->end, static_cast<VarDef *>($3),
			nullptr, nullptr, $7 );
	}
	| FOR '(' variableDefinition ';' expr ';' ')' statement
	{
		$$ = new For( context->start, context->end, static_cast<VarDef *>($3), 
			$5, nullptr, $8 );
	}
	| FOR '(' expr ';' ';' expr ')' statement
	{
		$$ = new For( context->start, context->end, $3, nullptr, $6, $8 );
	}
	| FOR '(' variableDefinition ';' ';' expr ')' statement
	{
		$$ = new For( context->start, context->end, static_cast<VarDef *>($3), 
			nullptr, $6, $8 );
	}
	| FOR '(' ';' expr ';' expr ')' statement
	{
		$$ = new For( context->start, context->end, $4, $6, $8 );
	}
	| WHILE '(' expr ')' statement
	{
		$$ = new While( context->start, context->end, $3, $5 );
	}
	| WHILE '(' variableDefinition ')' statement
	{
		$$ = new While( context->start, context->end, static_cast<VarDef *>($3), $5 );
	}
	| DO block UNTIL '(' expr ')'
	{
		$$ = new Until( context->start, context->end, $5, $2 );
	}
	| SWITCH '(' expr ')' block
	{
		$$ = new Switch( context->start, context->end, $3, $5 );
	}
	| SWITCH '(' variableDefinition ')' block
	{
		$$ = new Switch( context->start, context->end, 
			static_cast<VarDef *>($3), $5 );
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
	| ATOMIC block
	{
		$$ = new AtomicBlock( context->start, context->end, $2 );
	}
	| TRY block catchBlocks
	{
		$$ = new Try( context->start, context->end, $2, $3 );
	}
	| DELETE FROM NAME WHERE expr
	{
		$$ = new Delete( context->start, context->end, $3, $5 );
	}
	| INSERT INTO NAME '(' nameList ')' VALUES '(' exprList ')'
	{
		$$ = new Insert( context->start, context->end, $3, $5, $9 );
	}
	| UPDATE NAME SET colAssignList WHERE expr
	{
		$$ = new Update( context->start, context->end, $2, $4, $6 );
	}
	| block
	;

block
	: '{' statements '}'
	{
		$$ = new Block( context->start, context->end, $2 );
	}
	| '{' '}'
	{
		$$ = new Block( context->start, context->end, nullptr );
	}
	;

colAssignList
	: colAssignList ',' colAssign
	{
		$$ = $1;
		$$->push_back(up<std::pair<std::string, up<Expr>>>($3));
	}
	| colAssign
	{
		$$ = new std::vector<up<std::pair<std::string, up<Expr>>>>();
		$$->push_back(up<std::pair<std::string, up<Expr>>>($1));
	}
	;

colAssign
	: NAME '=' expr
	{
		$$ = new std::pair<std::string, up<Expr>>();
		$$->first = $1;
		$$->second.reset($3);
	}
	;

catchBlocks
	: catchBlocks catchBlock
	{
		$$ = $1;
		$$->push_back(up<CatchBlock>($2));
	}
	| catchBlock
	{
		$$ = new std::vector<up<CatchBlock>>();
		$$->push_back(up<CatchBlock>($1));
	}
	;

catchBlock
	: CATCH '(' variableDefinition ')' block
	{
		$$ = new CatchBlock( context->start, context->end, $3, $5 );
	}

sExpr
	: assignment
	| incExpr
	| decExpr
	| throwExpr
	;

throwExpr
	: THROW expr
	{
		$$ = new Throw( $2 );
	}
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
	| '?' expr %prec UNIARY_MINUS
	{
		$$ = new ToVoid( $2 );
	}
	;


lvalue
	: NAME
	{
		$$ = new Lvalue( $1 );
	}
	| lvalue '[' expr ']'
	{
		$$ = new Lvalue( $1, $3 );
	}
	| lvalue '.' lvalue
	{
		$$ = new Lvalue( $1, $3 );
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
		$$ = new Vector($2);
	}
	| '<' nvList '>'
	{
		$$ = new Tuple($2);
	}
	| '(' nv ',' nv ')'
	{
		$$ = new Complex( $2, $4 );
	}
	| '{' exprList '}'
	{
		$$ = new Set($2);
	}
	| DATE_LIT
	| DATETIME_LIT
	| DURATION_LIT
	| REGEX_LIT
	| TIME_LIT
	;

nvList
	:
	{
		$$ = nullptr;
	}
	| nvList ',' nv
	{
		$$ = $1;
		$$->push_back(up<std::pair<std::string,up<Expr>>>($3));
	}
	| nv
	{
		$$ = new std::vector<up<std::pair<std::string,up<Expr>>>>();
		$$->push_back(up<std::pair<std::string,up<Expr>>>($1));
	}
	;

nv
	: NAME ':' expr
	{
		std::pair<std::string,up<Expr>> * nv = 
			new std::pair<std::string,up<Expr>>();

		nv->first = $1;
		nv->second.reset($3);
		
		$$ = nv;
	}
	;

condExpr
	: ISVOID '(' expr ')'
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
	| IF '(' expr ')' expr
	{
		$$ = new Conditional( $3, $5, nullptr );
	}
	| IF '(' expr ')' expr ELSE expr
	{
		$$ = new Conditional( $3, $5, $7 );
	}
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
		$$ = new Range( $1, $3 );
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
	| SELECT optDistinct optTop colList FROM 
		nameList 
		optGroupBy 
		optHaving
	{
		$$ = new SelectEx( $2, $3, $4, $6, nullptr, $7, $8 );
	}
	| SELECT optDistinct optTop colList FROM 
		nameList 
		where 
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

where 
	: WHERE expr
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

%%

