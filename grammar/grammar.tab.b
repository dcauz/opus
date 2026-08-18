/* A Bison parser, made by GNU Bison 3.8.2.  */

/* Bison implementation for Yacc-like parsers in C

   Copyright (C) 1984, 1989-1990, 2000-2015, 2018-2021 Free Software Foundation,
   Inc.

   This program is free software: you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation, either version 3 of the License, or
   (at your option) any later version.

   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.

   You should have received a copy of the GNU General Public License
   along with this program.  If not, see <https://www.gnu.org/licenses/>.  */

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

/* DO NOT RELY ON FEATURES THAT ARE NOT DOCUMENTED in the manual,
   especially those whose name start with YY_ or yy_.  They are
   private implementation details that can be changed or removed.  */

/* All symbols defined below should begin with yy or YY, to avoid
   infringing on user name space.  This should be done even for local
   variables, as they might otherwise be expanded by user macros.
   There are some unavoidable exceptions within include files to
   define necessary library symbols; they are noted "INFRINGES ON
   USER NAME SPACE" below.  */

/* Identify Bison output, and Bison version.  */
#define YYBISON 30802

/* Bison version string.  */
#define YYBISON_VERSION "3.8.2"

/* Skeleton name.  */
#define YYSKELETON_NAME "yacc.c"

/* Pure parsers.  */
#define YYPURE 0

/* Push parsers.  */
#define YYPUSH 0

/* Pull parsers.  */
#define YYPULL 1




/* First part of user prologue.  */
#line 1 "grammar.b"


// This file is used to document the language. It is not part of the implementation.
//


#line 78 "grammar.tab.b"

# ifndef YY_CAST
#  ifdef __cplusplus
#   define YY_CAST(Type, Val) static_cast<Type> (Val)
#   define YY_REINTERPRET_CAST(Type, Val) reinterpret_cast<Type> (Val)
#  else
#   define YY_CAST(Type, Val) ((Type) (Val))
#   define YY_REINTERPRET_CAST(Type, Val) ((Type) (Val))
#  endif
# endif
# ifndef YY_NULLPTR
#  if defined __cplusplus
#   if 201103L <= __cplusplus
#    define YY_NULLPTR nullptr
#   else
#    define YY_NULLPTR 0
#   endif
#  else
#   define YY_NULLPTR ((void*)0)
#  endif
# endif


/* Debug traces.  */
#ifndef YYDEBUG
# define YYDEBUG 0
#endif
#if YYDEBUG
extern int yydebug;
#endif

/* Token kinds.  */
#ifndef YYTOKENTYPE
# define YYTOKENTYPE
  enum yytokentype
  {
    YYEMPTY = -2,
    YYEOF = 0,                     /* "end of file"  */
    YYerror = 256,                 /* error  */
    YYUNDEF = 257,                 /* "invalid token"  */
    ADD_ASS = 258,                 /* "+="  */
    AND = 259,                     /* "&&"  */
    AND_ASS = 260,                 /* "&="  */
    CP_ASS = 261,                  /* "[*]="  */
    CRS_PROD = 262,                /* "[*]"  */
    DEC = 263,                     /* "--"  */
    DIV_ASS = 264,                 /* "/="  */
    DOT_ASK = 265,                 /* ".*"  */
    DOT_DOT = 266,                 /* ".."  */
    DOT_PROD = 267,                /* "[.]"  */
    DP_ASS = 268,                  /* "[.]="  */
    EQ = 269,                      /* "=="  */
    EXP = 270,                     /* "**"  */
    EXP_ASS = 271,                 /* "**="  */
    GE = 272,                      /* ">="  */
    INC = 273,                     /* "++"  */
    PARAM_ASS = 274,               /* ":="  */
    LE = 275,                      /* "<="  */
    MD_ASS = 276,                  /* "[/]="  */
    M_DIV = 277,                   /* "[/]"  */
    ME_ASS = 278,                  /* "[**]="  */
    M_EXP = 279,                   /* "[**]"  */
    MOD_ASS = 280,                 /* "%="  */
    MPTR = 281,                    /* "->*"  */
    MUL_ASS = 282,                 /* "*="  */
    NE = 283,                      /* "!="  */
    OR = 284,                      /* "||"  */
    OR_ASS = 285,                  /* "|="  */
    PTR = 286,                     /* "->"  */
    SLFT = 287,                    /* "<<"  */
    SLFT_ASS = 288,                /* "<<="  */
    SRGHT = 289,                   /* ">>"  */
    SRGHT_ASS = 290,               /* ">>="  */
    SS = 291,                      /* "<=>"  */
    SUB_ASS = 292,                 /* "-="  */
    TIL_ASS = 293,                 /* "~="  */
    XOR_ASS = 294,                 /* "^="  */
    ALIGNAS = 295,                 /* "alignas"  */
    ALIGNOF = 296,                 /* "alignof"  */
    APPLY = 297,                   /* "apply"  */
    AS = 298,                      /* "as"  */
    ASSERT = 299,                  /* "assert"  */
    ASYNC = 300,                   /* "async"  */
    ATOMIC = 301,                  /* "atomic"  */
    AUTO = 302,                    /* "auto"  */
    BOOL = 303,                    /* "bool"  */
    BREAK = 304,                   /* "break"  */
    BY = 305,                      /* "by"  */
    C = 306,                       /* "C"  */
    CASE = 307,                    /* "case"  */
    CATCH = 308,                   /* "catch"  */
    CHAR = 309,                    /* "char"  */
    CLASS = 310,                   /* "class"  */
    CLOSURE = 311,                 /* "closure"  */
    CONST = 312,                   /* "const"  */
    CO_RETURN = 313,               /* "co_return"  */
    CONTINUE = 314,                /* "continue"  */
    CO_AWAIT = 315,                /* "co_await"  */
    CO_YIELD = 316,                /* "co_yield"  */
    DATE = 317,                    /* "date"  */
    DATETIME = 318,                /* "datetime"  */
    DEFAULT = 319,                 /* "default"  */
    DELETE = 320,                  /* "delete"  */
    DISTINCT = 321,                /* "distinct"  */
    DO = 322,                      /* "do"  */
    _E = 323,                      /* ".e"  */
    ELSE = 324,                    /* "else"  */
    ENUM = 325,                    /* "enum"  */
    EVAL = 326,                    /* "eval"  */
    EXTEND = 327,                  /* "extend"  */
    FALSE = 328,                   /* "false"  */
    FILTER = 329,                  /* "filter"  */
    FINAL = 330,                   /* "final"  */
    FLOATn = 331,                  /* "floatn"  */
    FOR = 332,                     /* "for"  */
    FROM = 333,                    /* "from"  */
    _GAMMA = 334,                  /* ".gamma"  */
    GRAPH = 335,                   /* "graph"  */
    GROUP = 336,                   /* "group"  */
    HAVING = 337,                  /* "having"  */
    HEAP = 338,                    /* "heap"  */
    _I = 339,                      /* ".i"  */
    INF = 340,                     /* ".inf"  */
    In = 341,                      /* "i32"  */
    ID = 342,                      /* "ID"  */
    IF = 343,                      /* "if"  */
    IMPLEMENT = 344,               /* "implement"  */
    IMPORT = 345,                  /* "import"  */
    IN = 346,                      /* "in"  */
    INSERT = 347,                  /* "insert"  */
    INTO = 348,                    /* "into"  */
    INTERFACE = 349,               /* "interface"  */
    IS_VOID = 350,                 /* "is_void"  */
    JOIN = 351,                    /* "join"  */
    LEFT = 352,                    /* "left"  */
    LIST = 353,                    /* "list"  */
    LSTRING = 354,                 /* "lstring"  */
    LTSTRING = 355,                /* "ltstring"  */
    MAP = 356,                     /* "map"  */
    MMAP = 357,                    /* "mmap"  */
    MSET = 358,                    /* "mset"  */
    MUTABLE = 359,                 /* "mutable"  */
    MUTEX = 360,                   /* "mutex"  */
    N = 361,                       /* "N"  */
    NAMESPACE = 362,               /* "namespace"  */
    NAN = 363,                     /* ".nan"  */
    Nn = 364,                      /* "n32"  */
    NEW = 365,                     /* "new"  */
    NOEXCEPT = 366,                /* "noexcept"  */
    OBJECT = 367,                  /* "object"  */
    ORDER = 368,                   /* "order"  */
    OUTER = 369,                   /* "outer"  */
    OVERRIDE = 370,                /* "override"  */
    PERCENT = 371,                 /* "percent"  */
    _PHI = 372,                    /* ".phi"  */
    _PI = 373,                     /* ".pi"  */
    PRIVATE = 374,                 /* "private"  */
    PUBLIC = 375,                  /* "public"  */
    PURE = 376,                    /* "pure"  */
    Q = 377,                       /* "Q"  */
    QUEUE = 378,                   /* "queue"  */
    R = 379,                       /* "R"  */
    REDUCE = 380,                  /* "reduce"  */
    REGEXP = 381,                  /* "regexp"  */
    RELATION = 382,                /* "relation"  */
    RETURN = 383,                  /* "return"  */
    RIGHT = 384,                   /* "right"  */
    SELECT = 385,                  /* "select"  */
    SEMAPHORE = 386,               /* "semaphore"  */
    SET = 387,                     /* "set"  */
    SIZEOF = 388,                  /* "sizeof"  */
    STACK = 389,                   /* "stack"  */
    STRING = 390,                  /* "string"  */
    SWITCH = 391,                  /* "switch"  */
    THREAD_LOCAL = 392,            /* "thread_local"  */
    THROW = 393,                   /* "throw"  */
    TIES = 394,                    /* "ties"  */
    TIME = 395,                    /* "time"  */
    TOP = 396,                     /* "top"  */
    TRUE = 397,                    /* "true"  */
    TRY = 398,                     /* "try"  */
    TYPE = 399,                    /* "type"  */
    Un = 400,                      /* "u32"  */
    UNION = 401,                   /* "union"  */
    UPDATE = 402,                  /* "update"  */
    USING = 403,                   /* "using"  */
    VALUES = 404,                  /* "values"  */
    VOID = 405,                    /* "void"  */
    WHERE = 406,                   /* "where"  */
    WHILE = 407,                   /* "while"  */
    WITH = 408,                    /* "with"  */
    Z = 409,                       /* "Z"  */
    Zn = 410,                      /* "z32"  */
    CHAR_LIT = 411,                /* CHAR_LIT  */
    FLOAT_LIT = 412,               /* FLOAT_LIT  */
    INT_LIT = 413,                 /* INT_LIT  */
    STRING_LIT = 414,              /* STRING_LIT  */
    LSTRING_LIT = 415,             /* LSTRING_LIT  */
    LTSTRING_LIT = 416,            /* LTSTRING_LIT  */
    RE_LIT = 417,                  /* RE_LIT  */
    DATETIME_LIT = 418,            /* DATETIME_LIT  */
    TIME_LIT = 419,                /* TIME_LIT  */
    NAT_LIT = 420,                 /* NAT_LIT  */
    Q_LIT = 421,                   /* Q_LIT  */
    REAL_LIT = 422,                /* REAL_LIT  */
    YEARS_LIT = 423,               /* YEARS_LIT  */
    MONS_LIT = 424,                /* MONS_LIT  */
    DAYS_LIT = 425,                /* DAYS_LIT  */
    HOURS_LIT = 426,               /* HOURS_LIT  */
    MINS_LIT = 427,                /* MINS_LIT  */
    SECS_LIT = 428,                /* SECS_LIT  */
    POST_INC = 429,                /* POST_INC  */
    POST_DEC = 430,                /* POST_DEC  */
    CTOR = 431,                    /* CTOR  */
    FCALL = 432,                   /* FCALL  */
    INDEX = 433,                   /* INDEX  */
    ABS = 434,                     /* ABS  */
    FACTORIAL = 435,               /* FACTORIAL  */
    UNI_PLUS = 436,                /* UNI_PLUS  */
    UNI_MINUS = 437,               /* UNI_MINUS  */
    UNI_TILDA = 438,               /* UNI_TILDA  */
    UNI_ASK = 439,                 /* UNI_ASK  */
    UNI_HAT = 440                  /* UNI_HAT  */
  };
  typedef enum yytokentype yytoken_kind_t;
#endif

/* Value type.  */
#if ! defined YYSTYPE && ! defined YYSTYPE_IS_DECLARED
typedef int YYSTYPE;
# define YYSTYPE_IS_TRIVIAL 1
# define YYSTYPE_IS_DECLARED 1
#endif


extern YYSTYPE yylval;


int yyparse (void);



/* Symbol kind.  */
enum yysymbol_kind_t
{
  YYSYMBOL_YYEMPTY = -2,
  YYSYMBOL_YYEOF = 0,                      /* "end of file"  */
  YYSYMBOL_YYerror = 1,                    /* error  */
  YYSYMBOL_YYUNDEF = 2,                    /* "invalid token"  */
  YYSYMBOL_ADD_ASS = 3,                    /* "+="  */
  YYSYMBOL_AND = 4,                        /* "&&"  */
  YYSYMBOL_AND_ASS = 5,                    /* "&="  */
  YYSYMBOL_CP_ASS = 6,                     /* "[*]="  */
  YYSYMBOL_CRS_PROD = 7,                   /* "[*]"  */
  YYSYMBOL_DEC = 8,                        /* "--"  */
  YYSYMBOL_DIV_ASS = 9,                    /* "/="  */
  YYSYMBOL_DOT_ASK = 10,                   /* ".*"  */
  YYSYMBOL_DOT_DOT = 11,                   /* ".."  */
  YYSYMBOL_DOT_PROD = 12,                  /* "[.]"  */
  YYSYMBOL_DP_ASS = 13,                    /* "[.]="  */
  YYSYMBOL_EQ = 14,                        /* "=="  */
  YYSYMBOL_EXP = 15,                       /* "**"  */
  YYSYMBOL_EXP_ASS = 16,                   /* "**="  */
  YYSYMBOL_GE = 17,                        /* ">="  */
  YYSYMBOL_INC = 18,                       /* "++"  */
  YYSYMBOL_PARAM_ASS = 19,                 /* ":="  */
  YYSYMBOL_LE = 20,                        /* "<="  */
  YYSYMBOL_MD_ASS = 21,                    /* "[/]="  */
  YYSYMBOL_M_DIV = 22,                     /* "[/]"  */
  YYSYMBOL_ME_ASS = 23,                    /* "[**]="  */
  YYSYMBOL_M_EXP = 24,                     /* "[**]"  */
  YYSYMBOL_MOD_ASS = 25,                   /* "%="  */
  YYSYMBOL_MPTR = 26,                      /* "->*"  */
  YYSYMBOL_MUL_ASS = 27,                   /* "*="  */
  YYSYMBOL_NE = 28,                        /* "!="  */
  YYSYMBOL_OR = 29,                        /* "||"  */
  YYSYMBOL_OR_ASS = 30,                    /* "|="  */
  YYSYMBOL_PTR = 31,                       /* "->"  */
  YYSYMBOL_SLFT = 32,                      /* "<<"  */
  YYSYMBOL_SLFT_ASS = 33,                  /* "<<="  */
  YYSYMBOL_SRGHT = 34,                     /* ">>"  */
  YYSYMBOL_SRGHT_ASS = 35,                 /* ">>="  */
  YYSYMBOL_SS = 36,                        /* "<=>"  */
  YYSYMBOL_SUB_ASS = 37,                   /* "-="  */
  YYSYMBOL_TIL_ASS = 38,                   /* "~="  */
  YYSYMBOL_XOR_ASS = 39,                   /* "^="  */
  YYSYMBOL_ALIGNAS = 40,                   /* "alignas"  */
  YYSYMBOL_ALIGNOF = 41,                   /* "alignof"  */
  YYSYMBOL_APPLY = 42,                     /* "apply"  */
  YYSYMBOL_AS = 43,                        /* "as"  */
  YYSYMBOL_ASSERT = 44,                    /* "assert"  */
  YYSYMBOL_ASYNC = 45,                     /* "async"  */
  YYSYMBOL_ATOMIC = 46,                    /* "atomic"  */
  YYSYMBOL_AUTO = 47,                      /* "auto"  */
  YYSYMBOL_BOOL = 48,                      /* "bool"  */
  YYSYMBOL_BREAK = 49,                     /* "break"  */
  YYSYMBOL_BY = 50,                        /* "by"  */
  YYSYMBOL_C = 51,                         /* "C"  */
  YYSYMBOL_CASE = 52,                      /* "case"  */
  YYSYMBOL_CATCH = 53,                     /* "catch"  */
  YYSYMBOL_CHAR = 54,                      /* "char"  */
  YYSYMBOL_CLASS = 55,                     /* "class"  */
  YYSYMBOL_CLOSURE = 56,                   /* "closure"  */
  YYSYMBOL_CONST = 57,                     /* "const"  */
  YYSYMBOL_CO_RETURN = 58,                 /* "co_return"  */
  YYSYMBOL_CONTINUE = 59,                  /* "continue"  */
  YYSYMBOL_CO_AWAIT = 60,                  /* "co_await"  */
  YYSYMBOL_CO_YIELD = 61,                  /* "co_yield"  */
  YYSYMBOL_DATE = 62,                      /* "date"  */
  YYSYMBOL_DATETIME = 63,                  /* "datetime"  */
  YYSYMBOL_DEFAULT = 64,                   /* "default"  */
  YYSYMBOL_DELETE = 65,                    /* "delete"  */
  YYSYMBOL_DISTINCT = 66,                  /* "distinct"  */
  YYSYMBOL_DO = 67,                        /* "do"  */
  YYSYMBOL__E = 68,                        /* ".e"  */
  YYSYMBOL_ELSE = 69,                      /* "else"  */
  YYSYMBOL_ENUM = 70,                      /* "enum"  */
  YYSYMBOL_EVAL = 71,                      /* "eval"  */
  YYSYMBOL_EXTEND = 72,                    /* "extend"  */
  YYSYMBOL_FALSE = 73,                     /* "false"  */
  YYSYMBOL_FILTER = 74,                    /* "filter"  */
  YYSYMBOL_FINAL = 75,                     /* "final"  */
  YYSYMBOL_FLOATn = 76,                    /* "floatn"  */
  YYSYMBOL_FOR = 77,                       /* "for"  */
  YYSYMBOL_FROM = 78,                      /* "from"  */
  YYSYMBOL__GAMMA = 79,                    /* ".gamma"  */
  YYSYMBOL_GRAPH = 80,                     /* "graph"  */
  YYSYMBOL_GROUP = 81,                     /* "group"  */
  YYSYMBOL_HAVING = 82,                    /* "having"  */
  YYSYMBOL_HEAP = 83,                      /* "heap"  */
  YYSYMBOL__I = 84,                        /* ".i"  */
  YYSYMBOL_INF = 85,                       /* ".inf"  */
  YYSYMBOL_In = 86,                        /* "i32"  */
  YYSYMBOL_ID = 87,                        /* "ID"  */
  YYSYMBOL_IF = 88,                        /* "if"  */
  YYSYMBOL_IMPLEMENT = 89,                 /* "implement"  */
  YYSYMBOL_IMPORT = 90,                    /* "import"  */
  YYSYMBOL_IN = 91,                        /* "in"  */
  YYSYMBOL_INSERT = 92,                    /* "insert"  */
  YYSYMBOL_INTO = 93,                      /* "into"  */
  YYSYMBOL_INTERFACE = 94,                 /* "interface"  */
  YYSYMBOL_IS_VOID = 95,                   /* "is_void"  */
  YYSYMBOL_JOIN = 96,                      /* "join"  */
  YYSYMBOL_LEFT = 97,                      /* "left"  */
  YYSYMBOL_LIST = 98,                      /* "list"  */
  YYSYMBOL_LSTRING = 99,                   /* "lstring"  */
  YYSYMBOL_LTSTRING = 100,                 /* "ltstring"  */
  YYSYMBOL_MAP = 101,                      /* "map"  */
  YYSYMBOL_MMAP = 102,                     /* "mmap"  */
  YYSYMBOL_MSET = 103,                     /* "mset"  */
  YYSYMBOL_MUTABLE = 104,                  /* "mutable"  */
  YYSYMBOL_MUTEX = 105,                    /* "mutex"  */
  YYSYMBOL_N = 106,                        /* "N"  */
  YYSYMBOL_NAMESPACE = 107,                /* "namespace"  */
  YYSYMBOL_NAN = 108,                      /* ".nan"  */
  YYSYMBOL_Nn = 109,                       /* "n32"  */
  YYSYMBOL_NEW = 110,                      /* "new"  */
  YYSYMBOL_NOEXCEPT = 111,                 /* "noexcept"  */
  YYSYMBOL_OBJECT = 112,                   /* "object"  */
  YYSYMBOL_ORDER = 113,                    /* "order"  */
  YYSYMBOL_OUTER = 114,                    /* "outer"  */
  YYSYMBOL_OVERRIDE = 115,                 /* "override"  */
  YYSYMBOL_PERCENT = 116,                  /* "percent"  */
  YYSYMBOL__PHI = 117,                     /* ".phi"  */
  YYSYMBOL__PI = 118,                      /* ".pi"  */
  YYSYMBOL_PRIVATE = 119,                  /* "private"  */
  YYSYMBOL_PUBLIC = 120,                   /* "public"  */
  YYSYMBOL_PURE = 121,                     /* "pure"  */
  YYSYMBOL_Q = 122,                        /* "Q"  */
  YYSYMBOL_QUEUE = 123,                    /* "queue"  */
  YYSYMBOL_R = 124,                        /* "R"  */
  YYSYMBOL_REDUCE = 125,                   /* "reduce"  */
  YYSYMBOL_REGEXP = 126,                   /* "regexp"  */
  YYSYMBOL_RELATION = 127,                 /* "relation"  */
  YYSYMBOL_RETURN = 128,                   /* "return"  */
  YYSYMBOL_RIGHT = 129,                    /* "right"  */
  YYSYMBOL_SELECT = 130,                   /* "select"  */
  YYSYMBOL_SEMAPHORE = 131,                /* "semaphore"  */
  YYSYMBOL_SET = 132,                      /* "set"  */
  YYSYMBOL_SIZEOF = 133,                   /* "sizeof"  */
  YYSYMBOL_STACK = 134,                    /* "stack"  */
  YYSYMBOL_STRING = 135,                   /* "string"  */
  YYSYMBOL_SWITCH = 136,                   /* "switch"  */
  YYSYMBOL_THREAD_LOCAL = 137,             /* "thread_local"  */
  YYSYMBOL_THROW = 138,                    /* "throw"  */
  YYSYMBOL_TIES = 139,                     /* "ties"  */
  YYSYMBOL_TIME = 140,                     /* "time"  */
  YYSYMBOL_TOP = 141,                      /* "top"  */
  YYSYMBOL_TRUE = 142,                     /* "true"  */
  YYSYMBOL_TRY = 143,                      /* "try"  */
  YYSYMBOL_TYPE = 144,                     /* "type"  */
  YYSYMBOL_Un = 145,                       /* "u32"  */
  YYSYMBOL_UNION = 146,                    /* "union"  */
  YYSYMBOL_UPDATE = 147,                   /* "update"  */
  YYSYMBOL_USING = 148,                    /* "using"  */
  YYSYMBOL_VALUES = 149,                   /* "values"  */
  YYSYMBOL_VOID = 150,                     /* "void"  */
  YYSYMBOL_WHERE = 151,                    /* "where"  */
  YYSYMBOL_WHILE = 152,                    /* "while"  */
  YYSYMBOL_WITH = 153,                     /* "with"  */
  YYSYMBOL_Z = 154,                        /* "Z"  */
  YYSYMBOL_Zn = 155,                       /* "z32"  */
  YYSYMBOL_CHAR_LIT = 156,                 /* CHAR_LIT  */
  YYSYMBOL_FLOAT_LIT = 157,                /* FLOAT_LIT  */
  YYSYMBOL_INT_LIT = 158,                  /* INT_LIT  */
  YYSYMBOL_STRING_LIT = 159,               /* STRING_LIT  */
  YYSYMBOL_LSTRING_LIT = 160,              /* LSTRING_LIT  */
  YYSYMBOL_LTSTRING_LIT = 161,             /* LTSTRING_LIT  */
  YYSYMBOL_RE_LIT = 162,                   /* RE_LIT  */
  YYSYMBOL_DATETIME_LIT = 163,             /* DATETIME_LIT  */
  YYSYMBOL_TIME_LIT = 164,                 /* TIME_LIT  */
  YYSYMBOL_NAT_LIT = 165,                  /* NAT_LIT  */
  YYSYMBOL_Q_LIT = 166,                    /* Q_LIT  */
  YYSYMBOL_REAL_LIT = 167,                 /* REAL_LIT  */
  YYSYMBOL_YEARS_LIT = 168,                /* YEARS_LIT  */
  YYSYMBOL_MONS_LIT = 169,                 /* MONS_LIT  */
  YYSYMBOL_DAYS_LIT = 170,                 /* DAYS_LIT  */
  YYSYMBOL_HOURS_LIT = 171,                /* HOURS_LIT  */
  YYSYMBOL_MINS_LIT = 172,                 /* MINS_LIT  */
  YYSYMBOL_SECS_LIT = 173,                 /* SECS_LIT  */
  YYSYMBOL_POST_INC = 174,                 /* POST_INC  */
  YYSYMBOL_POST_DEC = 175,                 /* POST_DEC  */
  YYSYMBOL_CTOR = 176,                     /* CTOR  */
  YYSYMBOL_FCALL = 177,                    /* FCALL  */
  YYSYMBOL_INDEX = 178,                    /* INDEX  */
  YYSYMBOL_179_ = 179,                     /* '.'  */
  YYSYMBOL_ABS = 180,                      /* ABS  */
  YYSYMBOL_FACTORIAL = 181,                /* FACTORIAL  */
  YYSYMBOL_UNI_PLUS = 182,                 /* UNI_PLUS  */
  YYSYMBOL_UNI_MINUS = 183,                /* UNI_MINUS  */
  YYSYMBOL_184_ = 184,                     /* '!'  */
  YYSYMBOL_UNI_TILDA = 185,                /* UNI_TILDA  */
  YYSYMBOL_UNI_ASK = 186,                  /* UNI_ASK  */
  YYSYMBOL_UNI_HAT = 187,                  /* UNI_HAT  */
  YYSYMBOL_188_ = 188,                     /* '*'  */
  YYSYMBOL_189_ = 189,                     /* '/'  */
  YYSYMBOL_190_ = 190,                     /* '+'  */
  YYSYMBOL_191_ = 191,                     /* '-'  */
  YYSYMBOL_192_ = 192,                     /* '<'  */
  YYSYMBOL_193_ = 193,                     /* '>'  */
  YYSYMBOL_194_ = 194,                     /* '&'  */
  YYSYMBOL_195_ = 195,                     /* '^'  */
  YYSYMBOL_196_ = 196,                     /* '|'  */
  YYSYMBOL_197_ = 197,                     /* '?'  */
  YYSYMBOL_198_ = 198,                     /* ':'  */
  YYSYMBOL_199_ = 199,                     /* '='  */
  YYSYMBOL_200_ = 200,                     /* ';'  */
  YYSYMBOL_201_ = 201,                     /* '('  */
  YYSYMBOL_202_ = 202,                     /* ')'  */
  YYSYMBOL_203_ = 203,                     /* ','  */
  YYSYMBOL_204_ = 204,                     /* '{'  */
  YYSYMBOL_205_ = 205,                     /* '}'  */
  YYSYMBOL_206_ = 206,                     /* '~'  */
  YYSYMBOL_207_ = 207,                     /* '%'  */
  YYSYMBOL_208_ = 208,                     /* '['  */
  YYSYMBOL_209_ = 209,                     /* ']'  */
  YYSYMBOL_210_ = 210,                     /* '\''  */
  YYSYMBOL_211_ = 211,                     /* '#'  */
  YYSYMBOL_212_ = 212,                     /* '\\'  */
  YYSYMBOL_YYACCEPT = 213,                 /* $accept  */
  YYSYMBOL_program = 214,                  /* program  */
  YYSYMBOL_imports = 215,                  /* imports  */
  YYSYMBOL_import = 216,                   /* import  */
  YYSYMBOL_statements = 217,               /* statements  */
  YYSYMBOL_statement = 218,                /* statement  */
  YYSYMBOL_using = 219,                    /* using  */
  YYSYMBOL_relationalExpr = 220,           /* relationalExpr  */
  YYSYMBOL_nameList = 221,                 /* nameList  */
  YYSYMBOL_colAssignList = 222,            /* colAssignList  */
  YYSYMBOL_colAssign = 223,                /* colAssign  */
  YYSYMBOL_expList = 224,                  /* expList  */
  YYSYMBOL_return = 225,                   /* return  */
  YYSYMBOL_assert = 226,                   /* assert  */
  YYSYMBOL_if_then_else = 227,             /* if_then_else  */
  YYSYMBOL_switch = 228,                   /* switch  */
  YYSYMBOL_namespace = 229,                /* namespace  */
  YYSYMBOL_block = 230,                    /* block  */
  YYSYMBOL_case = 231,                     /* case  */
  YYSYMBOL_for = 232,                      /* for  */
  YYSYMBOL_opt_for_init = 233,             /* opt_for_init  */
  YYSYMBOL_opt_for_con = 234,              /* opt_for_con  */
  YYSYMBOL_opt_for_inc = 235,              /* opt_for_inc  */
  YYSYMBOL_while = 236,                    /* while  */
  YYSYMBOL_do_while = 237,                 /* do_while  */
  YYSYMBOL_try_catch = 238,                /* try_catch  */
  YYSYMBOL_catches = 239,                  /* catches  */
  YYSYMBOL_exp = 240,                      /* exp  */
  YYSYMBOL_colList = 241,                  /* colList  */
  YYSYMBOL_col = 242,                      /* col  */
  YYSYMBOL_optDistinct = 243,              /* optDistinct  */
  YYSYMBOL_optTop = 244,                   /* optTop  */
  YYSYMBOL_optWhere = 245,                 /* optWhere  */
  YYSYMBOL_optGroupBy = 246,               /* optGroupBy  */
  YYSYMBOL_optHaving = 247,                /* optHaving  */
  YYSYMBOL_lexp = 248,                     /* lexp  */
  YYSYMBOL_exp_list = 249,                 /* exp_list  */
  YYSYMBOL_declaration = 250,              /* declaration  */
  YYSYMBOL_function = 251,                 /* function  */
  YYSYMBOL_params = 252,                   /* params  */
  YYSYMBOL_eleExpr = 253,                  /* eleExpr  */
  YYSYMBOL_optDers = 254,                  /* optDers  */
  YYSYMBOL_op = 255,                       /* op  */
  YYSYMBOL_opt_fun_qual = 256,             /* opt_fun_qual  */
  YYSYMBOL_opt_init = 257,                 /* opt_init  */
  YYSYMBOL_opt_args = 258,                 /* opt_args  */
  YYSYMBOL_args = 259,                     /* args  */
  YYSYMBOL_type_def = 260,                 /* type_def  */
  YYSYMBOL_ptr_ops = 261,                  /* ptr_ops  */
  YYSYMBOL_typeName = 262,                 /* typeName  */
  YYSYMBOL_enum_def = 263,                 /* enum_def  */
  YYSYMBOL_enum_member_list = 264,         /* enum_member_list  */
  YYSYMBOL_zrange = 265,                   /* zrange  */
  YYSYMBOL_rrange = 266,                   /* rrange  */
  YYSYMBOL_nrange = 267,                   /* nrange  */
  YYSYMBOL_qrange = 268,                   /* qrange  */
  YYSYMBOL_numeric_type = 269,             /* numeric_type  */
  YYSYMBOL_base_type = 270,                /* base_type  */
  YYSYMBOL_modifiers = 271,                /* modifiers  */
  YYSYMBOL_userDefinedType = 272,          /* userDefinedType  */
  YYSYMBOL_relation_def = 273,             /* relation_def  */
  YYSYMBOL_extends = 274,                  /* extends  */
  YYSYMBOL_complex_type_def = 275,         /* complex_type_def  */
  YYSYMBOL_declarations = 276,             /* declarations  */
  YYSYMBOL_implements_extends = 277,       /* implements_extends  */
  YYSYMBOL_implements = 278,               /* implements  */
  YYSYMBOL_lambda = 279,                   /* lambda  */
  YYSYMBOL_literal = 280,                  /* literal  */
  YYSYMBOL_nv_list = 281,                  /* nv_list  */
  YYSYMBOL_seq_exp_list = 282,             /* seq_exp_list  */
  YYSYMBOL_tuple_list = 283,               /* tuple_list  */
  YYSYMBOL_tuple = 284,                    /* tuple  */
  YYSYMBOL_rel_op = 285                    /* rel_op  */
};
typedef enum yysymbol_kind_t yysymbol_kind_t;




