/* A Bison parser, made by GNU Bison 2.4.2.  */

/* Skeleton implementation for Bison's Yacc-like parsers in C
   
      Copyright (C) 1984, 1989-1990, 2000-2006, 2009-2010 Free Software
   Foundation, Inc.
   
   This program is free software: you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation, either version 3 of the License, or
   (at your option) any later version.
   
   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.
   
   You should have received a copy of the GNU General Public License
   along with this program.  If not, see <http://www.gnu.org/licenses/>.  */

/* As a special exception, you may create a larger work that contains
   part or all of the Bison parser skeleton and distribute that work
   under terms of your choice, so long as that work isn't itself a
   parser generator using the skeleton or a modified version thereof
   as a parser skeleton.  Alternatively, if you modify or redistribute
   the parser skeleton itself, you may (at your option) remove this
   special exception, which will cause the skeleton and the resulting
   Bison output files to be licensed under the GNU General Public
   License without this special exception.
   
   This special exception was added by the Free Software Foundation in
   version 2.2 of Bison.  */

/* C LALR(1) parser skeleton written by Richard Stallman, by
   simplifying the original so-called "semantic" parser.  */

/* All symbols defined below should begin with yy or YY, to avoid
   infringing on user name space.  This should be done even for local
   variables, as they might otherwise be expanded by user macros.
   There are some unavoidable exceptions within include files to
   define necessary library symbols; they are noted "INFRINGES ON
   USER NAME SPACE" below.  */

/* Identify Bison output.  */
#define YYBISON 1

/* Bison version.  */
#define YYBISON_VERSION "2.4.2"

/* Skeleton name.  */
#define YYSKELETON_NAME "yacc.c"

/* Pure parsers.  */
#define YYPURE 1

/* Push parsers.  */
#define YYPUSH 0

/* Pull parsers.  */
#define YYPULL 1

/* Using locations.  */
#define YYLSP_NEEDED 1

/* Substitute the variable and function names.  */
#define yyparse         opusparse
#define yylex           opuslex
#define yyerror         opuserror
#define yylval          opuslval
#define yychar          opuschar
#define yydebug         opusdebug
#define yynerrs         opusnerrs
#define yylloc          opuslloc

/* Copy the first part of user declarations.  */

/* Line 189 of yacc.c  */
#line 1 "opus.b"


#include "yyerror.h"
#include "yylex.h"
#include "parse_context.h"
#include "expr.h"
#include "statement.h"
#include "type.h"
#include "symtbl.h"



/* Line 189 of yacc.c  */
#line 93 "opus.cpp"

/* Enabling traces.  */
#ifndef YYDEBUG
# define YYDEBUG 0
#endif

/* Enabling verbose error messages.  */
#ifdef YYERROR_VERBOSE
# undef YYERROR_VERBOSE
# define YYERROR_VERBOSE 1
#else
# define YYERROR_VERBOSE 0
#endif

/* Enabling the token table.  */
#ifndef YYTOKEN_TABLE
# define YYTOKEN_TABLE 0
#endif


/* Tokens.  */
#ifndef YYTOKENTYPE
# define YYTOKENTYPE
   /* Put the tokens into the symbol table, so that GDB and other debuggers
      know about them.  */
   enum yytokentype {
     ALIAS = 258,
     BOOL = 259,
     BREAK = 260,
     CASE = 261,
     CLASS = 262,
     CONTINUE = 263,
     DEFAULT = 264,
     DEQUEUE = 265,
     DOT_DOT_DOT = 266,
     DOUBLE_LIT = 267,
     DYNAMIC = 268,
     ELSE = 269,
     ENUM = 270,
     FALSE = 271,
     FLOAT = 272,
     FOR = 273,
     IF = 274,
     INT_LIT = 275,
     INVALID_NUMBER = 276,
     INVALID_STRING = 277,
     LONG_LIT = 278,
     MATRIX = 279,
     N = 280,
     NAME = 281,
     OBJECT = 282,
     PQUEUE = 283,
     Q = 284,
     QUEUE = 285,
     R = 286,
     RAW_STRING_LIT = 287,
     RETURN = 288,
     SET = 289,
     STACK = 290,
     STRING = 291,
     STRING_LIT = 292,
     SWITCH = 293,
     TENSOR = 294,
     TRUE = 295,
     TUPLE = 296,
     UNSIGNED_LIT = 297,
     UNSIGNED_LONG_LIT = 298,
     VECTOR = 299,
     VOID = 300,
     WHERE = 301,
     Z = 302,
     X_ASS = 303,
     O_ASS = 304,
     A_ASS = 305,
     m_ASS = 306,
     D_ASS = 307,
     M_ASS = 308,
     S_ASS = 309,
     P_ASS = 310,
     LOR = 311,
     LAND = 312,
     OR = 313,
     XOR = 314,
     AND = 315,
     EQ = 316,
     NE = 317,
     LT = 318,
     LE = 319,
     GT = 320,
     GE = 321,
     OJOIN = 322,
     RJOIN = 323,
     LJOIN = 324,
     JOIN = 325,
     UNIARY_MINUS = 326,
     DEC = 327,
     INC = 328,
     POST_DEC = 329,
     POST_INC = 330
   };
#endif



#if ! defined YYSTYPE && ! defined YYSTYPE_IS_DECLARED
typedef union YYSTYPE
{

/* Line 214 of yacc.c  */
#line 128 "opus.b"

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



/* Line 214 of yacc.c  */
#line 233 "opus.cpp"
} YYSTYPE;
# define YYSTYPE_IS_TRIVIAL 1
# define yystype YYSTYPE /* obsolescent; will be withdrawn */
# define YYSTYPE_IS_DECLARED 1
#endif

#if ! defined YYLTYPE && ! defined YYLTYPE_IS_DECLARED
typedef struct YYLTYPE
{
  int first_line;
  int first_column;
  int last_line;
  int last_column;
} YYLTYPE;
# define yyltype YYLTYPE /* obsolescent; will be withdrawn */
# define YYLTYPE_IS_DECLARED 1
# define YYLTYPE_IS_TRIVIAL 1
#endif


/* Copy the second part of user declarations.  */


/* Line 264 of yacc.c  */
#line 258 "opus.cpp"

#ifdef short
# undef short
#endif

#ifdef YYTYPE_UINT8
typedef YYTYPE_UINT8 yytype_uint8;
#else
typedef unsigned char yytype_uint8;
#endif

#ifdef YYTYPE_INT8
typedef YYTYPE_INT8 yytype_int8;
#elif (defined __STDC__ || defined __C99__FUNC__ \
     || defined __cplusplus || defined _MSC_VER)
typedef signed char yytype_int8;
#else
typedef short int yytype_int8;
#endif

#ifdef YYTYPE_UINT16
typedef YYTYPE_UINT16 yytype_uint16;
#else
typedef unsigned short int yytype_uint16;
#endif

#ifdef YYTYPE_INT16
typedef YYTYPE_INT16 yytype_int16;
#else
typedef short int yytype_int16;
#endif

#ifndef YYSIZE_T
# ifdef __SIZE_TYPE__
#  define YYSIZE_T __SIZE_TYPE__
# elif defined size_t
#  define YYSIZE_T size_t
# elif ! defined YYSIZE_T && (defined __STDC__ || defined __C99__FUNC__ \
     || defined __cplusplus || defined _MSC_VER)
#  include <stddef.h> /* INFRINGES ON USER NAME SPACE */
#  define YYSIZE_T size_t
# else
#  define YYSIZE_T unsigned int
# endif
#endif

#define YYSIZE_MAXIMUM ((YYSIZE_T) -1)

#ifndef YY_
# if defined YYENABLE_NLS && YYENABLE_NLS
#  if ENABLE_NLS
#   include <libintl.h> /* INFRINGES ON USER NAME SPACE */
#   define YY_(msgid) dgettext ("bison-runtime", msgid)
#  endif
# endif
# ifndef YY_
#  define YY_(msgid) msgid
# endif
#endif

/* Suppress unused-variable warnings by "using" E.  */
#if ! defined lint || defined __GNUC__
# define YYUSE(e) ((void) (e))
#else
# define YYUSE(e) /* empty */
#endif

/* Identity function, used to suppress warnings about constant conditions.  */
#ifndef lint
# define YYID(n) (n)
#else
#if (defined __STDC__ || defined __C99__FUNC__ \
     || defined __cplusplus || defined _MSC_VER)
static int
YYID (int yyi)
#else
static int
YYID (yyi)
    int yyi;
#endif
{
  return yyi;
}
#endif

#if ! defined yyoverflow || YYERROR_VERBOSE

/* The parser invokes alloca or malloc; define the necessary symbols.  */

# ifdef YYSTACK_USE_ALLOCA
#  if YYSTACK_USE_ALLOCA
#   ifdef __GNUC__
#    define YYSTACK_ALLOC __builtin_alloca
#   elif defined __BUILTIN_VA_ARG_INCR
#    include <alloca.h> /* INFRINGES ON USER NAME SPACE */
#   elif defined _AIX
#    define YYSTACK_ALLOC __alloca
#   elif defined _MSC_VER
#    include <malloc.h> /* INFRINGES ON USER NAME SPACE */
#    define alloca _alloca
#   else
#    define YYSTACK_ALLOC alloca
#    if ! defined _ALLOCA_H && ! defined _STDLIB_H && (defined __STDC__ || defined __C99__FUNC__ \
     || defined __cplusplus || defined _MSC_VER)
#     include <stdlib.h> /* INFRINGES ON USER NAME SPACE */
#     ifndef _STDLIB_H
#      define _STDLIB_H 1
#     endif
#    endif
#   endif
#  endif
# endif

# ifdef YYSTACK_ALLOC
   /* Pacify GCC's `empty if-body' warning.  */
#  define YYSTACK_FREE(Ptr) do { /* empty */; } while (YYID (0))
#  ifndef YYSTACK_ALLOC_MAXIMUM
    /* The OS might guarantee only one guard page at the bottom of the stack,
       and a page size can be as small as 4096 bytes.  So we cannot safely
       invoke alloca (N) if N exceeds 4096.  Use a slightly smaller number
       to allow for a few compiler-allocated temporary stack slots.  */
#   define YYSTACK_ALLOC_MAXIMUM 4032 /* reasonable circa 2006 */
#  endif
# else
#  define YYSTACK_ALLOC YYMALLOC
#  define YYSTACK_FREE YYFREE
#  ifndef YYSTACK_ALLOC_MAXIMUM
#   define YYSTACK_ALLOC_MAXIMUM YYSIZE_MAXIMUM
#  endif
#  if (defined __cplusplus && ! defined _STDLIB_H \
       && ! ((defined YYMALLOC || defined malloc) \
	     && (defined YYFREE || defined free)))
#   include <stdlib.h> /* INFRINGES ON USER NAME SPACE */
#   ifndef _STDLIB_H
#    define _STDLIB_H 1
#   endif
#  endif
#  ifndef YYMALLOC
#   define YYMALLOC malloc
#   if ! defined malloc && ! defined _STDLIB_H && (defined __STDC__ || defined __C99__FUNC__ \
     || defined __cplusplus || defined _MSC_VER)
void *malloc (YYSIZE_T); /* INFRINGES ON USER NAME SPACE */
#   endif
#  endif
#  ifndef YYFREE
#   define YYFREE free
#   if ! defined free && ! defined _STDLIB_H && (defined __STDC__ || defined __C99__FUNC__ \
     || defined __cplusplus || defined _MSC_VER)
void free (void *); /* INFRINGES ON USER NAME SPACE */
#   endif
#  endif
# endif
#endif /* ! defined yyoverflow || YYERROR_VERBOSE */


#if (! defined yyoverflow \
     && (! defined __cplusplus \
	 || (defined YYLTYPE_IS_TRIVIAL && YYLTYPE_IS_TRIVIAL \
	     && defined YYSTYPE_IS_TRIVIAL && YYSTYPE_IS_TRIVIAL)))

/* A type that is properly aligned for any stack member.  */
union yyalloc
{
  yytype_int16 yyss_alloc;
  YYSTYPE yyvs_alloc;
  YYLTYPE yyls_alloc;
};

/* The size of the maximum gap between one aligned stack and the next.  */
# define YYSTACK_GAP_MAXIMUM (sizeof (union yyalloc) - 1)

/* The size of an array large to enough to hold all stacks, each with
   N elements.  */
# define YYSTACK_BYTES(N) \
     ((N) * (sizeof (yytype_int16) + sizeof (YYSTYPE) + sizeof (YYLTYPE)) \
      + 2 * YYSTACK_GAP_MAXIMUM)

/* Copy COUNT objects from FROM to TO.  The source and destination do
   not overlap.  */
# ifndef YYCOPY
#  if defined __GNUC__ && 1 < __GNUC__
#   define YYCOPY(To, From, Count) \
      __builtin_memcpy (To, From, (Count) * sizeof (*(From)))
#  else
#   define YYCOPY(To, From, Count)		\
      do					\
	{					\
	  YYSIZE_T yyi;				\
	  for (yyi = 0; yyi < (Count); yyi++)	\
	    (To)[yyi] = (From)[yyi];		\
	}					\
      while (YYID (0))
#  endif
# endif

/* Relocate STACK from its old location to the new one.  The
   local variables YYSIZE and YYSTACKSIZE give the old and new number of
   elements in the stack, and YYPTR gives the new location of the
   stack.  Advance YYPTR to a properly aligned location for the next
   stack.  */
# define YYSTACK_RELOCATE(Stack_alloc, Stack)				\
    do									\
      {									\
	YYSIZE_T yynewbytes;						\
	YYCOPY (&yyptr->Stack_alloc, Stack, yysize);			\
	Stack = &yyptr->Stack_alloc;					\
	yynewbytes = yystacksize * sizeof (*Stack) + YYSTACK_GAP_MAXIMUM; \
	yyptr += yynewbytes / sizeof (*yyptr);				\
      }									\
    while (YYID (0))

#endif

/* YYFINAL -- State number of the termination state.  */
#define YYFINAL  42
/* YYLAST -- Last index in YYTABLE.  */
#define YYLAST   2274

/* YYNTOKENS -- Number of terminals.  */
#define YYNTOKENS  97
/* YYNNTS -- Number of nonterminals.  */
#define YYNNTS  20
/* YYNRULES -- Number of rules.  */
#define YYNRULES  136
/* YYNRULES -- Number of states.  */
#define YYNSTATES  321

/* YYTRANSLATE(YYLEX) -- Bison symbol number corresponding to YYLEX.  */
#define YYUNDEFTOK  2
#define YYMAXUTOK   330

#define YYTRANSLATE(YYX)						\
  ((unsigned int) (YYX) <= YYMAXUTOK ? yytranslate[YYX] : YYUNDEFTOK)

/* YYTRANSLATE[YYLEX] -- Bison symbol number corresponding to YYLEX.  */
static const yytype_uint8 yytranslate[] =
{
       0,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,    80,     2,     2,     2,    78,     2,     2,
      85,    89,    76,    74,    91,    75,    79,    77,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,    50,    90,
      94,    48,    95,    49,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,    86,     2,    96,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,    92,     2,    93,    81,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     1,     2,     3,     4,
       5,     6,     7,     8,     9,    10,    11,    12,    13,    14,
      15,    16,    17,    18,    19,    20,    21,    22,    23,    24,
      25,    26,    27,    28,    29,    30,    31,    32,    33,    34,
      35,    36,    37,    38,    39,    40,    41,    42,    43,    44,
      45,    46,    47,    51,    52,    53,    54,    55,    56,    57,
      58,    59,    60,    61,    62,    63,    64,    65,    66,    67,
      68,    69,    70,    71,    72,    73,    82,    83,    84,    87,
      88
};

#if YYDEBUG
/* YYPRHS[YYN] -- Index of the first RHS symbol of rule number YYN in
   YYRHS.  */
static const yytype_uint16 yyprhs[] =
{
       0,     0,     3,     6,     8,    10,    12,    14,    16,    23,
      30,    31,    35,    37,    40,    44,    47,    51,    57,    63,
      68,    74,    79,    85,    90,    94,    96,    98,   102,   105,
     107,   109,   111,   113,   115,   117,   119,   121,   123,   125,
     127,   132,   140,   147,   157,   166,   175,   183,   191,   196,
     203,   208,   213,   217,   219,   220,   222,   225,   227,   230,
     236,   244,   250,   258,   268,   276,   285,   293,   301,   308,
     318,   326,   335,   344,   353,   362,   368,   374,   378,   383,
     390,   393,   396,   400,   404,   406,   410,   412,   414,   416,
     418,   420,   422,   424,   426,   428,   432,   436,   440,   444,
     448,   451,   454,   457,   460,   464,   468,   472,   476,   480,
     484,   488,   492,   496,   500,   504,   508,   512,   516,   520,
     524,   528,   532,   536,   540,   545,   549,   554,   557,   560,
     563,   569,   575,   581,   587,   593,   597
};

