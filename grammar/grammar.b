%{

// This file is used to document the language. It is not part of the implementation.
//

%}

%token  ADD_ASS		    "+="
%token  AND             "&&"
%token  AND_ASS         "&="
%token  CP_ASS          "[*]="
%token  CRS_PROD        "[*]"
%token  DEC		        "--"
%token  DIV_ASS		    "/="
%token 	DOT_ASK		    ".*"
%token 	DOT_DOT		    ".."
%token  DOT_PROD        "[.]"
%token  DP_ASS          "[.]="
%token  EQ		        "=="
%token  EXP		        "**"
%token  EXP_ASS         "**="
%token  GE		        ">="
%token  INC		        "++"
%token  PARAM_ASS       ":="
%token  LE		        "<="
%token  MD_ASS          "[/]="
%token  M_DIV           "[/]"
%token  ME_ASS          "[**]="
%token  M_EXP           "[**]"
%token  MOD_ASS         "%="
%token  MPTR            "->*"
%token  MUL_ASS		    "*="
%token  NE		        "!="
%token  OR              "||"
%token  OR_ASS          "|="
%token  PTR             "->"
%token  SCOPE           "::"
%token  SLFT            "<<"
%token  SLFT_ASS        "<<="
%token  SRGHT           ">>"
%token  SRGHT_ASS       ">>="
%token  SS		        "<=>"
%token  SUB_ASS		    "-="
%token  TIL_ASS         "~="
%token  XOR_ASS         "^="

%token ALIGNAS          "alignas"	// key
%token ALIGNOF          "alignof"	// key
%token APPLY            "apply"	    // key
%token AS               "as"        // reserved
%token ASSERT           "assert"	// key
%token ASYNC            "async"	    // key
%token ATOMIC           "atomic"	// key
%token AUTO             "auto"	    // key

%token BOOL             "bool"	    // key
%token BREAK            "break"	    // key
%token BY               "by"		// reserved

%token C                "C"         // key
%token CASE             "case"    	// key
%token CATCH            "catch"    	// key
%token CHAR             "char"    	// key
%token CLASS            "class"	    // key
%token CLOSURE          "closure"   // key
%token CONST            "const"	    // key
%token CO_RETURN        "co_return"	// key
%token CONTINUE         "continue"	// key
%token CO_AWAIT         "co_await"	// key
%token CO_YIELD         "co_yield"	// key

%token DATE             "date"      // key
%token DATETIME         "datetime"  // key
%token DEFAULT          "default"   // key
%token DELETE           "delete"    // key
%token DISTINCT         "distinct"  // reserved
%token DO               "do"        // key

%token _E               ".e"		// literal
%token ELSE             "else"      // key
%token ENUM             "enum"      // key
%token EVAL             "eval"      // key
%token EXTEND           "extend"    // key

%token FALSE            "false"     // literal
%token FILTER           "filter"    // key
%token FINAL            "final"     // reserved
%token FLOATn           "floatn"    // key
%token FOR              "for"       // key
%token FROM             "from"      // reserved

%token _GAMMA           ".gamma"    // literal
%token GRAPH            "graph"     // key
%token GROUP            "group"     // reserved

%token HAVING           "having"    // reserved
%token HEAP             "heap"      // key

%token _I               ".i"        // literal
%token INF              ".inf"      // literal
%token In               "i32"       // key
%token ID               "ID"        // 
%token IF               "if"        // key
%token IMPLEMENT        "implement" // key
%token IMPORT           "import"    // key
%token IN               "in"        // key
%token INSERT           "insert"    // key
%token INTO             "into"      // reserved
%token INTERFACE        "interface" // key
%token IS_VOID          "is_void"   // key

%token JOIN             "join"      // reserved

%token LEFT             "left"      // reserved
%token LIST             "list"      // key
%token LSTRING          "lstring"   // key
%token LTSTRING         "ltstring"  // key