#ifdef short
# undef short
#endif

/* On compilers that do not define __PTRDIFF_MAX__ etc., make sure
   <limits.h> and (if available) <stdint.h> are included
   so that the code can choose integer types of a good width.  */

#ifndef __PTRDIFF_MAX__
# include <limits.h> /* INFRINGES ON USER NAME SPACE */
# if defined __STDC_VERSION__ && 199901 <= __STDC_VERSION__
#  include <stdint.h> /* INFRINGES ON USER NAME SPACE */
#  define YY_STDINT_H
# endif
#endif

/* Narrow types that promote to a signed type and that can represent a
   signed or unsigned integer of at least N bits.  In tables they can
   save space and decrease cache pressure.  Promoting to a signed type
   helps avoid bugs in integer arithmetic.  */

#ifdef __INT_LEAST8_MAX__
typedef __INT_LEAST8_TYPE__ yytype_int8;
#elif defined YY_STDINT_H
typedef int_least8_t yytype_int8;
#else
typedef signed char yytype_int8;
#endif

#ifdef __INT_LEAST16_MAX__
typedef __INT_LEAST16_TYPE__ yytype_int16;
#elif defined YY_STDINT_H
typedef int_least16_t yytype_int16;
#else
typedef short yytype_int16;
#endif

/* Work around bug in HP-UX 11.23, which defines these macros
   incorrectly for preprocessor constants.  This workaround can likely
   be removed in 2023, as HPE has promised support for HP-UX 11.23
   (aka HP-UX 11i v2) only through the end of 2022; see Table 2 of
   <https://h20195.www2.hpe.com/V2/getpdf.aspx/4AA4-7673ENW.pdf>.  */
#ifdef __hpux
# undef UINT_LEAST8_MAX
# undef UINT_LEAST16_MAX
# define UINT_LEAST8_MAX 255
# define UINT_LEAST16_MAX 65535
#endif

#if defined __UINT_LEAST8_MAX__ && __UINT_LEAST8_MAX__ <= __INT_MAX__
typedef __UINT_LEAST8_TYPE__ yytype_uint8;
#elif (!defined __UINT_LEAST8_MAX__ && defined YY_STDINT_H \
       && UINT_LEAST8_MAX <= INT_MAX)
typedef uint_least8_t yytype_uint8;
#elif !defined __UINT_LEAST8_MAX__ && UCHAR_MAX <= INT_MAX
typedef unsigned char yytype_uint8;
#else
typedef short yytype_uint8;
#endif

#if defined __UINT_LEAST16_MAX__ && __UINT_LEAST16_MAX__ <= __INT_MAX__
typedef __UINT_LEAST16_TYPE__ yytype_uint16;
#elif (!defined __UINT_LEAST16_MAX__ && defined YY_STDINT_H \
       && UINT_LEAST16_MAX <= INT_MAX)
typedef uint_least16_t yytype_uint16;
#elif !defined __UINT_LEAST16_MAX__ && USHRT_MAX <= INT_MAX
typedef unsigned short yytype_uint16;
#else
typedef int yytype_uint16;
#endif

#ifndef YYPTRDIFF_T
# if defined __PTRDIFF_TYPE__ && defined __PTRDIFF_MAX__
#  define YYPTRDIFF_T __PTRDIFF_TYPE__
#  define YYPTRDIFF_MAXIMUM __PTRDIFF_MAX__
# elif defined PTRDIFF_MAX
#  ifndef ptrdiff_t
#   include <stddef.h> /* INFRINGES ON USER NAME SPACE */
#  endif
#  define YYPTRDIFF_T ptrdiff_t
#  define YYPTRDIFF_MAXIMUM PTRDIFF_MAX
# else
#  define YYPTRDIFF_T long
#  define YYPTRDIFF_MAXIMUM LONG_MAX
# endif
#endif

#ifndef YYSIZE_T
# ifdef __SIZE_TYPE__
#  define YYSIZE_T __SIZE_TYPE__
# elif defined size_t
#  define YYSIZE_T size_t
# elif defined __STDC_VERSION__ && 199901 <= __STDC_VERSION__
#  include <stddef.h> /* INFRINGES ON USER NAME SPACE */
#  define YYSIZE_T size_t
# else
#  define YYSIZE_T unsigned
# endif
#endif

#define YYSIZE_MAXIMUM                                  \
  YY_CAST (YYPTRDIFF_T,                                 \
           (YYPTRDIFF_MAXIMUM < YY_CAST (YYSIZE_T, -1)  \
            ? YYPTRDIFF_MAXIMUM                         \
            : YY_CAST (YYSIZE_T, -1)))

#define YYSIZEOF(X) YY_CAST (YYPTRDIFF_T, sizeof (X))


/* Stored state numbers (used for stacks). */
typedef yytype_int16 yy_state_t;

/* State numbers in computations.  */
typedef int yy_state_fast_t;

#ifndef YY_
# if defined YYENABLE_NLS && YYENABLE_NLS
#  if ENABLE_NLS
#   include <libintl.h> /* INFRINGES ON USER NAME SPACE */
#   define YY_(Msgid) dgettext ("bison-runtime", Msgid)
#  endif
# endif
# ifndef YY_
#  define YY_(Msgid) Msgid
# endif
#endif


#ifndef YY_ATTRIBUTE_PURE
# if defined __GNUC__ && 2 < __GNUC__ + (96 <= __GNUC_MINOR__)
#  define YY_ATTRIBUTE_PURE __attribute__ ((__pure__))
# else
#  define YY_ATTRIBUTE_PURE
# endif
#endif

#ifndef YY_ATTRIBUTE_UNUSED
# if defined __GNUC__ && 2 < __GNUC__ + (7 <= __GNUC_MINOR__)
#  define YY_ATTRIBUTE_UNUSED __attribute__ ((__unused__))
# else
#  define YY_ATTRIBUTE_UNUSED
# endif
#endif

/* Suppress unused-variable warnings by "using" E.  */
#if ! defined lint || defined __GNUC__
# define YY_USE(E) ((void) (E))
#else
# define YY_USE(E) /* empty */
#endif

/* Suppress an incorrect diagnostic about yylval being uninitialized.  */
#if defined __GNUC__ && ! defined __ICC && 406 <= __GNUC__ * 100 + __GNUC_MINOR__
# if __GNUC__ * 100 + __GNUC_MINOR__ < 407
#  define YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN                           \
    _Pragma ("GCC diagnostic push")                                     \
    _Pragma ("GCC diagnostic ignored \"-Wuninitialized\"")
# else
#  define YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN                           \
    _Pragma ("GCC diagnostic push")                                     \
    _Pragma ("GCC diagnostic ignored \"-Wuninitialized\"")              \
    _Pragma ("GCC diagnostic ignored \"-Wmaybe-uninitialized\"")
# endif
# define YY_IGNORE_MAYBE_UNINITIALIZED_END      \
    _Pragma ("GCC diagnostic pop")
#else
# define YY_INITIAL_VALUE(Value) Value
#endif
#ifndef YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN
# define YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN
# define YY_IGNORE_MAYBE_UNINITIALIZED_END
#endif
#ifndef YY_INITIAL_VALUE
# define YY_INITIAL_VALUE(Value) /* Nothing. */
#endif

#if defined __cplusplus && defined __GNUC__ && ! defined __ICC && 6 <= __GNUC__
# define YY_IGNORE_USELESS_CAST_BEGIN                          \
    _Pragma ("GCC diagnostic push")                            \
    _Pragma ("GCC diagnostic ignored \"-Wuseless-cast\"")
# define YY_IGNORE_USELESS_CAST_END            \
    _Pragma ("GCC diagnostic pop")
#endif
#ifndef YY_IGNORE_USELESS_CAST_BEGIN
# define YY_IGNORE_USELESS_CAST_BEGIN
# define YY_IGNORE_USELESS_CAST_END
#endif


#define YY_ASSERT(E) ((void) (0 && (E)))

#if !defined yyoverflow

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
#    if ! defined _ALLOCA_H && ! defined EXIT_SUCCESS
#     include <stdlib.h> /* INFRINGES ON USER NAME SPACE */
      /* Use EXIT_SUCCESS as a witness for stdlib.h.  */
#     ifndef EXIT_SUCCESS
#      define EXIT_SUCCESS 0
#     endif
#    endif
#   endif
#  endif
# endif

# ifdef YYSTACK_ALLOC
   /* Pacify GCC's 'empty if-body' warning.  */
#  define YYSTACK_FREE(Ptr) do { /* empty */; } while (0)
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
#  if (defined __cplusplus && ! defined EXIT_SUCCESS \
       && ! ((defined YYMALLOC || defined malloc) \
             && (defined YYFREE || defined free)))
#   include <stdlib.h> /* INFRINGES ON USER NAME SPACE */
#   ifndef EXIT_SUCCESS
#    define EXIT_SUCCESS 0
#   endif
#  endif
#  ifndef YYMALLOC
#   define YYMALLOC malloc
#   if ! defined malloc && ! defined EXIT_SUCCESS
void *malloc (YYSIZE_T); /* INFRINGES ON USER NAME SPACE */
#   endif
#  endif
#  ifndef YYFREE
#   define YYFREE free
#   if ! defined free && ! defined EXIT_SUCCESS
void free (void *); /* INFRINGES ON USER NAME SPACE */
#   endif
#  endif
# endif
#endif /* !defined yyoverflow */

#if (! defined yyoverflow \
     && (! defined __cplusplus \
         || (defined YYSTYPE_IS_TRIVIAL && YYSTYPE_IS_TRIVIAL)))

/* A type that is properly aligned for any stack member.  */
union yyalloc
{
  yy_state_t yyss_alloc;
  YYSTYPE yyvs_alloc;
};

/* The size of the maximum gap between one aligned stack and the next.  */
# define YYSTACK_GAP_MAXIMUM (YYSIZEOF (union yyalloc) - 1)

/* The size of an array large to enough to hold all stacks, each with
   N elements.  */
# define YYSTACK_BYTES(N) \
     ((N) * (YYSIZEOF (yy_state_t) + YYSIZEOF (YYSTYPE)) \
      + YYSTACK_GAP_MAXIMUM)

# define YYCOPY_NEEDED 1

/* Relocate STACK from its old location to the new one.  The
   local variables YYSIZE and YYSTACKSIZE give the old and new number of
   elements in the stack, and YYPTR gives the new location of the
   stack.  Advance YYPTR to a properly aligned location for the next
   stack.  */
# define YYSTACK_RELOCATE(Stack_alloc, Stack)                           \
    do                                                                  \
      {                                                                 \
        YYPTRDIFF_T yynewbytes;                                         \
        YYCOPY (&yyptr->Stack_alloc, Stack, yysize);                    \
        Stack = &yyptr->Stack_alloc;                                    \
        yynewbytes = yystacksize * YYSIZEOF (*Stack) + YYSTACK_GAP_MAXIMUM; \
        yyptr += yynewbytes / YYSIZEOF (*yyptr);                        \
      }                                                                 \
    while (0)

#endif

#if defined YYCOPY_NEEDED && YYCOPY_NEEDED
/* Copy COUNT objects from SRC to DST.  The source and destination do
   not overlap.  */
# ifndef YYCOPY
#  if defined __GNUC__ && 1 < __GNUC__
#   define YYCOPY(Dst, Src, Count) \
      __builtin_memcpy (Dst, Src, YY_CAST (YYSIZE_T, (Count)) * sizeof (*(Src)))
#  else
#   define YYCOPY(Dst, Src, Count)              \
      do                                        \
        {                                       \
          YYPTRDIFF_T yyi;                      \
          for (yyi = 0; yyi < (Count); yyi++)   \
            (Dst)[yyi] = (Src)[yyi];            \
        }                                       \
      while (0)
#  endif
# endif
#endif /* !YYCOPY_NEEDED */

/* YYFINAL -- State number of the termination state.  */
#define YYFINAL  250
/* YYLAST -- Last index in YYTABLE.  */
#define YYLAST   7180

/* YYNTOKENS -- Number of terminals.  */
#define YYNTOKENS  213
/* YYNNTS -- Number of nonterminals.  */
#define YYNNTS  73
/* YYNRULES -- Number of rules.  */
#define YYNRULES  360
/* YYNSTATES -- Number of states.  */
#define YYNSTATES  697

/* YYMAXUTOK -- Last valid token kind.  */
#define YYMAXUTOK   440


/* YYTRANSLATE(TOKEN-NUM) -- Symbol number corresponding to TOKEN-NUM
   as returned by yylex, with out-of-bounds checking.  */
#define YYTRANSLATE(YYX)                                \
  (0 <= (YYX) && (YYX) <= YYMAXUTOK                     \
   ? YY_CAST (yysymbol_kind_t, yytranslate[YYX])        \
   : YYSYMBOL_YYUNDEF)

/* YYTRANSLATE[TOKEN-NUM] -- Symbol number corresponding to TOKEN-NUM
   as returned by yylex.  */
static const yytype_uint8 yytranslate[] =
{
       0,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,   184,     2,   211,     2,   207,   194,   210,
     201,   202,   188,   190,   203,   191,   179,   189,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,   198,   200,
     192,   199,   193,   197,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,   208,   212,   209,   195,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,   204,   196,   205,   206,     2,     2,     2,
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
      45,    46,    47,    48,    49,    50,    51,    52,    53,    54,
      55,    56,    57,    58,    59,    60,    61,    62,    63,    64,
      65,    66,    67,    68,    69,    70,    71,    72,    73,    74,
      75,    76,    77,    78,    79,    80,    81,    82,    83,    84,
      85,    86,    87,    88,    89,    90,    91,    92,    93,    94,
      95,    96,    97,    98,    99,   100,   101,   102,   103,   104,
     105,   106,   107,   108,   109,   110,   111,   112,   113,   114,
     115,   116,   117,   118,   119,   120,   121,   122,   123,   124,
     125,   126,   127,   128,   129,   130,   131,   132,   133,   134,
     135,   136,   137,   138,   139,   140,   141,   142,   143,   144,
     145,   146,   147,   148,   149,   150,   151,   152,   153,   154,
     155,   156,   157,   158,   159,   160,   161,   162,   163,   164,
     165,   166,   167,   168,   169,   170,   171,   172,   173,   174,
     175,   176,   177,   178,   180,   181,   182,   183,   185,   186,
     187
};

#if YYDEBUG
/* YYRLINE[YYN] -- Source line where rule number YYN was defined.  */
static const yytype_int16 yyrline[] =
{
       0,   240,   240,   241,   244,   245,   249,   253,   254,   255,
     256,   260,   261,   262,   263,   264,   265,   266,   267,   268,
     269,   270,   271,   272,   273,   274,   275,   276,   277,   278,
     279,   283,   287,   288,   289,   293,   294,   298,   299,   303,
     307,   308,   312,   313,   314,   315,   319,   320,   324,   325,
     329,   333,   337,   338,   342,   343,   344,   345,   346,   347,
     351,   355,   356,   360,   361,   365,   366,   370,   374,   378,
     382,   383,   387,   388,   389,   390,   391,   392,   393,   394,
     395,   397,   398,   399,   401,   402,   403,   404,   405,   406,
     407,   408,   409,   410,   411,   413,   414,   415,   416,   417,
     418,   419,   420,   421,   422,   423,   424,   425,   426,   427,
     428,   429,   430,   432,   433,   434,   435,   436,   437,   438,
     439,   440,   441,   442,   443,   444,   445,   446,   447,   448,
     449,   450,   451,   452,   453,   455,   456,   458,   459,   460,
     461,   462,   463,   464,   465,   466,   467,   468,   469,   470,
     471,   472,   473,   474,   475,   477,   478,   479,   480,   481,
     482,   483,   484,   485,   489,   490,   494,   495,   496,   500,
     501,   505,   506,   507,   508,   509,   513,   514,   518,   519,
     523,   524,   528,   529,   530,   531,   535,   536,   541,   542,
     543,   544,   545,   549,   553,   554,   558,   559,   560,   561,
     562,   566,   567,   568,   572,   573,   574,   575,   579,   580,
     581,   582,   586,   587,   588,   592,   593,   597,   598,   602,
     603,   607,   608,   609,   610,   614,   615,   616,   617,   618,
     619,   620,   621,   622,   623,   624,   625,   626,   627,   628,
     629,   630,   631,   632,   633,   634,   635,   636,   637,   638,
     639,   640,   641,   642,   643,   644,   645,   646,   647,   648,
     649,   650,   651,   652,   653,   654,   655,   659,   663,   664,
     668,   669,   673,   677,   678,   679,   680,   684,   688,   692,
     693,   694,   695,   696,   697,   701,   714,   715,   716,   717,
     718,   719,   720,   721,   725,   726,   727,   728,   729,   730,
     731,   732,   736,   737,   741,   742,   743,   747,   751,   752,
     753,   757,   758,   759,   760,   764,   765,   769,   773,   774,
     775,   776,   777,   778,   779,   780,   781,   782,   783,   784,
     785,   786,   787,   788,   789,   790,   791,   792,   793,   794,
     795,   796,   797,   798,   799,   800,   801,   802,   803,   807,
     808,   809,   813,   814,   818,   819,   823,   827,   828,   829,
     830
};
#endif

/** Accessing symbol of state STATE.  */
#define YY_ACCESSING_SYMBOL(State) YY_CAST (yysymbol_kind_t, yystos[State])

#if YYDEBUG || 0
/* The user-facing name of the symbol whose (internal) number is
   YYSYMBOL.  No bounds checking.  */
static const char *yysymbol_name (yysymbol_kind_t yysymbol) YY_ATTRIBUTE_UNUSED;

/* YYTNAME[SYMBOL-NUM] -- String name of the symbol SYMBOL-NUM.
   First, the terminals, then, starting at YYNTOKENS, nonterminals.  */