/* YYRHS -- A `-1'-separated list of the rules' RHS.  */
static const yytype_int8 yyrhs[] =
{
      98,     0,    -1,    98,    99,    -1,    99,    -1,   100,    -1,
     104,    -1,   105,    -1,   106,    -1,   110,    26,    85,   101,
      89,    90,    -1,   110,    26,    85,   101,    89,   103,    -1,
      -1,   101,    91,   102,    -1,   102,    -1,   110,    26,    -1,
      92,   113,    93,    -1,    92,    93,    -1,   110,    26,    90,
      -1,     3,    26,    48,   110,    90,    -1,    15,    26,    92,
     107,    93,    -1,    15,    26,    92,    93,    -1,     7,    26,
      92,   109,    93,    -1,     7,    26,    92,    93,    -1,    41,
      26,    92,   109,    93,    -1,    41,    26,    92,    93,    -1,
     107,    91,   108,    -1,   108,    -1,    26,    -1,    26,    48,
     115,    -1,   109,    99,    -1,    99,    -1,    26,    -1,    47,
      -1,    17,    -1,    29,    -1,    31,    -1,    36,    -1,     4,
      -1,    45,    -1,    27,    -1,    13,    -1,    34,    94,   110,
      95,    -1,    44,    94,   110,    95,    86,    20,    96,    -1,
      44,    94,   110,    95,    86,    96,    -1,    24,    94,   110,
      95,    86,    20,    91,    20,    96,    -1,    24,    94,   110,
      95,    86,    91,    20,    96,    -1,    24,    94,   110,    95,
      86,    20,    91,    96,    -1,    24,    94,   110,    95,    86,
      91,    96,    -1,    39,    94,   110,    95,    86,   111,    96,
      -1,    35,    94,   110,    95,    -1,    28,    94,   110,    91,
      26,    95,    -1,    30,    94,   110,    95,    -1,    10,    94,
     110,    95,    -1,   111,    91,   112,    -1,   112,    -1,    -1,
      20,    -1,   113,   114,    -1,   114,    -1,   115,    90,    -1,
      19,    85,   115,    89,   114,    -1,    19,    85,   115,    89,
     114,    14,   114,    -1,    19,    85,   104,    89,   114,    -1,
      19,    85,   104,    89,   114,    14,   114,    -1,    18,    85,
     115,    90,   115,    90,   115,    89,   114,    -1,    18,    85,
      90,    90,   115,    89,   114,    -1,    18,    85,   115,    90,
     115,    90,    89,   114,    -1,    18,    85,    90,   115,    90,
      89,   114,    -1,    18,    85,   115,    90,    90,    89,   114,
      -1,    18,    85,    90,    90,    89,   114,    -1,    18,    85,
     104,    90,   115,    90,   115,    89,   114,    -1,    18,    85,
     104,    90,    90,    89,   114,    -1,    18,    85,   104,    90,
     115,    90,    89,   114,    -1,    18,    85,   115,    90,    90,
     115,    89,   114,    -1,    18,    85,   104,    90,    90,   115,
      89,   114,    -1,    18,    85,    90,   115,    90,   115,    89,
     114,    -1,    38,    85,   115,    89,   114,    -1,    38,    85,
     104,    89,   114,    -1,     9,    50,   114,    -1,     6,   115,
      50,   114,    -1,     6,   115,    11,   115,    50,   114,    -1,
       5,    90,    -1,     8,    90,    -1,    33,   115,    90,    -1,
      92,   113,    93,    -1,    90,    -1,    26,    48,   115,    -1,
      20,    -1,    42,    -1,    43,    -1,    23,    -1,    12,    -1,
      37,    -1,    32,    -1,    40,    -1,    16,    -1,   115,    74,
     115,    -1,   115,    75,   115,    -1,   115,    76,   115,    -1,
     115,    77,   115,    -1,   115,    78,   115,    -1,    84,   115,
      -1,    83,   115,    -1,   115,    88,    -1,   115,    87,    -1,
     115,    65,   115,    -1,   115,    64,   115,    -1,   115,    69,
     115,    -1,   115,    68,   115,    -1,   115,    67,   115,    -1,
     115,    66,   115,    -1,   115,    79,   115,    -1,   115,    58,
     115,    -1,   115,    57,   115,    -1,   115,    56,   115,    -1,
     115,    55,   115,    -1,   115,    54,   115,    -1,   115,    53,
     115,    -1,   115,    52,   115,    -1,   115,    51,   115,    -1,
     115,    59,   115,    -1,   115,    60,   115,    -1,   115,    61,
     115,    -1,   115,    62,   115,    -1,   115,    63,   115,    -1,
     115,    86,   116,    96,    -1,   115,    85,    89,    -1,   115,
      85,   116,    89,    -1,    80,   115,    -1,    81,   115,    -1,
      75,   115,    -1,   115,    73,   115,    46,   115,    -1,   115,
      72,   115,    46,   115,    -1,   115,    71,   115,    46,   115,
      -1,   115,    70,   115,    46,   115,    -1,   115,    49,   115,
      50,   115,    -1,   116,    91,   115,    -1,   115,    -1
};

/* YYRLINE[YYN] -- source line where rule number YYN was defined.  */
static const yytype_uint16 yyrline[] =
{
       0,   158,   158,   162,   169,   173,   177,   181,   188,   192,
     200,   203,   208,   216,   223,   227,   234,   241,   248,   252,
     256,   260,   264,   268,   275,   280,   288,   292,   299,   304,
     312,   316,   320,   324,   328,   332,   336,   340,   344,   348,
     352,   356,   360,   364,   368,   372,   376,   380,   384,   388,
     392,   396,   403,   408,   417,   420,   427,   432,   440,   444,
     448,   452,   456,   460,   464,   468,   472,   476,   480,   484,
     488,   492,   496,   500,   504,   508,   512,   516,   520,   524,
     528,   532,   536,   540,   544,   551,   555,   559,   563,   567,
     571,   575,   579,   583,   587,   591,   595,   599,   603,   607,
     611,   615,   619,   623,   627,   631,   635,   639,   643,   647,
     651,   655,   659,   663,   667,   671,   675,   679,   683,   687,
     691,   695,   699,   703,   707,   711,   715,   719,   723,   727,
     731,   735,   739,   743,   747,   754,   759
};
#endif

#if YYDEBUG || YYERROR_VERBOSE || YYTOKEN_TABLE
/* YYTNAME[SYMBOL-NUM] -- String name of the symbol SYMBOL-NUM.
   First, the terminals, then, starting at YYNTOKENS, nonterminals.  */
static const char *const yytname[] =
{
  "$end", "error", "$undefined", "\"alias\"", "\"bool\"", "\"break\"",
  "\"case\"", "\"class\"", "\"continue\"", "\"default\"", "\"dequeue\"",
  "\"...\"", "\"double-literal\"", "\"dynamic\"", "\"else\"", "\"enum\"",
  "\"false\"", "\"float\"", "\"for\"", "\"if\"", "\"int-literal\"",
  "\"invalid-number\"", "\"invalid-string\"", "\"long-literal\"",
  "\"matrix\"", "\"N\"", "\"name\"", "\"object\"", "\"pqueue\"", "\"Q\"",
  "\"queue\"", "\"R\"", "\"raw-string-literal\"", "\"return\"", "\"set\"",
  "\"stack\"", "\"string\"", "\"string-literal\"", "\"switch\"",
  "\"tensor\"", "\"true\"", "\"tuple\"", "\"unsigned-literal\"",
  "\"unsigned-long-literal\"", "\"vector\"", "\"void\"", "\"where\"",
  "\"Z\"", "'='", "'?'", "':'", "X_ASS", "O_ASS", "A_ASS", "m_ASS",
  "D_ASS", "M_ASS", "S_ASS", "P_ASS", "LOR", "LAND", "OR", "XOR", "AND",
  "EQ", "NE", "LT", "LE", "GT", "GE", "OJOIN", "RJOIN", "LJOIN", "JOIN",
  "'+'", "'-'", "'*'", "'/'", "'%'", "'.'", "'!'", "'~'", "UNIARY_MINUS",
  "DEC", "INC", "'('", "'['", "POST_DEC", "POST_INC", "')'", "';'", "','",
  "'{'", "'}'", "'<'", "'>'", "']'", "$accept", "program", "definition",
  "function", "args", "arg", "body", "variableDefinition", "alias",
  "typeDef", "members", "member", "definitions", "type", "dims", "dim",
  "statements", "statement", "expr", "exprList", 0
};
#endif

# ifdef YYPRINT
/* YYTOKNUM[YYLEX-NUM] -- Internal token number corresponding to
   token YYLEX-NUM.  */
static const yytype_uint16 yytoknum[] =
{
       0,   256,   257,   258,   259,   260,   261,   262,   263,   264,
     265,   266,   267,   268,   269,   270,   271,   272,   273,   274,
     275,   276,   277,   278,   279,   280,   281,   282,   283,   284,
     285,   286,   287,   288,   289,   290,   291,   292,   293,   294,
     295,   296,   297,   298,   299,   300,   301,   302,    61,    63,
      58,   303,   304,   305,   306,   307,   308,   309,   310,   311,
     312,   313,   314,   315,   316,   317,   318,   319,   320,   321,
     322,   323,   324,   325,    43,    45,    42,    47,    37,    46,
      33,   126,   326,   327,   328,    40,    91,   329,   330,    41,
      59,    44,   123,   125,    60,    62,    93
};
# endif

/* YYR1[YYN] -- Symbol number of symbol that rule YYN derives.  */
static const yytype_uint8 yyr1[] =
{
       0,    97,    98,    98,    99,    99,    99,    99,   100,   100,
     101,   101,   101,   102,   103,   103,   104,   105,   106,   106,
     106,   106,   106,   106,   107,   107,   108,   108,   109,   109,
     110,   110,   110,   110,   110,   110,   110,   110,   110,   110,
     110,   110,   110,   110,   110,   110,   110,   110,   110,   110,
     110,   110,   111,   111,   112,   112,   113,   113,   114,   114,
     114,   114,   114,   114,   114,   114,   114,   114,   114,   114,
     114,   114,   114,   114,   114,   114,   114,   114,   114,   114,
     114,   114,   114,   114,   114,   115,   115,   115,   115,   115,
     115,   115,   115,   115,   115,   115,   115,   115,   115,   115,
     115,   115,   115,   115,   115,   115,   115,   115,   115,   115,
     115,   115,   115,   115,   115,   115,   115,   115,   115,   115,
     115,   115,   115,   115,   115,   115,   115,   115,   115,   115,
     115,   115,   115,   115,   115,   116,   116
};

/* YYR2[YYN] -- Number of symbols composing right hand side of rule YYN.  */
static const yytype_uint8 yyr2[] =
{
       0,     2,     2,     1,     1,     1,     1,     1,     6,     6,
       0,     3,     1,     2,     3,     2,     3,     5,     5,     4,
       5,     4,     5,     4,     3,     1,     1,     3,     2,     1,
       1,     1,     1,     1,     1,     1,     1,     1,     1,     1,
       4,     7,     6,     9,     8,     8,     7,     7,     4,     6,
       4,     4,     3,     1,     0,     1,     2,     1,     2,     5,
       7,     5,     7,     9,     7,     8,     7,     7,     6,     9,
       7,     8,     8,     8,     8,     5,     5,     3,     4,     6,
       2,     2,     3,     3,     1,     3,     1,     1,     1,     1,
       1,     1,     1,     1,     1,     3,     3,     3,     3,     3,
       2,     2,     2,     2,     3,     3,     3,     3,     3,     3,
       3,     3,     3,     3,     3,     3,     3,     3,     3,     3,
       3,     3,     3,     3,     4,     3,     4,     2,     2,     2,
       5,     5,     5,     5,     5,     3,     1
};

/* YYDEFACT[STATE-NAME] -- Default rule to reduce with in state
   STATE-NUM when YYTABLE doesn't specify something else to do.  Zero
   means the default is an error.  */
static const yytype_uint8 yydefact[] =
{
       0,     0,    36,     0,     0,    39,     0,    32,     0,    30,
      38,     0,    33,     0,    34,     0,     0,    35,     0,     0,
       0,    37,    31,     0,     3,     4,     5,     6,     7,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     1,     2,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,    10,    16,     0,
      21,    29,     0,    51,    26,    19,     0,    25,     0,     0,
      50,    40,    48,     0,    23,     0,     0,     0,    12,     0,
      17,    20,    28,     0,     0,    18,     0,     0,    54,    22,
       0,     0,     0,    13,    90,    94,    86,    89,     0,    92,
      91,    93,    87,    88,     0,     0,     0,     0,     0,    27,
      24,     0,     0,    49,    55,     0,    53,     0,    42,     8,
       0,     9,    11,     0,   129,   127,   128,   101,   100,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,   103,   102,     0,     0,    46,    54,    47,    41,     0,
       0,     0,     0,     0,     0,     0,     0,    84,     0,    15,
       0,    57,     0,    85,     0,   118,   117,   116,   115,   114,
     113,   112,   111,   119,   120,   121,   122,   123,   105,   104,
     109,   108,   107,   106,     0,     0,     0,     0,    95,    96,
      97,    98,    99,   110,   125,   136,     0,     0,     0,    45,
      44,    52,    80,     0,    81,     0,     0,     0,     0,     0,
       0,    14,    56,    58,     0,     0,     0,     0,     0,   126,
       0,   124,    43,     0,     0,    77,    30,     0,     0,     0,
       0,     0,     0,    82,     0,     0,    83,   134,   133,   132,
     131,   130,   135,     0,    78,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,    61,    59,    76,    75,    79,    68,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,    64,
      66,     0,    70,     0,     0,     0,    67,     0,     0,     0,
      62,    60,    74,    73,    71,     0,    72,    65,     0,    69,
      63
};

/* YYDEFGOTO[NTERM-NUM].  */
static const yytype_int16 yydefgoto[] =
{
      -1,    23,    61,    25,    77,    78,   121,    26,    27,    28,
      66,    67,    62,    29,   115,   116,   180,   181,   182,   216
};

/* YYPACT[STATE-NUM] -- Index in YYTABLE of the portion describing
   STATE-NUM.  */
#define YYPACT_NINF -197
static const yytype_int16 yypact[] =
{
    1286,   -21,  -197,   -20,   -81,  -197,   -12,  -197,   -62,  -197,
    -197,   -53,  -197,    -1,  -197,     1,     3,  -197,    12,    -8,
      13,  -197,  -197,  1247,  -197,  -197,  -197,  -197,  -197,    18,
      37,    22,  1319,    24,  1319,  1319,  1319,  1319,  1319,  1319,
      25,  1319,  -197,  -197,   -73,  1319,   239,    15,   -10,    16,
      28,    27,    30,    31,    32,   292,    33,  1319,  -197,    40,
    -197,  -197,   331,  -197,    72,  -197,   -48,  -197,    45,    97,
    -197,  -197,  -197,    47,  -197,   376,    56,    -5,  -197,   119,
    -197,  -197,  -197,  1165,   133,  -197,    -9,    66,   142,  -197,
     -18,    -2,  1319,  -197,  -197,  -197,  -197,  -197,   117,  -197,
    -197,  -197,  -197,  -197,  1165,  1165,  1165,  1165,  1165,  2133,
    -197,    75,   -17,  -197,  -197,   -76,  -197,    73,  -197,  -197,
     420,  -197,  -197,  1165,   -78,   -78,   -78,   -78,   -78,  1165,
    1165,  1165,  1165,  1165,  1165,  1165,  1165,  1165,  1165,  1165,
    1165,  1165,  1165,  1165,  1165,  1165,  1165,  1165,  1165,  1165,
    1165,  1165,  1165,  1165,  1165,  1165,  1165,  1165,  1165,    92,
    1165,  -197,  -197,   -16,    74,  -197,   142,  -197,  -197,    78,
    1165,    81,   124,    93,    94,  1165,    95,  -197,   687,  -197,
     509,  -197,  1485,  2133,  2053,  2133,  2133,  2133,  2133,  2133,
    2133,  2133,  2133,   671,  2161,   754,   949,  2186,  2186,  2186,
    1068,  1068,  1068,  1068,  1316,  1359,  1402,  1445,   -50,   -50,
     -78,   -78,   -78,   -78,  -197,  2133,     0,   -57,    87,  -197,
    -197,  -197,  -197,  1000,  -197,   687,   768,   843,  1525,   843,
     598,  -197,  -197,  -197,  1165,  1165,  1165,  1165,  1165,  -197,
    1165,  -197,  -197,  1165,   687,  -197,   117,   877,    98,   159,
    1565,   100,  1725,  -197,   101,  1766,  -197,  2133,    62,    62,
      62,    62,  2133,  2093,  -197,   456,  1605,   913,   102,   958,
     687,   687,   687,   687,   687,   687,  1807,   545,   634,  1645,
    1077,  1685,   173,   177,  -197,  -197,  -197,  -197,   687,   687,
    1848,   687,  1889,  1090,   687,  1930,  1152,   687,   687,  -197,
    -197,   687,  -197,   687,   687,  1971,  -197,   687,   687,  2012,
    -197,  -197,  -197,  -197,  -197,   687,  -197,  -197,   687,  -197,
    -197
};

/* YYPGOTO[NTERM-NUM].  */
static const yytype_int16 yypgoto[] =
{
    -197,  -197,    19,  -197,  -197,   104,  -197,  -196,  -197,  -197,
    -197,   109,   143,    64,  -197,    34,    21,   -67,   -83,    41
};

/* YYTABLE[YYPACT[STATE-NUM]].  What to do in state STATE-NUM.  If
   positive, shift that token.  If negative, reduce the rule which
   number is the opposite.  If zero, do what YYDEFACT says.
   If YYTABLE_NINF, syntax error.  */