%token MAP              "map"       // key
%token MMAP             "mmap"      // key
%token MSET             "mset"      // key
%token MUTABLE          "mutable"   // key
%token MUTEX            "mutex"     // key

%token N                "N"         // key
%token NAMESPACE        "namespace" // key
%token NAN              ".nan"      // literal
%token Nn               "n32"       // key
%token NEW              "new"       // key
%token NOEXCEPT         "noexcept"  // reserved

%token OBJECT           "object"    // key
%token ORDER            "order"     // reserved
%token OUTER            "outer"     // reserved
%token OVERRIDE         "override"  // key 

%token PERCENT          "percent"   // reserved
%token _PHI             ".phi"      // literal
%token _PI              ".pi"       // literal
%token PRIVATE          "private"   // key
%token PUBLIC           "public"    // key
%token PURE             "pure"      // key

%token Q                "Q"         // key
%token QUEUE            "queue"     // key

%token R                "R"         // key
%token REDUCE           "reduce"    // key 
%token REGEXP           "regexp"    // key
%token RELATION         "relation"  // key
%token RETURN           "return"    // key
%token RIGHT            "right"     // reserved

%token SELECT           "select"    // key
%token SEMAPHORE        "semaphore" // key
%token SET              "set"       // key
%token SIZEOF           "sizeof"    // key
%token STACK            "stack"     // key
%token STRING           "string"    // key
%token SWITCH           "switch"    // key

%token THREAD_LOCAL     "thread_local" // key
%token THROW            "throw"     // key
%token TIES             "ties"      // reserved
%token TIME             "time"      // key
%token TOP              "top"       // reserved
%token TRUE             "true"      // literal
%token TRY              "try"       // key
%token TYPE             "type"      // key

%token Un               "u32"       // key
%token UNION            "union"     // key
%token UPDATE           "update"    // key
%token USING            "using"     // key

%token VALUES           "values"    // reserved
%token VOID             "void"      // key

%token WHERE            "where"     // reserved
%token WHILE            "while"     // key
%token WITH             "with"      // reserved

%token Z                "Z"         // key
%token Zn               "z32"       // key

%token CHAR_LIT         // 'x'
%token FLOAT_LIT        // 121.111e21
%token INT_LIT          // 1111
%token STRING_LIT       // "ssss"
%token LSTRING_LIT      // l"sss"
%token LTSTRING_LIT     // t"aaa"
%token RE_LIT           // re"s*"
%token DATETIME_LIT		// d"YYYY-MM-DD[:HH:MM:SS[:sssssssss]]"
%token TIME_LIT			// t"HH:MM:SS:sssssssss"
%token NAT_LIT          // 1212u
%token Q_LIT            // 111q
%token REAL_LIT         // 123r

%token YEARS_LIT        // 111y
%token MONS_LIT         // 111m
%token DAYS_LIT         // 111d
%token HOURS_LIT        // 111H
%token MINS_LIT         // 111M
%token SECS_LIT         // 111S

%nonassoc POST_INC POST_DEC CTOR FCALL INDEX '.' PTR ABS

%right INC DEC FACTORIAL UNI_PLUS UNI_MINUS '!' UNI_TILDA UNI_ASK UNI_HAT SIZEOF CO_AWAIT NEW DELETE

%left DOT_ASK MPTR

%right EXP M_EXP

%left '*' '/' CRS_PROD DOT_PROD M_DIV

%left '+' '-'

%left SRGHT SLFT

%left JOIN

%left SS

%left '<' '>' GE LE

%left EQ NE

%left '&'
%left '^'
%left '|'

%left AND
%left OR
%left IN

%right '?' ':' THROW CO_YIELD '=' PARAM_ASS ADD_ASS AND_ASS  CP_ASS DIV_ASS DP_ASS EXP_ASS MD_ASS ME_ASS MOD_ASS MUL_ASS OR_ASS SLFT_ASS SRGHT_ASS SUB_ASS TIL_ASS XOR_ASS ALIGNOF ALIGNAS IS_VOID APPLY CLOSURE FILTER REDUCE ORDER EVAL ASYNC