static const char *const yytname[] =
{
  "\"end of file\"", "error", "\"invalid token\"", "\"+=\"", "\"&&\"",
  "\"&=\"", "\"[*]=\"", "\"[*]\"", "\"--\"", "\"/=\"", "\".*\"", "\"..\"",
  "\"[.]\"", "\"[.]=\"", "\"==\"", "\"**\"", "\"**=\"", "\">=\"", "\"++\"",
  "\":=\"", "\"<=\"", "\"[/]=\"", "\"[/]\"", "\"[**]=\"", "\"[**]\"",
  "\"%=\"", "\"->*\"", "\"*=\"", "\"!=\"", "\"||\"", "\"|=\"", "\"->\"",
  "\"<<\"", "\"<<=\"", "\">>\"", "\">>=\"", "\"<=>\"", "\"-=\"", "\"~=\"",
  "\"^=\"", "\"alignas\"", "\"alignof\"", "\"apply\"", "\"as\"",
  "\"assert\"", "\"async\"", "\"atomic\"", "\"auto\"", "\"bool\"",
  "\"break\"", "\"by\"", "\"C\"", "\"case\"", "\"catch\"", "\"char\"",
  "\"class\"", "\"closure\"", "\"const\"", "\"co_return\"", "\"continue\"",
  "\"co_await\"", "\"co_yield\"", "\"date\"", "\"datetime\"",
  "\"default\"", "\"delete\"", "\"distinct\"", "\"do\"", "\".e\"",
  "\"else\"", "\"enum\"", "\"eval\"", "\"extend\"", "\"false\"",
  "\"filter\"", "\"final\"", "\"floatn\"", "\"for\"", "\"from\"",
  "\".gamma\"", "\"graph\"", "\"group\"", "\"having\"", "\"heap\"",
  "\".i\"", "\".inf\"", "\"i32\"", "\"ID\"", "\"if\"", "\"implement\"",
  "\"import\"", "\"in\"", "\"insert\"", "\"into\"", "\"interface\"",
  "\"is_void\"", "\"join\"", "\"left\"", "\"list\"", "\"lstring\"",
  "\"ltstring\"", "\"map\"", "\"mmap\"", "\"mset\"", "\"mutable\"",
  "\"mutex\"", "\"N\"", "\"namespace\"", "\".nan\"", "\"n32\"", "\"new\"",
  "\"noexcept\"", "\"object\"", "\"order\"", "\"outer\"", "\"override\"",
  "\"percent\"", "\".phi\"", "\".pi\"", "\"private\"", "\"public\"",
  "\"pure\"", "\"Q\"", "\"queue\"", "\"R\"", "\"reduce\"", "\"regexp\"",
  "\"relation\"", "\"return\"", "\"right\"", "\"select\"", "\"semaphore\"",
  "\"set\"", "\"sizeof\"", "\"stack\"", "\"string\"", "\"switch\"",
  "\"thread_local\"", "\"throw\"", "\"ties\"", "\"time\"", "\"top\"",
  "\"true\"", "\"try\"", "\"type\"", "\"u32\"", "\"union\"", "\"update\"",
  "\"using\"", "\"values\"", "\"void\"", "\"where\"", "\"while\"",
  "\"with\"", "\"Z\"", "\"z32\"", "CHAR_LIT", "FLOAT_LIT", "INT_LIT",
  "STRING_LIT", "LSTRING_LIT", "LTSTRING_LIT", "RE_LIT", "DATETIME_LIT",
  "TIME_LIT", "NAT_LIT", "Q_LIT", "REAL_LIT", "YEARS_LIT", "MONS_LIT",
  "DAYS_LIT", "HOURS_LIT", "MINS_LIT", "SECS_LIT", "POST_INC", "POST_DEC",
  "CTOR", "FCALL", "INDEX", "'.'", "ABS", "FACTORIAL", "UNI_PLUS",
  "UNI_MINUS", "'!'", "UNI_TILDA", "UNI_ASK", "UNI_HAT", "'*'", "'/'",
  "'+'", "'-'", "'<'", "'>'", "'&'", "'^'", "'|'", "'?'", "':'", "'='",
  "';'", "'('", "')'", "','", "'{'", "'}'", "'~'", "'%'", "'['", "']'",
  "'\\''", "'#'", "'\\\\'", "$accept", "program", "imports", "import",
  "statements", "statement", "using", "relationalExpr", "nameList",
  "colAssignList", "colAssign", "expList", "return", "assert",
  "if_then_else", "switch", "namespace", "block", "case", "for",
  "opt_for_init", "opt_for_con", "opt_for_inc", "while", "do_while",
  "try_catch", "catches", "exp", "colList", "col", "optDistinct", "optTop",
  "optWhere", "optGroupBy", "optHaving", "lexp", "exp_list", "declaration",
  "function", "params", "eleExpr", "optDers", "op", "opt_fun_qual",
  "opt_init", "opt_args", "args", "type_def", "ptr_ops", "typeName",
  "enum_def", "enum_member_list", "zrange", "rrange", "nrange", "qrange",
  "numeric_type", "base_type", "modifiers", "userDefinedType",
  "relation_def", "extends", "complex_type_def", "declarations",
  "implements_extends", "implements", "lambda", "literal", "nv_list",
  "seq_exp_list", "tuple_list", "tuple", "rel_op", YY_NULLPTR
};

static const char *
yysymbol_name (yysymbol_kind_t yysymbol)
{
  return yytname[yysymbol];
}
#endif

#define YYPACT_NINF (-526)

#define yypact_value_is_default(Yyn) \
  ((Yyn) == YYPACT_NINF)

#define YYTABLE_NINF (-183)

#define yytable_value_is_error(Yyn) \
  ((Yyn) == YYTABLE_NINF)

/* YYPACT[STATE-NUM] -- Index in YYTABLE of the portion describing
   STATE-NUM.  */
static const yytype_int16 yypact[] =
{
    1226,  3602,  3602,  3602,  3602,  3602,  -156,  3602,  -140,  -526,
    -526,   -55,  -125,  3602,  -526,   -12,  3602,  -526,  3602,   -50,
    3602,  3602,  -526,  -526,  -122,  2747,  2071,  -526,    15,  3602,
    -526,  3602,  -526,  -117,  -526,  -526,   -45,  -526,  -526,  -526,
    6210,   -42,   -31,    98,   -12,  3602,     3,  -526,  -526,    19,
      45,    53,  -526,  -526,    56,   136,  -526,  -526,  3602,  -526,
    2578,  -526,  -526,  -526,  -526,  -526,    62,    65,  -147,  3602,
    -526,   -51,  3602,   174,  -526,    71,  3602,    88,  -526,    90,
    -526,  3602,  -526,  -526,  2071,   224,  -526,   -12,   227,   231,
    -526,   119,   145,  -526,  -526,  -526,  -526,  -526,  -526,  -526,
    -526,  -526,  -526,  -526,  -526,  -526,  -526,  -526,  -526,  -526,
    -526,  -526,  3602,  3602,  3602,  3602,  3602,  3602,  -526,  1395,
    3602,  -526,   141,   343,  1226,  -526,  2240,  -526,  -526,  -526,
     144,  -526,  -526,  -526,  -526,  -526,  -526,  -526,  -526,  -526,
    -526,  4252,   364,   147,  -526,   167,  7025,  -526,  -526,  -526,
    3602,  6346,  2916,  5600,  -135,  5600,   -35,   -35,   828,  3602,
     -35,  2409,   149,  -526,   310,  -526,  3974,   264,   265,  -526,
     -58,   -35,  5245,   153,  -526,  5600,   -35,  6508,   267,  5600,
     204,   155,   -35,   828,  7025,  7025,  2071,  3602,  3602,  -526,
     273,  -526,   -35,  7025,  7025,  7025,  7025,   205,  -526,   -36,
    5600,  -526,  -526,  -526,  -526,  6677,  3602,   310,  -526,  7025,
     197,   198,  -526,   828,   264,  6920,  -526,  5245,  -526,   225,
    7025,  5600,  7025,  3602,   -35,   319,   180,  -526,   249,   183,
    3602,   226,  -526,  5600,  5600,   687,  5600,  5600,  5600,  5353,
    3602,  1564,  4005,   -34,   -15,    41,  -526,  5600,  3085,  7025,
    -526,  -526,  2240,  6309,  -526,  -526,  3602,  3602,  -526,  3602,
    3602,  3602,  3602,  3602,  -526,  3602,  3602,  3602,  3602,  3602,
    3602,  3602,  3602,  3602,  3602,  3602,  3602,   290,   292,   294,
    3602,  -526,  3602,  3602,  3602,  3602,  3602,  3602,  3602,  3602,
    3602,  3602,  -526,  3602,  3259,  3602,  3602,  3602,  3602,  3602,
    3602,  3602,  3602,  3602,  3602,  3602,  3602,  3602,  3602,  3602,
    3602,  3602,   313,  3602,  3602,  -526,  -526,  7025,  -526,  -526,
    3602,  -526,  3602,  -526,   -13,  -139,  4365,  3602,  3602,  3602,
    3602,  3602,  3602,  3602,  3602,  3259,   -35,  4113,  1733,  -526,
    -526,  -526,  -526,  -526,  -526,  -526,   213,  3602,  6508,  -526,
     207,  -526,   209,   264,   265,  6920,  -526,  -526,   263,   214,
     334,  -526,   -35,   222,  -102,   -53,  -104,  -526,  5245,   -67,
    4473,   232,  -100,  -112,   -98,   -69,   230,  -140,  2409,  -526,
     -35,   -35,   229,   -29,   239,   241,   -35,    23,  -526,   233,
    -526,     6,  1056,  3602,  3771,   -23,    28,  4504,  2071,   372,
    7025,   341,  7025,  4612,   247,  3602,  4365,   -73,  -526,  3602,
    3602,  -526,  3602,  -526,   243,  -526,  -526,  5245,   -22,  -526,
    2071,   329,  1055,  5981,  1055,   420,  5981,    12,    12,  1055,
    5981,  5981,   420,   -64,  5461,  6095,  6095,  6113,   -35,   467,
    3602,  3602,  3602,  5461,  1055,  1055,  6069,  6069,    12,    12,
     427,   401,    34,  4720,  5245,  3602,     7,   -35,   -35,   -35,
     -35,   -35,   -35,   -35,   -35,   -35,   -35,   -35,   -35,   -35,
     -35,   -35,   -35,   -35,  -526,   -35,  1034,   244,    31,   -11,
    7025,  -526,  -526,  -526,  -526,  7025,  -526,  -526,  -526,  -526,
    -526,  5708,  5739,  5847,  5955,    34,  -526,   300,  -526,  -526,
    4751,  -526,   366,   373,   207,   209,  6369,  3602,  3602,  -151,
      48,  3602,   -41,  7025,   269,  -526,  -526,  2071,   375,  -526,
    7025,  7025,  -526,  -526,   310,  -526,   284,   296,  6920,  7025,
    -526,  -526,  4221,  3602,  4859,   -49,  -526,  -526,  -526,   -36,
    -526,  2071,  -138,   270,  -115,  -526,   -68,  2071,   308,  -526,
    5492,  5245,  4967,  -526,  2071,  7025,  -526,   467,   467,   467,
    3602,   -10,  3428,  -526,  -526,  -526,  -526,   -28,   272,   -28,
     268,  6508,  -526,  -526,  -526,  4998,  5106,  3602,  2409,  -526,
     389,  -526,   277,  5245,   275,  -526,    87,   -52,  3602,   409,
    -526,   120,    35,    42,   286,  -103,   -75,  6810,   -48,   327,
     344,   395,   375,  3771,  -526,  -526,  3602,  3602,   341,  -526,
    -526,   293,  3602,  -526,  -526,   -35,  -526,  -526,    -6,  -526,
    -526,  -526,  -151,  -151,  -526,  -526,  -526,  -526,  5245,  1902,
    4252,   112,  -151,  3602,  -526,   278,   -41,   -41,  -526,  5245,
    2071,   340,   403,  -526,  -526,  -526,  -526,  -526,  -526,  -526,
    -526,  -526,   352,  -526,  -526,  -108,  -526,  5245,  5214,  -526,
    -526,  5492,  -526,  -526,  -526,  -526,  -526,  -526,   295,  5245,
    -526,   304,  -526,  -526,   298,  -526,  -526,  3602,   419,  -526,
    2071,  3602,  5245,   452,   423,  -526,   122,  5245,  3602,  3602,
    -526,   309,  3602,  5245,  5245,  -526,  5245
};

/* YYDEFACT[STATE-NUM] -- Default reduction number in state STATE-NUM.
   Performed when YYTABLE does not specify something else to do.  Zero
   means the default is an error.  */
static const yytype_int16 yydefact[] =
{
       0,     0,     0,     0,     0,     0,     0,     0,   286,   261,
     254,     0,   233,     0,   255,   292,     0,   288,    44,     0,
       0,     0,   236,   237,     0,     0,     0,   343,     0,     0,
     323,     0,   235,     0,   344,   260,     0,   346,   347,   239,
      72,     0,     0,     0,     0,     0,     0,   257,   258,     0,
       0,     0,   289,   264,   227,     0,   348,   241,     0,   253,
       0,   345,   342,   291,   290,   293,   229,     0,   231,     0,
     259,     0,    42,   169,   265,     0,     0,     0,   256,     0,
     287,     0,   238,   322,     0,     0,   242,     0,     0,     0,
     252,     0,   225,   240,   331,   326,   318,   327,   328,   329,
     330,   324,   325,   319,   320,   321,   332,   333,   334,   335,
     336,   337,     0,     0,     0,     0,     0,     0,    11,   349,
       0,   352,     0,     0,     0,     5,     3,     7,    30,    29,
       0,    28,    26,    19,    17,    13,    20,    16,    18,    25,
      27,     0,     0,     0,   192,     0,     0,   191,   161,   162,
       0,    72,   349,    80,     0,    79,   140,   139,     0,     0,
     154,     0,     0,    21,     0,   234,     0,   304,     0,   295,
       0,   145,    45,     0,    23,   152,   153,    56,     0,   143,
       0,     0,   151,     0,    61,     0,     0,     0,     0,     6,
       0,   297,   141,     0,     0,     0,     0,     0,   228,     0,
     142,   357,   358,   360,   359,   150,     0,     0,   230,     0,
       0,     0,   232,     0,   304,   308,   296,    43,   170,   171,
       0,   138,     0,     0,   137,     0,     0,   294,     0,     0,
       0,     0,   226,    73,    77,   185,    75,    76,    78,     0,
     349,     0,   187,     0,     0,     0,   355,    74,     0,     0,
       1,     4,     2,    72,     9,    14,     0,     0,    83,     0,
       0,     0,     0,     0,    82,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,    81,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,    15,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,    12,   298,     0,   301,   299,
       0,   300,     0,   266,     0,   219,   187,    83,    82,    81,
       0,     0,     0,     0,     0,   352,   144,     0,     0,    22,
     279,   284,   282,   281,   283,   280,     0,     0,    54,   306,
     314,   316,   313,   304,     0,   308,    24,    59,     0,     0,
       0,   262,   146,     0,     0,     0,     0,     8,   187,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,    51,
     148,   149,     0,     0,     0,     0,   147,     0,   286,     0,
     310,     0,     0,     0,     0,     0,     0,     0,     0,    69,
       0,     0,     0,     0,     0,   136,     0,     0,    52,     0,
       0,   339,     0,   340,     0,   341,   338,   353,     0,   218,
       0,   122,   127,   114,   126,   120,   113,   118,   117,   128,
     129,   116,   121,   123,   115,   124,   125,   119,   134,   130,
       0,     0,     0,    89,    87,    88,    84,    85,    90,    91,
      94,    93,    92,     0,    86,     0,     0,    97,   104,   110,
     102,   109,   103,    96,   111,   112,   100,   101,   105,   107,
     108,    98,    99,   106,   184,    95,     0,   263,     0,     0,
     215,   204,   207,   205,   206,   215,   221,   222,   224,   223,
     220,    77,    75,    76,    78,    92,    46,     0,    53,   285,
       0,    57,     0,     0,   312,   311,     0,     0,     0,   270,
       0,    63,     0,     0,   195,   247,   160,     0,     0,   248,
       0,     0,   244,   277,     0,   249,     0,     0,   308,     0,
     302,   309,   172,   166,   167,     0,   165,   243,   250,     0,
      70,     0,   190,     0,     0,    38,     0,     0,     0,   356,
     350,   186,     0,   354,     0,     0,    10,   131,   133,   132,
       0,     0,     0,   155,   183,   159,   251,   208,   216,   208,
       0,    55,   305,   315,   307,     0,     0,     0,     0,   268,
       0,   267,     0,    64,   201,   197,   193,     0,     0,    48,
      36,     0,     0,     0,     0,     0,     0,     0,     0,   173,
       0,     0,     0,     0,    50,    71,     0,     0,     0,    31,
      67,     0,     0,   317,   217,   135,   158,   157,     0,   210,
     211,   209,   270,   270,    47,    58,    32,    68,   212,     0,
     187,     0,   270,    65,   203,   196,     0,     0,   194,    62,
       0,     0,     0,   245,   246,   278,   276,   275,   274,   273,
     303,   195,     0,   174,   168,   176,   164,    39,     0,    37,
     272,   351,   156,   188,   189,   214,   213,   269,     0,    66,
     202,   199,   198,    49,     0,    35,   175,     0,   178,    34,
       0,     0,   177,     0,   180,    60,     0,    41,     0,     0,
     163,     0,     0,   179,   181,    33,    40
};

/* YYPGOTO[NTERM-NUM].  */
static const yytype_int16 yypgoto[] =
{
    -526,  -526,  -526,   384,     5,    -3,  -526,  -526,   -90,  -526,
     -95,  -526,  -526,  -526,  -526,  -526,  -526,  -191,  -526,  -526,
    -526,  -526,  -526,  -526,  -526,  -526,  -526,    -1,  -526,   -87,
    -526,  -526,  -526,  -526,  -526,  -106,  -105,  -190,  -526,  -526,
    -296,  -526,  -526,   -47,  -525,    36,   271,  -137,  -526,   252,
    -526,  -526,  -526,  -526,  -526,  -526,  -185,  -526,  -526,  -526,
    -526,  -201,    -2,  -344,  -526,   165,  -526,  -526,   283,  -526,
    -526,   111,  -526
};

/* YYDEFGOTO[NTERM-NUM].  */
static const yytype_int16 yydefgoto[] =
{
       0,   123,   124,   125,   241,   127,   128,   129,   591,   544,
     545,   686,   130,   131,   132,   133,   134,   135,   136,   137,
     363,   582,   668,   138,   139,   140,   399,   141,   535,   536,
     219,   394,   678,   684,   690,   142,   243,   143,   144,   364,
     586,   635,   485,   622,   579,   567,   568,   419,   490,   154,
     361,   510,   232,   212,   198,   208,   346,   165,   146,   147,
     216,   350,   169,   392,   170,   352,   148,   149,   244,   248,
     245,   246,   206
};

/* YYTABLE[YYPACT[STATE-NUM]] -- What to do in state STATE-NUM.  If
   positive, shift that token.  If negative, reduce the rule whose
   number is the opposite.  If YYTABLE_NINF, syntax error.  */