#define YYTABLE_NINF -1
static const yytype_uint16 yytable[] =
{
     109,   158,   117,   164,   218,    30,    31,   159,   160,   161,
     162,   111,    57,    32,    33,   166,    64,    58,    40,    24,
     167,   124,   125,   126,   127,   128,   155,   156,   157,   158,
     248,   251,    34,   254,   240,   159,   160,   161,   162,   241,
     183,    35,    43,    84,    44,    85,   184,   185,   186,   187,
     188,   189,   190,   191,   192,   193,   194,   195,   196,   197,
     198,   199,   200,   201,   202,   203,   204,   205,   206,   207,
     208,   209,   210,   211,   212,   213,   215,   215,   118,   165,
     219,    82,   112,    65,    91,    45,    92,   223,   119,   239,
     120,   240,   228,    36,    82,    37,    47,    38,    49,    50,
      51,    52,    53,    54,    94,    56,    39,    41,    95,    59,
      63,    68,    96,   232,    46,    97,    48,    55,    98,    69,
      83,    79,    70,    87,    99,    71,    72,    73,    76,   100,
      80,    86,   101,    88,   102,   103,   153,   154,   155,   156,
     157,   158,    90,   250,   252,    93,   255,   159,   160,   161,
     162,   257,   258,   259,   260,   261,    79,   262,   245,    64,
     263,   113,   114,   232,   266,   123,   163,   104,   222,   168,
     220,   224,   105,   106,   225,   107,   108,   264,   226,   227,
     229,   214,   276,   242,   279,   268,   281,   297,   267,   270,
     272,   298,    58,   110,   290,   292,   122,   295,    75,   230,
     221,   217,     0,   282,   283,   284,   285,   286,   287,     0,
     305,     0,     0,   309,     0,     0,     0,     0,     0,     0,
       0,   299,   300,     0,   302,     0,     0,   306,     0,     0,
     310,   311,     0,     0,   312,     0,   313,   314,     0,     0,
     316,   317,     1,     2,     0,     0,     3,     0,   319,     4,
       0,   320,     5,     0,     6,     0,     7,     0,     0,     0,
       0,     0,     0,     8,     0,     9,    10,    11,    12,    13,
      14,     0,     0,    15,    16,    17,     0,     0,    18,     0,
      19,     0,     0,    20,    21,     0,    22,     0,     0,     0,
     249,   249,     0,   249,     0,     1,     2,     0,     0,     3,
       0,     0,     4,     0,     0,     5,     0,     6,     0,     7,
       0,     0,     0,     0,     0,     0,     8,     0,     9,    10,
      11,    12,    13,    14,     0,     0,    15,    16,    17,     0,
       0,    18,    60,    19,     1,     2,    20,    21,     3,    22,
       0,     4,     0,     0,     5,     0,     6,     0,     7,     0,
       0,     0,     0,     0,     0,     8,     0,     9,    10,    11,
      12,    13,    14,     0,     0,    15,    16,    17,     0,     0,
      18,     0,    19,     0,     0,    20,    21,     0,    22,     1,
       2,     0,     0,     3,     0,    74,     4,     0,     0,     5,
       0,     6,     0,     7,     0,     0,     0,     0,     0,     0,
       8,     0,     9,    10,    11,    12,    13,    14,     0,     0,
      15,    16,    17,     0,     0,    18,     0,    19,     0,     0,
      20,    21,     0,    22,    81,   169,   170,     0,   171,   172,
       0,     0,    94,     0,     0,     0,    95,     0,   173,   174,
      96,     0,     0,    97,     0,     0,    98,     0,     0,     0,
       0,     0,    99,   175,     0,     0,     0,   100,   176,     0,
     101,     0,   102,   103,     0,     0,     0,     0,    94,    89,
       0,     0,    95,     0,     0,     0,    96,     0,     0,    97,
       0,     0,    98,     0,     0,     0,     0,     0,    99,     0,
       0,     0,     0,   100,     0,   104,   101,     0,   102,   103,
     105,   106,     0,   107,   108,     0,     0,     0,     0,     0,
     177,     0,   178,   179,   169,   170,     0,   171,   172,     0,
       0,    94,     0,     0,     0,    95,     0,   173,   174,    96,
       0,   104,    97,     0,     0,    98,   105,   106,     0,   107,
     108,    99,   175,     0,     0,   275,   100,   176,     0,   101,
       0,   102,   103,     0,     0,     0,     0,    94,     0,     0,
       0,    95,     0,     0,     0,    96,     0,     0,    97,     0,
       0,    98,     0,     0,     0,     0,     0,    99,     0,     0,
       0,     0,   100,     0,   104,   101,     0,   102,   103,   105,
     106,     0,   107,   108,     0,     0,     0,     0,     0,   177,
       0,   178,   231,   169,   170,     0,   171,   172,     0,     0,
      94,     0,     0,     0,    95,     0,   173,   174,    96,     0,
     104,    97,     0,     0,    98,   105,   106,     0,   107,   108,
      99,   175,     0,     0,   289,   100,   176,     0,   101,     0,
     102,   103,     0,     0,     0,     0,    94,     0,     0,     0,
      95,     0,     0,     0,    96,     0,     0,    97,     0,     0,
      98,     0,     0,     0,     0,     0,    99,     0,     0,     0,
       0,   100,     0,   104,   101,     0,   102,   103,   105,   106,
       0,   107,   108,     0,     0,     0,     0,     0,   177,     0,
     178,   256,   169,   170,     0,   171,   172,     0,     0,    94,
       0,     0,     0,    95,     0,   173,   174,    96,     0,   104,
      97,     0,     0,    98,   105,   106,     0,   107,   108,    99,
     175,     0,     0,   291,   100,   176,     0,   101,     0,   102,
     103,   139,   140,   141,   142,   143,   144,   145,   146,   147,
     148,   149,   150,   151,   152,   153,   154,   155,   156,   157,
     158,     0,     0,     0,     0,     0,   159,   160,   161,   162,
       0,     0,   104,     0,     0,     0,     0,   105,   106,     0,
     107,   108,     2,     0,     0,     0,     0,   177,     4,   178,
      94,     5,     0,     0,    95,     7,     0,     0,    96,     0,
       0,    97,     8,     0,   246,    10,    11,    12,    13,    14,
      99,     0,    15,    16,    17,   100,     0,    18,   101,     0,
     102,   103,    20,    21,     0,    22,   141,   142,   143,   144,
     145,   146,   147,   148,   149,   150,   151,   152,   153,   154,
     155,   156,   157,   158,     0,     0,     0,     0,     0,   159,
     160,   161,   162,   104,     0,     0,     0,     2,   105,   106,
       0,   107,   108,     4,     0,    94,     5,     0,   247,    95,
       7,     0,     0,    96,     0,     0,    97,     8,     0,   246,
      10,    11,    12,    13,    14,    99,     0,    15,    16,    17,
     100,     0,    18,   101,     0,   102,   103,    20,    21,    94,
      22,     0,     0,    95,     0,     0,     0,    96,     0,     0,
      97,     0,     0,    98,     0,     0,     0,     0,     0,    99,
       0,     0,     0,     0,   100,     0,     0,   101,   104,   102,
     103,     0,     0,   105,   106,    94,   107,   108,     0,    95,
       0,     0,     0,    96,     0,     0,    97,     0,     0,    98,
       0,     0,     0,     0,     0,    99,     0,     0,     0,     0,
     100,     0,   104,   101,     0,   102,   103,   105,   106,     0,
     107,   108,     0,     0,     0,     0,     0,   265,     0,     0,
      94,     0,     0,     0,    95,     0,     0,     0,    96,     0,
       0,    97,     0,     0,    98,     0,     0,     0,   104,     0,
      99,     0,     0,   105,   106,   100,   107,   108,   101,     0,
     102,   103,     0,   278,     0,     0,     0,     0,     0,     0,
       0,   243,   142,   143,   144,   145,   146,   147,   148,   149,
     150,   151,   152,   153,   154,   155,   156,   157,   158,     0,
       0,     0,     0,   104,   159,   160,   161,   162,   105,   106,
       0,   107,   108,     0,     0,     0,     0,     0,   280,   129,
     244,   130,   131,   132,   133,   134,   135,   136,   137,   138,
     139,   140,   141,   142,   143,   144,   145,   146,   147,   148,
     149,   150,   151,   152,   153,   154,   155,   156,   157,   158,
       0,     0,     0,     0,     0,   159,   160,   161,   162,    94,
       0,     0,     0,    95,     0,     0,     0,    96,     0,     0,
      97,     0,    94,    98,     0,     0,    95,     0,     0,    99,
      96,     0,     0,    97,   100,     0,    98,   101,     0,   102,
     103,     0,    99,     0,     0,     0,     0,   100,     0,     0,
     101,     0,   102,   103,   145,   146,   147,   148,   149,   150,
     151,   152,   153,   154,   155,   156,   157,   158,     0,     0,
       0,     0,   104,   159,   160,   161,   162,   105,   106,     0,
     107,   108,     0,     0,    94,   104,   294,     0,    95,     0,
     105,   106,    96,   107,   108,    97,     0,    94,    98,   304,
       0,    95,     0,     0,    99,    96,     0,     0,    97,   100,
       0,    98,   101,     0,   102,   103,     0,    99,     0,     0,
       0,     0,   100,     0,     0,   101,     0,   102,   103,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,   104,     0,     0,
       0,     0,   105,   106,     0,   107,   108,     0,     0,     0,
     104,   308,     0,     0,     0,   105,   106,    42,   107,   108,
       1,     2,     0,     0,     3,     0,     0,     4,     0,     0,
       5,     0,     6,     0,     7,     0,     0,     0,     0,     0,
       0,     8,     0,     9,    10,    11,    12,    13,    14,     0,
       0,    15,    16,    17,     0,     0,    18,     0,    19,     1,
       2,    20,    21,     3,    22,     0,     4,     0,     0,     5,
       0,     6,     0,     7,     0,     0,     0,     0,     0,     0,
       8,     0,     9,    10,    11,    12,    13,    14,     0,     0,
      15,    16,    17,     2,     0,    18,     0,    19,     0,     4,
      20,    21,     5,    22,     0,     0,     7,     0,     0,     0,
       0,     0,     0,     8,     0,     9,    10,    11,    12,    13,
      14,     0,     0,    15,    16,    17,     0,     0,    18,     0,
       0,     0,   235,    20,    21,   129,    22,   130,   131,   132,
     133,   134,   135,   136,   137,   138,   139,   140,   141,   142,
     143,   144,   145,   146,   147,   148,   149,   150,   151,   152,
     153,   154,   155,   156,   157,   158,     0,     0,     0,     0,
       0,   159,   160,   161,   162,   236,     0,     0,   129,     0,
     130,   131,   132,   133,   134,   135,   136,   137,   138,   139,
     140,   141,   142,   143,   144,   145,   146,   147,   148,   149,
     150,   151,   152,   153,   154,   155,   156,   157,   158,     0,
       0,     0,     0,     0,   159,   160,   161,   162,   237,     0,
       0,   129,     0,   130,   131,   132,   133,   134,   135,   136,
     137,   138,   139,   140,   141,   142,   143,   144,   145,   146,
     147,   148,   149,   150,   151,   152,   153,   154,   155,   156,
     157,   158,     0,     0,     0,     0,     0,   159,   160,   161,
     162,   238,     0,     0,   129,     0,   130,   131,   132,   133,
     134,   135,   136,   137,   138,   139,   140,   141,   142,   143,
     144,   145,   146,   147,   148,   149,   150,   151,   152,   153,
     154,   155,   156,   157,   158,     0,     0,     0,     0,     0,
     159,   160,   161,   162,   129,     0,   130,   131,   132,   133,
     134,   135,   136,   137,   138,   139,   140,   141,   142,   143,
     144,   145,   146,   147,   148,   149,   150,   151,   152,   153,
     154,   155,   156,   157,   158,     0,     0,     0,     0,     0,
     159,   160,   161,   162,   129,   233,   130,   131,   132,   133,
     134,   135,   136,   137,   138,   139,   140,   141,   142,   143,
     144,   145,   146,   147,   148,   149,   150,   151,   152,   153,
     154,   155,   156,   157,   158,     0,     0,     0,     0,     0,
     159,   160,   161,   162,   129,   253,   130,   131,   132,   133,
     134,   135,   136,   137,   138,   139,   140,   141,   142,   143,
     144,   145,   146,   147,   148,   149,   150,   151,   152,   153,
     154,   155,   156,   157,   158,     0,     0,     0,     0,     0,
     159,   160,   161,   162,   129,   269,   130,   131,   132,   133,
     134,   135,   136,   137,   138,   139,   140,   141,   142,   143,
     144,   145,   146,   147,   148,   149,   150,   151,   152,   153,
     154,   155,   156,   157,   158,     0,     0,     0,     0,     0,
     159,   160,   161,   162,   129,   277,   130,   131,   132,   133,
     134,   135,   136,   137,   138,   139,   140,   141,   142,   143,
     144,   145,   146,   147,   148,   149,   150,   151,   152,   153,
     154,   155,   156,   157,   158,     0,     0,     0,     0,     0,
     159,   160,   161,   162,   129,   293,   130,   131,   132,   133,
     134,   135,   136,   137,   138,   139,   140,   141,   142,   143,
     144,   145,   146,   147,   148,   149,   150,   151,   152,   153,
     154,   155,   156,   157,   158,     0,     0,     0,     0,     0,
     159,   160,   161,   162,   129,   296,   130,   131,   132,   133,
     134,   135,   136,   137,   138,   139,   140,   141,   142,   143,
     144,   145,   146,   147,   148,   149,   150,   151,   152,   153,
     154,   155,   156,   157,   158,     0,     0,     0,     0,     0,
     159,   160,   161,   162,   271,   129,     0,   130,   131,   132,
     133,   134,   135,   136,   137,   138,   139,   140,   141,   142,
     143,   144,   145,   146,   147,   148,   149,   150,   151,   152,
     153,   154,   155,   156,   157,   158,     0,     0,     0,     0,
       0,   159,   160,   161,   162,   273,   129,     0,   130,   131,
     132,   133,   134,   135,   136,   137,   138,   139,   140,   141,
     142,   143,   144,   145,   146,   147,   148,   149,   150,   151,
     152,   153,   154,   155,   156,   157,   158,     0,     0,     0,
       0,     0,   159,   160,   161,   162,   288,   129,     0,   130,
     131,   132,   133,   134,   135,   136,   137,   138,   139,   140,
     141,   142,   143,   144,   145,   146,   147,   148,   149,   150,
     151,   152,   153,   154,   155,   156,   157,   158,     0,     0,
       0,     0,     0,   159,   160,   161,   162,   301,   129,     0,
     130,   131,   132,   133,   134,   135,   136,   137,   138,   139,
     140,   141,   142,   143,   144,   145,   146,   147,   148,   149,
     150,   151,   152,   153,   154,   155,   156,   157,   158,     0,
       0,     0,     0,     0,   159,   160,   161,   162,   303,   129,
       0,   130,   131,   132,   133,   134,   135,   136,   137,   138,
     139,   140,   141,   142,   143,   144,   145,   146,   147,   148,
     149,   150,   151,   152,   153,   154,   155,   156,   157,   158,
       0,     0,     0,     0,     0,   159,   160,   161,   162,   307,
     129,     0,   130,   131,   132,   133,   134,   135,   136,   137,
     138,   139,   140,   141,   142,   143,   144,   145,   146,   147,
     148,   149,   150,   151,   152,   153,   154,   155,   156,   157,
     158,     0,     0,     0,     0,     0,   159,   160,   161,   162,
     315,   129,     0,   130,   131,   132,   133,   134,   135,   136,
     137,   138,   139,   140,   141,   142,   143,   144,   145,   146,
     147,   148,   149,   150,   151,   152,   153,   154,   155,   156,
     157,   158,     0,     0,     0,     0,     0,   159,   160,   161,
     162,   318,   129,   234,   130,   131,   132,   133,   134,   135,
     136,   137,   138,   139,   140,   141,   142,   143,   144,   145,
     146,   147,   148,   149,   150,   151,   152,   153,   154,   155,
     156,   157,   158,     0,     0,     0,     0,     0,   159,   160,
     161,   162,   129,   274,   130,   131,   132,   133,   134,   135,
     136,   137,   138,   139,   140,   141,   142,   143,   144,   145,
     146,   147,   148,   149,   150,   151,   152,   153,   154,   155,
     156,   157,   158,     0,     0,     0,     0,     0,   159,   160,
     161,   162,   129,     0,   130,   131,   132,   133,   134,   135,
     136,   137,   138,   139,   140,   141,   142,   143,   144,   145,
     146,   147,   148,   149,   150,   151,   152,   153,   154,   155,
     156,   157,   158,     0,     0,     0,     0,     0,   159,   160,
     161,   162,   140,   141,   142,   143,   144,   145,   146,   147,
     148,   149,   150,   151,   152,   153,   154,   155,   156,   157,
     158,     0,     0,     0,     0,     0,   159,   160,   161,   162,
     143,   144,   145,   146,   147,   148,   149,   150,   151,   152,
     153,   154,   155,   156,   157,   158,     0,     0,     0,     0,
       0,   159,   160,   161,   162
};