%%

program
	: imports statements
	| statements
	;

imports : imports import
	| import
	;

import
	: IMPORT STRING_LIT
	;

statements
	: statement
	| ID ':' statement
	| statements statement
	| statements ID ':' statement
	;

statement
	: ';'
	| declaration ';'
	| block
	| return ';'
	| exp ';'
	| for
	| namespace
	| while
	| switch
	| case
	| BREAK ';'
	| BREAK ID ';'
	| CONTINUE ';'
	| CONTINUE ID ';'
	| do_while
	| if_then_else
	| try_catch
	| assert
	| relationalExpr
	| using
	;

using
	: USING ID '=' typeName ';'
	;

relationalExpr
	: DELETE FROM ID WHERE exp ';'
    | INSERT INTO ID '(' nameList ')' VALUES '(' expList ')' ';'
    | UPDATE ID SET colAssignList WHERE exp ';'
	;

nameList
	: nameList ',' ID
	| ID
	;

colAssignList
	: colAssignList ',' colAssign
	| colAssign
	;

colAssign
	: ID '=' exp
	;

expList
	: expList ',' exp
	| exp
	;

return
	: RETURN
	| RETURN exp
	| CO_RETURN
	| CO_RETURN exp
	;

assert
	: ASSERT '(' exp ')'
	| ASSERT '(' exp ',' STRING_LIT ')'
	;

if_then_else
	: IF '(' exp ')' statement
	| IF '(' exp ')' statement ELSE statement
	;

switch
	: SWITCH '(' exp ')' block
	;

namespace
	: NAMESPACE ID block
	;

block
	: '{' statements '}'
	| ATOMIC '{' statements '}'
	;

case
	: CASE exp ':'
	| CASE exp DOT_DOT exp ':'
	| DEFAULT ':'
	| CASE exp ':' statement
	| CASE exp DOT_DOT exp ':' statement
	| DEFAULT ':' statement
	;

for
	: FOR '(' opt_for_init ';' opt_for_con ';' opt_for_inc ')' statement
	;

opt_for_init
	:
	| typeName ID '=' exp
	;

opt_for_con
	:
	| exp
	;

opt_for_inc
	:
	| exp
	;

while
	: WHILE '(' exp ')' statement
	;

do_while
	: DO statement WHILE '(' exp ')'
	;

try_catch
	: TRY statement catches
	;

catches
	: CATCH statement
	| catches CATCH statement
	;