static const yytype_int16 yytable[] =
{
     153,   155,   156,   157,   158,   126,   160,   235,   379,   324,
     377,   506,   166,   387,   353,   171,   256,   172,   562,   175,
     176,   214,   382,   180,   179,   390,   261,   275,   182,   602,
     183,   354,   162,   277,   514,   638,   607,   173,   256,   651,
     269,   270,   191,   677,   192,   159,   584,   619,   577,   486,
     278,   317,   317,   578,   210,   317,   487,   200,   488,   205,
     167,   211,   277,   270,   161,   279,   320,   164,   213,   322,
     322,   217,   489,   322,   480,   221,   177,   168,   317,   278,
     224,   225,   369,   620,   184,   227,   317,   621,   608,   515,
     317,   520,   317,   519,   279,   642,   322,   663,   664,   646,
     512,   513,   181,   275,   322,   521,   647,   667,   322,   277,
     322,   233,   234,   236,   237,   238,   239,   585,   242,   247,
     549,   317,   317,   254,   522,   275,   278,   648,   189,   252,
     412,   277,   609,   291,   649,   516,   410,   317,   317,   322,
     322,   279,   317,   293,   294,   163,   355,   185,   278,   179,
     174,   326,   504,   215,   603,   322,   322,   336,   337,   188,
     322,   317,   291,   279,   525,   390,   338,   317,   378,   410,
     537,   411,   293,   294,   357,   481,   482,   483,   484,   322,
     554,   555,   362,   367,   597,   322,   368,   370,   412,   456,
     413,   190,   410,   410,   316,   193,   317,   410,   566,   616,
     318,   319,   531,   662,   380,   381,   288,   289,   290,   291,
     410,   194,   386,   321,   322,   478,   563,   479,   317,   293,
     294,   538,   397,   199,   235,   317,   502,   528,   643,   403,
     456,   291,   317,   565,   410,   644,   322,   195,   254,   406,
     218,   293,   294,   322,   414,   196,   415,   417,   197,   254,
     322,   580,   145,   581,   207,   421,   422,   209,   423,   424,
     425,   426,   427,   220,   428,   429,   430,   431,   432,   433,
     434,   435,   436,   437,   438,   439,   636,   637,   145,   443,
     222,   444,   445,   446,   447,   448,   449,   450,   451,   452,
     453,   223,   454,   368,   457,   458,   459,   460,   461,   462,
     463,   464,   465,   466,   467,   468,   469,   470,   471,   472,
     473,   226,   475,   476,   228,   410,   531,   666,   229,   368,
     230,   368,   641,   642,   691,   692,   153,   155,   233,   491,
     492,   493,   494,   495,   368,   254,   145,   231,   390,   594,
     671,   672,   249,   250,   255,   501,   500,   315,   604,   339,
     561,   349,   351,   356,   358,   316,   359,   317,   270,   360,
     371,   318,   319,   376,   384,   385,   393,   295,   320,   296,
     297,   145,   398,   298,   321,   322,   145,   299,   145,   400,
     300,   401,   402,   301,   404,   302,   440,   303,   441,   304,
     442,   305,   532,   534,   306,   540,   340,   307,   325,   308,
     474,   309,   310,   311,   452,   256,   499,   531,   550,   551,
     502,   552,   503,   145,   507,   508,   341,   556,   614,   342,
     275,   509,   511,   523,   256,   541,   277,   235,   543,   145,
     270,   256,   524,   518,   529,   240,   365,   366,   145,   557,
     558,   559,   526,   278,   527,   372,   373,   374,   375,   270,
     548,   595,   322,   572,   368,   343,   270,   618,   279,   570,
     573,   383,   590,   596,   344,   345,   611,   391,   588,   606,
     624,   256,   395,   631,   396,   555,   632,   633,   640,   645,
     652,   261,   654,   653,   263,   634,   660,   265,   670,   674,
     675,   676,   275,   145,   637,   269,   270,   680,   277,   681,
     683,   325,   688,   274,   145,   689,   575,   576,   251,   695,
     583,   275,   655,   659,   589,   278,   656,   277,   275,   505,
     418,   569,   623,   407,   277,   553,   291,     0,     0,     0,
     279,     0,   234,     0,   278,     0,   293,   294,   605,     0,
       0,   278,     0,   312,   610,     0,     0,     0,     0,   279,
       0,   613,     0,     0,     0,     0,   279,     0,   275,   615,
       0,   368,     0,   313,   277,     0,     0,     0,   625,   477,
       0,     0,   314,     0,     0,     0,   628,   630,     0,     0,
       0,   278,     0,   629,     0,     0,     0,   639,     0,     0,
     145,     0,     0,     0,     0,     0,   279,   290,   291,     0,
     145,     0,   534,     0,     0,   657,   658,   391,   293,   294,
       0,   661,     0,     0,   288,   289,   290,   291,     0,     0,
       0,     0,   289,   290,   291,     0,   254,   293,   294,     0,
     145,     0,   669,     0,   293,   294,     0,   673,     0,     0,
       0,     0,     0,     0,   391,     0,     0,     0,     0,     0,
     145,     0,   542,     0,   546,     0,     0,     0,     0,   286,
     287,   288,   289,   290,   291,     0,     0,     0,     0,     0,
       0,     0,   145,     0,   293,   294,   682,   685,     0,     0,
     687,     0,     0,     0,     0,     0,     0,   693,   694,     0,
     295,   696,   296,   297,     0,     0,   298,     0,     0,     0,
     299,     0,     0,   300,     0,     0,   301,     0,   302,     0,
     303,     0,   304,     0,   305,     0,     0,   306,     0,     0,
     307,     0,   308,     0,   309,   310,   311,     0,     0,     0,
       0,     0,   325,     0,     0,     0,     0,   325,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,   391,     0,
       0,     0,     0,     0,     0,   587,     0,     0,     0,   145,
       0,     0,   592,   593,     0,     0,     0,     0,     0,     0,
     391,   598,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,   145,     0,     0,     0,     0,     0,   145,
       0,     0,     0,     0,     0,     0,   145,   325,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,   145,     0,     0,     0,     0,     0,     0,
     145,     0,   256,     0,     0,   257,   327,     0,   259,     0,
     260,     0,   261,   262,     0,   263,   328,     0,   265,   391,
     266,     0,   267,     0,   268,     0,   269,   270,     0,   271,
     272,     0,   273,     0,   274,     0,     0,     0,     3,     4,
       5,     0,     0,     7,     0,     9,    10,     0,     0,    12,
       0,   145,    14,     0,    16,     0,   313,     0,    20,    21,
      22,    23,   145,   150,     0,   314,    27,     0,    28,    29,
       0,    30,    31,     0,    32,     0,     0,    34,    35,     0,
       0,    36,    37,    38,    39,   151,     0,     0,     0,   275,
       0,     0,     0,    45,   276,   277,    46,    47,    48,    49,
      50,    51,   145,    53,    54,     0,    56,    57,    58,     0,
      59,    60,   278,     0,     0,    61,    62,     0,     0,     0,
      66,    67,    68,    69,    70,     0,     0,   279,    73,    74,
      75,    76,    77,    78,     0,     0,    81,     0,    82,     0,
      83,     0,     0,    86,     0,     0,     0,     0,    90,     0,
       0,     0,    92,    93,    94,    95,    96,    97,    98,    99,
     100,   101,   102,   103,   104,   105,   106,   107,   108,   109,
     110,   111,     0,     0,     0,     0,     0,   280,     0,     0,
       0,     0,   329,     0,     0,     0,   330,   283,   331,   332,
     286,   287,   288,   333,   334,   291,     0,     0,     0,     0,
       0,     0,   152,     0,   120,   293,   335,     0,   256,     0,
     122,   257,   258,     0,   259,     0,   260,     0,   261,   262,
       0,   263,   264,     0,   265,     0,   266,     0,   267,   256,
     268,     0,   269,   270,     0,   271,   272,     0,   273,   261,
     274,     0,   263,     0,     0,   265,     0,     0,     0,     0,
       0,     0,     0,   269,   270,     0,     0,   272,     0,   273,
       0,   274,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,   388,     9,    10,     0,     0,    12,     0,     0,
      14,    15,     0,    17,     0,     0,     0,     0,    22,    23,
       0,     0,     0,     0,     0,   275,    28,     0,     0,     0,
     276,   277,    32,   389,     0,     0,    35,     0,     0,    36,
       0,     0,    39,   323,     0,     0,   275,     0,   278,     0,
      44,   276,   277,     0,    46,    47,    48,    49,    50,    51,
      52,    53,    54,   279,     0,    57,     0,     0,    59,   278,
       0,     0,     0,     0,     0,    63,    64,    65,    66,    67,
      68,     0,    70,    71,   279,     0,     0,    74,    75,     0,
      77,    78,     0,    80,     0,     0,    82,     0,     0,     0,
      85,    86,    87,     0,     0,     0,    90,     0,     0,     0,
      92,    93,     0,   280,     0,     0,     0,     0,   281,     0,
       0,     0,   282,   283,   284,   285,   286,   287,   288,   289,
     290,   291,     0,     0,     1,     0,     0,     0,     0,     0,
       0,   293,   294,   564,     2,   284,   285,   286,   287,   288,
     289,   290,   291,     0,     0,     0,     0,     0,     0,     0,
       0,   530,   293,   294,     0,     0,     3,     4,     5,     0,
       6,     7,     8,     9,    10,    11,     0,    12,    13,     0,
      14,    15,    16,    17,    18,    19,    20,    21,    22,    23,
      24,    25,     0,    26,    27,     0,    28,    29,     0,    30,
      31,     0,    32,    33,     0,    34,    35,     0,     0,    36,
      37,    38,    39,    40,    41,     0,    42,     0,    43,     0,
      44,    45,     0,     0,    46,    47,    48,    49,    50,    51,
      52,    53,    54,    55,    56,    57,    58,     0,    59,    60,
       0,     0,     0,    61,    62,    63,    64,    65,    66,    67,
      68,    69,    70,    71,    72,     0,    73,    74,    75,    76,
      77,    78,    79,    80,    81,     0,    82,     0,    83,    84,
      85,    86,    87,    88,    89,     0,    90,     0,    91,     0,
      92,    93,    94,    95,    96,    97,    98,    99,   100,   101,
     102,   103,   104,   105,   106,   107,   108,   109,   110,   111,
       0,     0,     0,     1,     0,     0,     0,     0,     0,     0,
     112,     0,     0,     2,   113,     0,   114,   115,     0,     0,
       0,   116,   117,     0,     0,     0,   118,     0,     0,     0,
     119,     0,   120,     0,   121,     3,     4,     5,   122,     6,
       7,     8,     9,    10,    11,     0,    12,    13,     0,    14,
      15,    16,    17,    18,    19,    20,    21,    22,    23,    24,
      25,     0,    26,    27,     0,    28,    29,     0,    30,    31,
       0,    32,    33,     0,    34,    35,     0,     0,    36,    37,
      38,    39,    40,    41,     0,     0,     0,    43,     0,    44,
      45,     0,     0,    46,    47,    48,    49,    50,    51,    52,
      53,    54,    55,    56,    57,    58,     0,    59,    60,     0,
       0,     0,    61,    62,    63,    64,    65,    66,    67,    68,
      69,    70,    71,    72,     0,    73,    74,    75,    76,    77,
      78,    79,    80,    81,     0,    82,     0,    83,    84,    85,
      86,    87,    88,    89,     0,    90,     0,    91,     0,    92,
      93,    94,    95,    96,    97,    98,    99,   100,   101,   102,
     103,   104,   105,   106,   107,   108,   109,   110,   111,     0,
       0,     0,     1,     0,     0,     0,     0,     0,     0,   112,
       0,     0,     2,   113,     0,   114,   115,   240,     0,     0,
     116,   117,     0,     0,     0,   118,     0,     0,     0,   119,
       0,   120,     0,   121,     3,     4,     5,   122,     6,     7,
       8,     9,    10,    11,     0,    12,    13,     0,    14,    15,
      16,    17,    18,    19,    20,    21,    22,    23,    24,    25,
       0,    26,    27,     0,    28,    29,     0,    30,    31,     0,
      32,    33,     0,    34,    35,     0,     0,    36,    37,    38,
      39,   253,    41,     0,     0,     0,    43,     0,    44,    45,
       0,     0,    46,    47,    48,    49,    50,    51,    52,    53,
      54,    55,    56,    57,    58,     0,    59,    60,     0,     0,
       0,    61,    62,    63,    64,    65,    66,    67,    68,    69,
      70,    71,    72,     0,    73,    74,    75,    76,    77,    78,
      79,    80,    81,     0,    82,     0,    83,    84,    85,    86,
      87,    88,    89,     0,    90,     0,    91,     0,    92,    93,
      94,    95,    96,    97,    98,    99,   100,   101,   102,   103,
     104,   105,   106,   107,   108,   109,   110,   111,     0,     0,
       0,     1,     0,     0,     0,     0,     0,     0,   112,     0,
       0,     2,   113,     0,   114,   115,     0,     0,     0,   116,
     117,     0,     0,     0,   118,     0,     0,     0,   119,   408,
     120,     0,   121,     3,     4,     5,   122,     6,     7,     8,
       9,    10,    11,     0,    12,    13,     0,    14,    15,    16,
      17,    18,    19,    20,    21,    22,    23,    24,    25,     0,
      26,    27,     0,    28,    29,     0,    30,    31,     0,    32,
      33,     0,    34,    35,     0,     0,    36,    37,    38,    39,
     253,    41,     0,     0,     0,    43,     0,    44,    45,     0,
       0,    46,    47,    48,    49,    50,    51,    52,    53,    54,
      55,    56,    57,    58,     0,    59,    60,     0,     0,     0,
      61,    62,    63,    64,    65,    66,    67,    68,    69,    70,
      71,    72,     0,    73,    74,    75,    76,    77,    78,    79,
      80,    81,     0,    82,     0,    83,    84,    85,    86,    87,
      88,    89,     0,    90,     0,    91,     0,    92,    93,    94,
      95,    96,    97,    98,    99,   100,   101,   102,   103,   104,
     105,   106,   107,   108,   109,   110,   111,     0,     0,     0,
       1,     0,     0,     0,     0,     0,     0,   112,     0,     0,
       2,   113,     0,   114,   115,     0,     0,     0,   116,   117,
       0,     0,     0,   118,     0,     0,     0,   119,   498,   120,
       0,   121,     3,     4,     5,   122,     6,     7,     8,     9,
      10,    11,     0,    12,    13,     0,    14,    15,    16,    17,
      18,    19,    20,    21,    22,    23,    24,    25,     0,    26,
      27,     0,    28,    29,     0,    30,    31,     0,    32,    33,
       0,    34,    35,     0,     0,    36,    37,    38,    39,   253,
      41,     0,     0,     0,    43,     0,    44,    45,     0,     0,
      46,    47,    48,    49,    50,    51,    52,    53,    54,    55,
      56,    57,    58,     0,    59,    60,     0,     0,     0,    61,
      62,    63,    64,    65,    66,    67,    68,    69,    70,    71,
      72,     0,    73,    74,    75,    76,    77,    78,    79,    80,
      81,     0,    82,     0,    83,    84,    85,    86,    87,    88,
      89,     0,    90,     0,    91,     0,    92,    93,    94,    95,
      96,    97,    98,    99,   100,   101,   102,   103,   104,   105,
     106,   107,   108,   109,   110,   111,     0,     0,     0,     1,
       0,     0,     0,     0,     0,     0,   112,     0,     0,     2,
     113,     0,   114,   115,     0,     0,     0,   116,   117,     0,
       0,     0,   118,     0,     0,     0,   119,   665,   120,     0,
     121,     3,     4,     5,   122,     6,     7,     8,     9,    10,
      11,     0,    12,    13,     0,    14,    15,    16,    17,    18,
      19,    20,    21,    22,    23,    24,    25,     0,    26,    27,
       0,    28,    29,     0,    30,    31,     0,    32,    33,     0,
      34,    35,     0,     0,    36,    37,    38,    39,   151,    41,
       0,     0,     0,    43,     0,    44,    45,     0,     0,    46,
      47,    48,    49,    50,    51,    52,    53,    54,    55,    56,
      57,    58,     0,    59,    60,     0,     0,     0,    61,    62,
      63,    64,    65,    66,    67,    68,    69,    70,    71,    72,
       0,    73,    74,    75,    76,    77,    78,    79,    80,    81,
       0,    82,     0,    83,    84,    85,    86,    87,    88,    89,
       0,    90,     0,    91,     0,    92,    93,    94,    95,    96,
      97,    98,    99,   100,   101,   102,   103,   104,   105,   106,
     107,   108,   109,   110,   111,     0,     0,     0,     1,     0,
       0,     0,     0,     0,     0,   112,     0,     0,     2,   113,
       0,   114,   115,     0,     0,     0,   116,   117,     0,     0,
       0,   118,     0,     0,     0,   119,     0,   120,     0,   121,
       3,     4,     5,   122,     6,     7,     8,     9,    10,    11,
       0,    12,    13,     0,    14,    15,    16,    17,    18,    19,
      20,    21,    22,    23,    24,    25,     0,    26,    27,     0,
      28,    29,     0,    30,    31,     0,    32,    33,     0,    34,
      35,     0,     0,    36,    37,    38,    39,   253,    41,     0,
       0,     0,    43,     0,    44,    45,     0,     0,    46,    47,
      48,    49,    50,    51,    52,    53,    54,    55,    56,    57,
      58,     0,    59,    60,     0,     0,     0,    61,    62,    63,
      64,    65,    66,    67,    68,    69,    70,    71,    72,     0,
      73,    74,    75,    76,    77,    78,    79,    80,    81,     0,
      82,     0,    83,    84,    85,    86,    87,    88,    89,     0,
      90,     0,    91,     0,    92,    93,    94,    95,    96,    97,
      98,    99,   100,   101,   102,   103,   104,   105,   106,   107,
     108,   109,   110,   111,     0,     0,     0,     1,     0,     0,
       0,     0,     0,     0,   112,     0,     0,     2,   113,     0,
     114,   115,     0,     0,     0,   116,   117,     0,     0,     0,
     118,     0,     0,     0,   119,     0,   120,     0,   121,     3,
       4,     5,   122,     6,     7,     8,     9,    10,    11,     0,
      12,    13,     0,    14,    15,    16,    17,    18,    19,    20,
      21,    22,    23,    24,    25,     0,    26,    27,     0,    28,
      29,     0,    30,    31,     0,    32,    33,     0,    34,    35,
       0,     0,    36,    37,    38,    39,    40,    41,     0,     0,
       0,    43,     0,    44,    45,     0,     0,    46,    47,    48,
      49,    50,    51,    52,    53,    54,    55,    56,    57,    58,
       0,    59,    60,     0,     0,     0,    61,    62,    63,    64,
      65,    66,    67,    68,    69,    70,    71,    72,     0,    73,
      74,    75,    76,    77,    78,    79,    80,    81,     0,    82,
       0,    83,    84,    85,    86,    87,    88,    89,     0,    90,
       0,    91,     0,    92,    93,    94,    95,    96,    97,    98,
      99,   100,   101,   102,   103,   104,   105,   106,   107,   108,
     109,   110,   111,     0,     0,     0,     1,     0,     0,     0,
       0,     0,     0,   112,     0,   201,     2,   113,   202,   114,
     115,     0,     0,     0,   116,   117,     0,     0,     0,   118,
       0,     0,     0,   119,     0,   120,     0,   121,     3,     4,
       5,   122,     0,     7,     0,     9,    10,     0,     0,    12,
       0,     0,    14,     0,    16,     0,     0,     0,    20,    21,
      22,    23,     0,   150,     0,     0,    27,     0,    28,    29,
       0,    30,    31,     0,    32,     0,     0,    34,    35,     0,
       0,    36,    37,    38,    39,   151,     0,     0,     0,     0,
       0,     0,     0,    45,     0,     0,    46,    47,    48,    49,
      50,    51,     0,    53,    54,     0,    56,    57,    58,     0,
      59,    60,     0,     0,     0,    61,    62,     0,     0,     0,
      66,    67,    68,    69,    70,     0,     0,     0,    73,    74,
      75,    76,    77,    78,     0,     0,    81,     0,    82,     0,
      83,     0,     0,    86,     0,     0,     0,     0,    90,     0,
       0,     0,    92,    93,    94,    95,    96,    97,    98,    99,
     100,   101,   102,   103,   104,   105,   106,   107,   108,   109,
     110,   111,     0,     0,     0,     1,     0,     0,     0,     0,
       0,     0,   112,     0,     0,     2,   113,     0,   114,   115,
     203,   204,     0,   116,   117,     0,     0,     0,     0,     0,
       0,     0,   152,     0,   120,     0,   121,     3,     4,     5,
     122,     0,     7,     0,     9,    10,     0,     0,    12,     0,
       0,    14,     0,    16,     0,     0,     0,    20,    21,    22,
      23,     0,   150,     0,     0,    27,     0,    28,    29,     0,
      30,    31,     0,    32,     0,   178,    34,    35,     0,     0,
      36,    37,    38,    39,   151,     0,     0,     0,     0,     0,
       0,     0,    45,     0,     0,    46,    47,    48,    49,    50,
      51,     0,    53,    54,     0,    56,    57,    58,     0,    59,
      60,     0,     0,     0,    61,    62,     0,     0,     0,    66,
      67,    68,    69,    70,     0,     0,     0,    73,    74,    75,
      76,    77,    78,     0,     0,    81,     0,    82,     0,    83,
       0,     0,    86,     0,     0,     0,     0,    90,     0,     0,
       0,    92,    93,    94,    95,    96,    97,    98,    99,   100,
     101,   102,   103,   104,   105,   106,   107,   108,   109,   110,
     111,     0,     0,     0,     1,     0,     0,     0,     0,     0,
       0,   112,     0,     0,     2,   113,     0,   114,   115,     0,
       0,     0,   116,   117,     0,     0,     0,     0,     0,     0,
       0,   152,     0,   120,     0,   121,     3,     4,     5,   122,
       0,     7,     0,     9,    10,     0,     0,    12,     0,     0,
      14,     0,    16,     0,     0,     0,    20,    21,    22,    23,
       0,   150,     0,     0,    27,     0,    28,    29,     0,    30,
      31,     0,    32,     0,     0,    34,    35,     0,     0,    36,
      37,    38,    39,   151,     0,     0,     0,     0,     0,     0,
       0,    45,     0,     0,    46,    47,    48,    49,    50,    51,
       0,    53,    54,     0,    56,    57,    58,     0,    59,    60,
       0,     0,     0,    61,    62,     0,     0,     0,    66,    67,
      68,    69,    70,     0,     0,     0,    73,    74,    75,    76,
      77,    78,     0,     0,    81,     0,    82,     0,    83,     0,
       0,    86,     0,     0,     0,     0,    90,     0,     0,     0,
      92,    93,    94,    95,    96,    97,    98,    99,   100,   101,
     102,   103,   104,   105,   106,   107,   108,   109,   110,   111,
       0,     0,     0,     1,     0,     0,     0,     0,     0,     0,
     112,     0,     0,     2,   113,     0,   114,   115,   240,     0,
       0,   116,   117,     0,     0,     0,     0,     0,     0,     0,
     152,     0,   120,     0,   121,     3,     4,     5,   122,     0,
       7,     0,     9,    10,     0,     0,    12,     0,     0,    14,
       0,    16,     0,     0,     0,    20,    21,    22,    23,     0,
     150,     0,     0,    27,     0,    28,    29,     0,    30,    31,
       0,    32,     0,     0,    34,    35,     0,     0,    36,    37,
      38,    39,   151,     0,     0,     0,     0,     0,     0,     0,
      45,     0,     0,    46,    47,    48,    49,    50,    51,     0,
      53,    54,     0,    56,    57,    58,     0,    59,    60,     0,
       0,     0,    61,    62,     0,     0,     0,    66,    67,    68,
      69,    70,     0,     0,     0,    73,    74,    75,    76,    77,
      78,     0,     0,    81,     0,    82,     0,    83,     0,     0,
      86,     0,     0,     0,     0,    90,     0,     0,     0,    92,
      93,    94,    95,    96,    97,    98,    99,   100,   101,   102,
     103,   104,   105,   106,   107,   108,   109,   110,   111,     0,
       0,     0,     0,     0,     0,     0,     0,     1,     0,   112,
     455,     0,     0,   113,     0,   114,   115,     2,     0,     0,
     116,   117,     0,     0,     0,     0,     0,     0,     0,   152,
       0,   120,     0,   121,   416,     0,     0,   122,     0,     3,
       4,     5,     0,     0,     7,     0,     9,    10,     0,     0,
      12,     0,     0,    14,     0,    16,     0,     0,     0,    20,
      21,    22,    23,     0,   150,     0,     0,    27,     0,    28,
      29,     0,    30,    31,     0,    32,     0,     0,    34,    35,
       0,     0,    36,    37,    38,    39,   151,     0,     0,     0,
       0,     0,     0,     0,    45,     0,     0,    46,    47,    48,
      49,    50,    51,     0,    53,    54,     0,    56,    57,    58,
       0,    59,    60,     0,     0,     0,    61,    62,     0,     0,
       0,    66,    67,    68,    69,    70,     0,     0,     0,    73,
      74,    75,    76,    77,    78,     0,     0,    81,     0,    82,
       0,    83,     0,     0,    86,     0,     0,     0,     0,    90,
       0,     0,     0,    92,    93,    94,    95,    96,    97,    98,
      99,   100,   101,   102,   103,   104,   105,   106,   107,   108,
     109,   110,   111,     0,     0,     0,     1,     0,     0,     0,
       0,     0,     0,   112,     0,     0,     2,   113,     0,   114,
     115,     0,     0,     0,   116,   117,     0,     0,     0,     0,
       0,     0,     0,   152,     0,   120,     0,   121,     3,     4,
       5,   122,     0,     7,     0,     9,    10,     0,     0,    12,
       0,     0,    14,     0,    16,     0,     0,     0,    20,    21,
      22,    23,     0,   150,     0,     0,    27,     0,    28,    29,
       0,    30,    31,     0,    32,     0,     0,    34,    35,     0,
       0,    36,    37,    38,    39,   151,     0,     0,     0,     0,
       0,     0,     0,    45,     0,     0,    46,    47,    48,    49,
      50,    51,     0,    53,    54,     0,    56,    57,    58,     0,
      59,    60,     0,     0,     0,    61,    62,     0,     0,     0,
      66,    67,    68,    69,    70,     0,     0,     0,    73,    74,
      75,    76,    77,    78,     0,     0,    81,     0,    82,     0,
      83,     0,     0,    86,     0,     0,     0,     0,    90,     0,
       0,     0,    92,    93,    94,    95,    96,    97,    98,    99,
     100,   101,   102,   103,   104,   105,   106,   107,   108,   109,
     110,   111,     0,     0,     0,     0,     0,     0,     0,     0,
       1,     0,   112,     0,     0,     0,   113,     0,   114,   115,
       2,     0,     0,   116,   117,     0,     0,     0,     0,     0,
       0,     0,   152,     0,   120,     0,   121,   617,     0,     0,
     122,     0,     3,     4,     5,     0,     0,     7,     0,     9,
      10,     0,     0,    12,     0,     0,    14,     0,    16,     0,
       0,     0,    20,    21,    22,    23,     0,   150,     0,     0,
      27,     0,    28,    29,     0,    30,    31,     0,    32,     0,
       0,    34,    35,     0,     0,    36,    37,    38,    39,   151,
       0,     0,     0,     0,     0,     0,     0,    45,     0,     0,
      46,    47,    48,    49,    50,    51,     0,    53,    54,     0,
      56,    57,    58,     0,    59,    60,     0,     0,     0,    61,
      62,     0,     0,     0,    66,    67,    68,    69,    70,     0,
       0,     0,    73,    74,    75,    76,    77,    78,     0,     0,
      81,     0,    82,     0,    83,     0,     0,    86,     0,     0,
       0,     0,    90,     0,     0,     0,    92,    93,    94,    95,
      96,    97,    98,    99,   100,   101,   102,   103,   104,   105,
     106,   107,   108,   109,   110,   111,     0,     0,     0,     1,
       0,     0,     0,     0,     0,     0,   112,     0,     0,     2,
     113,     0,   114,   115,     0,     0,     0,   116,   117,     0,
       0,     0,     0,     0,     0,     0,   152,     0,   120,     0,
     121,     3,     4,     5,   122,     0,     7,     0,     9,    10,
       0,     0,    12,     0,     0,    14,     0,    16,     0,     0,
       0,    20,    21,    22,    23,     0,   150,     0,     0,    27,
       0,    28,    29,     0,    30,    31,     0,    32,     0,     0,
      34,    35,     0,     0,    36,    37,    38,    39,   151,     0,
       0,     0,     0,     0,     0,     0,    45,     0,     0,    46,
      47,    48,    49,    50,    51,     0,    53,    54,     0,    56,
      57,    58,     0,    59,    60,     0,     0,     0,    61,    62,
       0,     0,     0,    66,    67,    68,    69,    70,     0,     0,
       0,    73,    74,    75,    76,    77,    78,     0,     0,    81,
       0,    82,     0,    83,     0,     0,    86,     0,     0,     0,
       0,    90,     0,     0,     0,    92,    93,    94,    95,    96,
      97,    98,    99,   100,   101,   102,   103,   104,   105,   106,
     107,   108,   109,   110,   111,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,   112,     0,     0,     0,   533,
       0,   114,   115,     0,     0,     0,   116,   117,     0,     0,
       0,     0,     0,     0,     0,   152,     0,   120,   256,   121,
       0,   257,   258,   122,   259,   347,   260,     0,   261,   262,
       0,   263,   264,     0,   265,     0,   266,     0,   267,     0,
     268,     0,   269,   270,     0,   271,   272,     0,   273,   256,
     274,     0,   257,   258,     0,   259,     0,   260,     0,   261,
     262,     0,   263,   264,     0,   265,     0,   266,     0,   267,
       0,   268,     0,   269,   270,     0,   271,   272,     0,   273,
       0,   274,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,   275,     0,     0,     0,     0,
     276,   277,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,   278,     0,
       0,     0,     0,     0,     0,     0,   275,     0,     0,     0,
       0,   276,   277,   279,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,   256,     0,   278,
     257,   258,     0,   259,     0,   260,     0,   261,   262,     0,
     263,   264,     0,   265,   279,   266,     0,   267,     0,   268,
       0,   269,   270,     0,   271,   272,     0,   273,     0,   274,
       0,     0,     0,   280,     0,     0,     0,     0,   281,     0,
       0,     0,   282,   283,   284,   285,   286,   287,   288,   289,
     290,   291,   348,     0,     0,     0,     0,     0,     0,     0,
       0,   293,   294,     0,   280,     0,     0,     0,     0,   281,
       0,     0,     0,   282,   283,   284,   285,   286,   287,   288,
     289,   290,   291,   409,   275,   292,     0,     0,     0,   276,
     277,     0,   293,   294,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,   256,     0,   278,   257,   258,
       0,   259,     0,   260,     0,   261,   262,     0,   263,   264,
       0,   265,   279,   266,     0,   267,     0,   268,     0,   269,
     270,     0,   271,   272,     0,   273,   256,   274,     0,   257,
     258,     0,   259,     0,   260,     0,   261,   262,     0,   263,
     264,     0,   265,     0,   266,     0,   267,     0,   268,     0,
     269,   270,     0,   271,   272,     0,   273,     0,   274,     0,
       0,     0,   280,     0,     0,     0,     0,   281,     0,     0,
       0,   282,   283,   284,   285,   286,   287,   288,   289,   290,
     291,     0,   275,     0,     0,   496,   497,   276,   277,     0,
     293,   294,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,   278,     0,   599,     0,     0,
       0,     0,     0,   275,     0,     0,     0,     0,   276,   277,
     279,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,   278,     0,     0,   256,
       0,     0,   257,   258,   600,   259,     0,   260,     0,   261,
     262,   279,   263,   264,     0,   265,     0,   266,     0,   267,
       0,   268,     0,   269,   270,     0,   271,   272,     0,   273,
     280,   274,     0,     0,     0,   281,     0,     0,     0,   282,
     283,   284,   285,   286,   287,   288,   289,   290,   291,     0,
       0,     0,     0,     0,     0,     0,     0,     0,   293,   294,
       0,   280,     0,     0,     0,     0,   281,     0,     0,     0,
     282,   283,   284,   285,   286,   287,   288,   289,   290,   291,
       0,     0,   292,     0,     0,     0,   275,     0,     0,   293,
     294,   276,   277,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,   256,     0,   278,
     257,   258,     0,   259,     0,   260,     0,   261,   262,     0,
     263,   264,     0,   265,   279,   266,     0,   267,     0,   268,
       0,   269,   270,     0,   271,   272,     0,   273,   256,   274,
       0,   257,   258,     0,   259,     0,   260,     0,   261,   262,
       0,   263,   264,     0,   265,     0,   266,     0,   267,     0,
     268,     0,   269,   270,     0,   271,   272,     0,   273,     0,
     274,     0,     0,     0,   280,     0,     0,     0,     0,   281,
       0,     0,     0,   282,   283,   284,   285,   286,   287,   288,
     289,   290,   291,   409,   275,     0,     0,     0,     0,   276,
     277,     0,   293,   294,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,   278,     0,     0,
       0,     0,     0,     0,     0,   275,     0,     0,     0,     0,
     276,   277,   279,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,   256,     0,   278,   257,
     258,     0,   259,     0,   260,     0,   261,   262,     0,   263,
     264,     0,   265,   279,   266,     0,   267,     0,   268,     0,
     269,   270,     0,   271,   272,     0,   273,     0,   274,     0,
       0,     0,   280,     0,     0,     0,     0,   281,     0,     0,
       0,   282,   283,   284,   285,   286,   287,   288,   289,   290,
     291,     0,     0,     0,     0,   517,     0,     0,     0,     0,
     293,   294,     0,   280,     0,     0,     0,     0,   281,     0,
       0,     0,   282,   283,   284,   285,   286,   287,   288,   289,
     290,   291,     0,   275,     0,     0,   539,     0,   276,   277,
       0,   293,   294,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,   256,     0,   278,   257,   258,     0,
     259,     0,   260,     0,   261,   262,     0,   263,   264,     0,
     265,   279,   266,     0,   267,     0,   268,     0,   269,   270,
       0,   271,   272,     0,   273,   256,   274,     0,   257,   258,
       0,   259,     0,   260,     0,   261,   262,     0,   263,   264,
       0,   265,     0,   266,     0,   267,     0,   268,     0,   269,
     270,     0,   271,   272,     0,   273,     0,   274,     0,     0,
       0,   280,     0,     0,     0,     0,   281,     0,     0,     0,
     282,   283,   284,   285,   286,   287,   288,   289,   290,   291,
       0,   275,     0,     0,   547,     0,   276,   277,     0,   293,
     294,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,   278,     0,     0,     0,     0,     0,
       0,     0,   275,     0,     0,     0,     0,   276,   277,   279,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,   256,     0,   278,   257,   258,     0,   259,
       0,   260,     0,   261,   262,     0,   263,   264,     0,   265,
     279,   266,     0,   267,     0,   268,     0,   269,   270,     0,
     271,   272,     0,   273,     0,   274,     0,     0,     0,   280,
       0,     0,   601,     0,   281,     0,     0,     0,   282,   283,
     284,   285,   286,   287,   288,   289,   290,   291,   560,     0,
       0,     0,     0,     0,     0,     0,     0,   293,   294,     0,
     280,     0,     0,     0,     0,   281,     0,     0,     0,   282,
     283,   284,   285,   286,   287,   288,   289,   290,   291,   571,
     275,     0,     0,     0,     0,   276,   277,     0,   293,   294,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,   256,     0,   278,   257,   258,     0,   259,     0,   260,
       0,   261,   262,     0,   263,   264,     0,   265,   279,   266,
       0,   267,     0,   268,     0,   269,   270,     0,   271,   272,
       0,   273,   256,   274,     0,   257,   258,     0,   259,     0,
     260,     0,   261,   262,     0,   263,   264,     0,   265,     0,
     266,     0,   267,     0,   268,     0,   269,   270,     0,   271,
     272,     0,   273,     0,   274,     0,     0,     0,   280,     0,
       0,     0,     0,   281,     0,     0,     0,   282,   283,   284,
     285,   286,   287,   288,   289,   290,   291,     0,   275,     0,
       0,     0,     0,   276,   277,     0,   293,   294,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,   278,     0,     0,     0,     0,     0,     0,     0,   275,
       0,     0,     0,     0,   276,   277,   279,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
     256,     0,   278,   257,   258,     0,   259,     0,   260,     0,
     261,   262,     0,   263,   264,     0,   265,   279,   266,     0,
     267,     0,   268,     0,   269,   270,     0,   271,   272,     0,
     273,     0,   274,     0,     0,     0,   280,     0,     0,     0,
       0,   281,     0,     0,     0,   282,   283,   284,   285,   286,
     287,   288,   289,   290,   291,   612,     0,     0,     0,     0,
       0,     0,     0,     0,   293,   294,     0,   280,     0,     0,
       0,     0,   281,     0,     0,     0,   282,   283,   284,   285,
     286,   287,   288,   289,   290,   291,     0,   275,   626,     0,
       0,     0,   276,   277,     0,   293,   294,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,   256,     0,
     278,   257,   258,     0,   259,     0,   260,     0,   261,   262,
       0,   263,   264,     0,   265,   279,   266,     0,   267,     0,
     268,     0,   269,   270,     0,   271,   272,     0,   273,   256,
     274,     0,   257,   258,     0,   259,     0,   260,     0,   261,
     262,     0,   263,   264,     0,   265,     0,   266,     0,   267,
       0,   268,     0,   269,   270,     0,   271,   272,     0,   273,
       0,   274,     0,     0,     0,   280,     0,     0,     0,     0,
     281,     0,     0,     0,   282,   283,   284,   285,   286,   287,
     288,   289,   290,   291,     0,   275,     0,     0,   627,     0,
     276,   277,     0,   293,   294,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,   278,     0,
       0,     0,     0,     0,     0,     0,   275,     0,     0,     0,
       0,   276,   277,   279,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,   256,     0,   278,
     257,   258,     0,   259,     0,   260,     0,   261,   262,     0,
     263,   264,     0,   265,   279,   266,     0,   267,     0,   268,
       0,   269,   270,     0,   271,   272,     0,   273,     0,   274,
       0,     0,     0,   280,     0,     0,     0,     0,   281,     0,
       0,     0,   282,   283,   284,   285,   286,   287,   288,   289,
     290,   291,     0,     0,   679,     0,     0,     0,     0,     0,
       0,   293,   294,     0,   280,     0,     0,     0,     0,   281,
       0,     0,     0,   282,   283,   284,   285,   286,   287,   288,
     289,   290,   291,     0,   275,     0,     0,     0,     0,   276,
     277,     0,   293,   294,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,   256,     0,   278,   257,   258,
       0,   259,     0,   260,     0,   261,   262,     0,   263,   264,
       0,   265,   279,   266,     0,   267,     0,   268,     0,   269,
     270,     0,  -183,   272,     0,   273,   256,   274,     0,   257,
     258,     0,   259,     0,   260,     0,   261,   262,     0,   263,
     264,     0,   265,     0,   266,     0,   267,     0,   268,     0,
     269,   270,     0,   271,   272,     0,   273,     0,   274,     0,
       0,     0,   280,     0,     0,     0,     0,   281,     0,     0,
       0,   282,   283,   284,   285,   286,   287,   288,   289,   405,
     291,     0,   275,     0,     0,     0,     0,   276,   277,     0,
     293,   294,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,   278,     0,     0,     0,     0,
       0,     0,     0,   275,     0,     0,     0,     0,   276,   277,
     279,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,   256,     0,   278,   257,   258,     0,
     259,     0,   260,     0,   261,   262,     0,   263,   264,     0,
     265,   279,   266,     0,   267,     0,   268,     0,   269,   270,
       0,     0,   272,     0,   273,     0,   274,     0,     0,     0,
    -183,     0,     0,     0,     0,   281,     0,     0,     0,   282,
     283,   284,   285,   286,   287,   288,   289,   290,   291,     0,
       0,     0,     0,     0,     0,     0,     0,     0,   293,   294,
       0,   280,     0,     0,     0,     0,   281,     0,     0,     0,
     282,   283,   284,   285,   286,     0,   288,   289,   290,   291,
       0,   275,     0,     0,     0,     0,   276,   277,     0,   293,
     294,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,   256,     0,   278,   -87,   -87,     0,   -87,     0,
     -87,     0,   261,   -87,     0,   263,   -87,     0,   265,   279,
     -87,     0,   -87,     0,   -87,     0,   269,   270,     0,     0,
     272,     0,   273,   256,   274,     0,   -84,   -84,     0,   -84,
       0,   -84,     0,   261,   -84,     0,   263,   -84,     0,   265,
       0,   -84,     0,   -84,     0,   -84,     0,   269,   270,     0,
       0,   272,     0,   273,     0,   274,     0,     0,     0,     0,
       0,     0,     0,     0,   281,     0,     0,     0,   282,   283,
     284,   285,   286,   287,   288,   289,   290,   291,     0,   275,
       0,     0,     0,     0,   276,   277,     0,   293,   294,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,   278,     0,     0,     0,     0,     0,     0,     0,
     275,     0,     0,     0,     0,   276,   277,   279,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,   256,     0,   278,   -85,   -85,     0,   -85,     0,   -85,
       0,   261,   -85,     0,   263,   -85,     0,   265,   279,   -85,
       0,   -85,     0,   -85,     0,   269,   270,     0,     0,   272,
       0,   273,     0,   274,     0,     0,     0,     0,     0,     0,
       0,     0,   -87,     0,     0,     0,   -87,   -87,   284,   285,
     286,   287,   288,   289,   290,   291,     0,     0,     0,     0,
       0,     0,     0,     0,     0,   293,   294,     0,     0,     0,
       0,     0,     0,   -84,     0,     0,     0,   -84,   -84,   -84,
     -84,   286,   287,   288,   289,   290,   291,     0,   275,     0,
       0,     0,     0,   276,   277,     0,   293,   294,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,   256,
       0,   278,   -93,   -93,     0,   -93,     0,   -93,     0,   -93,
     -93,     0,   -93,   -93,     0,   -93,   279,   -93,     0,   -93,
       0,   -93,     0,   -93,   270,   256,     0,   -93,   257,   -93,
       0,   -93,     0,   260,     0,   261,   262,     0,   263,     0,
       0,   265,     0,   266,     0,   267,     0,     0,     0,   269,
     270,     0,     0,   272,     0,   273,     0,   274,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,   -85,     0,     0,     0,   -85,   -85,   -85,   -85,   286,
     287,   288,   289,   290,   291,     0,   275,     0,     0,     0,
       0,   -93,   277,     0,   293,   294,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,   278,
       0,     0,   275,   256,     0,     0,     0,   276,   277,     0,
       0,     0,     0,   261,   279,     0,   263,     0,     0,   265,
       0,     0,     0,     0,     0,   278,     0,   269,   270,   256,
       0,   272,     0,   273,     0,   274,     0,     0,     0,   261,
     279,     0,   263,     0,     0,   265,     0,   256,     0,     0,
       0,     0,     0,   269,   270,     0,     0,   261,     0,     0,
     263,   274,     0,   265,     0,     0,     0,     0,     0,   -93,
       0,   269,   270,   -93,   -93,   -93,   -93,   -93,   -93,   -93,
     -93,   290,   291,     0,     0,     0,     0,     0,     0,     0,
     275,     0,   293,   294,     0,   276,   277,     0,     0,   282,
     283,   284,   285,   286,   287,   288,   289,   290,   291,     0,
       0,     0,     0,   278,     0,     0,   275,     0,   293,   294,
       0,   276,   277,     0,     0,     0,     0,     0,   279,     0,
       0,     0,     0,     0,   275,     0,     0,     0,     0,   278,
     277,     0,     0,  -182,     0,  -182,  -182,     0,     0,  -182,
       0,     0,     0,  -182,   279,     0,  -182,   278,     0,  -182,
       0,  -182,     0,  -182,     0,  -182,     0,  -182,     0,     0,
    -182,     0,   279,  -182,     0,  -182,     0,  -182,  -182,  -182,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,   286,   287,   288,   289,   290,   291,     0,     0,     0,
       0,     0,     0,     0,     0,     0,   293,   294,     0,     0,
       0,     0,     0,     0,     0,     0,     0,   286,   287,   288,
     289,   290,   291,     0,     0,     0,     0,     0,     0,     0,
       0,     0,   293,   294,     0,   286,   287,   288,   289,   290,
     291,     0,  -182,     0,  -182,  -182,     0,     0,  -182,     0,
     293,   294,  -182,     0,     0,  -182,     0,     0,  -182,     0,
    -182,     0,  -182,     0,  -182,     0,  -182,     0,     0,  -182,
       0,     0,  -182,     0,  -182,     0,  -182,  -182,  -182,  -182,
       0,  -182,  -182,     0,     0,  -182,     0,     0,     0,  -182,
       0,     0,  -182,     0,     0,  -182,     0,  -182,     0,  -182,
       0,  -182,     0,  -182,     0,     0,  -182,     0,     0,  -182,
       0,  -182,     0,  -182,  -182,  -182,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,   186,  -182,
       0,   187,     0,     0,     0,   388,     9,    10,     0,     0,
      12,     0,     0,    14,    15,     0,    17,     0,     0,     0,
       0,    22,    23,     0,     0,     0,     0,     0,     0,    28,
       0,     0,     0,     0,     0,    32,   389,     0,     0,    35,
       0,     0,    36,     0,     0,    39,   323,     0,     0,     0,
       0,     0,     0,    44,     0,     0,     0,    46,    47,    48,
      49,    50,    51,    52,    53,    54,     0,     0,    57,     0,
       0,    59,     0,     0,     0,     0,     0,     0,    63,    64,
      65,    66,    67,    68,     0,    70,    71,     0,     0,     0,
      74,    75,     0,    77,    78,     0,    80,   420,  -182,    82,
     187,     0,     0,    85,    86,    87,     0,     0,     0,    90,
       0,     0,     0,    92,    93,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,  -182,     0,   187,     3,     4,
       5,     0,     6,     7,     8,     9,    10,    11,     0,    12,
      13,     0,    14,    15,    16,    17,    18,    19,     0,    21,
      22,    23,    24,     0,   574,    26,    27,     0,    28,    29,
       0,    30,    31,     0,    32,    33,     0,    34,    35,     0,
       0,    36,    37,    38,    39,   151,    41,     0,     0,     0,
      43,     0,    44,    45,     0,     0,    46,    47,    48,    49,
      50,    51,    52,    53,    54,    55,    56,    57,     0,     0,
      59,    60,     0,     0,     0,    61,    62,    63,    64,    65,
      66,    67,    68,    69,    70,    71,    72,     0,    73,    74,
      75,     0,    77,    78,    79,    80,    81,     0,    82,     0,
      83,    84,    85,    86,    87,    88,    89,     0,    90,     0,
      91,     0,    92,    93,    94,    95,    96,    97,    98,    99,
     100,   101,   102,   103,   104,   105,   106,   107,   108,   109,
     110,   111,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,   118,     0,
       0,     0,   119,     0,   120,     0,   121,     3,     4,     5,
     122,     0,     7,     0,     9,    10,     0,     0,    12,     0,
       0,    14,     0,    16,     0,     0,     0,     0,    21,    22,
      23,     0,     0,     0,     0,    27,     0,    28,    29,     0,
      30,    31,     0,    32,     0,     0,    34,    35,     0,     0,
      36,    37,    38,    39,   151,     0,     0,     0,     0,     0,
       0,     0,    45,     0,   277,    46,    47,    48,    49,    50,
      51,     0,    53,    54,     0,    56,    57,     0,     0,    59,
      60,   278,     0,     0,    61,    62,     0,     0,     0,    66,
      67,    68,    69,    70,     0,     0,   279,    73,    74,    75,
       0,    77,    78,     0,     0,    81,     0,    82,     0,    83,
       0,     0,    86,     0,     0,     0,     0,    90,     0,     0,
       0,    92,    93,    94,    95,    96,    97,    98,    99,   100,
     101,   102,   103,   104,   105,   106,   107,   108,   109,   110,
     111,     0,     0,     0,     0,     0,   388,     9,    10,     0,
       0,    12,     0,     0,    14,    15,     0,    17,     0,     0,
       0,     0,    22,    23,   291,     0,     0,     0,     0,     0,
      28,   152,     0,   120,   293,   335,    32,   389,     0,   122,
      35,     0,     0,    36,     0,     0,    39,   323,     0,     0,
       0,     0,     0,     0,    44,     0,     0,     0,    46,    47,
      48,    49,    50,    51,    52,    53,    54,     0,     0,    57,
       0,     0,    59,     0,     0,     0,     0,     0,     0,    63,
      64,    65,    66,    67,    68,     0,    70,    71,     0,     0,
       0,    74,    75,     0,    77,    78,     0,    80,     0,     0,
      82,     0,     0,     0,    85,    86,    87,     0,     0,     0,
      90,     0,     0,     0,    92,    93,   388,     9,    10,     0,
       0,    12,     0,     0,    14,    15,     0,    17,     0,     0,
       0,     0,    22,    23,     0,     0,     0,     0,     0,     0,
      28,     0,     0,     0,     0,     0,    32,   389,     0,     0,
      35,     0,     0,    36,     0,     0,    39,   323,     0,     0,
       0,     0,     0,     0,    44,   650,     0,     0,    46,    47,
      48,    49,    50,    51,    52,    53,    54,     0,     0,    57,
       0,     0,    59,     0,     0,     0,     0,     0,     0,    63,
      64,    65,    66,    67,    68,     0,    70,    71,     0,     0,
       0,    74,    75,     0,    77,    78,     0,    80,     0,     0,
      82,     0,     0,     0,    85,    86,    87,     0,     0,     0,
      90,     0,     9,    10,    92,    93,    12,     0,     0,    14,
       0,     0,     0,     0,     0,     0,     0,    22,    23,     0,
       0,     0,     0,     0,     0,    28,     0,     0,     0,     0,
       0,    32,     0,     0,     0,    35,     0,     0,    36,     0,
       0,    39,   323,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,    46,    47,    48,    49,    50,    51,     0,
      53,    54,     0,     0,    57,     0,     0,    59,     0,     0,
       0,     0,     0,     0,     0,     0,     0,    66,    67,    68,
       0,    70,     0,     0,     0,     0,    74,    75,     0,    77,
      78,     0,     0,     0,     0,    82,     0,     0,     0,     0,
      86,     0,     0,     0,     0,    90,     0,     0,     0,    92,
      93
};