static const yytype_int16 yycheck[] =
{
      83,    79,    20,    20,    20,    26,    26,    85,    86,    87,
      88,    20,    85,    94,    26,    91,    26,    90,    26,     0,
      96,   104,   105,   106,   107,   108,    76,    77,    78,    79,
     226,   227,    94,   229,    91,    85,    86,    87,    88,    96,
     123,    94,    23,    91,    26,    93,   129,   130,   131,   132,
     133,   134,   135,   136,   137,   138,   139,   140,   141,   142,
     143,   144,   145,   146,   147,   148,   149,   150,   151,   152,
     153,   154,   155,   156,   157,   158,   159,   160,    96,    96,
      96,    62,    91,    93,    89,    48,    91,   170,    90,    89,
      92,    91,   175,    94,    75,    94,    32,    94,    34,    35,
      36,    37,    38,    39,    12,    41,    94,    94,    16,    45,
      95,    95,    20,   180,    92,    23,    92,    92,    26,    91,
      48,    57,    95,    26,    32,    95,    95,    95,    95,    37,
      90,    86,    40,    86,    42,    43,    74,    75,    76,    77,
      78,    79,    86,   226,   227,    26,   229,    85,    86,    87,
      88,   234,   235,   236,   237,   238,    92,   240,   225,    26,
     243,    95,    20,   230,   247,    48,    91,    75,    90,    96,
      96,    90,    80,    81,    50,    83,    84,   244,    85,    85,
      85,    89,   265,    96,   267,    26,   269,    14,    90,    89,
      89,    14,    90,    84,   277,   278,    92,   280,    55,   178,
     166,   160,    -1,   270,   271,   272,   273,   274,   275,    -1,
     293,    -1,    -1,   296,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,   288,   289,    -1,   291,    -1,    -1,   294,    -1,    -1,
     297,   298,    -1,    -1,   301,    -1,   303,   304,    -1,    -1,
     307,   308,     3,     4,    -1,    -1,     7,    -1,   315,    10,
      -1,   318,    13,    -1,    15,    -1,    17,    -1,    -1,    -1,
      -1,    -1,    -1,    24,    -1,    26,    27,    28,    29,    30,
      31,    -1,    -1,    34,    35,    36,    -1,    -1,    39,    -1,
      41,    -1,    -1,    44,    45,    -1,    47,    -1,    -1,    -1,
     226,   227,    -1,   229,    -1,     3,     4,    -1,    -1,     7,
      -1,    -1,    10,    -1,    -1,    13,    -1,    15,    -1,    17,
      -1,    -1,    -1,    -1,    -1,    -1,    24,    -1,    26,    27,
      28,    29,    30,    31,    -1,    -1,    34,    35,    36,    -1,
      -1,    39,    93,    41,     3,     4,    44,    45,     7,    47,
      -1,    10,    -1,    -1,    13,    -1,    15,    -1,    17,    -1,
      -1,    -1,    -1,    -1,    -1,    24,    -1,    26,    27,    28,
      29,    30,    31,    -1,    -1,    34,    35,    36,    -1,    -1,
      39,    -1,    41,    -1,    -1,    44,    45,    -1,    47,     3,
       4,    -1,    -1,     7,    -1,    93,    10,    -1,    -1,    13,
      -1,    15,    -1,    17,    -1,    -1,    -1,    -1,    -1,    -1,
      24,    -1,    26,    27,    28,    29,    30,    31,    -1,    -1,
      34,    35,    36,    -1,    -1,    39,    -1,    41,    -1,    -1,
      44,    45,    -1,    47,    93,     5,     6,    -1,     8,     9,
      -1,    -1,    12,    -1,    -1,    -1,    16,    -1,    18,    19,
      20,    -1,    -1,    23,    -1,    -1,    26,    -1,    -1,    -1,
      -1,    -1,    32,    33,    -1,    -1,    -1,    37,    38,    -1,
      40,    -1,    42,    43,    -1,    -1,    -1,    -1,    12,    93,
      -1,    -1,    16,    -1,    -1,    -1,    20,    -1,    -1,    23,
      -1,    -1,    26,    -1,    -1,    -1,    -1,    -1,    32,    -1,
      -1,    -1,    -1,    37,    -1,    75,    40,    -1,    42,    43,
      80,    81,    -1,    83,    84,    -1,    -1,    -1,    -1,    -1,
      90,    -1,    92,    93,     5,     6,    -1,     8,     9,    -1,
      -1,    12,    -1,    -1,    -1,    16,    -1,    18,    19,    20,
      -1,    75,    23,    -1,    -1,    26,    80,    81,    -1,    83,
      84,    32,    33,    -1,    -1,    89,    37,    38,    -1,    40,
      -1,    42,    43,    -1,    -1,    -1,    -1,    12,    -1,    -1,
      -1,    16,    -1,    -1,    -1,    20,    -1,    -1,    23,    -1,
      -1,    26,    -1,    -1,    -1,    -1,    -1,    32,    -1,    -1,
      -1,    -1,    37,    -1,    75,    40,    -1,    42,    43,    80,
      81,    -1,    83,    84,    -1,    -1,    -1,    -1,    -1,    90,
      -1,    92,    93,     5,     6,    -1,     8,     9,    -1,    -1,
      12,    -1,    -1,    -1,    16,    -1,    18,    19,    20,    -1,
      75,    23,    -1,    -1,    26,    80,    81,    -1,    83,    84,
      32,    33,    -1,    -1,    89,    37,    38,    -1,    40,    -1,
      42,    43,    -1,    -1,    -1,    -1,    12,    -1,    -1,    -1,
      16,    -1,    -1,    -1,    20,    -1,    -1,    23,    -1,    -1,
      26,    -1,    -1,    -1,    -1,    -1,    32,    -1,    -1,    -1,
      -1,    37,    -1,    75,    40,    -1,    42,    43,    80,    81,
      -1,    83,    84,    -1,    -1,    -1,    -1,    -1,    90,    -1,
      92,    93,     5,     6,    -1,     8,     9,    -1,    -1,    12,
      -1,    -1,    -1,    16,    -1,    18,    19,    20,    -1,    75,
      23,    -1,    -1,    26,    80,    81,    -1,    83,    84,    32,
      33,    -1,    -1,    89,    37,    38,    -1,    40,    -1,    42,
      43,    60,    61,    62,    63,    64,    65,    66,    67,    68,
      69,    70,    71,    72,    73,    74,    75,    76,    77,    78,
      79,    -1,    -1,    -1,    -1,    -1,    85,    86,    87,    88,
      -1,    -1,    75,    -1,    -1,    -1,    -1,    80,    81,    -1,
      83,    84,     4,    -1,    -1,    -1,    -1,    90,    10,    92,
      12,    13,    -1,    -1,    16,    17,    -1,    -1,    20,    -1,
      -1,    23,    24,    -1,    26,    27,    28,    29,    30,    31,
      32,    -1,    34,    35,    36,    37,    -1,    39,    40,    -1,
      42,    43,    44,    45,    -1,    47,    62,    63,    64,    65,
      66,    67,    68,    69,    70,    71,    72,    73,    74,    75,
      76,    77,    78,    79,    -1,    -1,    -1,    -1,    -1,    85,
      86,    87,    88,    75,    -1,    -1,    -1,     4,    80,    81,
      -1,    83,    84,    10,    -1,    12,    13,    -1,    90,    16,
      17,    -1,    -1,    20,    -1,    -1,    23,    24,    -1,    26,
      27,    28,    29,    30,    31,    32,    -1,    34,    35,    36,
      37,    -1,    39,    40,    -1,    42,    43,    44,    45,    12,
      47,    -1,    -1,    16,    -1,    -1,    -1,    20,    -1,    -1,
      23,    -1,    -1,    26,    -1,    -1,    -1,    -1,    -1,    32,
      -1,    -1,    -1,    -1,    37,    -1,    -1,    40,    75,    42,
      43,    -1,    -1,    80,    81,    12,    83,    84,    -1,    16,
      -1,    -1,    -1,    20,    -1,    -1,    23,    -1,    -1,    26,
      -1,    -1,    -1,    -1,    -1,    32,    -1,    -1,    -1,    -1,
      37,    -1,    75,    40,    -1,    42,    43,    80,    81,    -1,
      83,    84,    -1,    -1,    -1,    -1,    -1,    90,    -1,    -1,
      12,    -1,    -1,    -1,    16,    -1,    -1,    -1,    20,    -1,
      -1,    23,    -1,    -1,    26,    -1,    -1,    -1,    75,    -1,
      32,    -1,    -1,    80,    81,    37,    83,    84,    40,    -1,
      42,    43,    -1,    90,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    11,    63,    64,    65,    66,    67,    68,    69,    70,
      71,    72,    73,    74,    75,    76,    77,    78,    79,    -1,
      -1,    -1,    -1,    75,    85,    86,    87,    88,    80,    81,
      -1,    83,    84,    -1,    -1,    -1,    -1,    -1,    90,    49,
      50,    51,    52,    53,    54,    55,    56,    57,    58,    59,
      60,    61,    62,    63,    64,    65,    66,    67,    68,    69,
      70,    71,    72,    73,    74,    75,    76,    77,    78,    79,
      -1,    -1,    -1,    -1,    -1,    85,    86,    87,    88,    12,
      -1,    -1,    -1,    16,    -1,    -1,    -1,    20,    -1,    -1,
      23,    -1,    12,    26,    -1,    -1,    16,    -1,    -1,    32,
      20,    -1,    -1,    23,    37,    -1,    26,    40,    -1,    42,
      43,    -1,    32,    -1,    -1,    -1,    -1,    37,    -1,    -1,
      40,    -1,    42,    43,    66,    67,    68,    69,    70,    71,
      72,    73,    74,    75,    76,    77,    78,    79,    -1,    -1,
      -1,    -1,    75,    85,    86,    87,    88,    80,    81,    -1,
      83,    84,    -1,    -1,    12,    75,    89,    -1,    16,    -1,
      80,    81,    20,    83,    84,    23,    -1,    12,    26,    89,
      -1,    16,    -1,    -1,    32,    20,    -1,    -1,    23,    37,
      -1,    26,    40,    -1,    42,    43,    -1,    32,    -1,    -1,
      -1,    -1,    37,    -1,    -1,    40,    -1,    42,    43,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    75,    -1,    -1,
      -1,    -1,    80,    81,    -1,    83,    84,    -1,    -1,    -1,
      75,    89,    -1,    -1,    -1,    80,    81,     0,    83,    84,
       3,     4,    -1,    -1,     7,    -1,    -1,    10,    -1,    -1,
      13,    -1,    15,    -1,    17,    -1,    -1,    -1,    -1,    -1,
      -1,    24,    -1,    26,    27,    28,    29,    30,    31,    -1,
      -1,    34,    35,    36,    -1,    -1,    39,    -1,    41,     3,
       4,    44,    45,     7,    47,    -1,    10,    -1,    -1,    13,
      -1,    15,    -1,    17,    -1,    -1,    -1,    -1,    -1,    -1,
      24,    -1,    26,    27,    28,    29,    30,    31,    -1,    -1,
      34,    35,    36,     4,    -1,    39,    -1,    41,    -1,    10,
      44,    45,    13,    47,    -1,    -1,    17,    -1,    -1,    -1,
      -1,    -1,    -1,    24,    -1,    26,    27,    28,    29,    30,
      31,    -1,    -1,    34,    35,    36,    -1,    -1,    39,    -1,
      -1,    -1,    46,    44,    45,    49,    47,    51,    52,    53,
      54,    55,    56,    57,    58,    59,    60,    61,    62,    63,
      64,    65,    66,    67,    68,    69,    70,    71,    72,    73,
      74,    75,    76,    77,    78,    79,    -1,    -1,    -1,    -1,
      -1,    85,    86,    87,    88,    46,    -1,    -1,    49,    -1,
      51,    52,    53,    54,    55,    56,    57,    58,    59,    60,
      61,    62,    63,    64,    65,    66,    67,    68,    69,    70,
      71,    72,    73,    74,    75,    76,    77,    78,    79,    -1,
      -1,    -1,    -1,    -1,    85,    86,    87,    88,    46,    -1,
      -1,    49,    -1,    51,    52,    53,    54,    55,    56,    57,
      58,    59,    60,    61,    62,    63,    64,    65,    66,    67,
      68,    69,    70,    71,    72,    73,    74,    75,    76,    77,
      78,    79,    -1,    -1,    -1,    -1,    -1,    85,    86,    87,
      88,    46,    -1,    -1,    49,    -1,    51,    52,    53,    54,
      55,    56,    57,    58,    59,    60,    61,    62,    63,    64,
      65,    66,    67,    68,    69,    70,    71,    72,    73,    74,
      75,    76,    77,    78,    79,    -1,    -1,    -1,    -1,    -1,
      85,    86,    87,    88,    49,    -1,    51,    52,    53,    54,
      55,    56,    57,    58,    59,    60,    61,    62,    63,    64,
      65,    66,    67,    68,    69,    70,    71,    72,    73,    74,
      75,    76,    77,    78,    79,    -1,    -1,    -1,    -1,    -1,
      85,    86,    87,    88,    49,    90,    51,    52,    53,    54,
      55,    56,    57,    58,    59,    60,    61,    62,    63,    64,
      65,    66,    67,    68,    69,    70,    71,    72,    73,    74,
      75,    76,    77,    78,    79,    -1,    -1,    -1,    -1,    -1,
      85,    86,    87,    88,    49,    90,    51,    52,    53,    54,
      55,    56,    57,    58,    59,    60,    61,    62,    63,    64,
      65,    66,    67,    68,    69,    70,    71,    72,    73,    74,
      75,    76,    77,    78,    79,    -1,    -1,    -1,    -1,    -1,
      85,    86,    87,    88,    49,    90,    51,    52,    53,    54,
      55,    56,    57,    58,    59,    60,    61,    62,    63,    64,
      65,    66,    67,    68,    69,    70,    71,    72,    73,    74,
      75,    76,    77,    78,    79,    -1,    -1,    -1,    -1,    -1,
      85,    86,    87,    88,    49,    90,    51,    52,    53,    54,
      55,    56,    57,    58,    59,    60,    61,    62,    63,    64,
      65,    66,    67,    68,    69,    70,    71,    72,    73,    74,
      75,    76,    77,    78,    79,    -1,    -1,    -1,    -1,    -1,
      85,    86,    87,    88,    49,    90,    51,    52,    53,    54,
      55,    56,    57,    58,    59,    60,    61,    62,    63,    64,
      65,    66,    67,    68,    69,    70,    71,    72,    73,    74,
      75,    76,    77,    78,    79,    -1,    -1,    -1,    -1,    -1,
      85,    86,    87,    88,    49,    90,    51,    52,    53,    54,
      55,    56,    57,    58,    59,    60,    61,    62,    63,    64,
      65,    66,    67,    68,    69,    70,    71,    72,    73,    74,
      75,    76,    77,    78,    79,    -1,    -1,    -1,    -1,    -1,
      85,    86,    87,    88,    89,    49,    -1,    51,    52,    53,
      54,    55,    56,    57,    58,    59,    60,    61,    62,    63,
      64,    65,    66,    67,    68,    69,    70,    71,    72,    73,
      74,    75,    76,    77,    78,    79,    -1,    -1,    -1,    -1,
      -1,    85,    86,    87,    88,    89,    49,    -1,    51,    52,
      53,    54,    55,    56,    57,    58,    59,    60,    61,    62,
      63,    64,    65,    66,    67,    68,    69,    70,    71,    72,
      73,    74,    75,    76,    77,    78,    79,    -1,    -1,    -1,
      -1,    -1,    85,    86,    87,    88,    89,    49,    -1,    51,
      52,    53,    54,    55,    56,    57,    58,    59,    60,    61,
      62,    63,    64,    65,    66,    67,    68,    69,    70,    71,
      72,    73,    74,    75,    76,    77,    78,    79,    -1,    -1,
      -1,    -1,    -1,    85,    86,    87,    88,    89,    49,    -1,
      51,    52,    53,    54,    55,    56,    57,    58,    59,    60,
      61,    62,    63,    64,    65,    66,    67,    68,    69,    70,
      71,    72,    73,    74,    75,    76,    77,    78,    79,    -1,
      -1,    -1,    -1,    -1,    85,    86,    87,    88,    89,    49,
      -1,    51,    52,    53,    54,    55,    56,    57,    58,    59,
      60,    61,    62,    63,    64,    65,    66,    67,    68,    69,
      70,    71,    72,    73,    74,    75,    76,    77,    78,    79,
      -1,    -1,    -1,    -1,    -1,    85,    86,    87,    88,    89,
      49,    -1,    51,    52,    53,    54,    55,    56,    57,    58,
      59,    60,    61,    62,    63,    64,    65,    66,    67,    68,
      69,    70,    71,    72,    73,    74,    75,    76,    77,    78,
      79,    -1,    -1,    -1,    -1,    -1,    85,    86,    87,    88,
      89,    49,    -1,    51,    52,    53,    54,    55,    56,    57,
      58,    59,    60,    61,    62,    63,    64,    65,    66,    67,
      68,    69,    70,    71,    72,    73,    74,    75,    76,    77,
      78,    79,    -1,    -1,    -1,    -1,    -1,    85,    86,    87,
      88,    89,    49,    50,    51,    52,    53,    54,    55,    56,
      57,    58,    59,    60,    61,    62,    63,    64,    65,    66,
      67,    68,    69,    70,    71,    72,    73,    74,    75,    76,
      77,    78,    79,    -1,    -1,    -1,    -1,    -1,    85,    86,
      87,    88,    49,    50,    51,    52,    53,    54,    55,    56,
      57,    58,    59,    60,    61,    62,    63,    64,    65,    66,
      67,    68,    69,    70,    71,    72,    73,    74,    75,    76,
      77,    78,    79,    -1,    -1,    -1,    -1,    -1,    85,    86,
      87,    88,    49,    -1,    51,    52,    53,    54,    55,    56,
      57,    58,    59,    60,    61,    62,    63,    64,    65,    66,
      67,    68,    69,    70,    71,    72,    73,    74,    75,    76,
      77,    78,    79,    -1,    -1,    -1,    -1,    -1,    85,    86,
      87,    88,    61,    62,    63,    64,    65,    66,    67,    68,
      69,    70,    71,    72,    73,    74,    75,    76,    77,    78,
      79,    -1,    -1,    -1,    -1,    -1,    85,    86,    87,    88,
      64,    65,    66,    67,    68,    69,    70,    71,    72,    73,
      74,    75,    76,    77,    78,    79,    -1,    -1,    -1,    -1,
      -1,    85,    86,    87,    88
};