exp
	: ID
	| '!' exp
	| '~' exp %prec UNI_TILDA
	| '+' exp %prec UNI_PLUS
	| '-' exp %prec UNI_MINUS
	| '*' exp %prec UNI_ASK
	| '^' exp %prec UNI_HAT
	| INC exp
	| DEC exp

	| exp '!' %prec FACTORIAL
	| exp INC %prec POST_INC
	| exp DEC %prec POST_DEC

	| exp '+' exp
	| exp '-' exp
	| exp '%' exp
	| exp '*' exp
	| exp '/' exp
	| exp '.' exp
	| exp '<' exp
	| exp '>' exp
	| exp '|' exp
	| exp '^' exp
	| exp '&' exp

	| lexp '=' exp
	| lexp PARAM_ASS exp
	| lexp ADD_ASS exp
	| lexp SUB_ASS exp
	| lexp TIL_ASS exp
	| lexp MOD_ASS exp
	| lexp MUL_ASS exp
	| lexp DIV_ASS exp
	| lexp EXP_ASS exp
	| lexp AND_ASS exp
	| lexp OR_ASS exp
	| lexp XOR_ASS exp
	| lexp SLFT_ASS exp		// shift or release pointer to target
	| lexp SRGHT_ASS exp
	| lexp DP_ASS exp
	| lexp CP_ASS exp
	| lexp MD_ASS exp
	| lexp ME_ASS exp

	| exp EXP exp
    | exp DOT_ASK exp
	| exp PTR exp
    | exp MPTR exp
	| exp LE exp
	| exp GE exp
	| exp SS exp
	| exp EQ exp
	| exp NE exp
	| exp AND exp
	| exp OR exp
	| exp SLFT exp		
	| exp SRGHT exp
	| exp DOT_PROD exp
	| exp CRS_PROD exp
	| exp M_DIV exp
	| exp M_EXP exp
	| exp IN exp
	| exp SCOPE exp

	| exp '?' exp ':' exp
	| '|' exp '|' %prec ABS

	| THROW exp
	| SIZEOF exp
	| ALIGNOF exp
	| ALIGNAS exp
	| IS_VOID exp
	| NEW exp
	| DELETE exp  // removes value yielding void. (ie. DELETE id; assert(is_void id ))
	| APPLY exp exp
	| CLOSURE exp
	| FILTER exp exp
	| REDUCE exp exp
	| ORDER exp exp
	| ORDER rel_op exp
	| ORDER exp
	| EVAL exp
	| CO_AWAIT exp
	| CO_YIELD exp
	| ASYNC exp

	| exp '[' exp_list ']' %prec INDEX
	| exp '[' exp_list DOT_DOT exp_list ']' %prec INDEX
	| exp '[' exp_list DOT_DOT ']' %prec INDEX
	| exp '[' DOT_DOT exp_list ']' %prec INDEX
	| typeName '(' exp_list ')' %prec CTOR
	| ID '(' exp_list ')' %prec FCALL
	| lambda
	| literal
    | SELECT optDistinct optTop colList FROM nameList optWhere optGroupBy optHaving
	;

colList
	: colList ',' col
	| col
	;

col
    : '*'
    | exp
    | exp AS ID
	;

optDistinct
    :
	| DISTINCT
	;

optTop
    :
    | TOP exp
    | TOP exp PERCENT
    | TOP exp WITH TIES
    | TOP exp PERCENT WITH TIES
	;

optWhere
    :
	| WHERE exp
	;

optGroupBy
    :
	| GROUP BY exp
	;

optHaving
    :
	| HAVING exp
	;

lexp
	: ID
	| lexp '[' exp ']'
	| lexp '.' ID
	| '*' lexp
	;

exp_list
	: exp_list ',' exp
	| exp
	;

// [dec]
declaration
	: modifiers type_def ID opt_args opt_fun_qual opt_init
	| modifiers type_def op opt_args opt_fun_qual opt_init
	| TYPE ID '=' typeName
    | userDefinedType
	| function
	;

function
	: FOR '(' params ')' eleExpr
	;

params
	: params ',' typeName ID
	| typeName ID
	;

eleExpr
	: ID optDers
	| INT_LIT
	| eleExpr '+' eleExpr
	| eleExpr '/' eleExpr
	| eleExpr '+' eleExpr
	;

optDers
	:
	| optDers '\''
	| '\''
	;

op
	: '*'
	| '+'
	| '-'
	| '/'
	;

opt_fun_qual
	:
	| OVERRIDE
	| FINAL
	| NOEXCEPT
	;

opt_init
	: '=' exp
	| '{' exp_list '}'
	| '{' statements '}'
	;

opt_args
	:
	| args
	;

args
	: args ',' type_def
	| type_def
	;

type_def
	: typeName
	| typeName ptr_ops
	;

ptr_ops
	: '*'	// unique
	| '^'	// shared
	| '#'	// weak
	| '?'	// void-able
	;