static const yytype_int16 yycheck[] =
{
       1,     2,     3,     4,     5,     0,     7,   113,   199,   146,
      46,   355,    13,   214,    72,    16,     4,    18,    11,    20,
      21,    72,   207,    26,    25,   215,    14,    91,    29,    78,
      31,    89,    87,    97,    87,    87,   151,    87,     4,    87,
      28,    29,    44,   151,    45,   201,    87,    75,   199,   188,
     114,   190,   190,   204,   201,   190,   195,    58,   197,    60,
      72,   208,    97,    29,   204,   129,   201,   192,    69,   208,
     208,    72,   211,   208,    87,    76,   198,    89,   190,   114,
      81,    84,   187,   111,   201,    87,   190,   115,   203,   193,
     190,   203,   190,   193,   129,   203,   208,   622,   623,   202,
     202,   203,    87,    91,   208,   203,   209,   632,   208,    97,
     208,   112,   113,   114,   115,   116,   117,   158,   119,   120,
     193,   190,   190,   126,   193,    91,   114,   202,   159,   124,
     203,    97,   200,   197,   209,   202,   203,   190,   190,   208,
     208,   129,   190,   207,   208,   200,   204,   192,   114,   150,
     200,   152,   353,   204,   203,   208,   208,   158,   159,   201,
     208,   190,   197,   129,   193,   355,   161,   190,   204,   203,
     193,   205,   207,   208,   177,   188,   189,   190,   191,   208,
     202,   203,   183,   186,   528,   208,   187,   188,   203,   294,
     205,    93,   203,   203,   188,   192,   190,   203,   209,   209,
     194,   195,   392,   209,   205,   206,   194,   195,   196,   197,
     203,   192,   213,   207,   208,   320,   209,   322,   190,   207,
     208,   193,   223,    87,   330,   190,   203,   204,   193,   230,
     335,   197,   190,   202,   203,   193,   208,   192,   241,   240,
      66,   207,   208,   208,   203,   192,   205,   248,   192,   252,
     208,   203,     0,   205,   192,   256,   257,   192,   259,   260,
     261,   262,   263,   192,   265,   266,   267,   268,   269,   270,
     271,   272,   273,   274,   275,   276,   189,   190,    26,   280,
     192,   282,   283,   284,   285,   286,   287,   288,   289,   290,
     291,   201,   293,   294,   295,   296,   297,   298,   299,   300,
     301,   302,   303,   304,   305,   306,   307,   308,   309,   310,
     311,    87,   313,   314,    87,   203,   506,   205,    87,   320,
     201,   322,   202,   203,   202,   203,   327,   328,   329,   330,
     331,   332,   333,   334,   335,   338,    84,   192,   528,   524,
     636,   637,   201,     0,   200,   348,   347,   200,   539,   200,
     455,    87,    87,   200,    87,   188,   152,   190,    29,   204,
      87,   194,   195,   158,   167,   167,   141,     3,   201,     5,
       6,   119,    53,     9,   207,   208,   124,    13,   126,   199,
      16,   132,   199,    19,   158,    21,    96,    23,    96,    25,
      96,    27,   393,   394,    30,   398,    86,    33,   146,    35,
      87,    37,    38,    39,   405,     4,   193,   597,   409,   410,
     203,   412,   203,   161,   151,   201,   106,   420,   555,   109,
      91,    87,   200,   193,     4,    53,    97,   533,    87,   177,
      29,     4,   203,   201,   201,   192,   184,   185,   186,   440,
     441,   442,   203,   114,   203,   193,   194,   195,   196,    29,
     203,   167,   208,    87,   455,   145,    29,   562,   129,   159,
      87,   209,    87,   167,   154,   155,   158,   215,   199,   199,
     202,     4,   220,   578,   222,   203,    87,   200,    69,   193,
     153,    14,    87,   139,    17,   210,   193,    20,   210,   149,
      87,   139,    91,   241,   190,    28,    29,   202,    97,   201,
      81,   249,    50,    36,   252,    82,   507,   508,   124,   200,
     511,    91,   602,   608,   517,   114,   603,    97,    91,   354,
     249,   485,   569,   240,    97,   414,   197,    -1,    -1,    -1,
     129,    -1,   533,    -1,   114,    -1,   207,   208,   541,    -1,
      -1,   114,    -1,   179,   547,    -1,    -1,    -1,    -1,   129,
      -1,   554,    -1,    -1,    -1,    -1,   129,    -1,    91,   560,
      -1,   562,    -1,   199,    97,    -1,    -1,    -1,   571,   317,
      -1,    -1,   208,    -1,    -1,    -1,   577,   578,    -1,    -1,
      -1,   114,    -1,   578,    -1,    -1,    -1,   588,    -1,    -1,
     338,    -1,    -1,    -1,    -1,    -1,   129,   196,   197,    -1,
     348,    -1,   603,    -1,    -1,   606,   607,   355,   207,   208,
      -1,   612,    -1,    -1,   194,   195,   196,   197,    -1,    -1,
      -1,    -1,   195,   196,   197,    -1,   629,   207,   208,    -1,
     378,    -1,   633,    -1,   207,   208,    -1,   640,    -1,    -1,
      -1,    -1,    -1,    -1,   392,    -1,    -1,    -1,    -1,    -1,
     398,    -1,   400,    -1,   402,    -1,    -1,    -1,    -1,   192,
     193,   194,   195,   196,   197,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,   420,    -1,   207,   208,   677,   680,    -1,    -1,
     681,    -1,    -1,    -1,    -1,    -1,    -1,   688,   689,    -1,
       3,   692,     5,     6,    -1,    -1,     9,    -1,    -1,    -1,
      13,    -1,    -1,    16,    -1,    -1,    19,    -1,    21,    -1,
      23,    -1,    25,    -1,    27,    -1,    -1,    30,    -1,    -1,
      33,    -1,    35,    -1,    37,    38,    39,    -1,    -1,    -1,
      -1,    -1,   480,    -1,    -1,    -1,    -1,   485,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,   506,    -1,
      -1,    -1,    -1,    -1,    -1,   513,    -1,    -1,    -1,   517,
      -1,    -1,   520,   521,    -1,    -1,    -1,    -1,    -1,    -1,
     528,   529,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,   541,    -1,    -1,    -1,    -1,    -1,   547,
      -1,    -1,    -1,    -1,    -1,    -1,   554,   555,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,   571,    -1,    -1,    -1,    -1,    -1,    -1,
     578,    -1,     4,    -1,    -1,     7,     8,    -1,    10,    -1,
      12,    -1,    14,    15,    -1,    17,    18,    -1,    20,   597,
      22,    -1,    24,    -1,    26,    -1,    28,    29,    -1,    31,
      32,    -1,    34,    -1,    36,    -1,    -1,    -1,    40,    41,
      42,    -1,    -1,    45,    -1,    47,    48,    -1,    -1,    51,
      -1,   629,    54,    -1,    56,    -1,   199,    -1,    60,    61,
      62,    63,   640,    65,    -1,   208,    68,    -1,    70,    71,
      -1,    73,    74,    -1,    76,    -1,    -1,    79,    80,    -1,
      -1,    83,    84,    85,    86,    87,    -1,    -1,    -1,    91,
      -1,    -1,    -1,    95,    96,    97,    98,    99,   100,   101,
     102,   103,   680,   105,   106,    -1,   108,   109,   110,    -1,
     112,   113,   114,    -1,    -1,   117,   118,    -1,    -1,    -1,
     122,   123,   124,   125,   126,    -1,    -1,   129,   130,   131,
     132,   133,   134,   135,    -1,    -1,   138,    -1,   140,    -1,
     142,    -1,    -1,   145,    -1,    -1,    -1,    -1,   150,    -1,
      -1,    -1,   154,   155,   156,   157,   158,   159,   160,   161,
     162,   163,   164,   165,   166,   167,   168,   169,   170,   171,
     172,   173,    -1,    -1,    -1,    -1,    -1,   179,    -1,    -1,
      -1,    -1,   184,    -1,    -1,    -1,   188,   189,   190,   191,
     192,   193,   194,   195,   196,   197,    -1,    -1,    -1,    -1,
      -1,    -1,   204,    -1,   206,   207,   208,    -1,     4,    -1,
     212,     7,     8,    -1,    10,    -1,    12,    -1,    14,    15,
      -1,    17,    18,    -1,    20,    -1,    22,    -1,    24,     4,
      26,    -1,    28,    29,    -1,    31,    32,    -1,    34,    14,
      36,    -1,    17,    -1,    -1,    20,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    28,    29,    -1,    -1,    32,    -1,    34,
      -1,    36,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    46,    47,    48,    -1,    -1,    51,    -1,    -1,
      54,    55,    -1,    57,    -1,    -1,    -1,    -1,    62,    63,
      -1,    -1,    -1,    -1,    -1,    91,    70,    -1,    -1,    -1,
      96,    97,    76,    77,    -1,    -1,    80,    -1,    -1,    83,
      -1,    -1,    86,    87,    -1,    -1,    91,    -1,   114,    -1,
      94,    96,    97,    -1,    98,    99,   100,   101,   102,   103,
     104,   105,   106,   129,    -1,   109,    -1,    -1,   112,   114,
      -1,    -1,    -1,    -1,    -1,   119,   120,   121,   122,   123,
     124,    -1,   126,   127,   129,    -1,    -1,   131,   132,    -1,
     134,   135,    -1,   137,    -1,    -1,   140,    -1,    -1,    -1,
     144,   145,   146,    -1,    -1,    -1,   150,    -1,    -1,    -1,
     154,   155,    -1,   179,    -1,    -1,    -1,    -1,   184,    -1,
      -1,    -1,   188,   189,   190,   191,   192,   193,   194,   195,
     196,   197,    -1,    -1,     8,    -1,    -1,    -1,    -1,    -1,
      -1,   207,   208,   209,    18,   190,   191,   192,   193,   194,
     195,   196,   197,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,   205,   207,   208,    -1,    -1,    40,    41,    42,    -1,
      44,    45,    46,    47,    48,    49,    -1,    51,    52,    -1,
      54,    55,    56,    57,    58,    59,    60,    61,    62,    63,
      64,    65,    -1,    67,    68,    -1,    70,    71,    -1,    73,
      74,    -1,    76,    77,    -1,    79,    80,    -1,    -1,    83,
      84,    85,    86,    87,    88,    -1,    90,    -1,    92,    -1,
      94,    95,    -1,    -1,    98,    99,   100,   101,   102,   103,
     104,   105,   106,   107,   108,   109,   110,    -1,   112,   113,
      -1,    -1,    -1,   117,   118,   119,   120,   121,   122,   123,
     124,   125,   126,   127,   128,    -1,   130,   131,   132,   133,
     134,   135,   136,   137,   138,    -1,   140,    -1,   142,   143,
     144,   145,   146,   147,   148,    -1,   150,    -1,   152,    -1,
     154,   155,   156,   157,   158,   159,   160,   161,   162,   163,
     164,   165,   166,   167,   168,   169,   170,   171,   172,   173,
      -1,    -1,    -1,     8,    -1,    -1,    -1,    -1,    -1,    -1,
     184,    -1,    -1,    18,   188,    -1,   190,   191,    -1,    -1,
      -1,   195,   196,    -1,    -1,    -1,   200,    -1,    -1,    -1,
     204,    -1,   206,    -1,   208,    40,    41,    42,   212,    44,
      45,    46,    47,    48,    49,    -1,    51,    52,    -1,    54,
      55,    56,    57,    58,    59,    60,    61,    62,    63,    64,
      65,    -1,    67,    68,    -1,    70,    71,    -1,    73,    74,
      -1,    76,    77,    -1,    79,    80,    -1,    -1,    83,    84,
      85,    86,    87,    88,    -1,    -1,    -1,    92,    -1,    94,
      95,    -1,    -1,    98,    99,   100,   101,   102,   103,   104,
     105,   106,   107,   108,   109,   110,    -1,   112,   113,    -1,
      -1,    -1,   117,   118,   119,   120,   121,   122,   123,   124,
     125,   126,   127,   128,    -1,   130,   131,   132,   133,   134,
     135,   136,   137,   138,    -1,   140,    -1,   142,   143,   144,
     145,   146,   147,   148,    -1,   150,    -1,   152,    -1,   154,
     155,   156,   157,   158,   159,   160,   161,   162,   163,   164,
     165,   166,   167,   168,   169,   170,   171,   172,   173,    -1,
      -1,    -1,     8,    -1,    -1,    -1,    -1,    -1,    -1,   184,
      -1,    -1,    18,   188,    -1,   190,   191,   192,    -1,    -1,
     195,   196,    -1,    -1,    -1,   200,    -1,    -1,    -1,   204,
      -1,   206,    -1,   208,    40,    41,    42,   212,    44,    45,
      46,    47,    48,    49,    -1,    51,    52,    -1,    54,    55,
      56,    57,    58,    59,    60,    61,    62,    63,    64,    65,
      -1,    67,    68,    -1,    70,    71,    -1,    73,    74,    -1,
      76,    77,    -1,    79,    80,    -1,    -1,    83,    84,    85,
      86,    87,    88,    -1,    -1,    -1,    92,    -1,    94,    95,
      -1,    -1,    98,    99,   100,   101,   102,   103,   104,   105,
     106,   107,   108,   109,   110,    -1,   112,   113,    -1,    -1,
      -1,   117,   118,   119,   120,   121,   122,   123,   124,   125,
     126,   127,   128,    -1,   130,   131,   132,   133,   134,   135,
     136,   137,   138,    -1,   140,    -1,   142,   143,   144,   145,
     146,   147,   148,    -1,   150,    -1,   152,    -1,   154,   155,
     156,   157,   158,   159,   160,   161,   162,   163,   164,   165,
     166,   167,   168,   169,   170,   171,   172,   173,    -1,    -1,
      -1,     8,    -1,    -1,    -1,    -1,    -1,    -1,   184,    -1,
      -1,    18,   188,    -1,   190,   191,    -1,    -1,    -1,   195,
     196,    -1,    -1,    -1,   200,    -1,    -1,    -1,   204,   205,
     206,    -1,   208,    40,    41,    42,   212,    44,    45,    46,
      47,    48,    49,    -1,    51,    52,    -1,    54,    55,    56,
      57,    58,    59,    60,    61,    62,    63,    64,    65,    -1,
      67,    68,    -1,    70,    71,    -1,    73,    74,    -1,    76,
      77,    -1,    79,    80,    -1,    -1,    83,    84,    85,    86,
      87,    88,    -1,    -1,    -1,    92,    -1,    94,    95,    -1,
      -1,    98,    99,   100,   101,   102,   103,   104,   105,   106,
     107,   108,   109,   110,    -1,   112,   113,    -1,    -1,    -1,
     117,   118,   119,   120,   121,   122,   123,   124,   125,   126,
     127,   128,    -1,   130,   131,   132,   133,   134,   135,   136,
     137,   138,    -1,   140,    -1,   142,   143,   144,   145,   146,
     147,   148,    -1,   150,    -1,   152,    -1,   154,   155,   156,
     157,   158,   159,   160,   161,   162,   163,   164,   165,   166,
     167,   168,   169,   170,   171,   172,   173,    -1,    -1,    -1,
       8,    -1,    -1,    -1,    -1,    -1,    -1,   184,    -1,    -1,
      18,   188,    -1,   190,   191,    -1,    -1,    -1,   195,   196,
      -1,    -1,    -1,   200,    -1,    -1,    -1,   204,   205,   206,
      -1,   208,    40,    41,    42,   212,    44,    45,    46,    47,
      48,    49,    -1,    51,    52,    -1,    54,    55,    56,    57,
      58,    59,    60,    61,    62,    63,    64,    65,    -1,    67,
      68,    -1,    70,    71,    -1,    73,    74,    -1,    76,    77,
      -1,    79,    80,    -1,    -1,    83,    84,    85,    86,    87,
      88,    -1,    -1,    -1,    92,    -1,    94,    95,    -1,    -1,
      98,    99,   100,   101,   102,   103,   104,   105,   106,   107,
     108,   109,   110,    -1,   112,   113,    -1,    -1,    -1,   117,
     118,   119,   120,   121,   122,   123,   124,   125,   126,   127,
     128,    -1,   130,   131,   132,   133,   134,   135,   136,   137,
     138,    -1,   140,    -1,   142,   143,   144,   145,   146,   147,
     148,    -1,   150,    -1,   152,    -1,   154,   155,   156,   157,
     158,   159,   160,   161,   162,   163,   164,   165,   166,   167,
     168,   169,   170,   171,   172,   173,    -1,    -1,    -1,     8,
      -1,    -1,    -1,    -1,    -1,    -1,   184,    -1,    -1,    18,
     188,    -1,   190,   191,    -1,    -1,    -1,   195,   196,    -1,
      -1,    -1,   200,    -1,    -1,    -1,   204,   205,   206,    -1,
     208,    40,    41,    42,   212,    44,    45,    46,    47,    48,
      49,    -1,    51,    52,    -1,    54,    55,    56,    57,    58,
      59,    60,    61,    62,    63,    64,    65,    -1,    67,    68,
      -1,    70,    71,    -1,    73,    74,    -1,    76,    77,    -1,
      79,    80,    -1,    -1,    83,    84,    85,    86,    87,    88,
      -1,    -1,    -1,    92,    -1,    94,    95,    -1,    -1,    98,
      99,   100,   101,   102,   103,   104,   105,   106,   107,   108,
     109,   110,    -1,   112,   113,    -1,    -1,    -1,   117,   118,
     119,   120,   121,   122,   123,   124,   125,   126,   127,   128,
      -1,   130,   131,   132,   133,   134,   135,   136,   137,   138,
      -1,   140,    -1,   142,   143,   144,   145,   146,   147,   148,
      -1,   150,    -1,   152,    -1,   154,   155,   156,   157,   158,
     159,   160,   161,   162,   163,   164,   165,   166,   167,   168,
     169,   170,   171,   172,   173,    -1,    -1,    -1,     8,    -1,
      -1,    -1,    -1,    -1,    -1,   184,    -1,    -1,    18,   188,
      -1,   190,   191,    -1,    -1,    -1,   195,   196,    -1,    -1,
      -1,   200,    -1,    -1,    -1,   204,    -1,   206,    -1,   208,
      40,    41,    42,   212,    44,    45,    46,    47,    48,    49,
      -1,    51,    52,    -1,    54,    55,    56,    57,    58,    59,
      60,    61,    62,    63,    64,    65,    -1,    67,    68,    -1,
      70,    71,    -1,    73,    74,    -1,    76,    77,    -1,    79,
      80,    -1,    -1,    83,    84,    85,    86,    87,    88,    -1,
      -1,    -1,    92,    -1,    94,    95,    -1,    -1,    98,    99,
     100,   101,   102,   103,   104,   105,   106,   107,   108,   109,
     110,    -1,   112,   113,    -1,    -1,    -1,   117,   118,   119,
     120,   121,   122,   123,   124,   125,   126,   127,   128,    -1,
     130,   131,   132,   133,   134,   135,   136,   137,   138,    -1,
     140,    -1,   142,   143,   144,   145,   146,   147,   148,    -1,
     150,    -1,   152,    -1,   154,   155,   156,   157,   158,   159,
     160,   161,   162,   163,   164,   165,   166,   167,   168,   169,
     170,   171,   172,   173,    -1,    -1,    -1,     8,    -1,    -1,
      -1,    -1,    -1,    -1,   184,    -1,    -1,    18,   188,    -1,
     190,   191,    -1,    -1,    -1,   195,   196,    -1,    -1,    -1,
     200,    -1,    -1,    -1,   204,    -1,   206,    -1,   208,    40,
      41,    42,   212,    44,    45,    46,    47,    48,    49,    -1,
      51,    52,    -1,    54,    55,    56,    57,    58,    59,    60,
      61,    62,    63,    64,    65,    -1,    67,    68,    -1,    70,
      71,    -1,    73,    74,    -1,    76,    77,    -1,    79,    80,
      -1,    -1,    83,    84,    85,    86,    87,    88,    -1,    -1,
      -1,    92,    -1,    94,    95,    -1,    -1,    98,    99,   100,
     101,   102,   103,   104,   105,   106,   107,   108,   109,   110,
      -1,   112,   113,    -1,    -1,    -1,   117,   118,   119,   120,
     121,   122,   123,   124,   125,   126,   127,   128,    -1,   130,
     131,   132,   133,   134,   135,   136,   137,   138,    -1,   140,
      -1,   142,   143,   144,   145,   146,   147,   148,    -1,   150,
      -1,   152,    -1,   154,   155,   156,   157,   158,   159,   160,
     161,   162,   163,   164,   165,   166,   167,   168,   169,   170,
     171,   172,   173,    -1,    -1,    -1,     8,    -1,    -1,    -1,
      -1,    -1,    -1,   184,    -1,    17,    18,   188,    20,   190,
     191,    -1,    -1,    -1,   195,   196,    -1,    -1,    -1,   200,
      -1,    -1,    -1,   204,    -1,   206,    -1,   208,    40,    41,
      42,   212,    -1,    45,    -1,    47,    48,    -1,    -1,    51,
      -1,    -1,    54,    -1,    56,    -1,    -1,    -1,    60,    61,
      62,    63,    -1,    65,    -1,    -1,    68,    -1,    70,    71,
      -1,    73,    74,    -1,    76,    -1,    -1,    79,    80,    -1,
      -1,    83,    84,    85,    86,    87,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    95,    -1,    -1,    98,    99,   100,   101,
     102,   103,    -1,   105,   106,    -1,   108,   109,   110,    -1,
     112,   113,    -1,    -1,    -1,   117,   118,    -1,    -1,    -1,
     122,   123,   124,   125,   126,    -1,    -1,    -1,   130,   131,
     132,   133,   134,   135,    -1,    -1,   138,    -1,   140,    -1,
     142,    -1,    -1,   145,    -1,    -1,    -1,    -1,   150,    -1,
      -1,    -1,   154,   155,   156,   157,   158,   159,   160,   161,
     162,   163,   164,   165,   166,   167,   168,   169,   170,   171,
     172,   173,    -1,    -1,    -1,     8,    -1,    -1,    -1,    -1,
      -1,    -1,   184,    -1,    -1,    18,   188,    -1,   190,   191,
     192,   193,    -1,   195,   196,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,   204,    -1,   206,    -1,   208,    40,    41,    42,
     212,    -1,    45,    -1,    47,    48,    -1,    -1,    51,    -1,
      -1,    54,    -1,    56,    -1,    -1,    -1,    60,    61,    62,
      63,    -1,    65,    -1,    -1,    68,    -1,    70,    71,    -1,
      73,    74,    -1,    76,    -1,    78,    79,    80,    -1,    -1,
      83,    84,    85,    86,    87,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    95,    -1,    -1,    98,    99,   100,   101,   102,
     103,    -1,   105,   106,    -1,   108,   109,   110,    -1,   112,
     113,    -1,    -1,    -1,   117,   118,    -1,    -1,    -1,   122,
     123,   124,   125,   126,    -1,    -1,    -1,   130,   131,   132,
     133,   134,   135,    -1,    -1,   138,    -1,   140,    -1,   142,
      -1,    -1,   145,    -1,    -1,    -1,    -1,   150,    -1,    -1,
      -1,   154,   155,   156,   157,   158,   159,   160,   161,   162,
     163,   164,   165,   166,   167,   168,   169,   170,   171,   172,
     173,    -1,    -1,    -1,     8,    -1,    -1,    -1,    -1,    -1,
      -1,   184,    -1,    -1,    18,   188,    -1,   190,   191,    -1,
      -1,    -1,   195,   196,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,   204,    -1,   206,    -1,   208,    40,    41,    42,   212,
      -1,    45,    -1,    47,    48,    -1,    -1,    51,    -1,    -1,
      54,    -1,    56,    -1,    -1,    -1,    60,    61,    62,    63,
      -1,    65,    -1,    -1,    68,    -1,    70,    71,    -1,    73,
      74,    -1,    76,    -1,    -1,    79,    80,    -1,    -1,    83,
      84,    85,    86,    87,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    95,    -1,    -1,    98,    99,   100,   101,   102,   103,
      -1,   105,   106,    -1,   108,   109,   110,    -1,   112,   113,
      -1,    -1,    -1,   117,   118,    -1,    -1,    -1,   122,   123,
     124,   125,   126,    -1,    -1,    -1,   130,   131,   132,   133,
     134,   135,    -1,    -1,   138,    -1,   140,    -1,   142,    -1,
      -1,   145,    -1,    -1,    -1,    -1,   150,    -1,    -1,    -1,
     154,   155,   156,   157,   158,   159,   160,   161,   162,   163,
     164,   165,   166,   167,   168,   169,   170,   171,   172,   173,
      -1,    -1,    -1,     8,    -1,    -1,    -1,    -1,    -1,    -1,
     184,    -1,    -1,    18,   188,    -1,   190,   191,   192,    -1,
      -1,   195,   196,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
     204,    -1,   206,    -1,   208,    40,    41,    42,   212,    -1,
      45,    -1,    47,    48,    -1,    -1,    51,    -1,    -1,    54,
      -1,    56,    -1,    -1,    -1,    60,    61,    62,    63,    -1,
      65,    -1,    -1,    68,    -1,    70,    71,    -1,    73,    74,
      -1,    76,    -1,    -1,    79,    80,    -1,    -1,    83,    84,
      85,    86,    87,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      95,    -1,    -1,    98,    99,   100,   101,   102,   103,    -1,
     105,   106,    -1,   108,   109,   110,    -1,   112,   113,    -1,
      -1,    -1,   117,   118,    -1,    -1,    -1,   122,   123,   124,
     125,   126,    -1,    -1,    -1,   130,   131,   132,   133,   134,
     135,    -1,    -1,   138,    -1,   140,    -1,   142,    -1,    -1,
     145,    -1,    -1,    -1,    -1,   150,    -1,    -1,    -1,   154,
     155,   156,   157,   158,   159,   160,   161,   162,   163,   164,
     165,   166,   167,   168,   169,   170,   171,   172,   173,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,     8,    -1,   184,
      11,    -1,    -1,   188,    -1,   190,   191,    18,    -1,    -1,
     195,   196,    -1,    -1,    -1,    -1,    -1,    -1,    -1,   204,
      -1,   206,    -1,   208,   209,    -1,    -1,   212,    -1,    40,
      41,    42,    -1,    -1,    45,    -1,    47,    48,    -1,    -1,
      51,    -1,    -1,    54,    -1,    56,    -1,    -1,    -1,    60,
      61,    62,    63,    -1,    65,    -1,    -1,    68,    -1,    70,
      71,    -1,    73,    74,    -1,    76,    -1,    -1,    79,    80,
      -1,    -1,    83,    84,    85,    86,    87,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    95,    -1,    -1,    98,    99,   100,
     101,   102,   103,    -1,   105,   106,    -1,   108,   109,   110,
      -1,   112,   113,    -1,    -1,    -1,   117,   118,    -1,    -1,
      -1,   122,   123,   124,   125,   126,    -1,    -1,    -1,   130,
     131,   132,   133,   134,   135,    -1,    -1,   138,    -1,   140,
      -1,   142,    -1,    -1,   145,    -1,    -1,    -1,    -1,   150,
      -1,    -1,    -1,   154,   155,   156,   157,   158,   159,   160,
     161,   162,   163,   164,   165,   166,   167,   168,   169,   170,
     171,   172,   173,    -1,    -1,    -1,     8,    -1,    -1,    -1,
      -1,    -1,    -1,   184,    -1,    -1,    18,   188,    -1,   190,
     191,    -1,    -1,    -1,   195,   196,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,   204,    -1,   206,    -1,   208,    40,    41,
      42,   212,    -1,    45,    -1,    47,    48,    -1,    -1,    51,
      -1,    -1,    54,    -1,    56,    -1,    -1,    -1,    60,    61,
      62,    63,    -1,    65,    -1,    -1,    68,    -1,    70,    71,
      -1,    73,    74,    -1,    76,    -1,    -1,    79,    80,    -1,
      -1,    83,    84,    85,    86,    87,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    95,    -1,    -1,    98,    99,   100,   101,
     102,   103,    -1,   105,   106,    -1,   108,   109,   110,    -1,
     112,   113,    -1,    -1,    -1,   117,   118,    -1,    -1,    -1,
     122,   123,   124,   125,   126,    -1,    -1,    -1,   130,   131,
     132,   133,   134,   135,    -1,    -1,   138,    -1,   140,    -1,
     142,    -1,    -1,   145,    -1,    -1,    -1,    -1,   150,    -1,
      -1,    -1,   154,   155,   156,   157,   158,   159,   160,   161,
     162,   163,   164,   165,   166,   167,   168,   169,   170,   171,
     172,   173,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
       8,    -1,   184,    -1,    -1,    -1,   188,    -1,   190,   191,
      18,    -1,    -1,   195,   196,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,   204,    -1,   206,    -1,   208,   209,    -1,    -1,
     212,    -1,    40,    41,    42,    -1,    -1,    45,    -1,    47,
      48,    -1,    -1,    51,    -1,    -1,    54,    -1,    56,    -1,
      -1,    -1,    60,    61,    62,    63,    -1,    65,    -1,    -1,
      68,    -1,    70,    71,    -1,    73,    74,    -1,    76,    -1,
      -1,    79,    80,    -1,    -1,    83,    84,    85,    86,    87,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    95,    -1,    -1,
      98,    99,   100,   101,   102,   103,    -1,   105,   106,    -1,
     108,   109,   110,    -1,   112,   113,    -1,    -1,    -1,   117,
     118,    -1,    -1,    -1,   122,   123,   124,   125,   126,    -1,
      -1,    -1,   130,   131,   132,   133,   134,   135,    -1,    -1,
     138,    -1,   140,    -1,   142,    -1,    -1,   145,    -1,    -1,
      -1,    -1,   150,    -1,    -1,    -1,   154,   155,   156,   157,
     158,   159,   160,   161,   162,   163,   164,   165,   166,   167,
     168,   169,   170,   171,   172,   173,    -1,    -1,    -1,     8,
      -1,    -1,    -1,    -1,    -1,    -1,   184,    -1,    -1,    18,
     188,    -1,   190,   191,    -1,    -1,    -1,   195,   196,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,   204,    -1,   206,    -1,
     208,    40,    41,    42,   212,    -1,    45,    -1,    47,    48,
      -1,    -1,    51,    -1,    -1,    54,    -1,    56,    -1,    -1,
      -1,    60,    61,    62,    63,    -1,    65,    -1,    -1,    68,
      -1,    70,    71,    -1,    73,    74,    -1,    76,    -1,    -1,
      79,    80,    -1,    -1,    83,    84,    85,    86,    87,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    95,    -1,    -1,    98,
      99,   100,   101,   102,   103,    -1,   105,   106,    -1,   108,
     109,   110,    -1,   112,   113,    -1,    -1,    -1,   117,   118,
      -1,    -1,    -1,   122,   123,   124,   125,   126,    -1,    -1,
      -1,   130,   131,   132,   133,   134,   135,    -1,    -1,   138,
      -1,   140,    -1,   142,    -1,    -1,   145,    -1,    -1,    -1,
      -1,   150,    -1,    -1,    -1,   154,   155,   156,   157,   158,
     159,   160,   161,   162,   163,   164,   165,   166,   167,   168,
     169,   170,   171,   172,   173,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,   184,    -1,    -1,    -1,   188,
      -1,   190,   191,    -1,    -1,    -1,   195,   196,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,   204,    -1,   206,     4,   208,
      -1,     7,     8,   212,    10,    11,    12,    -1,    14,    15,
      -1,    17,    18,    -1,    20,    -1,    22,    -1,    24,    -1,
      26,    -1,    28,    29,    -1,    31,    32,    -1,    34,     4,
      36,    -1,     7,     8,    -1,    10,    -1,    12,    -1,    14,
      15,    -1,    17,    18,    -1,    20,    -1,    22,    -1,    24,
      -1,    26,    -1,    28,    29,    -1,    31,    32,    -1,    34,
      -1,    36,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    91,    -1,    -1,    -1,    -1,
      96,    97,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,   114,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    91,    -1,    -1,    -1,
      -1,    96,    97,   129,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,     4,    -1,   114,
       7,     8,    -1,    10,    -1,    12,    -1,    14,    15,    -1,
      17,    18,    -1,    20,   129,    22,    -1,    24,    -1,    26,
      -1,    28,    29,    -1,    31,    32,    -1,    34,    -1,    36,
      -1,    -1,    -1,   179,    -1,    -1,    -1,    -1,   184,    -1,
      -1,    -1,   188,   189,   190,   191,   192,   193,   194,   195,
     196,   197,   198,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,   207,   208,    -1,   179,    -1,    -1,    -1,    -1,   184,
      -1,    -1,    -1,   188,   189,   190,   191,   192,   193,   194,
     195,   196,   197,   198,    91,   200,    -1,    -1,    -1,    96,
      97,    -1,   207,   208,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,     4,    -1,   114,     7,     8,
      -1,    10,    -1,    12,    -1,    14,    15,    -1,    17,    18,
      -1,    20,   129,    22,    -1,    24,    -1,    26,    -1,    28,
      29,    -1,    31,    32,    -1,    34,     4,    36,    -1,     7,
       8,    -1,    10,    -1,    12,    -1,    14,    15,    -1,    17,
      18,    -1,    20,    -1,    22,    -1,    24,    -1,    26,    -1,
      28,    29,    -1,    31,    32,    -1,    34,    -1,    36,    -1,
      -1,    -1,   179,    -1,    -1,    -1,    -1,   184,    -1,    -1,
      -1,   188,   189,   190,   191,   192,   193,   194,   195,   196,
     197,    -1,    91,    -1,    -1,   202,   203,    96,    97,    -1,
     207,   208,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,   114,    -1,   116,    -1,    -1,
      -1,    -1,    -1,    91,    -1,    -1,    -1,    -1,    96,    97,
     129,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,   114,    -1,    -1,     4,
      -1,    -1,     7,     8,   153,    10,    -1,    12,    -1,    14,
      15,   129,    17,    18,    -1,    20,    -1,    22,    -1,    24,
      -1,    26,    -1,    28,    29,    -1,    31,    32,    -1,    34,
     179,    36,    -1,    -1,    -1,   184,    -1,    -1,    -1,   188,
     189,   190,   191,   192,   193,   194,   195,   196,   197,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,   207,   208,
      -1,   179,    -1,    -1,    -1,    -1,   184,    -1,    -1,    -1,
     188,   189,   190,   191,   192,   193,   194,   195,   196,   197,
      -1,    -1,   200,    -1,    -1,    -1,    91,    -1,    -1,   207,
     208,    96,    97,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,     4,    -1,   114,
       7,     8,    -1,    10,    -1,    12,    -1,    14,    15,    -1,
      17,    18,    -1,    20,   129,    22,    -1,    24,    -1,    26,
      -1,    28,    29,    -1,    31,    32,    -1,    34,     4,    36,
      -1,     7,     8,    -1,    10,    -1,    12,    -1,    14,    15,
      -1,    17,    18,    -1,    20,    -1,    22,    -1,    24,    -1,
      26,    -1,    28,    29,    -1,    31,    32,    -1,    34,    -1,
      36,    -1,    -1,    -1,   179,    -1,    -1,    -1,    -1,   184,
      -1,    -1,    -1,   188,   189,   190,   191,   192,   193,   194,
     195,   196,   197,   198,    91,    -1,    -1,    -1,    -1,    96,
      97,    -1,   207,   208,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,   114,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    91,    -1,    -1,    -1,    -1,
      96,    97,   129,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,     4,    -1,   114,     7,
       8,    -1,    10,    -1,    12,    -1,    14,    15,    -1,    17,
      18,    -1,    20,   129,    22,    -1,    24,    -1,    26,    -1,
      28,    29,    -1,    31,    32,    -1,    34,    -1,    36,    -1,
      -1,    -1,   179,    -1,    -1,    -1,    -1,   184,    -1,    -1,
      -1,   188,   189,   190,   191,   192,   193,   194,   195,   196,
     197,    -1,    -1,    -1,    -1,   202,    -1,    -1,    -1,    -1,
     207,   208,    -1,   179,    -1,    -1,    -1,    -1,   184,    -1,
      -1,    -1,   188,   189,   190,   191,   192,   193,   194,   195,
     196,   197,    -1,    91,    -1,    -1,   202,    -1,    96,    97,
      -1,   207,   208,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,     4,    -1,   114,     7,     8,    -1,
      10,    -1,    12,    -1,    14,    15,    -1,    17,    18,    -1,
      20,   129,    22,    -1,    24,    -1,    26,    -1,    28,    29,
      -1,    31,    32,    -1,    34,     4,    36,    -1,     7,     8,
      -1,    10,    -1,    12,    -1,    14,    15,    -1,    17,    18,
      -1,    20,    -1,    22,    -1,    24,    -1,    26,    -1,    28,
      29,    -1,    31,    32,    -1,    34,    -1,    36,    -1,    -1,
      -1,   179,    -1,    -1,    -1,    -1,   184,    -1,    -1,    -1,
     188,   189,   190,   191,   192,   193,   194,   195,   196,   197,
      -1,    91,    -1,    -1,   202,    -1,    96,    97,    -1,   207,
     208,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,   114,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    91,    -1,    -1,    -1,    -1,    96,    97,   129,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,     4,    -1,   114,     7,     8,    -1,    10,
      -1,    12,    -1,    14,    15,    -1,    17,    18,    -1,    20,
     129,    22,    -1,    24,    -1,    26,    -1,    28,    29,    -1,
      31,    32,    -1,    34,    -1,    36,    -1,    -1,    -1,   179,
      -1,    -1,    43,    -1,   184,    -1,    -1,    -1,   188,   189,
     190,   191,   192,   193,   194,   195,   196,   197,   198,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,   207,   208,    -1,
     179,    -1,    -1,    -1,    -1,   184,    -1,    -1,    -1,   188,
     189,   190,   191,   192,   193,   194,   195,   196,   197,   198,
      91,    -1,    -1,    -1,    -1,    96,    97,    -1,   207,   208,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,     4,    -1,   114,     7,     8,    -1,    10,    -1,    12,
      -1,    14,    15,    -1,    17,    18,    -1,    20,   129,    22,
      -1,    24,    -1,    26,    -1,    28,    29,    -1,    31,    32,
      -1,    34,     4,    36,    -1,     7,     8,    -1,    10,    -1,
      12,    -1,    14,    15,    -1,    17,    18,    -1,    20,    -1,
      22,    -1,    24,    -1,    26,    -1,    28,    29,    -1,    31,
      32,    -1,    34,    -1,    36,    -1,    -1,    -1,   179,    -1,
      -1,    -1,    -1,   184,    -1,    -1,    -1,   188,   189,   190,
     191,   192,   193,   194,   195,   196,   197,    -1,    91,    -1,
      -1,    -1,    -1,    96,    97,    -1,   207,   208,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,   114,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    91,
      -1,    -1,    -1,    -1,    96,    97,   129,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
       4,    -1,   114,     7,     8,    -1,    10,    -1,    12,    -1,
      14,    15,    -1,    17,    18,    -1,    20,   129,    22,    -1,
      24,    -1,    26,    -1,    28,    29,    -1,    31,    32,    -1,
      34,    -1,    36,    -1,    -1,    -1,   179,    -1,    -1,    -1,
      -1,   184,    -1,    -1,    -1,   188,   189,   190,   191,   192,
     193,   194,   195,   196,   197,   198,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,   207,   208,    -1,   179,    -1,    -1,
      -1,    -1,   184,    -1,    -1,    -1,   188,   189,   190,   191,
     192,   193,   194,   195,   196,   197,    -1,    91,   200,    -1,
      -1,    -1,    96,    97,    -1,   207,   208,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,     4,    -1,
     114,     7,     8,    -1,    10,    -1,    12,    -1,    14,    15,
      -1,    17,    18,    -1,    20,   129,    22,    -1,    24,    -1,
      26,    -1,    28,    29,    -1,    31,    32,    -1,    34,     4,
      36,    -1,     7,     8,    -1,    10,    -1,    12,    -1,    14,
      15,    -1,    17,    18,    -1,    20,    -1,    22,    -1,    24,
      -1,    26,    -1,    28,    29,    -1,    31,    32,    -1,    34,
      -1,    36,    -1,    -1,    -1,   179,    -1,    -1,    -1,    -1,
     184,    -1,    -1,    -1,   188,   189,   190,   191,   192,   193,
     194,   195,   196,   197,    -1,    91,    -1,    -1,   202,    -1,
      96,    97,    -1,   207,   208,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,   114,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    91,    -1,    -1,    -1,
      -1,    96,    97,   129,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,     4,    -1,   114,
       7,     8,    -1,    10,    -1,    12,    -1,    14,    15,    -1,
      17,    18,    -1,    20,   129,    22,    -1,    24,    -1,    26,
      -1,    28,    29,    -1,    31,    32,    -1,    34,    -1,    36,
      -1,    -1,    -1,   179,    -1,    -1,    -1,    -1,   184,    -1,
      -1,    -1,   188,   189,   190,   191,   192,   193,   194,   195,
     196,   197,    -1,    -1,   200,    -1,    -1,    -1,    -1,    -1,
      -1,   207,   208,    -1,   179,    -1,    -1,    -1,    -1,   184,
      -1,    -1,    -1,   188,   189,   190,   191,   192,   193,   194,
     195,   196,   197,    -1,    91,    -1,    -1,    -1,    -1,    96,
      97,    -1,   207,   208,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,     4,    -1,   114,     7,     8,
      -1,    10,    -1,    12,    -1,    14,    15,    -1,    17,    18,
      -1,    20,   129,    22,    -1,    24,    -1,    26,    -1,    28,
      29,    -1,    31,    32,    -1,    34,     4,    36,    -1,     7,
       8,    -1,    10,    -1,    12,    -1,    14,    15,    -1,    17,
      18,    -1,    20,    -1,    22,    -1,    24,    -1,    26,    -1,
      28,    29,    -1,    31,    32,    -1,    34,    -1,    36,    -1,
      -1,    -1,   179,    -1,    -1,    -1,    -1,   184,    -1,    -1,
      -1,   188,   189,   190,   191,   192,   193,   194,   195,   196,
     197,    -1,    91,    -1,    -1,    -1,    -1,    96,    97,    -1,
     207,   208,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,   114,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    91,    -1,    -1,    -1,    -1,    96,    97,
     129,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,     4,    -1,   114,     7,     8,    -1,
      10,    -1,    12,    -1,    14,    15,    -1,    17,    18,    -1,
      20,   129,    22,    -1,    24,    -1,    26,    -1,    28,    29,
      -1,    -1,    32,    -1,    34,    -1,    36,    -1,    -1,    -1,
     179,    -1,    -1,    -1,    -1,   184,    -1,    -1,    -1,   188,
     189,   190,   191,   192,   193,   194,   195,   196,   197,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,   207,   208,
      -1,   179,    -1,    -1,    -1,    -1,   184,    -1,    -1,    -1,
     188,   189,   190,   191,   192,    -1,   194,   195,   196,   197,
      -1,    91,    -1,    -1,    -1,    -1,    96,    97,    -1,   207,
     208,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,     4,    -1,   114,     7,     8,    -1,    10,    -1,
      12,    -1,    14,    15,    -1,    17,    18,    -1,    20,   129,
      22,    -1,    24,    -1,    26,    -1,    28,    29,    -1,    -1,
      32,    -1,    34,     4,    36,    -1,     7,     8,    -1,    10,
      -1,    12,    -1,    14,    15,    -1,    17,    18,    -1,    20,
      -1,    22,    -1,    24,    -1,    26,    -1,    28,    29,    -1,
      -1,    32,    -1,    34,    -1,    36,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,   184,    -1,    -1,    -1,   188,   189,
     190,   191,   192,   193,   194,   195,   196,   197,    -1,    91,
      -1,    -1,    -1,    -1,    96,    97,    -1,   207,   208,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,   114,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      91,    -1,    -1,    -1,    -1,    96,    97,   129,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,     4,    -1,   114,     7,     8,    -1,    10,    -1,    12,
      -1,    14,    15,    -1,    17,    18,    -1,    20,   129,    22,
      -1,    24,    -1,    26,    -1,    28,    29,    -1,    -1,    32,
      -1,    34,    -1,    36,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,   184,    -1,    -1,    -1,   188,   189,   190,   191,
     192,   193,   194,   195,   196,   197,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,   207,   208,    -1,    -1,    -1,
      -1,    -1,    -1,   184,    -1,    -1,    -1,   188,   189,   190,
     191,   192,   193,   194,   195,   196,   197,    -1,    91,    -1,
      -1,    -1,    -1,    96,    97,    -1,   207,   208,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,     4,
      -1,   114,     7,     8,    -1,    10,    -1,    12,    -1,    14,
      15,    -1,    17,    18,    -1,    20,   129,    22,    -1,    24,
      -1,    26,    -1,    28,    29,     4,    -1,    32,     7,    34,
      -1,    36,    -1,    12,    -1,    14,    15,    -1,    17,    -1,
      -1,    20,    -1,    22,    -1,    24,    -1,    -1,    -1,    28,
      29,    -1,    -1,    32,    -1,    34,    -1,    36,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,   184,    -1,    -1,    -1,   188,   189,   190,   191,   192,
     193,   194,   195,   196,   197,    -1,    91,    -1,    -1,    -1,
      -1,    96,    97,    -1,   207,   208,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,   114,
      -1,    -1,    91,     4,    -1,    -1,    -1,    96,    97,    -1,
      -1,    -1,    -1,    14,   129,    -1,    17,    -1,    -1,    20,
      -1,    -1,    -1,    -1,    -1,   114,    -1,    28,    29,     4,
      -1,    32,    -1,    34,    -1,    36,    -1,    -1,    -1,    14,
     129,    -1,    17,    -1,    -1,    20,    -1,     4,    -1,    -1,
      -1,    -1,    -1,    28,    29,    -1,    -1,    14,    -1,    -1,
      17,    36,    -1,    20,    -1,    -1,    -1,    -1,    -1,   184,
      -1,    28,    29,   188,   189,   190,   191,   192,   193,   194,
     195,   196,   197,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      91,    -1,   207,   208,    -1,    96,    97,    -1,    -1,   188,
     189,   190,   191,   192,   193,   194,   195,   196,   197,    -1,
      -1,    -1,    -1,   114,    -1,    -1,    91,    -1,   207,   208,
      -1,    96,    97,    -1,    -1,    -1,    -1,    -1,   129,    -1,
      -1,    -1,    -1,    -1,    91,    -1,    -1,    -1,    -1,   114,
      97,    -1,    -1,     3,    -1,     5,     6,    -1,    -1,     9,
      -1,    -1,    -1,    13,   129,    -1,    16,   114,    -1,    19,
      -1,    21,    -1,    23,    -1,    25,    -1,    27,    -1,    -1,
      30,    -1,   129,    33,    -1,    35,    -1,    37,    38,    39,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,   192,   193,   194,   195,   196,   197,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,   207,   208,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,   192,   193,   194,
     195,   196,   197,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,   207,   208,    -1,   192,   193,   194,   195,   196,
     197,    -1,     3,    -1,     5,     6,    -1,    -1,     9,    -1,
     207,   208,    13,    -1,    -1,    16,    -1,    -1,    19,    -1,
      21,    -1,    23,    -1,    25,    -1,    27,    -1,    -1,    30,
      -1,    -1,    33,    -1,    35,    -1,    37,    38,    39,     3,
      -1,     5,     6,    -1,    -1,     9,    -1,    -1,    -1,    13,
      -1,    -1,    16,    -1,    -1,    19,    -1,    21,    -1,    23,
      -1,    25,    -1,    27,    -1,    -1,    30,    -1,    -1,    33,
      -1,    35,    -1,    37,    38,    39,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,   198,   199,
      -1,   201,    -1,    -1,    -1,    46,    47,    48,    -1,    -1,
      51,    -1,    -1,    54,    55,    -1,    57,    -1,    -1,    -1,
      -1,    62,    63,    -1,    -1,    -1,    -1,    -1,    -1,    70,
      -1,    -1,    -1,    -1,    -1,    76,    77,    -1,    -1,    80,
      -1,    -1,    83,    -1,    -1,    86,    87,    -1,    -1,    -1,
      -1,    -1,    -1,    94,    -1,    -1,    -1,    98,    99,   100,
     101,   102,   103,   104,   105,   106,    -1,    -1,   109,    -1,
      -1,   112,    -1,    -1,    -1,    -1,    -1,    -1,   119,   120,
     121,   122,   123,   124,    -1,   126,   127,    -1,    -1,    -1,
     131,   132,    -1,   134,   135,    -1,   137,   198,   199,   140,
     201,    -1,    -1,   144,   145,   146,    -1,    -1,    -1,   150,
      -1,    -1,    -1,   154,   155,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,   199,    -1,   201,    40,    41,
      42,    -1,    44,    45,    46,    47,    48,    49,    -1,    51,
      52,    -1,    54,    55,    56,    57,    58,    59,    -1,    61,
      62,    63,    64,    -1,   205,    67,    68,    -1,    70,    71,
      -1,    73,    74,    -1,    76,    77,    -1,    79,    80,    -1,
      -1,    83,    84,    85,    86,    87,    88,    -1,    -1,    -1,
      92,    -1,    94,    95,    -1,    -1,    98,    99,   100,   101,
     102,   103,   104,   105,   106,   107,   108,   109,    -1,    -1,
     112,   113,    -1,    -1,    -1,   117,   118,   119,   120,   121,
     122,   123,   124,   125,   126,   127,   128,    -1,   130,   131,
     132,    -1,   134,   135,   136,   137,   138,    -1,   140,    -1,
     142,   143,   144,   145,   146,   147,   148,    -1,   150,    -1,
     152,    -1,   154,   155,   156,   157,   158,   159,   160,   161,
     162,   163,   164,   165,   166,   167,   168,   169,   170,   171,
     172,   173,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,   200,    -1,
      -1,    -1,   204,    -1,   206,    -1,   208,    40,    41,    42,
     212,    -1,    45,    -1,    47,    48,    -1,    -1,    51,    -1,
      -1,    54,    -1,    56,    -1,    -1,    -1,    -1,    61,    62,
      63,    -1,    -1,    -1,    -1,    68,    -1,    70,    71,    -1,
      73,    74,    -1,    76,    -1,    -1,    79,    80,    -1,    -1,
      83,    84,    85,    86,    87,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    95,    -1,    97,    98,    99,   100,   101,   102,
     103,    -1,   105,   106,    -1,   108,   109,    -1,    -1,   112,
     113,   114,    -1,    -1,   117,   118,    -1,    -1,    -1,   122,
     123,   124,   125,   126,    -1,    -1,   129,   130,   131,   132,
      -1,   134,   135,    -1,    -1,   138,    -1,   140,    -1,   142,
      -1,    -1,   145,    -1,    -1,    -1,    -1,   150,    -1,    -1,
      -1,   154,   155,   156,   157,   158,   159,   160,   161,   162,
     163,   164,   165,   166,   167,   168,   169,   170,   171,   172,
     173,    -1,    -1,    -1,    -1,    -1,    46,    47,    48,    -1,
      -1,    51,    -1,    -1,    54,    55,    -1,    57,    -1,    -1,
      -1,    -1,    62,    63,   197,    -1,    -1,    -1,    -1,    -1,
      70,   204,    -1,   206,   207,   208,    76,    77,    -1,   212,
      80,    -1,    -1,    83,    -1,    -1,    86,    87,    -1,    -1,
      -1,    -1,    -1,    -1,    94,    -1,    -1,    -1,    98,    99,
     100,   101,   102,   103,   104,   105,   106,    -1,    -1,   109,
      -1,    -1,   112,    -1,    -1,    -1,    -1,    -1,    -1,   119,
     120,   121,   122,   123,   124,    -1,   126,   127,    -1,    -1,
      -1,   131,   132,    -1,   134,   135,    -1,   137,    -1,    -1,
     140,    -1,    -1,    -1,   144,   145,   146,    -1,    -1,    -1,
     150,    -1,    -1,    -1,   154,   155,    46,    47,    48,    -1,
      -1,    51,    -1,    -1,    54,    55,    -1,    57,    -1,    -1,
      -1,    -1,    62,    63,    -1,    -1,    -1,    -1,    -1,    -1,
      70,    -1,    -1,    -1,    -1,    -1,    76,    77,    -1,    -1,
      80,    -1,    -1,    83,    -1,    -1,    86,    87,    -1,    -1,
      -1,    -1,    -1,    -1,    94,   205,    -1,    -1,    98,    99,
     100,   101,   102,   103,   104,   105,   106,    -1,    -1,   109,
      -1,    -1,   112,    -1,    -1,    -1,    -1,    -1,    -1,   119,
     120,   121,   122,   123,   124,    -1,   126,   127,    -1,    -1,
      -1,   131,   132,    -1,   134,   135,    -1,   137,    -1,    -1,
     140,    -1,    -1,    -1,   144,   145,   146,    -1,    -1,    -1,
     150,    -1,    47,    48,   154,   155,    51,    -1,    -1,    54,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    62,    63,    -1,
      -1,    -1,    -1,    -1,    -1,    70,    -1,    -1,    -1,    -1,
      -1,    76,    -1,    -1,    -1,    80,    -1,    -1,    83,    -1,
      -1,    86,    87,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    98,    99,   100,   101,   102,   103,    -1,
     105,   106,    -1,    -1,   109,    -1,    -1,   112,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,   122,   123,   124,
      -1,   126,    -1,    -1,    -1,    -1,   131,   132,    -1,   134,
     135,    -1,    -1,    -1,    -1,   140,    -1,    -1,    -1,    -1,
     145,    -1,    -1,    -1,    -1,   150,    -1,    -1,    -1,   154,
     155
};