/* YYSTOS[STATE-NUM] -- The (internal number of the) accessing
   symbol of state STATE-NUM.  */
static const yytype_uint8 yystos[] =
{
       0,     3,     4,     7,    10,    13,    15,    17,    24,    26,
      27,    28,    29,    30,    31,    34,    35,    36,    39,    41,
      44,    45,    47,    98,    99,   100,   104,   105,   106,   110,
      26,    26,    94,    26,    94,    94,    94,    94,    94,    94,
      26,    94,     0,    99,    26,    48,    92,   110,    92,   110,
     110,   110,   110,   110,   110,    92,   110,    85,    90,   110,
      93,    99,   109,    95,    26,    93,   107,   108,    95,    91,
      95,    95,    95,    95,    93,   109,    95,   101,   102,   110,
      90,    93,    99,    48,    91,    93,    86,    26,    86,    93,
      86,    89,    91,    26,    12,    16,    20,    23,    26,    32,
      37,    40,    42,    43,    75,    80,    81,    83,    84,   115,
     108,    20,    91,    95,    20,   111,   112,    20,    96,    90,
      92,   103,   102,    48,   115,   115,   115,   115,   115,    49,
      51,    52,    53,    54,    55,    56,    57,    58,    59,    60,
      61,    62,    63,    64,    65,    66,    67,    68,    69,    70,
      71,    72,    73,    74,    75,    76,    77,    78,    79,    85,
      86,    87,    88,    91,    20,    96,    91,    96,    96,     5,
       6,     8,     9,    18,    19,    33,    38,    90,    92,    93,
     113,   114,   115,   115,   115,   115,   115,   115,   115,   115,
     115,   115,   115,   115,   115,   115,   115,   115,   115,   115,
     115,   115,   115,   115,   115,   115,   115,   115,   115,   115,
     115,   115,   115,   115,    89,   115,   116,   116,    20,    96,
      96,   112,    90,   115,    90,    50,    85,    85,   115,    85,
     113,    93,   114,    90,    50,    46,    46,    46,    46,    89,
      91,    96,    96,    11,    50,   114,    26,    90,   104,   110,
     115,   104,   115,    90,   104,   115,    93,   115,   115,   115,
     115,   115,   115,   115,   114,    90,   115,    90,    26,    90,
      89,    89,    89,    89,    50,    89,   115,    90,    90,   115,
      90,   115,   114,   114,   114,   114,   114,   114,    89,    89,
     115,    89,   115,    90,    89,   115,    90,    14,    14,   114,
     114,    89,   114,    89,    89,   115,   114,    89,    89,   115,
     114,   114,   114,   114,   114,    89,   114,   114,    89,   114,
     114
};

#define yyerrok		(yyerrstatus = 0)
#define yyclearin	(yychar = YYEMPTY)
#define YYEMPTY		(-2)
#define YYEOF		0

#define YYACCEPT	goto yyacceptlab
#define YYABORT		goto yyabortlab
#define YYERROR		goto yyerrorlab


/* Like YYERROR except do call yyerror.  This remains here temporarily
   to ease the transition to the new meaning of YYERROR, for GCC.
   Once GCC version 2 has supplanted version 1, this can go.  However,
   YYFAIL appears to be in use.  Nevertheless, it is formally deprecated
   in Bison 2.4.2's NEWS entry, where a plan to phase it out is
   discussed.  */

#define YYFAIL		goto yyerrlab
#if defined YYFAIL
  /* This is here to suppress warnings from the GCC cpp's
     -Wunused-macros.  Normally we don't worry about that warning, but
     some users do, and we want to make it easy for users to remove
     YYFAIL uses, which will produce warnings from Bison 2.5.  */
#endif

#define YYRECOVERING()  (!!yyerrstatus)

#define YYBACKUP(Token, Value)					\
do								\
  if (yychar == YYEMPTY && yylen == 1)				\
    {								\
      yychar = (Token);						\
      yylval = (Value);						\
      yytoken = YYTRANSLATE (yychar);				\
      YYPOPSTACK (1);						\
      goto yybackup;						\
    }								\
  else								\
    {								\
      yyerror (&yylloc, context, YY_("syntax error: cannot back up")); \
      YYERROR;							\
    }								\
while (YYID (0))


#define YYTERROR	1
#define YYERRCODE	256


/* YYLLOC_DEFAULT -- Set CURRENT to span from RHS[1] to RHS[N].
   If N is 0, then set CURRENT to the empty location which ends
   the previous symbol: RHS[0] (always defined).  */

#define YYRHSLOC(Rhs, K) ((Rhs)[K])
#ifndef YYLLOC_DEFAULT
# define YYLLOC_DEFAULT(Current, Rhs, N)				\
    do									\
      if (YYID (N))                                                    \
	{								\
	  (Current).first_line   = YYRHSLOC (Rhs, 1).first_line;	\
	  (Current).first_column = YYRHSLOC (Rhs, 1).first_column;	\
	  (Current).last_line    = YYRHSLOC (Rhs, N).last_line;		\
	  (Current).last_column  = YYRHSLOC (Rhs, N).last_column;	\
	}								\
      else								\
	{								\
	  (Current).first_line   = (Current).last_line   =		\
	    YYRHSLOC (Rhs, 0).last_line;				\
	  (Current).first_column = (Current).last_column =		\
	    YYRHSLOC (Rhs, 0).last_column;				\
	}								\
    while (YYID (0))
#endif


/* YY_LOCATION_PRINT -- Print the location on the stream.
   This macro was not mandated originally: define only if we know
   we won't break user code: when these are the locations we know.  */

#ifndef YY_LOCATION_PRINT
# if defined YYLTYPE_IS_TRIVIAL && YYLTYPE_IS_TRIVIAL
#  define YY_LOCATION_PRINT(File, Loc)			\
     fprintf (File, "%d.%d-%d.%d",			\
	      (Loc).first_line, (Loc).first_column,	\
	      (Loc).last_line,  (Loc).last_column)
# else
#  define YY_LOCATION_PRINT(File, Loc) ((void) 0)
# endif
#endif


/* YYLEX -- calling `yylex' with the right arguments.  */

#ifdef YYLEX_PARAM
# define YYLEX yylex (&yylval, &yylloc, YYLEX_PARAM)
#else
# define YYLEX yylex (&yylval, &yylloc, context)
#endif

/* Enable debugging if requested.  */
#if YYDEBUG

# ifndef YYFPRINTF
#  include <stdio.h> /* INFRINGES ON USER NAME SPACE */
#  define YYFPRINTF fprintf
# endif

# define YYDPRINTF(Args)			\
do {						\
  if (yydebug)					\
    YYFPRINTF Args;				\
} while (YYID (0))

# define YY_SYMBOL_PRINT(Title, Type, Value, Location)			  \
do {									  \
  if (yydebug)								  \
    {									  \
      YYFPRINTF (stderr, "%s ", Title);					  \
      yy_symbol_print (stderr,						  \
		  Type, Value, Location, context); \
      YYFPRINTF (stderr, "\n");						  \
    }									  \
} while (YYID (0))


/*--------------------------------.
| Print this symbol on YYOUTPUT.  |
`--------------------------------*/

/*ARGSUSED*/
#if (defined __STDC__ || defined __C99__FUNC__ \
     || defined __cplusplus || defined _MSC_VER)
static void
yy_symbol_value_print (FILE *yyoutput, int yytype, YYSTYPE const * const yyvaluep, YYLTYPE const * const yylocationp, 
	ParseContext * context
)
#else
static void
yy_symbol_value_print (yyoutput, yytype, yyvaluep, yylocationp, context)
    FILE *yyoutput;
    int yytype;
    YYSTYPE const * const yyvaluep;
    YYLTYPE const * const yylocationp;
    
	ParseContext * context
;
#endif
{
  if (!yyvaluep)
    return;
  YYUSE (yylocationp);
  YYUSE (context);
# ifdef YYPRINT
  if (yytype < YYNTOKENS)
    YYPRINT (yyoutput, yytoknum[yytype], *yyvaluep);
# else
  YYUSE (yyoutput);
# endif
  switch (yytype)
    {
      default:
	break;
    }
}


/*--------------------------------.
| Print this symbol on YYOUTPUT.  |
`--------------------------------*/

#if (defined __STDC__ || defined __C99__FUNC__ \
     || defined __cplusplus || defined _MSC_VER)
static void
yy_symbol_print (FILE *yyoutput, int yytype, YYSTYPE const * const yyvaluep, YYLTYPE const * const yylocationp, 
	ParseContext * context
)
#else
static void
yy_symbol_print (yyoutput, yytype, yyvaluep, yylocationp, context)
    FILE *yyoutput;
    int yytype;
    YYSTYPE const * const yyvaluep;
    YYLTYPE const * const yylocationp;
    
	ParseContext * context
;
#endif
{
  if (yytype < YYNTOKENS)
    YYFPRINTF (yyoutput, "token %s (", yytname[yytype]);
  else
    YYFPRINTF (yyoutput, "nterm %s (", yytname[yytype]);

  YY_LOCATION_PRINT (yyoutput, *yylocationp);
  YYFPRINTF (yyoutput, ": ");
  yy_symbol_value_print (yyoutput, yytype, yyvaluep, yylocationp, context);
  YYFPRINTF (yyoutput, ")");
}

/*------------------------------------------------------------------.
| yy_stack_print -- Print the state stack from its BOTTOM up to its |
| TOP (included).                                                   |
`------------------------------------------------------------------*/

#if (defined __STDC__ || defined __C99__FUNC__ \
     || defined __cplusplus || defined _MSC_VER)
static void
yy_stack_print (yytype_int16 *yybottom, yytype_int16 *yytop)
#else
static void
yy_stack_print (yybottom, yytop)
    yytype_int16 *yybottom;
    yytype_int16 *yytop;
#endif
{
  YYFPRINTF (stderr, "Stack now");
  for (; yybottom <= yytop; yybottom++)
    {
      int yybot = *yybottom;
      YYFPRINTF (stderr, " %d", yybot);
    }
  YYFPRINTF (stderr, "\n");
}

# define YY_STACK_PRINT(Bottom, Top)				\
do {								\
  if (yydebug)							\
    yy_stack_print ((Bottom), (Top));				\
} while (YYID (0))


/*------------------------------------------------.
| Report that the YYRULE is going to be reduced.  |
`------------------------------------------------*/

#if (defined __STDC__ || defined __C99__FUNC__ \
     || defined __cplusplus || defined _MSC_VER)
static void
yy_reduce_print (YYSTYPE *yyvsp, YYLTYPE *yylsp, int yyrule, 
	ParseContext * context
)
#else
static void
yy_reduce_print (yyvsp, yylsp, yyrule, context)
    YYSTYPE *yyvsp;
    YYLTYPE *yylsp;
    int yyrule;
    
	ParseContext * context
;
#endif
{
  int yynrhs = yyr2[yyrule];
  int yyi;
  unsigned long int yylno = yyrline[yyrule];
  YYFPRINTF (stderr, "Reducing stack by rule %d (line %lu):\n",
	     yyrule - 1, yylno);
  /* The symbols being reduced.  */
  for (yyi = 0; yyi < yynrhs; yyi++)
    {
      YYFPRINTF (stderr, "   $%d = ", yyi + 1);
      yy_symbol_print (stderr, yyrhs[yyprhs[yyrule] + yyi],
		       &(yyvsp[(yyi + 1) - (yynrhs)])
		       , &(yylsp[(yyi + 1) - (yynrhs)])		       , context);
      YYFPRINTF (stderr, "\n");
    }
}

# define YY_REDUCE_PRINT(Rule)		\
do {					\
  if (yydebug)				\
    yy_reduce_print (yyvsp, yylsp, Rule, context); \
} while (YYID (0))

/* Nonzero means print parse trace.  It is left uninitialized so that
   multiple parsers can coexist.  */
int yydebug;
#else /* !YYDEBUG */
# define YYDPRINTF(Args)
# define YY_SYMBOL_PRINT(Title, Type, Value, Location)
# define YY_STACK_PRINT(Bottom, Top)
# define YY_REDUCE_PRINT(Rule)
#endif /* !YYDEBUG */


/* YYINITDEPTH -- initial size of the parser's stacks.  */
#ifndef	YYINITDEPTH
# define YYINITDEPTH 200
#endif

/* YYMAXDEPTH -- maximum size the stacks can grow to (effective only
   if the built-in stack extension method is used).

   Do not make this value too large; the results are undefined if
   YYSTACK_ALLOC_MAXIMUM < YYSTACK_BYTES (YYMAXDEPTH)
   evaluated with infinite-precision integer arithmetic.  */

#ifndef YYMAXDEPTH
# define YYMAXDEPTH 10000
#endif



#if YYERROR_VERBOSE

# ifndef yystrlen
#  if defined __GLIBC__ && defined _STRING_H
#   define yystrlen strlen
#  else
/* Return the length of YYSTR.  */
#if (defined __STDC__ || defined __C99__FUNC__ \
     || defined __cplusplus || defined _MSC_VER)
static YYSIZE_T
yystrlen (const char *yystr)
#else
static YYSIZE_T
yystrlen (yystr)
    const char *yystr;
#endif
{
  YYSIZE_T yylen;
  for (yylen = 0; yystr[yylen]; yylen++)
    continue;
  return yylen;
}
#  endif
# endif

# ifndef yystpcpy
#  if defined __GLIBC__ && defined _STRING_H && defined _GNU_SOURCE
#   define yystpcpy stpcpy
#  else
/* Copy YYSRC to YYDEST, returning the address of the terminating '\0' in
   YYDEST.  */
#if (defined __STDC__ || defined __C99__FUNC__ \
     || defined __cplusplus || defined _MSC_VER)
static char *
yystpcpy (char *yydest, const char *yysrc)
#else
static char *
yystpcpy (yydest, yysrc)
    char *yydest;
    const char *yysrc;
#endif
{
  char *yyd = yydest;
  const char *yys = yysrc;

  while ((*yyd++ = *yys++) != '\0')
    continue;

  return yyd - 1;
}
#  endif
# endif

# ifndef yytnamerr
/* Copy to YYRES the contents of YYSTR after stripping away unnecessary
   quotes and backslashes, so that it's suitable for yyerror.  The
   heuristic is that double-quoting is unnecessary unless the string
   contains an apostrophe, a comma, or backslash (other than
   backslash-backslash).  YYSTR is taken from yytname.  If YYRES is
   null, do not copy; instead, return the length of what the result
   would have been.  */
static YYSIZE_T
yytnamerr (char *yyres, const char *yystr)
{
  if (*yystr == '"')
    {
      YYSIZE_T yyn = 0;
      char const *yyp = yystr;

      for (;;)
	switch (*++yyp)
	  {
	  case '\'':
	  case ',':
	    goto do_not_strip_quotes;

	  case '\\':
	    if (*++yyp != '\\')
	      goto do_not_strip_quotes;
	    /* Fall through.  */
	  default:
	    if (yyres)
	      yyres[yyn] = *yyp;
	    yyn++;
	    break;

	  case '"':
	    if (yyres)
	      yyres[yyn] = '\0';
	    return yyn;
	  }
    do_not_strip_quotes: ;
    }

  if (! yyres)
    return yystrlen (yystr);

  return yystpcpy (yyres, yystr) - yyres;
}
# endif

/* Copy into YYRESULT an error message about the unexpected token
   YYCHAR while in state YYSTATE.  Return the number of bytes copied,
   including the terminating null byte.  If YYRESULT is null, do not
   copy anything; just return the number of bytes that would be
   copied.  As a special case, return 0 if an ordinary "syntax error"
   message will do.  Return YYSIZE_MAXIMUM if overflow occurs during
   size calculation.  */