typeName
	: Z
	| Z zrange
	| N
	| N nrange
	| Q
	| Q qrange
	| R
	| R rrange
	| C
	| C base_type
	| FLOATn
	| DATE
	| DATETIME
	| TIME
	| In	
	| Zn
	| Nn	
	| Un
	| SET '<' typeName '>'
	| MSET '<' typeName '>'
	| MAP '<' typeName ',' typeName '>'
	| MMAP '<' typeName ',' typeName '>'
	| HEAP '<' typeName '>'
	| LIST '<' typeName '>'
	| QUEUE '<' typeName '>'
	| STACK '<' typeName '>'
	| typeName '[' exp_list ']'
	| VOID
	| OBJECT
	| BOOL
	| CHAR
	| STRING
	| LSTRING
	| LTSTRING
	| REGEXP
	| GRAPH
	| AUTO
	| ENUM ID enum_def
	| typeName '+' typeName
	| MUTEX
	| SEMAPHORE
	| ID
	;

enum_def
	: '{' enum_member_list '}'
	;

enum_member_list
	: ID opt_init
	| enum_member_list ',' ID opt_init
	;

opt_init
	:
	| '=' exp
	;

zrange
	: '<' INT_LIT ',' INT_LIT '>'
	;

rrange
	: '[' REAL_LIT ',' REAL_LIT ']'
	| '[' REAL_LIT ',' REAL_LIT ')'
	| '(' REAL_LIT ',' REAL_LIT ']'
	| '(' REAL_LIT ',' REAL_LIT ')'
	;

nrange
	: '<' INT_LIT '>'
	;

qrange
	: '<' numeric_type ',' numeric_type '>'
	;

numeric_type
	: In
	| Zn
	| Un
	| Nn
	| Z
	| N
	;

base_type
	: '<' numeric_type '>'
	;

// library
// 	: file
// 	socket
// 	shared_mem
// 	print
// 	rand
// 	date/time
// 	...

modifiers
	: ATOMIC
	| THREAD_LOCAL
	| CONST
	| MUTABLE
	| PUBLIC
	| PRIVATE
	| CLASS
	| PURE
	;

userDefinedType
	: UNION complex_type_def
	| CLASS complex_type_def
	| RELATION relation_def
	| INTERFACE complex_type_def
	| typeName '*'
	| typeName '^'
	| typeName '%'
	| typeName '&'
	;

relation_def
	: '{' declarations '}'
	| EXTEND extends '{' declarations '}'
	;

extends
	:
	| extends ',' ID
	| ID
	;

complex_type_def
	: implements_extends '{' declarations '}'
	;

declarations
	:
	| declarations declaration
	| declaration
	;

implements_extends
	: implements_extends IMPLEMENT implements
	| implements_extends EXTEND extends
	| IMPLEMENT implements
	| EXTEND extends
	;

implements
	: implements ',' ID
	| ID
	;

lambda
	: '\\' '(' args ')' statement
	;

literal
	: INT_LIT
	| NAT_LIT
	| Q_LIT
	| REAL_LIT
	| TRUE
	| FALSE
	| DATETIME_LIT
	| TIME_LIT
	| FLOAT_LIT
	| STRING_LIT
	| LSTRING_LIT
	| LTSTRING_LIT
	| RE_LIT
	| CHAR_LIT
    | YEARS_LIT
    | MONS_LIT
    | DAYS_LIT
    | HOURS_LIT
    | MINS_LIT
    | SECS_LIT
	| '[' seq_exp_list ']'
	| '{' exp_list '}'
	| '{' nv_list '}'
	| '{' tuple_list '}'
	| _PI
	| _E
	| _GAMMA
	| _PHI
	| _I
	| INF
	| NAN
	;

nv_list
	:
	| exp ':' exp
	| nv_list ',' exp ':' exp
	;

seq_exp_list
	:
	| seq_exp_list exp
	;

tuple_list
	: tuple_list ',' tuple
	| tuple
	;

tuple
	: '<' nv_list '>'
	;

rel_op
	: GE		
        | LE
	| '>'	
        | '<'
	;

%%