/* YYSTOS[STATE-NUM] -- The symbol kind of the accessing symbol of
   state STATE-NUM.  */
static const yytype_int16 yystos[] =
{
       0,     8,    18,    40,    41,    42,    44,    45,    46,    47,
      48,    49,    51,    52,    54,    55,    56,    57,    58,    59,
      60,    61,    62,    63,    64,    65,    67,    68,    70,    71,
      73,    74,    76,    77,    79,    80,    83,    84,    85,    86,
      87,    88,    90,    92,    94,    95,    98,    99,   100,   101,
     102,   103,   104,   105,   106,   107,   108,   109,   110,   112,
     113,   117,   118,   119,   120,   121,   122,   123,   124,   125,
     126,   127,   128,   130,   131,   132,   133,   134,   135,   136,
     137,   138,   140,   142,   143,   144,   145,   146,   147,   148,
     150,   152,   154,   155,   156,   157,   158,   159,   160,   161,
     162,   163,   164,   165,   166,   167,   168,   169,   170,   171,
     172,   173,   184,   188,   190,   191,   195,   196,   200,   204,
     206,   208,   212,   214,   215,   216,   217,   218,   219,   220,
     225,   226,   227,   228,   229,   230,   231,   232,   236,   237,
     238,   240,   248,   250,   251,   262,   271,   272,   279,   280,
      65,    87,   204,   240,   262,   240,   240,   240,   240,   201,
     240,   204,    87,   200,   192,   270,   240,    72,    89,   275,
     277,   240,   240,    87,   200,   240,   240,   198,    78,   240,
     218,    87,   240,   240,   201,   192,   198,   201,   201,   159,
      93,   275,   240,   192,   192,   192,   192,   192,   267,    87,
     240,    17,    20,   192,   193,   240,   285,   192,   268,   192,
     201,   208,   266,   240,    72,   204,   273,   240,    66,   243,
     192,   240,   192,   201,   240,   218,    87,   275,    87,    87,
     201,   192,   265,   240,   240,   248,   240,   240,   240,   240,
     192,   217,   240,   249,   281,   283,   284,   240,   282,   201,
       0,   216,   217,    87,   218,   200,     4,     7,     8,    10,
      12,    14,    15,    17,    18,    20,    22,    24,    26,    28,
      29,    31,    32,    34,    36,    91,    96,    97,   114,   129,
     179,   184,   188,   189,   190,   191,   192,   193,   194,   195,
     196,   197,   200,   207,   208,     3,     5,     6,     9,    13,
      16,    19,    21,    23,    25,    27,    30,    33,    35,    37,
      38,    39,   179,   199,   208,   200,   188,   190,   194,   195,
     201,   207,   208,    87,   260,   262,   240,     8,    18,   184,
     188,   190,   191,   195,   196,   208,   240,   240,   217,   200,
      86,   106,   109,   145,   154,   155,   269,    11,   198,    87,
     274,    87,   278,    72,    89,   204,   200,   218,    87,   152,
     204,   263,   240,   233,   252,   262,   262,   218,   240,   249,
     240,    87,   262,   262,   262,   262,   158,    46,   204,   230,
     240,   240,   269,   262,   167,   167,   240,   274,    46,    77,
     250,   262,   276,   141,   244,   262,   262,   240,    53,   239,
     199,   132,   199,   240,   158,   196,   240,   281,   205,   198,
     203,   205,   203,   205,   203,   205,   209,   240,   259,   260,
     198,   240,   240,   240,   240,   240,   240,   240,   240,   240,
     240,   240,   240,   240,   240,   240,   240,   240,   240,   240,
      96,    96,    96,   240,   240,   240,   240,   240,   240,   240,
     240,   240,   240,   240,   240,    11,   249,   240,   240,   240,
     240,   240,   240,   240,   240,   240,   240,   240,   240,   240,
     240,   240,   240,   240,    87,   240,   240,   262,   249,   249,
      87,   188,   189,   190,   191,   255,   188,   195,   197,   211,
     261,   240,   240,   240,   240,   240,   202,   203,   205,   193,
     240,   218,   203,   203,   274,   278,   276,   151,   201,    87,
     264,   200,   202,   203,    87,   193,   202,   202,   201,   193,
     203,   203,   193,   193,   203,   193,   203,   203,   204,   201,
     205,   250,   240,   188,   240,   241,   242,   193,   193,   202,
     218,    53,   262,    87,   222,   223,   262,   202,   203,   193,
     240,   240,   240,   284,   202,   203,   218,   240,   240,   240,
     198,   249,    11,   209,   209,   202,   209,   258,   259,   258,
     159,   198,    87,    87,   205,   240,   240,   199,   204,   257,
     203,   205,   234,   240,    87,   158,   253,   262,   199,   218,
      87,   221,   262,   262,   269,   167,   167,   276,   262,   116,
     153,    43,    78,   203,   230,   218,   199,   151,   203,   200,
     218,   158,   198,   218,   260,   240,   209,   209,   249,    75,
     111,   115,   256,   256,   202,   218,   200,   202,   240,   217,
     240,   249,    87,   200,   210,   254,   189,   190,    87,   240,
      69,   202,   203,   193,   193,   193,   202,   209,   202,   209,
     205,    87,   153,   139,    87,   221,   242,   240,   240,   223,
     193,   240,   209,   257,   257,   205,   205,   257,   235,   240,
     210,   253,   253,   218,   149,    87,   139,   151,   245,   200,
     202,   201,   240,    81,   246,   218,   224,   240,    50,    82,
     247,   202,   203,   240,   240,   200,   240
};