static YYSIZE_T
yysyntax_error (char *yyresult, int yystate, int yychar)
{
  int yyn = yypact[yystate];

  if (! (YYPACT_NINF < yyn && yyn <= YYLAST))
    return 0;
  else
    {
      int yytype = YYTRANSLATE (yychar);
      YYSIZE_T yysize0 = yytnamerr (0, yytname[yytype]);
      YYSIZE_T yysize = yysize0;
      YYSIZE_T yysize1;
      int yysize_overflow = 0;
      enum { YYERROR_VERBOSE_ARGS_MAXIMUM = 5 };
      char const *yyarg[YYERROR_VERBOSE_ARGS_MAXIMUM];
      int yyx;

# if 0
      /* This is so xgettext sees the translatable formats that are
	 constructed on the fly.  */
      YY_("syntax error, unexpected %s");
      YY_("syntax error, unexpected %s, expecting %s");
      YY_("syntax error, unexpected %s, expecting %s or %s");
      YY_("syntax error, unexpected %s, expecting %s or %s or %s");
      YY_("syntax error, unexpected %s, expecting %s or %s or %s or %s");
# endif
      char *yyfmt;
      char const *yyf;
      static char const yyunexpected[] = "syntax error, unexpected %s";
      static char const yyexpecting[] = ", expecting %s";
      static char const yyor[] = " or %s";
      char yyformat[sizeof yyunexpected
		    + sizeof yyexpecting - 1
		    + ((YYERROR_VERBOSE_ARGS_MAXIMUM - 2)
		       * (sizeof yyor - 1))];
      char const *yyprefix = yyexpecting;

      /* Start YYX at -YYN if negative to avoid negative indexes in
	 YYCHECK.  */
      int yyxbegin = yyn < 0 ? -yyn : 0;

      /* Stay within bounds of both yycheck and yytname.  */
      int yychecklim = YYLAST - yyn + 1;
      int yyxend = yychecklim < YYNTOKENS ? yychecklim : YYNTOKENS;
      int yycount = 1;

      yyarg[0] = yytname[yytype];
      yyfmt = yystpcpy (yyformat, yyunexpected);

      for (yyx = yyxbegin; yyx < yyxend; ++yyx)
	if (yycheck[yyx + yyn] == yyx && yyx != YYTERROR)
	  {
	    if (yycount == YYERROR_VERBOSE_ARGS_MAXIMUM)
	      {
		yycount = 1;
		yysize = yysize0;
		yyformat[sizeof yyunexpected - 1] = '\0';
		break;
	      }
	    yyarg[yycount++] = yytname[yyx];
	    yysize1 = yysize + yytnamerr (0, yytname[yyx]);
	    yysize_overflow |= (yysize1 < yysize);
	    yysize = yysize1;
	    yyfmt = yystpcpy (yyfmt, yyprefix);
	    yyprefix = yyor;
	  }

      yyf = YY_(yyformat);
      yysize1 = yysize + yystrlen (yyf);
      yysize_overflow |= (yysize1 < yysize);
      yysize = yysize1;

      if (yysize_overflow)
	return YYSIZE_MAXIMUM;

      if (yyresult)
	{
	  /* Avoid sprintf, as that infringes on the user's name space.
	     Don't have undefined behavior even if the translation
	     produced a string with the wrong number of "%s"s.  */
	  char *yyp = yyresult;
	  int yyi = 0;
	  while ((*yyp = *yyf) != '\0')
	    {
	      if (*yyp == '%' && yyf[1] == 's' && yyi < yycount)
		{
		  yyp += yytnamerr (yyp, yyarg[yyi++]);
		  yyf += 2;
		}
	      else
		{
		  yyp++;
		  yyf++;
		}
	    }
	}
      return yysize;
    }
}
#endif /* YYERROR_VERBOSE */


/*-----------------------------------------------.
| Release the memory associated to this symbol.  |
`-----------------------------------------------*/

/*ARGSUSED*/
#if (defined __STDC__ || defined __C99__FUNC__ \
     || defined __cplusplus || defined _MSC_VER)
static void
yydestruct (const char *yymsg, int yytype, YYSTYPE *yyvaluep, YYLTYPE *yylocationp, 
	ParseContext * context
)
#else
static void
yydestruct (yymsg, yytype, yyvaluep, yylocationp, context)
    const char *yymsg;
    int yytype;
    YYSTYPE *yyvaluep;
    YYLTYPE *yylocationp;
    
	ParseContext * context
;
#endif
{
  YYUSE (yyvaluep);
  YYUSE (yylocationp);
  YYUSE (context);

  if (!yymsg)
    yymsg = "Deleting";
  YY_SYMBOL_PRINT (yymsg, yytype, yyvaluep, yylocationp);

  switch (yytype)
    {

      default:
	break;
    }
}

/* Prevent warnings from -Wmissing-prototypes.  */
#ifdef YYPARSE_PARAM
#if defined __STDC__ || defined __cplusplus
int yyparse (void *YYPARSE_PARAM);
#else
int yyparse ();
#endif
#else /* ! YYPARSE_PARAM */
#if defined __STDC__ || defined __cplusplus
int yyparse (
	ParseContext * context
);
#else
int yyparse ();
#endif
#endif /* ! YYPARSE_PARAM */





/*-------------------------.
| yyparse or yypush_parse.  |
`-------------------------*/

#ifdef YYPARSE_PARAM
#if (defined __STDC__ || defined __C99__FUNC__ \
     || defined __cplusplus || defined _MSC_VER)
int
yyparse (void *YYPARSE_PARAM)
#else
int
yyparse (YYPARSE_PARAM)
    void *YYPARSE_PARAM;
#endif
#else /* ! YYPARSE_PARAM */
#if (defined __STDC__ || defined __C99__FUNC__ \
     || defined __cplusplus || defined _MSC_VER)
int
yyparse (
	ParseContext * context
)
#else
int
yyparse (context)
    
	ParseContext * context