/* YYR1[RULE-NUM] -- Symbol kind of the left-hand side of rule RULE-NUM.  */
static const yytype_int16 yyr1[] =
{
       0,   213,   214,   214,   215,   215,   216,   217,   217,   217,
     217,   218,   218,   218,   218,   218,   218,   218,   218,   218,
     218,   218,   218,   218,   218,   218,   218,   218,   218,   218,
     218,   219,   220,   220,   220,   221,   221,   222,   222,   223,
     224,   224,   225,   225,   225,   225,   226,   226,   227,   227,
     228,   229,   230,   230,   231,   231,   231,   231,   231,   231,
     232,   233,   233,   234,   234,   235,   235,   236,   237,   238,
     239,   239,   240,   240,   240,   240,   240,   240,   240,   240,
     240,   240,   240,   240,   240,   240,   240,   240,   240,   240,
     240,   240,   240,   240,   240,   240,   240,   240,   240,   240,
     240,   240,   240,   240,   240,   240,   240,   240,   240,   240,
     240,   240,   240,   240,   240,   240,   240,   240,   240,   240,
     240,   240,   240,   240,   240,   240,   240,   240,   240,   240,
     240,   240,   240,   240,   240,   240,   240,   240,   240,   240,
     240,   240,   240,   240,   240,   240,   240,   240,   240,   240,
     240,   240,   240,   240,   240,   240,   240,   240,   240,   240,
     240,   240,   240,   240,   241,   241,   242,   242,   242,   243,
     243,   244,   244,   244,   244,   244,   245,   245,   246,   246,
     247,   247,   248,   248,   248,   248,   249,   249,   250,   250,
     250,   250,   250,   251,   252,   252,   253,   253,   253,   253,
     253,   254,   254,   254,   255,   255,   255,   255,   256,   256,
     256,   256,   257,   257,   257,   258,   258,   259,   259,   260,
     260,   261,   261,   261,   261,   262,   262,   262,   262,   262,
     262,   262,   262,   262,   262,   262,   262,   262,   262,   262,
     262,   262,   262,   262,   262,   262,   262,   262,   262,   262,
     262,   262,   262,   262,   262,   262,   262,   262,   262,   262,
     262,   262,   262,   262,   262,   262,   262,   263,   264,   264,
     257,   257,   265,   266,   266,   266,   266,   267,   268,   269,
     269,   269,   269,   269,   269,   270,   271,   271,   271,   271,
     271,   271,   271,   271,   272,   272,   272,   272,   272,   272,
     272,   272,   273,   273,   274,   274,   274,   275,   276,   276,
     276,   277,   277,   277,   277,   278,   278,   279,   280,   280,
     280,   280,   280,   280,   280,   280,   280,   280,   280,   280,
     280,   280,   280,   280,   280,   280,   280,   280,   280,   280,
     280,   280,   280,   280,   280,   280,   280,   280,   280,   281,
     281,   281,   282,   282,   283,   283,   284,   285,   285,   285,
     285
};