;
#endif
#endif
{
/* The lookahead symbol.  */
int yychar;

/* The semantic value of the lookahead symbol.  */
YYSTYPE yylval;

/* Location data for the lookahead symbol.  */
YYLTYPE yylloc;

    /* Number of syntax errors so far.  */
    int yynerrs;

    int yystate;
    /* Number of tokens to shift before error messages enabled.  */
    int yyerrstatus;

    /* The stacks and their tools:
       `yyss': related to states.
       `yyvs': related to semantic values.
       `yyls': related to locations.

       Refer to the stacks thru separate pointers, to allow yyoverflow
       to reallocate them elsewhere.  */

    /* The state stack.  */
    yytype_int16 yyssa[YYINITDEPTH];
    yytype_int16 *yyss;
    yytype_int16 *yyssp;

    /* The semantic value stack.  */
    YYSTYPE yyvsa[YYINITDEPTH];
    YYSTYPE *yyvs;
    YYSTYPE *yyvsp;

    /* The location stack.  */
    YYLTYPE yylsa[YYINITDEPTH];
    YYLTYPE *yyls;
    YYLTYPE *yylsp;

    /* The locations where the error started and ended.  */
    YYLTYPE yyerror_range[2];

    YYSIZE_T yystacksize;

  int yyn;
  int yyresult;
  /* Lookahead token as an internal (translated) token number.  */
  int yytoken;
  /* The variables used to return semantic value and location from the
     action routines.  */
  YYSTYPE yyval;
  YYLTYPE yyloc;

#if YYERROR_VERBOSE
  /* Buffer for error messages, and its allocated size.  */
  char yymsgbuf[128];
  char *yymsg = yymsgbuf;
  YYSIZE_T yymsg_alloc = sizeof yymsgbuf;
#endif

#define YYPOPSTACK(N)   (yyvsp -= (N), yyssp -= (N), yylsp -= (N))

  /* The number of symbols on the RHS of the reduced rule.
     Keep to zero when no symbol should be popped.  */
  int yylen = 0;

  yytoken = 0;
  yyss = yyssa;
  yyvs = yyvsa;
  yyls = yylsa;
  yystacksize = YYINITDEPTH;

  YYDPRINTF ((stderr, "Starting parse\n"));

  yystate = 0;
  yyerrstatus = 0;
  yynerrs = 0;
  yychar = YYEMPTY; /* Cause a token to be read.  */

  /* Initialize stack pointers.
     Waste one element of value and location stack
     so that they stay on the same level as the state stack.
     The wasted elements are never initialized.  */
  yyssp = yyss;
  yyvsp = yyvs;
  yylsp = yyls;

#if defined YYLTYPE_IS_TRIVIAL && YYLTYPE_IS_TRIVIAL
  /* Initialize the default location before parsing starts.  */
  yylloc.first_line   = yylloc.last_line   = 1;
  yylloc.first_column = yylloc.last_column = 1;
#endif

  goto yysetstate;

/*------------------------------------------------------------.
| yynewstate -- Push a new state, which is found in yystate.  |
`------------------------------------------------------------*/
 yynewstate:
  /* In all cases, when you get here, the value and location stacks
     have just been pushed.  So pushing a state here evens the stacks.  */
  yyssp++;

 yysetstate:
  *yyssp = yystate;

  if (yyss + yystacksize - 1 <= yyssp)
    {
      /* Get the current used size of the three stacks, in elements.  */
      YYSIZE_T yysize = yyssp - yyss + 1;

#ifdef yyoverflow
      {
	/* Give user a chance to reallocate the stack.  Use copies of
	   these so that the &'s don't force the real ones into
	   memory.  */
	YYSTYPE *yyvs1 = yyvs;
	yytype_int16 *yyss1 = yyss;
	YYLTYPE *yyls1 = yyls;

	/* Each stack pointer address is followed by the size of the
	   data in use in that stack, in bytes.  This used to be a
	   conditional around just the two extra args, but that might
	   be undefined if yyoverflow is a macro.  */
	yyoverflow (YY_("memory exhausted"),
		    &yyss1, yysize * sizeof (*yyssp),
		    &yyvs1, yysize * sizeof (*yyvsp),
		    &yyls1, yysize * sizeof (*yylsp),
		    &yystacksize);

	yyls = yyls1;
	yyss = yyss1;
	yyvs = yyvs1;
      }
#else /* no yyoverflow */
# ifndef YYSTACK_RELOCATE
      goto yyexhaustedlab;
# else
      /* Extend the stack our own way.  */
      if (YYMAXDEPTH <= yystacksize)
	goto yyexhaustedlab;
      yystacksize *= 2;
      if (YYMAXDEPTH < yystacksize)
	yystacksize = YYMAXDEPTH;

      {
	yytype_int16 *yyss1 = yyss;
	union yyalloc *yyptr =
	  (union yyalloc *) YYSTACK_ALLOC (YYSTACK_BYTES (yystacksize));
	if (! yyptr)
	  goto yyexhaustedlab;
	YYSTACK_RELOCATE (yyss_alloc, yyss);
	YYSTACK_RELOCATE (yyvs_alloc, yyvs);
	YYSTACK_RELOCATE (yyls_alloc, yyls);
#  undef YYSTACK_RELOCATE
	if (yyss1 != yyssa)
	  YYSTACK_FREE (yyss1);
      }
# endif
#endif /* no yyoverflow */

      yyssp = yyss + yysize - 1;
      yyvsp = yyvs + yysize - 1;
      yylsp = yyls + yysize - 1;

      YYDPRINTF ((stderr, "Stack size increased to %lu\n",
		  (unsigned long int) yystacksize));

      if (yyss + yystacksize - 1 <= yyssp)
	YYABORT;
    }

  YYDPRINTF ((stderr, "Entering state %d\n", yystate));

  if (yystate == YYFINAL)
    YYACCEPT;

  goto yybackup;

/*-----------.
| yybackup.  |
`-----------*/
yybackup:

  /* Do appropriate processing given the current state.  Read a
     lookahead token if we need one and don't already have one.  */

  /* First try to decide what to do without reference to lookahead token.  */
  yyn = yypact[yystate];
  if (yyn == YYPACT_NINF)
    goto yydefault;

  /* Not known => get a lookahead token if don't already have one.  */

  /* YYCHAR is either YYEMPTY or YYEOF or a valid lookahead symbol.  */
  if (yychar == YYEMPTY)
    {
      YYDPRINTF ((stderr, "Reading a token: "));
      yychar = YYLEX;
    }

  if (yychar <= YYEOF)
    {
      yychar = yytoken = YYEOF;
      YYDPRINTF ((stderr, "Now at end of input.\n"));
    }
  else
    {
      yytoken = YYTRANSLATE (yychar);
      YY_SYMBOL_PRINT ("Next token is", yytoken, &yylval, &yylloc);
    }

  /* If the proper action on seeing token YYTOKEN is to reduce or to
     detect an error, take that action.  */
  yyn += yytoken;
  if (yyn < 0 || YYLAST < yyn || yycheck[yyn] != yytoken)
    goto yydefault;
  yyn = yytable[yyn];
  if (yyn <= 0)
    {
      if (yyn == 0 || yyn == YYTABLE_NINF)
	goto yyerrlab;
      yyn = -yyn;
      goto yyreduce;
    }

  /* Count tokens shifted since error; after three, turn off error
     status.  */
  if (yyerrstatus)
    yyerrstatus--;

  /* Shift the lookahead token.  */
  YY_SYMBOL_PRINT ("Shifting", yytoken, &yylval, &yylloc);

  /* Discard the shifted token.  */
  yychar = YYEMPTY;

  yystate = yyn;
  *++yyvsp = yylval;
  *++yylsp = yylloc;
  goto yynewstate;


/*-----------------------------------------------------------.
| yydefault -- do the default action for the current state.  |
`-----------------------------------------------------------*/
yydefault:
  yyn = yydefact[yystate];
  if (yyn == 0)
    goto yyerrlab;
  goto yyreduce;


/*-----------------------------.
| yyreduce -- Do a reduction.  |
`-----------------------------*/
yyreduce:
  /* yyn is the number of a rule to reduce with.  */
  yylen = yyr2[yyn];

  /* If YYLEN is nonzero, implement the default value of the action:
     `$$ = $1'.

     Otherwise, the following line sets YYVAL to garbage.
     This behavior is undocumented and Bison
     users should not rely upon it.  Assigning to YYVAL
     unconditionally makes the parser a bit smaller, and it avoids a
     GCC warning that YYVAL may be used uninitialized.  */
  yyval = yyvsp[1-yylen];

  /* Default location.  */
  YYLLOC_DEFAULT (yyloc, (yylsp - yylen), yylen);
  YY_REDUCE_PRINT (yyn);
  switch (yyn)
    {
        case 2:

/* Line 1464 of yacc.c  */
#line 159 "opus.b"
    {
		context->program.definitions().push_back((yyvsp[(2) - (2)].dcl));
	;}
    break;

  case 3:

/* Line 1464 of yacc.c  */
#line 163 "opus.b"
    {
		context->program.definitions().push_back((yyvsp[(1) - (1)].dcl));
	;}
    break;

  case 4:

/* Line 1464 of yacc.c  */
#line 170 "opus.b"
    {
		(yyval.dcl) = (yyvsp[(1) - (1)].fdef);
	;}
    break;

  case 5:

/* Line 1464 of yacc.c  */
#line 174 "opus.b"
    {
		(yyval.dcl) = (yyvsp[(1) - (1)].vdef);
	;}
    break;

  case 6:

/* Line 1464 of yacc.c  */
#line 178 "opus.b"
    {
		(yyval.dcl) = (yyvsp[(1) - (1)].adef);
	;}
    break;

  case 7:

/* Line 1464 of yacc.c  */
#line 182 "opus.b"
    {
		(yyval.dcl) = (yyvsp[(1) - (1)].tdef);
	;}
    break;

  case 8:

/* Line 1464 of yacc.c  */
#line 189 "opus.b"
    {
		(yyval.fdef) = new FuncDef( context->start, context->end, (yyvsp[(1) - (6)].ty), (yyvsp[(2) - (6)].str), (yyvsp[(4) - (6)].arL) );
	;}
    break;

  case 9:

/* Line 1464 of yacc.c  */
#line 193 "opus.b"
    {
		(yyval.fdef) = new FuncDef( context->start, context->end, (yyvsp[(1) - (6)].ty), (yyvsp[(2) - (6)].str), (yyvsp[(4) - (6)].arL), (yyvsp[(6) - (6)].bl) );
	;}
    break;

  case 10:

/* Line 1464 of yacc.c  */
#line 200 "opus.b"
    {
		(yyval.arL) = nullptr;
	;}
    break;

  case 11:

/* Line 1464 of yacc.c  */
#line 204 "opus.b"
    {
		(yyval.arL) = (yyvsp[(1) - (3)].arL);
		(yyval.arL)->push_back((yyvsp[(3) - (3)].ar));
	;}
    break;

  case 12:

/* Line 1464 of yacc.c  */
#line 209 "opus.b"
    {
		(yyval.arL) = new std::vector<Arg *>();
		(yyval.arL)->push_back((yyvsp[(1) - (1)].ar));
	;}
    break;

  case 13:

/* Line 1464 of yacc.c  */
#line 217 "opus.b"
    {
		(yyval.ar) = new Arg( (yyvsp[(1) - (2)].ty), (yyvsp[(2) - (2)].str) );
	;}
    break;

  case 14:

/* Line 1464 of yacc.c  */
#line 224 "opus.b"
    {
		(yyval.bl) = new Block( context->start, context->end, (yyvsp[(2) - (3)].stL) );
	;}
    break;

  case 15:

/* Line 1464 of yacc.c  */
#line 228 "opus.b"
    {
		(yyval.bl) = new Block( context->start, context->end );
	;}
    break;

  case 16:

/* Line 1464 of yacc.c  */
#line 235 "opus.b"
    {
		(yyval.vdef) = new VarDef( context->start, context->end, (yyvsp[(1) - (3)].ty), (yyvsp[(2) - (3)].str) );
	;}
    break;

  case 17:

/* Line 1464 of yacc.c  */
#line 242 "opus.b"
    {
		(yyval.adef) = new AliasDef( context->start, context->end, (yyvsp[(2) - (5)].str), (yyvsp[(4) - (5)].ty) );
	;}
    break;

  case 18:

/* Line 1464 of yacc.c  */
#line 249 "opus.b"
    {
		(yyval.tdef) = new EnumDef( context->start, context->end, (yyvsp[(2) - (5)].str), (yyvsp[(4) - (5)].enL) );
	;}
    break;

  case 19:

/* Line 1464 of yacc.c  */
#line 253 "opus.b"
    {
		(yyval.tdef) = new EnumDef( context->start, context->end, (yyvsp[(2) - (4)].str) );
	;}
    break;

  case 20:

/* Line 1464 of yacc.c  */
#line 257 "opus.b"
    {
		(yyval.tdef) = new ClassDef( context->start, context->end, (yyvsp[(2) - (5)].str), (yyvsp[(4) - (5)].dclL) );
	;}
    break;

  case 21:

/* Line 1464 of yacc.c  */
#line 261 "opus.b"
    {
		(yyval.tdef) = new ClassDef( context->start, context->end, (yyvsp[(2) - (4)].str) );
	;}
    break;

  case 22:

/* Line 1464 of yacc.c  */
#line 265 "opus.b"
    {
		(yyval.tdef) = new TupleDef( context->start, context->end, (yyvsp[(2) - (5)].str), (yyvsp[(4) - (5)].dclL) );
	;}
    break;

  case 23:

/* Line 1464 of yacc.c  */
#line 269 "opus.b"
    {
		(yyval.tdef) = new TupleDef( context->start, context->end, (yyvsp[(2) - (4)].str) );
	;}
    break;

  case 24:

/* Line 1464 of yacc.c  */
#line 276 "opus.b"
    {
		(yyval.enL) = (yyvsp[(1) - (3)].enL);
		(yyval.enL)->push_back((yyvsp[(3) - (3)].en));
	;}
    break;

  case 25:

/* Line 1464 of yacc.c  */
#line 281 "opus.b"
    {
		(yyval.enL) = new std::vector<EnumMember *>();
		(yyval.enL)->push_back((yyvsp[(1) - (1)].en));
	;}
    break;

  case 26:

/* Line 1464 of yacc.c  */
#line 289 "opus.b"
    {
		(yyval.en) = new EnumMember( (yyvsp[(1) - (1)].str) );
	;}
    break;

  case 27:

/* Line 1464 of yacc.c  */
#line 293 "opus.b"
    {
		(yyval.en) = new EnumMember( (yyvsp[(1) - (3)].str), (yyvsp[(3) - (3)].ex) );
	;}
    break;

  case 28:

/* Line 1464 of yacc.c  */
#line 300 "opus.b"
    {
		(yyval.dclL) = (yyvsp[(1) - (2)].dclL);
		(yyval.dclL)->push_back((yyvsp[(2) - (2)].dcl));
	;}
    break;

  case 29:

/* Line 1464 of yacc.c  */
#line 305 "opus.b"
    {
		(yyval.dclL) = new std::vector<Definition *>();
		(yyval.dclL)->push_back((yyvsp[(1) - (1)].dcl));
	;}
    break;

  case 30:

/* Line 1464 of yacc.c  */
#line 313 "opus.b"
    {
		(yyval.ty) = context->symtbl.findType((yyvsp[(1) - (1)].str));
	;}
    break;

  case 31:

/* Line 1464 of yacc.c  */
#line 317 "opus.b"
    {
		(yyval.ty) = &intType;
	;}
    break;

  case 32:

/* Line 1464 of yacc.c  */
#line 321 "opus.b"
    {
		(yyval.ty) = &doubleType;
	;}
    break;

  case 33:

/* Line 1464 of yacc.c  */
#line 325 "opus.b"
    {
		(yyval.ty) = &rationalType;
	;}
    break;

  case 34:

/* Line 1464 of yacc.c  */
#line 329 "opus.b"
    {
		(yyval.ty) = &realType;
	;}
    break;

  case 35:

/* Line 1464 of yacc.c  */
#line 333 "opus.b"
    {
		(yyval.ty) = &stringType;
	;}
    break;

  case 36:

/* Line 1464 of yacc.c  */
#line 337 "opus.b"
    {
		(yyval.ty) = &boolType;
	;}
    break;

  case 37:

/* Line 1464 of yacc.c  */
#line 341 "opus.b"
    {
		(yyval.ty) = &voidType;
	;}
    break;

  case 38:

/* Line 1464 of yacc.c  */
#line 345 "opus.b"
    {
		(yyval.ty) = &objectType;
	;}
    break;

  case 39:

/* Line 1464 of yacc.c  */
#line 349 "opus.b"
    {
		(yyval.ty) = &dynamicType;
	;}
    break;

  case 40:

/* Line 1464 of yacc.c  */
#line 353 "opus.b"
    {
		(yyval.ty) = new SetType( (yyvsp[(3) - (4)].ty) );
	;}
    break;

  case 41:

/* Line 1464 of yacc.c  */
#line 357 "opus.b"
    {
		(yyval.ty) = new VectorType( (yyvsp[(3) - (7)].ty), (yyvsp[(6) - (7)].i32) );
	;}
    break;

  case 42:

/* Line 1464 of yacc.c  */
#line 361 "opus.b"
    {
		(yyval.ty) = new VectorType( (yyvsp[(3) - (6)].ty), -1 );
	;}
    break;

  case 43:

/* Line 1464 of yacc.c  */
#line 365 "opus.b"
    {
		(yyval.ty) = new MatrixType( (yyvsp[(3) - (9)].ty), (yyvsp[(6) - (9)].i32), (yyvsp[(8) - (9)].i32) );
	;}
    break;

  case 44:

/* Line 1464 of yacc.c  */
#line 369 "opus.b"
    {
		(yyval.ty) = new MatrixType( (yyvsp[(3) - (8)].ty), -1, (yyvsp[(7) - (8)].i32) );
	;}
    break;

  case 45:

/* Line 1464 of yacc.c  */
#line 373 "opus.b"
    {
		(yyval.ty) = new MatrixType( (yyvsp[(3) - (8)].ty), (yyvsp[(6) - (8)].i32), -1 );
	;}
    break;

  case 46:

/* Line 1464 of yacc.c  */
#line 377 "opus.b"
    {
		(yyval.ty) = new MatrixType( (yyvsp[(3) - (7)].ty), -1, -1 );
	;}
    break;

  case 47:

/* Line 1464 of yacc.c  */
#line 381 "opus.b"
    {
		(yyval.ty) = new TensorType( (yyvsp[(3) - (7)].ty), (yyvsp[(6) - (7)].i32L) );
	;}
    break;

  case 48:

/* Line 1464 of yacc.c  */
#line 385 "opus.b"
    {
		(yyval.ty) = new StackType( (yyvsp[(3) - (4)].ty) );
	;}
    break;

  case 49:

/* Line 1464 of yacc.c  */
#line 389 "opus.b"
    {
		(yyval.ty) = new PQueueType( (yyvsp[(3) - (6)].ty), (yyvsp[(5) - (6)].str) );
	;}
    break;

  case 50:

/* Line 1464 of yacc.c  */
#line 393 "opus.b"
    {
		(yyval.ty) = new QueueType( (yyvsp[(3) - (4)].ty) );
	;}
    break;

  case 51:

/* Line 1464 of yacc.c  */
#line 397 "opus.b"
    {
		(yyval.ty) = new DEQueueType( (yyvsp[(3) - (4)].ty) );
	;}
    break;

  case 52:

/* Line 1464 of yacc.c  */
#line 404 "opus.b"
    {
		(yyval.i32L) = (yyvsp[(1) - (3)].i32L);
		(yyval.i32L)->push_back((yyvsp[(3) - (3)].i32));
	;}
    break;

  case 53:

/* Line 1464 of yacc.c  */
#line 409 "opus.b"
    {
		(yyval.i32L) = new std::vector<int>();
		(yyval.i32L)->push_back((yyvsp[(1) - (1)].i32));
	;}
    break;

  case 54:

/* Line 1464 of yacc.c  */
#line 417 "opus.b"
    {
		(yyval.i32) = -1;
	;}
    break;

  case 55:

/* Line 1464 of yacc.c  */
#line 421 "opus.b"
    {
		(yyval.i32) = (yyvsp[(1) - (1)].i32);
	;}
    break;

  case 56:

/* Line 1464 of yacc.c  */
#line 428 "opus.b"
    {
		(yyval.stL) = (yyvsp[(1) - (2)].stL);
		(yyval.stL)->push_back((yyvsp[(2) - (2)].st));
	;}
    break;

  case 57:

/* Line 1464 of yacc.c  */
#line 433 "opus.b"
    {
		(yyval.stL) = new std::vector<Statement *>();
		(yyval.stL)->push_back((yyvsp[(1) - (1)].st));
	;}
    break;

  case 58:

/* Line 1464 of yacc.c  */
#line 441 "opus.b"
    {
		(yyval.st) = new ExprStatement( context->start, context->end, (yyvsp[(1) - (2)].ex) );
	;}
    break;

  case 59:

/* Line 1464 of yacc.c  */
#line 445 "opus.b"
    {
		(yyval.st) = new If( context->start, context->end, (yyvsp[(3) - (5)].ex), (yyvsp[(5) - (5)].st) );
	;}
    break;

  case 60:

/* Line 1464 of yacc.c  */
#line 449 "opus.b"
    {
		(yyval.st) = new If( context->start, context->end, (yyvsp[(3) - (7)].ex), (yyvsp[(5) - (7)].st), (yyvsp[(7) - (7)].st) );
	;}
    break;

  case 61:

/* Line 1464 of yacc.c  */
#line 453 "opus.b"
    {
		(yyval.st) = new If( context->start, context->end, (yyvsp[(3) - (5)].vdef), (yyvsp[(5) - (5)].st) );
	;}
    break;

  case 62:

/* Line 1464 of yacc.c  */
#line 457 "opus.b"
    {
		(yyval.st) = new If( context->start, context->end, (yyvsp[(3) - (7)].vdef), (yyvsp[(5) - (7)].st), (yyvsp[(7) - (7)].st) );
	;}
    break;

  case 63:

/* Line 1464 of yacc.c  */
#line 461 "opus.b"
    {
		(yyval.st) = new For( context->start, context->end, (yyvsp[(3) - (9)].ex), (yyvsp[(5) - (9)].ex), (yyvsp[(7) - (9)].ex), (yyvsp[(9) - (9)].st) );
	;}
    break;

  case 64:

/* Line 1464 of yacc.c  */
#line 465 "opus.b"
    {
		(yyval.st) = new For( context->start, context->end, nullptr, (yyvsp[(5) - (7)].ex), (yyvsp[(7) - (7)].st) );
	;}
    break;

  case 65:

/* Line 1464 of yacc.c  */
#line 469 "opus.b"
    {
		(yyval.st) = new For( context->start, context->end, (yyvsp[(3) - (8)].ex), (yyvsp[(5) - (8)].ex), nullptr, (yyvsp[(8) - (8)].st) );
	;}
    break;

  case 66:

/* Line 1464 of yacc.c  */
#line 473 "opus.b"
    {
		(yyval.st) = new For( context->start, context->end,  (yyvsp[(4) - (7)].ex), nullptr, (yyvsp[(7) - (7)].st) );
	;}
    break;

  case 67:

/* Line 1464 of yacc.c  */
#line 477 "opus.b"
    {
		(yyval.st) = new For( context->start, context->end, (yyvsp[(3) - (7)].ex), nullptr, nullptr, (yyvsp[(7) - (7)].st) );
	;}
    break;

  case 68:

/* Line 1464 of yacc.c  */
#line 481 "opus.b"
    {
		(yyval.st) = new For( context->start, context->end, nullptr, nullptr, (yyvsp[(6) - (6)].st) );
	;}
    break;

  case 69:

/* Line 1464 of yacc.c  */
#line 485 "opus.b"
    {
		(yyval.st) = new For( context->start, context->end, (yyvsp[(3) - (9)].vdef), (yyvsp[(5) - (9)].ex), (yyvsp[(7) - (9)].ex), (yyvsp[(9) - (9)].st) );
	;}
    break;

  case 70:

/* Line 1464 of yacc.c  */
#line 489 "opus.b"
    {
		(yyval.st) = new For( context->start, context->end, (yyvsp[(3) - (7)].vdef), nullptr, nullptr, (yyvsp[(7) - (7)].st) );
	;}
    break;

  case 71:

/* Line 1464 of yacc.c  */
#line 493 "opus.b"
    {
		(yyval.st) = new For( context->start, context->end, (yyvsp[(3) - (8)].vdef), (yyvsp[(5) - (8)].ex), nullptr, (yyvsp[(8) - (8)].st) );
	;}
    break;

  case 72:

/* Line 1464 of yacc.c  */
#line 497 "opus.b"
    {
		(yyval.st) = new For( context->start, context->end, (yyvsp[(3) - (8)].ex), nullptr, (yyvsp[(6) - (8)].ex), (yyvsp[(8) - (8)].st) );
	;}
    break;

  case 73:

/* Line 1464 of yacc.c  */
#line 501 "opus.b"
    {
		(yyval.st) = new For( context->start, context->end, (yyvsp[(3) - (8)].vdef), nullptr, (yyvsp[(6) - (8)].ex), (yyvsp[(8) - (8)].st) );
	;}
    break;

  case 74:

/* Line 1464 of yacc.c  */
#line 505 "opus.b"
    {
		(yyval.st) = new For( context->start, context->end, (yyvsp[(4) - (8)].ex), (yyvsp[(6) - (8)].ex), (yyvsp[(8) - (8)].st) );
	;}
    break;

  case 75:

/* Line 1464 of yacc.c  */
#line 509 "opus.b"
    {
		(yyval.st) = new Switch( context->start, context->end, (yyvsp[(3) - (5)].ex), (yyvsp[(5) - (5)].st) );
	;}
    break;

  case 76:

/* Line 1464 of yacc.c  */
#line 513 "opus.b"
    {
		(yyval.st) = new Switch( context->start, context->end, (yyvsp[(3) - (5)].vdef), (yyvsp[(5) - (5)].st) );
	;}
    break;

  case 77:

/* Line 1464 of yacc.c  */
#line 517 "opus.b"
    {
		(yyval.st) = new Default( context->start, context->end, (yyvsp[(3) - (3)].st) );
	;}
    break;

  case 78:

/* Line 1464 of yacc.c  */
#line 521 "opus.b"
    {
		(yyval.st) = new Case( context->start, context->end, (yyvsp[(2) - (4)].ex), nullptr, (yyvsp[(4) - (4)].st) );
	;}
    break;

  case 79:

/* Line 1464 of yacc.c  */
#line 525 "opus.b"
    {
		(yyval.st) = new Case( context->start, context->end, (yyvsp[(2) - (6)].ex), (yyvsp[(4) - (6)].ex), (yyvsp[(6) - (6)].st) );
	;}
    break;

  case 80:

/* Line 1464 of yacc.c  */
#line 529 "opus.b"
    {
		(yyval.st) = new Break(context->start);
	;}
    break;

  case 81:

/* Line 1464 of yacc.c  */
#line 533 "opus.b"
    {
		(yyval.st) = new Continue(context->start);
	;}
    break;

  case 82:

/* Line 1464 of yacc.c  */
#line 537 "opus.b"
    {
		(yyval.st) = new Return( context->start, context->end, (yyvsp[(2) - (3)].ex) );
	;}
    break;

  case 83:

/* Line 1464 of yacc.c  */
#line 541 "opus.b"
    {
		(yyval.st) = new Block( context->start, context->end, (yyvsp[(2) - (3)].stL) );
	;}
    break;

  case 84:

/* Line 1464 of yacc.c  */
#line 545 "opus.b"
    {
		(yyval.st) = new Empty( context->start );
	;}
    break;

  case 85:

/* Line 1464 of yacc.c  */
#line 552 "opus.b"
    {
		(yyval.ex) = new Assign( new Name((yyvsp[(1) - (3)].str)), (yyvsp[(3) - (3)].ex) );
	;}
    break;

  case 86:

/* Line 1464 of yacc.c  */
#line 556 "opus.b"
    {
		(yyval.ex) = new IntLit((yyvsp[(1) - (1)].i32));
	;}
    break;

  case 87:

/* Line 1464 of yacc.c  */
#line 560 "opus.b"
    {
		(yyval.ex) = new UnsignedLit((yyvsp[(1) - (1)].u32));
	;}
    break;

  case 88:

/* Line 1464 of yacc.c  */
#line 564 "opus.b"
    {
		(yyval.ex) = new UnsignedLongLit((yyvsp[(1) - (1)].u64));
	;}
    break;

  case 89:

/* Line 1464 of yacc.c  */
#line 568 "opus.b"
    {
		(yyval.ex) = new LongLit((yyvsp[(1) - (1)].i64));
	;}
    break;

  case 90:

/* Line 1464 of yacc.c  */
#line 572 "opus.b"
    {
		(yyval.ex) = new DoubleLit((yyvsp[(1) - (1)].dbl));
	;}
    break;

  case 91:

/* Line 1464 of yacc.c  */
#line 576 "opus.b"
    {
		(yyval.ex) = new StringLit((yyvsp[(1) - (1)].str));
	;}
    break;

  case 92:

/* Line 1464 of yacc.c  */
#line 580 "opus.b"
    {
		(yyval.ex) = new RawStringLit((yyvsp[(1) - (1)].str));
	;}
    break;

  case 93:

/* Line 1464 of yacc.c  */
#line 584 "opus.b"
    {
		(yyval.ex) = new BoolLit((yyvsp[(1) - (1)].b));
	;}
    break;

  case 94:

/* Line 1464 of yacc.c  */
#line 588 "opus.b"
    {
		(yyval.ex) = new BoolLit((yyvsp[(1) - (1)].b));
	;}
    break;

  case 95:

/* Line 1464 of yacc.c  */
#line 592 "opus.b"
    {
		(yyval.ex) = new Add((yyvsp[(1) - (3)].ex), (yyvsp[(3) - (3)].ex) );
	;}
    break;

  case 96:

/* Line 1464 of yacc.c  */
#line 596 "opus.b"
    {
		(yyval.ex) = new Sub((yyvsp[(1) - (3)].ex), (yyvsp[(3) - (3)].ex));
	;}
    break;

  case 97:

/* Line 1464 of yacc.c  */
#line 600 "opus.b"
    {
		(yyval.ex) = new Mul((yyvsp[(1) - (3)].ex), (yyvsp[(3) - (3)].ex));
	;}
    break;

  case 98:

/* Line 1464 of yacc.c  */
#line 604 "opus.b"
    {
		(yyval.ex) = new Div((yyvsp[(1) - (3)].ex), (yyvsp[(3) - (3)].ex));
	;}
    break;

  case 99:

/* Line 1464 of yacc.c  */
#line 608 "opus.b"
    {
		(yyval.ex) = new Mod((yyvsp[(1) - (3)].ex), (yyvsp[(3) - (3)].ex));
	;}
    break;

  case 100:

/* Line 1464 of yacc.c  */
#line 612 "opus.b"
    {
		(yyval.ex) = new Inc( (yyvsp[(2) - (2)].ex) );
	;}
    break;

  case 101:

/* Line 1464 of yacc.c  */
#line 616 "opus.b"
    {
		(yyval.ex) = new Dec( (yyvsp[(2) - (2)].ex) );
	;}
    break;

  case 102:

/* Line 1464 of yacc.c  */
#line 620 "opus.b"
    {
		(yyval.ex) = new PostInc( (yyvsp[(1) - (2)].ex) );
	;}
    break;

  case 103:

/* Line 1464 of yacc.c  */
#line 624 "opus.b"
    {
		(yyval.ex) = new PostDec( (yyvsp[(1) - (2)].ex) );
	;}
    break;

  case 104:

/* Line 1464 of yacc.c  */
#line 628 "opus.b"
    {
		(yyval.ex) = new NotEq( (yyvsp[(1) - (3)].ex), (yyvsp[(3) - (3)].ex) );
	;}
    break;

  case 105:

/* Line 1464 of yacc.c  */
#line 632 "opus.b"
    {
		(yyval.ex) = new Eq( (yyvsp[(1) - (3)].ex), (yyvsp[(3) - (3)].ex) );
	;}
    break;

  case 106:

/* Line 1464 of yacc.c  */
#line 636 "opus.b"
    {
		(yyval.ex) = new GreaterEq( (yyvsp[(1) - (3)].ex), (yyvsp[(3) - (3)].ex) );
	;}
    break;

  case 107:

/* Line 1464 of yacc.c  */
#line 640 "opus.b"
    {
		(yyval.ex) = new Greater( (yyvsp[(1) - (3)].ex), (yyvsp[(3) - (3)].ex) );
	;}
    break;

  case 108:

/* Line 1464 of yacc.c  */
#line 644 "opus.b"
    {
		(yyval.ex) = new LessEq( (yyvsp[(1) - (3)].ex), (yyvsp[(3) - (3)].ex) );
	;}
    break;

  case 109:

/* Line 1464 of yacc.c  */
#line 648 "opus.b"
    {
		(yyval.ex) = new Less( (yyvsp[(1) - (3)].ex), (yyvsp[(3) - (3)].ex) );
	;}
    break;

  case 110:

/* Line 1464 of yacc.c  */
#line 652 "opus.b"
    {
		(yyval.ex) = new Dot( (yyvsp[(1) - (3)].ex), (yyvsp[(3) - (3)].ex) );
	;}
    break;

  case 111:

/* Line 1464 of yacc.c  */
#line 656 "opus.b"
    {
		(yyval.ex) = new AddAssign( (yyvsp[(1) - (3)].ex), (yyvsp[(3) - (3)].ex) );
	;}
    break;

  case 112:

/* Line 1464 of yacc.c  */
#line 660 "opus.b"
    {
		(yyval.ex) = new SubAssign( (yyvsp[(1) - (3)].ex), (yyvsp[(3) - (3)].ex) );
	;}
    break;

  case 113:

/* Line 1464 of yacc.c  */
#line 664 "opus.b"
    {
		(yyval.ex) = new MulAssign( (yyvsp[(1) - (3)].ex), (yyvsp[(3) - (3)].ex) );
	;}
    break;

  case 114:

/* Line 1464 of yacc.c  */
#line 668 "opus.b"
    {
		(yyval.ex) = new DivAssign( (yyvsp[(1) - (3)].ex), (yyvsp[(3) - (3)].ex) );
	;}
    break;

  case 115:

/* Line 1464 of yacc.c  */
#line 672 "opus.b"
    {
		(yyval.ex) = new ModAssign( (yyvsp[(1) - (3)].ex), (yyvsp[(3) - (3)].ex) );
	;}
    break;

  case 116:

/* Line 1464 of yacc.c  */
#line 676 "opus.b"
    {
		(yyval.ex) = new AndAssign( (yyvsp[(1) - (3)].ex), (yyvsp[(3) - (3)].ex) );
	;}
    break;

  case 117:

/* Line 1464 of yacc.c  */
#line 680 "opus.b"
    {
		(yyval.ex) = new OrAssign( (yyvsp[(1) - (3)].ex), (yyvsp[(3) - (3)].ex) );
	;}
    break;

  case 118:

/* Line 1464 of yacc.c  */
#line 684 "opus.b"
    {
		(yyval.ex) = new XorAssign( (yyvsp[(1) - (3)].ex), (yyvsp[(3) - (3)].ex) );
	;}
    break;

  case 119:

/* Line 1464 of yacc.c  */
#line 688 "opus.b"
    {
		(yyval.ex) = new Lor( (yyvsp[(1) - (3)].ex), (yyvsp[(3) - (3)].ex) );
	;}
    break;

  case 120:

/* Line 1464 of yacc.c  */
#line 692 "opus.b"
    {
		(yyval.ex) = new Land( (yyvsp[(1) - (3)].ex), (yyvsp[(3) - (3)].ex) );
	;}
    break;

  case 121:

/* Line 1464 of yacc.c  */
#line 696 "opus.b"
    {
		(yyval.ex) = new Or( (yyvsp[(1) - (3)].ex), (yyvsp[(3) - (3)].ex) );
	;}
    break;

  case 122:

/* Line 1464 of yacc.c  */
#line 700 "opus.b"
    {
		(yyval.ex) = new Xor( (yyvsp[(1) - (3)].ex), (yyvsp[(3) - (3)].ex) );
	;}
    break;

  case 123:

/* Line 1464 of yacc.c  */
#line 704 "opus.b"
    {
		(yyval.ex) = new And( (yyvsp[(1) - (3)].ex), (yyvsp[(3) - (3)].ex) );
	;}
    break;

  case 124:

/* Line 1464 of yacc.c  */
#line 708 "opus.b"
    {
		(yyval.ex) = new Index( (yyvsp[(1) - (4)].ex), (yyvsp[(3) - (4)].exL) );
	;}
    break;

  case 125:

/* Line 1464 of yacc.c  */
#line 712 "opus.b"
    {
		(yyval.ex) = new FuncCall( (yyvsp[(1) - (3)].ex) );
	;}
    break;

  case 126:

/* Line 1464 of yacc.c  */
#line 716 "opus.b"
    {
		(yyval.ex) = new FuncCall( (yyvsp[(1) - (4)].ex), (yyvsp[(3) - (4)].exL) );
	;}
    break;

  case 127:

/* Line 1464 of yacc.c  */
#line 720 "opus.b"
    {
		(yyval.ex) = new Lnot( (yyvsp[(2) - (2)].ex) );
	;}
    break;

  case 128:

/* Line 1464 of yacc.c  */
#line 724 "opus.b"
    {
		(yyval.ex) = new Not( (yyvsp[(2) - (2)].ex) );
	;}
    break;

  case 129:

/* Line 1464 of yacc.c  */
#line 728 "opus.b"
    {
		(yyval.ex) = new Minus( (yyvsp[(2) - (2)].ex) );
	;}
    break;

  case 130:

/* Line 1464 of yacc.c  */
#line 732 "opus.b"
    {
		(yyval.ex) = new Join( (yyvsp[(1) - (5)].ex), (yyvsp[(3) - (5)].ex), (yyvsp[(5) - (5)].ex) );
	;}
    break;

  case 131:

/* Line 1464 of yacc.c  */
#line 736 "opus.b"
    {
		(yyval.ex) = new LeftJoin( (yyvsp[(1) - (5)].ex), (yyvsp[(3) - (5)].ex), (yyvsp[(5) - (5)].ex) );
	;}
    break;

  case 132:

/* Line 1464 of yacc.c  */
#line 740 "opus.b"
    {
		(yyval.ex) = new RightJoin( (yyvsp[(1) - (5)].ex), (yyvsp[(3) - (5)].ex), (yyvsp[(5) - (5)].ex) );
	;}
    break;

  case 133:

/* Line 1464 of yacc.c  */
#line 744 "opus.b"
    {
		(yyval.ex) = new OuterJoin( (yyvsp[(1) - (5)].ex), (yyvsp[(3) - (5)].ex), (yyvsp[(5) - (5)].ex) );
	;}
    break;

  case 134:

/* Line 1464 of yacc.c  */
#line 748 "opus.b"
    {
		(yyval.ex) = new Conditional( (yyvsp[(1) - (5)].ex), (yyvsp[(3) - (5)].ex), (yyvsp[(5) - (5)].ex) );
	;}
    break;

  case 135:

/* Line 1464 of yacc.c  */
#line 755 "opus.b"
    {
		(yyval.exL) = (yyvsp[(1) - (3)].exL);
		(yyval.exL)->push_back((yyvsp[(3) - (3)].ex));
	;}
    break;

  case 136:

/* Line 1464 of yacc.c  */
#line 760 "opus.b"
    {
		(yyval.exL) = new std::vector<Expr *>();
		(yyval.exL)->push_back((yyvsp[(1) - (1)].ex));
	;}
    break;



/* Line 1464 of yacc.c  */
#line 3432 "opus.cpp"
      default: break;
    }
  YY_SYMBOL_PRINT ("-> $$ =", yyr1[yyn], &yyval, &yyloc);

  YYPOPSTACK (yylen);
  yylen = 0;
  YY_STACK_PRINT (yyss, yyssp);

  *++yyvsp = yyval;
  *++yylsp = yyloc;

  /* Now `shift' the result of the reduction.  Determine what state
     that goes to, based on the state we popped back to and the rule
     number reduced by.  */

  yyn = yyr1[yyn];

  yystate = yypgoto[yyn - YYNTOKENS] + *yyssp;
  if (0 <= yystate && yystate <= YYLAST && yycheck[yystate] == *yyssp)
    yystate = yytable[yystate];
  else
    yystate = yydefgoto[yyn - YYNTOKENS];

  goto yynewstate;


/*------------------------------------.
| yyerrlab -- here on detecting error |
`------------------------------------*/
yyerrlab:
  /* If not already recovering from an error, report this error.  */
  if (!yyerrstatus)
    {
      ++yynerrs;
#if ! YYERROR_VERBOSE
      yyerror (&yylloc, context, YY_("syntax error"));
#else
      {
	YYSIZE_T yysize = yysyntax_error (0, yystate, yychar);
	if (yymsg_alloc < yysize && yymsg_alloc < YYSTACK_ALLOC_MAXIMUM)
	  {
	    YYSIZE_T yyalloc = 2 * yysize;
	    if (! (yysize <= yyalloc && yyalloc <= YYSTACK_ALLOC_MAXIMUM))
	      yyalloc = YYSTACK_ALLOC_MAXIMUM;
	    if (yymsg != yymsgbuf)
	      YYSTACK_FREE (yymsg);
	    yymsg = (char *) YYSTACK_ALLOC (yyalloc);
	    if (yymsg)
	      yymsg_alloc = yyalloc;
	    else
	      {
		yymsg = yymsgbuf;
		yymsg_alloc = sizeof yymsgbuf;
	      }
	  }

	if (0 < yysize && yysize <= yymsg_alloc)
	  {
	    (void) yysyntax_error (yymsg, yystate, yychar);
	    yyerror (&yylloc, context, yymsg);
	  }
	else
	  {
	    yyerror (&yylloc, context, YY_("syntax error"));
	    if (yysize != 0)
	      goto yyexhaustedlab;
	  }
      }
#endif
    }

  yyerror_range[0] = yylloc;

  if (yyerrstatus == 3)
    {
      /* If just tried and failed to reuse lookahead token after an
	 error, discard it.  */

      if (yychar <= YYEOF)
	{
	  /* Return failure if at end of input.  */
	  if (yychar == YYEOF)
	    YYABORT;
	}
      else
	{
	  yydestruct ("Error: discarding",
		      yytoken, &yylval, &yylloc, context);
	  yychar = YYEMPTY;
	}
    }

  /* Else will try to reuse lookahead token after shifting the error
     token.  */
  goto yyerrlab1;


/*---------------------------------------------------.
| yyerrorlab -- error raised explicitly by YYERROR.  |
`---------------------------------------------------*/
yyerrorlab:

  /* Pacify compilers like GCC when the user code never invokes
     YYERROR and the label yyerrorlab therefore never appears in user
     code.  */
  if (/*CONSTCOND*/ 0)
     goto yyerrorlab;

  yyerror_range[0] = yylsp[1-yylen];
  /* Do not reclaim the symbols of the rule which action triggered
     this YYERROR.  */
  YYPOPSTACK (yylen);
  yylen = 0;
  YY_STACK_PRINT (yyss, yyssp);
  yystate = *yyssp;
  goto yyerrlab1;


/*-------------------------------------------------------------.
| yyerrlab1 -- common code for both syntax error and YYERROR.  |
`-------------------------------------------------------------*/
yyerrlab1:
  yyerrstatus = 3;	/* Each real token shifted decrements this.  */

  for (;;)
    {
      yyn = yypact[yystate];
      if (yyn != YYPACT_NINF)
	{
	  yyn += YYTERROR;
	  if (0 <= yyn && yyn <= YYLAST && yycheck[yyn] == YYTERROR)
	    {
	      yyn = yytable[yyn];
	      if (0 < yyn)
		break;
	    }
	}

      /* Pop the current state because it cannot handle the error token.  */
      if (yyssp == yyss)
	YYABORT;

      yyerror_range[0] = *yylsp;
      yydestruct ("Error: popping",
		  yystos[yystate], yyvsp, yylsp, context);
      YYPOPSTACK (1);
      yystate = *yyssp;
      YY_STACK_PRINT (yyss, yyssp);
    }

  *++yyvsp = yylval;

  yyerror_range[1] = yylloc;
  /* Using YYLLOC is tempting, but would change the location of
     the lookahead.  YYLOC is available though.  */
  YYLLOC_DEFAULT (yyloc, (yyerror_range - 1), 2);
  *++yylsp = yyloc;

  /* Shift the error token.  */
  YY_SYMBOL_PRINT ("Shifting", yystos[yyn], yyvsp, yylsp);

  yystate = yyn;
  goto yynewstate;


/*-------------------------------------.
| yyacceptlab -- YYACCEPT comes here.  |
`-------------------------------------*/
yyacceptlab:
  yyresult = 0;
  goto yyreturn;

/*-----------------------------------.
| yyabortlab -- YYABORT comes here.  |
`-----------------------------------*/
yyabortlab:
  yyresult = 1;
  goto yyreturn;

#if !defined(yyoverflow) || YYERROR_VERBOSE
/*-------------------------------------------------.
| yyexhaustedlab -- memory exhaustion comes here.  |
`-------------------------------------------------*/
yyexhaustedlab:
  yyerror (&yylloc, context, YY_("memory exhausted"));
  yyresult = 2;
  /* Fall through.  */
#endif

yyreturn:
  if (yychar != YYEMPTY)
     yydestruct ("Cleanup: discarding lookahead",
		 yytoken, &yylval, &yylloc, context);
  /* Do not reclaim the symbols of the rule which action triggered
     this YYABORT or YYACCEPT.  */
  YYPOPSTACK (yylen);
  YY_STACK_PRINT (yyss, yyssp);
  while (yyssp != yyss)
    {
      yydestruct ("Cleanup: popping",
		  yystos[*yyssp], yyvsp, yylsp, context);
      YYPOPSTACK (1);
    }
#ifndef yyoverflow
  if (yyss != yyssa)
    YYSTACK_FREE (yyss);
#endif
#if YYERROR_VERBOSE
  if (yymsg != yymsgbuf)
    YYSTACK_FREE (yymsg);
#endif
  /* Make sure YYID is used.  */
  return YYID (yyresult);
}



/* Line 1684 of yacc.c  */
#line 766 "opus.b"