/* YYR2[RULE-NUM] -- Number of symbols on the right-hand side of rule RULE-NUM.  */
static const yytype_int8 yyr2[] =
{
       0,     2,     2,     1,     2,     1,     2,     1,     3,     2,
       4,     1,     2,     1,     2,     2,     1,     1,     1,     1,
       1,     2,     3,     2,     3,     1,     1,     1,     1,     1,
       1,     5,     6,    11,     7,     3,     1,     3,     1,     3,
       3,     1,     1,     2,     1,     2,     4,     6,     5,     7,
       5,     3,     3,     4,     3,     5,     2,     4,     6,     3,
       9,     0,     4,     0,     1,     0,     1,     5,     6,     3,
       2,     3,     1,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     3,     3,     3,     3,     3,     3,
       3,     3,     3,     3,     3,     3,     3,     3,     3,     3,
       3,     3,     3,     3,     3,     3,     3,     3,     3,     3,
       3,     3,     3,     3,     3,     3,     3,     3,     3,     3,
       3,     3,     3,     3,     3,     3,     3,     3,     3,     3,
       3,     4,     4,     4,     3,     5,     3,     2,     2,     2,
       2,     2,     2,     2,     3,     2,     3,     3,     3,     3,
       2,     2,     2,     2,     2,     4,     6,     5,     5,     4,
       4,     1,     1,     9,     3,     1,     1,     1,     3,     0,
       1,     0,     2,     3,     4,     5,     0,     2,     0,     3,
       0,     2,     1,     4,     3,     2,     3,     1,     6,     6,
       4,     1,     1,     5,     4,     2,     2,     1,     3,     3,
       3,     0,     2,     1,     1,     1,     1,     1,     0,     1,
       1,     1,     2,     3,     3,     0,     1,     3,     1,     1,
       2,     1,     1,     1,     1,     1,     2,     1,     2,     1,
       2,     1,     2,     1,     2,     1,     1,     1,     1,     1,
       1,     1,     1,     4,     4,     6,     6,     4,     4,     4,
       4,     4,     1,     1,     1,     1,     1,     1,     1,     1,
       1,     1,     3,     3,     1,     1,     1,     3,     2,     4,
       0,     2,     5,     5,     5,     5,     5,     3,     5,     1,
       1,     1,     1,     1,     1,     3,     1,     1,     1,     1,
       1,     1,     1,     1,     2,     2,     2,     2,     2,     2,
       2,     2,     3,     5,     0,     3,     1,     4,     0,     2,
       1,     3,     3,     2,     2,     3,     1,     5,     1,     1,
       1,     1,     1,     1,     1,     1,     1,     1,     1,     1,
       1,     1,     1,     1,     1,     1,     1,     1,     3,     3,
       3,     3,     1,     1,     1,     1,     1,     1,     1,     0,
       3,     5,     0,     2,     3,     1,     3,     1,     1,     1,
       1
};


enum { YYENOMEM = -2 };

#define yyerrok         (yyerrstatus = 0)
#define yyclearin       (yychar = YYEMPTY)

#define YYACCEPT        goto yyacceptlab
#define YYABORT         goto yyabortlab
#define YYERROR         goto yyerrorlab
#define YYNOMEM         goto yyexhaustedlab


#define YYRECOVERING()  (!!yyerrstatus)

#define YYBACKUP(Token, Value)                                    \
  do                                                              \
    if (yychar == YYEMPTY)                                        \
      {                                                           \
        yychar = (Token);                                         \
        yylval = (Value);                                         \
        YYPOPSTACK (yylen);                                       \
        yystate = *yyssp;                                         \
        goto yybackup;                                            \
      }                                                           \
    else                                                          \
      {                                                           \
        yyerror (YY_("syntax error: cannot back up")); \
        YYERROR;                                                  \
      }                                                           \
  while (0)

/* Backward compatibility with an undocumented macro.
   Use YYerror or YYUNDEF. */
#define YYERRCODE YYUNDEF


/* Enable debugging if requested.  */
#if YYDEBUG

# ifndef YYFPRINTF
#  include <stdio.h> /* INFRINGES ON USER NAME SPACE */
#  define YYFPRINTF fprintf
# endif

# define YYDPRINTF(Args)                        \
do {                                            \
  if (yydebug)                                  \
    YYFPRINTF Args;                             \
} while (0)




# define YY_SYMBOL_PRINT(Title, Kind, Value, Location)                    \
do {                                                                      \
  if (yydebug)                                                            \
    {                                                                     \
      YYFPRINTF (stderr, "%s ", Title);                                   \
      yy_symbol_print (stderr,                                            \
                  Kind, Value); \
      YYFPRINTF (stderr, "\n");                                           \
    }                                                                     \
} while (0)


/*-----------------------------------.
| Print this symbol's value on YYO.  |
`-----------------------------------*/

static void
yy_symbol_value_print (FILE *yyo,
                       yysymbol_kind_t yykind, YYSTYPE const * const yyvaluep)
{
  FILE *yyoutput = yyo;
  YY_USE (yyoutput);
  if (!yyvaluep)
    return;
  YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN
  YY_USE (yykind);
  YY_IGNORE_MAYBE_UNINITIALIZED_END
}


/*---------------------------.
| Print this symbol on YYO.  |
`---------------------------*/

static void
yy_symbol_print (FILE *yyo,
                 yysymbol_kind_t yykind, YYSTYPE const * const yyvaluep)
{
  YYFPRINTF (yyo, "%s %s (",
             yykind < YYNTOKENS ? "token" : "nterm", yysymbol_name (yykind));

  yy_symbol_value_print (yyo, yykind, yyvaluep);
  YYFPRINTF (yyo, ")");
}

/*------------------------------------------------------------------.
| yy_stack_print -- Print the state stack from its BOTTOM up to its |
| TOP (included).                                                   |
`------------------------------------------------------------------*/

static void
yy_stack_print (yy_state_t *yybottom, yy_state_t *yytop)
{
  YYFPRINTF (stderr, "Stack now");
  for (; yybottom <= yytop; yybottom++)
    {
      int yybot = *yybottom;
      YYFPRINTF (stderr, " %d", yybot);
    }
  YYFPRINTF (stderr, "\n");
}

# define YY_STACK_PRINT(Bottom, Top)                            \
do {                                                            \
  if (yydebug)                                                  \
    yy_stack_print ((Bottom), (Top));                           \
} while (0)


/*------------------------------------------------.
| Report that the YYRULE is going to be reduced.  |
`------------------------------------------------*/

static void
yy_reduce_print (yy_state_t *yyssp, YYSTYPE *yyvsp,
                 int yyrule)
{
  int yylno = yyrline[yyrule];
  int yynrhs = yyr2[yyrule];
  int yyi;
  YYFPRINTF (stderr, "Reducing stack by rule %d (line %d):\n",
             yyrule - 1, yylno);
  /* The symbols being reduced.  */
  for (yyi = 0; yyi < yynrhs; yyi++)
    {
      YYFPRINTF (stderr, "   $%d = ", yyi + 1);
      yy_symbol_print (stderr,
                       YY_ACCESSING_SYMBOL (+yyssp[yyi + 1 - yynrhs]),
                       &yyvsp[(yyi + 1) - (yynrhs)]);
      YYFPRINTF (stderr, "\n");
    }
}

# define YY_REDUCE_PRINT(Rule)          \
do {                                    \
  if (yydebug)                          \
    yy_reduce_print (yyssp, yyvsp, Rule); \
} while (0)

/* Nonzero means print parse trace.  It is left uninitialized so that
   multiple parsers can coexist.  */
int yydebug;
#else /* !YYDEBUG */
# define YYDPRINTF(Args) ((void) 0)
# define YY_SYMBOL_PRINT(Title, Kind, Value, Location)
# define YY_STACK_PRINT(Bottom, Top)
# define YY_REDUCE_PRINT(Rule)
#endif /* !YYDEBUG */


/* YYINITDEPTH -- initial size of the parser's stacks.  */
#ifndef YYINITDEPTH
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






/*-----------------------------------------------.
| Release the memory associated to this symbol.  |
`-----------------------------------------------*/

static void
yydestruct (const char *yymsg,
            yysymbol_kind_t yykind, YYSTYPE *yyvaluep)
{
  YY_USE (yyvaluep);
  if (!yymsg)
    yymsg = "Deleting";
  YY_SYMBOL_PRINT (yymsg, yykind, yyvaluep, yylocationp);

  YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN
  YY_USE (yykind);
  YY_IGNORE_MAYBE_UNINITIALIZED_END
}


/* Lookahead token kind.  */
int yychar;

/* The semantic value of the lookahead symbol.  */
YYSTYPE yylval;
/* Number of syntax errors so far.  */
int yynerrs;




/*----------.
| yyparse.  |
`----------*/

int
yyparse (void)
{
    yy_state_fast_t yystate = 0;
    /* Number of tokens to shift before error messages enabled.  */
    int yyerrstatus = 0;

    /* Refer to the stacks through separate pointers, to allow yyoverflow
       to reallocate them elsewhere.  */

    /* Their size.  */
    YYPTRDIFF_T yystacksize = YYINITDEPTH;

    /* The state stack: array, bottom, top.  */
    yy_state_t yyssa[YYINITDEPTH];
    yy_state_t *yyss = yyssa;
    yy_state_t *yyssp = yyss;

    /* The semantic value stack: array, bottom, top.  */
    YYSTYPE yyvsa[YYINITDEPTH];
    YYSTYPE *yyvs = yyvsa;
    YYSTYPE *yyvsp = yyvs;

  int yyn;
  /* The return value of yyparse.  */
  int yyresult;
  /* Lookahead symbol kind.  */
  yysymbol_kind_t yytoken = YYSYMBOL_YYEMPTY;
  /* The variables used to return semantic value and location from the
     action routines.  */
  YYSTYPE yyval;



#define YYPOPSTACK(N)   (yyvsp -= (N), yyssp -= (N))

  /* The number of symbols on the RHS of the reduced rule.
     Keep to zero when no symbol should be popped.  */
  int yylen = 0;

  YYDPRINTF ((stderr, "Starting parse\n"));

  yychar = YYEMPTY; /* Cause a token to be read.  */

  goto yysetstate;


/*------------------------------------------------------------.
| yynewstate -- push a new state, which is found in yystate.  |
`------------------------------------------------------------*/
yynewstate:
  /* In all cases, when you get here, the value and location stacks
     have just been pushed.  So pushing a state here evens the stacks.  */
  yyssp++;


/*--------------------------------------------------------------------.
| yysetstate -- set current state (the top of the stack) to yystate.  |
`--------------------------------------------------------------------*/
yysetstate:
  YYDPRINTF ((stderr, "Entering state %d\n", yystate));
  YY_ASSERT (0 <= yystate && yystate < YYNSTATES);
  YY_IGNORE_USELESS_CAST_BEGIN
  *yyssp = YY_CAST (yy_state_t, yystate);
  YY_IGNORE_USELESS_CAST_END
  YY_STACK_PRINT (yyss, yyssp);

  if (yyss + yystacksize - 1 <= yyssp)
#if !defined yyoverflow && !defined YYSTACK_RELOCATE
    YYNOMEM;
#else
    {
      /* Get the current used size of the three stacks, in elements.  */
      YYPTRDIFF_T yysize = yyssp - yyss + 1;

# if defined yyoverflow
      {
        /* Give user a chance to reallocate the stack.  Use copies of
           these so that the &'s don't force the real ones into
           memory.  */
        yy_state_t *yyss1 = yyss;
        YYSTYPE *yyvs1 = yyvs;

        /* Each stack pointer address is followed by the size of the
           data in use in that stack, in bytes.  This used to be a
           conditional around just the two extra args, but that might
           be undefined if yyoverflow is a macro.  */
        yyoverflow (YY_("memory exhausted"),
                    &yyss1, yysize * YYSIZEOF (*yyssp),
                    &yyvs1, yysize * YYSIZEOF (*yyvsp),
                    &yystacksize);
        yyss = yyss1;
        yyvs = yyvs1;
      }
# else /* defined YYSTACK_RELOCATE */
      /* Extend the stack our own way.  */
      if (YYMAXDEPTH <= yystacksize)
        YYNOMEM;
      yystacksize *= 2;
      if (YYMAXDEPTH < yystacksize)
        yystacksize = YYMAXDEPTH;

      {
        yy_state_t *yyss1 = yyss;
        union yyalloc *yyptr =
          YY_CAST (union yyalloc *,
                   YYSTACK_ALLOC (YY_CAST (YYSIZE_T, YYSTACK_BYTES (yystacksize))));
        if (! yyptr)
          YYNOMEM;
        YYSTACK_RELOCATE (yyss_alloc, yyss);
        YYSTACK_RELOCATE (yyvs_alloc, yyvs);
#  undef YYSTACK_RELOCATE
        if (yyss1 != yyssa)
          YYSTACK_FREE (yyss1);
      }
# endif

      yyssp = yyss + yysize - 1;
      yyvsp = yyvs + yysize - 1;

      YY_IGNORE_USELESS_CAST_BEGIN
      YYDPRINTF ((stderr, "Stack size increased to %ld\n",
                  YY_CAST (long, yystacksize)));
      YY_IGNORE_USELESS_CAST_END

      if (yyss + yystacksize - 1 <= yyssp)
        YYABORT;
    }
#endif /* !defined yyoverflow && !defined YYSTACK_RELOCATE */


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
  if (yypact_value_is_default (yyn))
    goto yydefault;

  /* Not known => get a lookahead token if don't already have one.  */

  /* YYCHAR is either empty, or end-of-input, or a valid lookahead.  */
  if (yychar == YYEMPTY)
    {
      YYDPRINTF ((stderr, "Reading a token\n"));
      yychar = yylex ();
    }

  if (yychar <= YYEOF)
    {
      yychar = YYEOF;
      yytoken = YYSYMBOL_YYEOF;
      YYDPRINTF ((stderr, "Now at end of input.\n"));
    }
  else if (yychar == YYerror)
    {
      /* The scanner already issued an error message, process directly
         to error recovery.  But do not keep the error token as
         lookahead, it is too special and may lead us to an endless
         loop in error recovery. */
      yychar = YYUNDEF;
      yytoken = YYSYMBOL_YYerror;
      goto yyerrlab1;
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
      if (yytable_value_is_error (yyn))
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
  yystate = yyn;
  YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN
  *++yyvsp = yylval;
  YY_IGNORE_MAYBE_UNINITIALIZED_END

  /* Discard the shifted token.  */
  yychar = YYEMPTY;
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
| yyreduce -- do a reduction.  |
`-----------------------------*/
yyreduce:
  /* yyn is the number of a rule to reduce with.  */
  yylen = yyr2[yyn];

  /* If YYLEN is nonzero, implement the default value of the action:
     '$$ = $1'.

     Otherwise, the following line sets YYVAL to garbage.
     This behavior is undocumented and Bison
     users should not rely upon it.  Assigning to YYVAL
     unconditionally makes the parser a bit smaller, and it avoids a
     GCC warning that YYVAL may be used uninitialized.  */
  yyval = yyvsp[1-yylen];


  YY_REDUCE_PRINT (yyn);
  switch (yyn)
    {

#line 3385 "grammar.tab.b"

      default: break;
    }
  /* User semantic actions sometimes alter yychar, and that requires
     that yytoken be updated with the new translation.  We take the
     approach of translating immediately before every use of yytoken.
     One alternative is translating here after every semantic action,
     but that translation would be missed if the semantic action invokes
     YYABORT, YYACCEPT, or YYERROR immediately after altering yychar or
     if it invokes YYBACKUP.  In the case of YYABORT or YYACCEPT, an
     incorrect destructor might then be invoked immediately.  In the
     case of YYERROR or YYBACKUP, subsequent parser actions might lead
     to an incorrect destructor call or verbose syntax error message
     before the lookahead is translated.  */
  YY_SYMBOL_PRINT ("-> $$ =", YY_CAST (yysymbol_kind_t, yyr1[yyn]), &yyval, &yyloc);

  YYPOPSTACK (yylen);
  yylen = 0;

  *++yyvsp = yyval;

  /* Now 'shift' the result of the reduction.  Determine what state
     that goes to, based on the state we popped back to and the rule
     number reduced by.  */
  {
    const int yylhs = yyr1[yyn] - YYNTOKENS;
    const int yyi = yypgoto[yylhs] + *yyssp;
    yystate = (0 <= yyi && yyi <= YYLAST && yycheck[yyi] == *yyssp
               ? yytable[yyi]
               : yydefgoto[yylhs]);
  }

  goto yynewstate;


/*--------------------------------------.
| yyerrlab -- here on detecting error.  |
`--------------------------------------*/
yyerrlab:
  /* Make sure we have latest lookahead translation.  See comments at
     user semantic actions for why this is necessary.  */
  yytoken = yychar == YYEMPTY ? YYSYMBOL_YYEMPTY : YYTRANSLATE (yychar);
  /* If not already recovering from an error, report this error.  */
  if (!yyerrstatus)
    {
      ++yynerrs;
      yyerror (YY_("syntax error"));
    }

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
                      yytoken, &yylval);
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
  /* Pacify compilers when the user code never invokes YYERROR and the
     label yyerrorlab therefore never appears in user code.  */
  if (0)
    YYERROR;
  ++yynerrs;

  /* Do not reclaim the symbols of the rule whose action triggered
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
  yyerrstatus = 3;      /* Each real token shifted decrements this.  */

  /* Pop stack until we find a state that shifts the error token.  */
  for (;;)
    {
      yyn = yypact[yystate];
      if (!yypact_value_is_default (yyn))
        {
          yyn += YYSYMBOL_YYerror;
          if (0 <= yyn && yyn <= YYLAST && yycheck[yyn] == YYSYMBOL_YYerror)
            {
              yyn = yytable[yyn];
              if (0 < yyn)
                break;
            }
        }

      /* Pop the current state because it cannot handle the error token.  */
      if (yyssp == yyss)
        YYABORT;


      yydestruct ("Error: popping",
                  YY_ACCESSING_SYMBOL (yystate), yyvsp);
      YYPOPSTACK (1);
      yystate = *yyssp;
      YY_STACK_PRINT (yyss, yyssp);
    }

  YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN
  *++yyvsp = yylval;
  YY_IGNORE_MAYBE_UNINITIALIZED_END


  /* Shift the error token.  */
  YY_SYMBOL_PRINT ("Shifting", YY_ACCESSING_SYMBOL (yyn), yyvsp, yylsp);

  yystate = yyn;
  goto yynewstate;


/*-------------------------------------.
| yyacceptlab -- YYACCEPT comes here.  |
`-------------------------------------*/
yyacceptlab:
  yyresult = 0;
  goto yyreturnlab;


/*-----------------------------------.
| yyabortlab -- YYABORT comes here.  |
`-----------------------------------*/
yyabortlab:
  yyresult = 1;
  goto yyreturnlab;


/*-----------------------------------------------------------.
| yyexhaustedlab -- YYNOMEM (memory exhaustion) comes here.  |
`-----------------------------------------------------------*/
yyexhaustedlab:
  yyerror (YY_("memory exhausted"));
  yyresult = 2;
  goto yyreturnlab;


/*----------------------------------------------------------.
| yyreturnlab -- parsing is finished, clean up and return.  |
`----------------------------------------------------------*/
yyreturnlab:
  if (yychar != YYEMPTY)
    {
      /* Make sure we have latest lookahead translation.  See comments at
         user semantic actions for why this is necessary.  */
      yytoken = YYTRANSLATE (yychar);
      yydestruct ("Cleanup: discarding lookahead",
                  yytoken, &yylval);
    }
  /* Do not reclaim the symbols of the rule whose action triggered
     this YYABORT or YYACCEPT.  */
  YYPOPSTACK (yylen);
  YY_STACK_PRINT (yyss, yyssp);
  while (yyssp != yyss)
    {
      yydestruct ("Cleanup: popping",
                  YY_ACCESSING_SYMBOL (+*yyssp), yyvsp);
      YYPOPSTACK (1);
    }
#ifndef yyoverflow
  if (yyss != yyssa)
    YYSTACK_FREE (yyss);
#endif

  return yyresult;
}

#line 833 "grammar.b"

