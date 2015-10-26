
/* A Bison parser, made by GNU Bison 2.4.1.  */

/* Skeleton implementation for Bison's Yacc-like parsers in C
   
      Copyright (C) 1984, 1989, 1990, 2000, 2001, 2002, 2003, 2004, 2005, 2006
   Free Software Foundation, Inc.
   
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
#define YYBISON_VERSION "2.4.1"

/* Skeleton name.  */
#define YYSKELETON_NAME "yacc.c"

/* Pure parsers.  */
#define YYPURE 1

/* Push parsers.  */
#define YYPUSH 0

/* Pull parsers.  */
#define YYPULL 1

/* Using locations.  */
#define YYLSP_NEEDED 0

/* Substitute the variable and function names.  */
#define yyparse         naslparse
#define yylex           nasllex
#define yyerror         naslerror
#define yylval          nasllval
#define yychar          naslchar
#define yydebug         nasldebug
#define yynerrs         naslnerrs


/* Copy the first part of user declarations.  */

/* Line 189 of yacc.c  */
#line 5 "/home/peterwang/OpenVAS_Source/openvas-libraries-7.0.10/nasl/nasl_grammar.y"

/* Nessus Attack Scripting Language version 2
 *
 * Copyright (C) 2002 - 2004 Michel Arboi and Renaud Deraison
 *
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License version 2,
 * as published by the Free Software Foundation
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program; if not, write to the Free Software
 * Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.
 */

#define YYPARSE_PARAM parm
#define YYLEX_PARAM parm

#define LNB	(((naslctxt*)parm)->line_nb)

#include <ctype.h> /* for isalpha */
#include <pcap.h> /* for islocalhost */
#include <string.h> /* for strlen */
#include <sys/stat.h> /* for stat */

#include "system.h" /* for efree */

#include "nasl_tree.h"
#include "nasl_global_ctxt.h"
#include "nasl_func.h"
#include "nasl_var.h"
#include "nasl_lex_ctxt.h"
#include "nasl_debug.h"
#include "nasl_signature.h"

static void naslerror(naslctxt *, const char *);
#define YYERROR_VERBOSE


/* Line 189 of yacc.c  */
#line 125 "nasl_grammar.tab.c"

/* Enabling traces.  */
#ifndef YYDEBUG
# define YYDEBUG 1
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
     IF = 258,
     ELSE = 259,
     EQ = 260,
     NEQ = 261,
     SUPEQ = 262,
     INFEQ = 263,
     OR = 264,
     AND = 265,
     MATCH = 266,
     NOMATCH = 267,
     REP = 268,
     FOR = 269,
     REPEAT = 270,
     UNTIL = 271,
     FOREACH = 272,
     WHILE = 273,
     BREAK = 274,
     CONTINUE = 275,
     FUNCTION = 276,
     RETURN = 277,
     INCLUDE = 278,
     LOCAL = 279,
     GLOBAL = 280,
     PLUS_PLUS = 281,
     MINUS_MINUS = 282,
     L_SHIFT = 283,
     R_SHIFT = 284,
     R_USHIFT = 285,
     EXPO = 286,
     PLUS_EQ = 287,
     MINUS_EQ = 288,
     MULT_EQ = 289,
     DIV_EQ = 290,
     MODULO_EQ = 291,
     L_SHIFT_EQ = 292,
     R_SHIFT_EQ = 293,
     R_USHIFT_EQ = 294,
     RE_MATCH = 295,
     RE_NOMATCH = 296,
     ARROW = 297,
     IDENT = 298,
     STRING1 = 299,
     STRING2 = 300,
     INTEGER = 301,
     NOT = 302,
     BIT_NOT = 303,
     UMINUS = 304
   };
#endif



#if ! defined YYSTYPE && ! defined YYSTYPE_IS_DECLARED
typedef union YYSTYPE
{

/* Line 214 of yacc.c  */
#line 48 "/home/peterwang/OpenVAS_Source/openvas-libraries-7.0.10/nasl/nasl_grammar.y"

  int		num;
  char		*str;
  struct asciiz {
    char	*val;
    int		len;
  } data;
  tree_cell	*node;



/* Line 214 of yacc.c  */
#line 222 "nasl_grammar.tab.c"
} YYSTYPE;
# define YYSTYPE_IS_TRIVIAL 1
# define yystype YYSTYPE /* obsolescent; will be withdrawn */
# define YYSTYPE_IS_DECLARED 1
#endif


/* Copy the second part of user declarations.  */

/* Line 264 of yacc.c  */
#line 58 "/home/peterwang/OpenVAS_Source/openvas-libraries-7.0.10/nasl/nasl_grammar.y"

static int nasllex(YYSTYPE * lvalp, void * parm);


/* Line 264 of yacc.c  */
#line 239 "nasl_grammar.tab.c"

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
# if YYENABLE_NLS
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
	 || (defined YYSTYPE_IS_TRIVIAL && YYSTYPE_IS_TRIVIAL)))

/* A type that is properly aligned for any stack member.  */
union yyalloc
{
  yytype_int16 yyss_alloc;
  YYSTYPE yyvs_alloc;
};

/* The size of the maximum gap between one aligned stack and the next.  */
# define YYSTACK_GAP_MAXIMUM (sizeof (union yyalloc) - 1)

/* The size of an array large to enough to hold all stacks, each with
   N elements.  */
# define YYSTACK_BYTES(N) \
     ((N) * (sizeof (yytype_int16) + sizeof (YYSTYPE)) \
      + YYSTACK_GAP_MAXIMUM)

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
#define YYFINAL  78
/* YYLAST -- Last index in YYTABLE.  */
#define YYLAST   1029

/* YYNTOKENS -- Number of terminals.  */
#define YYNTOKENS  73
/* YYNNTS -- Number of nonterminals.  */
#define YYNNTS  43
/* YYNRULES -- Number of rules.  */
#define YYNRULES  126
/* YYNRULES -- Number of states.  */
#define YYNSTATES  227

/* YYTRANSLATE(YYLEX) -- Bison symbol number corresponding to YYLEX.  */
#define YYUNDEFTOK  2
#define YYMAXUTOK   304

#define YYTRANSLATE(YYX)						\
  ((unsigned int) (YYX) <= YYMAXUTOK ? yytranslate[YYX] : YYUNDEFTOK)

/* YYTRANSLATE[YYLEX] -- Bison symbol number corresponding to YYLEX.  */
static const yytype_uint8 yytranslate[] =
{
       0,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,    70,     2,     2,     2,    57,    52,     2,
      61,    62,    55,    53,    63,    54,    72,    56,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,    67,    66,
      48,    47,    49,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,    68,     2,    69,    51,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,    64,    50,    65,    71,     2,     2,     2,
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
      45,    46,    58,    59,    60
};

#if YYDEBUG
/* YYPRHS[YYN] -- Index of the first RHS symbol of rule number YYN in
   YYRHS.  */
static const yytype_uint16 yyprhs[] =
{
       0,     0,     3,     5,     7,    10,    12,    14,    21,    22,
      24,    26,    30,    34,    37,    39,    42,    45,    47,    49,
      51,    53,    55,    57,    59,    61,    63,    65,    67,    69,
      71,    72,    75,    77,    83,    91,    93,    95,    97,    99,
     109,   115,   121,   128,   130,   132,   134,   135,   139,   141,
     143,   148,   153,   155,   156,   158,   162,   164,   168,   172,
     176,   180,   184,   188,   192,   196,   200,   204,   206,   208,
     210,   212,   217,   219,   222,   225,   228,   231,   235,   239,
     242,   246,   250,   254,   257,   260,   264,   268,   272,   276,
     280,   284,   288,   292,   296,   300,   302,   306,   310,   314,
     318,   322,   326,   330,   334,   338,   342,   344,   346,   348,
     350,   352,   356,   358,   362,   364,   368,   370,   372,   374,
     376,   378,   380,   382,   384,   392,   395
};

/* YYRHS -- A `-1'-separated list of the rules' RHS.  */
static const yytype_int8 yyrhs[] =
{
      74,     0,    -1,    75,    -1,    76,    -1,    76,    75,    -1,
      82,    -1,    77,    -1,    21,   101,    61,    78,    62,    80,
      -1,    -1,    79,    -1,   101,    -1,   101,    63,    79,    -1,
      64,    81,    65,    -1,    64,    65,    -1,    82,    -1,    82,
      81,    -1,    83,    66,    -1,    80,    -1,    85,    -1,    86,
      -1,    99,    -1,   104,    -1,    92,    -1,    95,    -1,    84,
      -1,    94,    -1,   114,    -1,   115,    -1,    19,    -1,    20,
      -1,    -1,    22,   105,    -1,    22,    -1,     3,    61,   105,
      62,    82,    -1,     3,    61,   105,    62,    82,     4,    82,
      -1,    87,    -1,    88,    -1,    89,    -1,    90,    -1,    14,
      61,    91,    66,   105,    66,    91,    62,    82,    -1,    18,
      61,   105,    62,    82,    -1,    15,    82,    16,   105,    66,
      -1,    17,   101,    61,   105,    62,    82,    -1,    99,    -1,
     104,    -1,    95,    -1,    -1,    95,    13,   105,    -1,    44,
      -1,    45,    -1,    23,    61,    93,    62,    -1,   101,    61,
      96,    62,    -1,    97,    -1,    -1,    98,    -1,    98,    63,
      97,    -1,   105,    -1,   101,    67,   105,    -1,   100,    47,
     105,    -1,   100,    32,   105,    -1,   100,    33,   105,    -1,
     100,    34,   105,    -1,   100,    35,   105,    -1,   100,    36,
     105,    -1,   100,    38,   105,    -1,   100,    39,   105,    -1,
     100,    37,   105,    -1,   101,    -1,   102,    -1,    43,    -1,
      13,    -1,   101,    68,   103,    69,    -1,   105,    -1,    26,
     100,    -1,    27,   100,    -1,   100,    26,    -1,   100,    27,
      -1,    61,   105,    62,    -1,   105,    10,   105,    -1,    70,
     105,    -1,   105,     9,   105,    -1,   105,    53,   105,    -1,
     105,    54,   105,    -1,    54,   105,    -1,    71,   105,    -1,
     105,    55,   105,    -1,   105,    31,   105,    -1,   105,    56,
     105,    -1,   105,    57,   105,    -1,   105,    52,   105,    -1,
     105,    51,   105,    -1,   105,    50,   105,    -1,   105,    29,
     105,    -1,   105,    30,   105,    -1,   105,    28,   105,    -1,
     104,    -1,   105,    11,   105,    -1,   105,    12,   105,    -1,
     105,    40,    93,    -1,   105,    41,    93,    -1,   105,    48,
     105,    -1,   105,    49,   105,    -1,   105,     5,   105,    -1,
     105,     6,   105,    -1,   105,     7,   105,    -1,   105,     8,
     105,    -1,   111,    -1,    99,    -1,   113,    -1,   109,    -1,
     106,    -1,    68,   107,    69,    -1,   108,    -1,   108,    63,
     107,    -1,   110,    -1,    93,    42,   110,    -1,    46,    -1,
      45,    -1,    44,    -1,   109,    -1,   112,    -1,   102,    -1,
      95,    -1,   101,    -1,    46,    72,    46,    72,    46,    72,
      46,    -1,    24,    78,    -1,    25,    78,    -1
};

/* YYRLINE[YYN] -- source line where rule number YYN was defined.  */
static const yytype_uint16 yyrline[] =
{
       0,   143,   143,   148,   154,   161,   161,   164,   172,   172,
     173,   174,   182,   182,   183,   184,   198,   198,   198,   198,
     201,   201,   201,   202,   202,   202,   202,   202,   203,   207,
     211,   214,   220,   227,   233,   241,   241,   241,   241,   242,
     252,   259,   267,   276,   276,   276,   276,   279,   287,   287,
     290,   320,   327,   327,   328,   328,   334,   340,   348,   352,
     353,   354,   355,   356,   357,   358,   359,   362,   362,   364,
     364,   366,   373,   376,   377,   378,   379,   383,   384,   385,
     386,   387,   388,   389,   390,   391,   392,   393,   394,   395,
     396,   397,   398,   399,   400,   401,   402,   403,   404,   405,
     406,   407,   408,   409,   410,   411,   412,   412,   412,   412,
     412,   415,   417,   418,   422,   425,   431,   432,   436,   441,
     443,   444,   444,   446,   448,   458,   466
};
#endif

#if YYDEBUG || YYERROR_VERBOSE || YYTOKEN_TABLE
/* YYTNAME[SYMBOL-NUM] -- String name of the symbol SYMBOL-NUM.
   First, the terminals, then, starting at YYNTOKENS, nonterminals.  */
static const char *const yytname[] =
{
  "$end", "error", "$undefined", "IF", "ELSE", "EQ", "NEQ", "SUPEQ",
  "INFEQ", "OR", "AND", "MATCH", "NOMATCH", "REP", "FOR", "REPEAT",
  "UNTIL", "FOREACH", "WHILE", "BREAK", "CONTINUE", "FUNCTION", "RETURN",
  "INCLUDE", "LOCAL", "GLOBAL", "PLUS_PLUS", "MINUS_MINUS", "L_SHIFT",
  "R_SHIFT", "R_USHIFT", "EXPO", "PLUS_EQ", "MINUS_EQ", "MULT_EQ",
  "DIV_EQ", "MODULO_EQ", "L_SHIFT_EQ", "R_SHIFT_EQ", "R_USHIFT_EQ",
  "RE_MATCH", "RE_NOMATCH", "ARROW", "IDENT", "STRING1", "STRING2",
  "INTEGER", "'='", "'<'", "'>'", "'|'", "'^'", "'&'", "'+'", "'-'", "'*'",
  "'/'", "'%'", "NOT", "BIT_NOT", "UMINUS", "'('", "')'", "','", "'{'",
  "'}'", "';'", "':'", "'['", "']'", "'!'", "'~'", "'.'", "$accept",
  "tiptop", "instr_decl_list", "instr_decl", "func_decl", "arg_decl",
  "arg_decl_1", "block", "instr_list", "instr", "simple_instr", "ret",
  "if_block", "loop", "for_loop", "while_loop", "repeat_loop",
  "foreach_loop", "aff_func", "rep", "string", "inc", "func_call",
  "arg_list", "arg_list_1", "arg", "aff", "lvalue", "identifier",
  "array_elem", "array_index", "post_pre_incr", "expr", "const_array",
  "list_array_data", "array_data", "atom", "simple_array_data", "var",
  "var_name", "ipaddr", "loc", "glob", 0
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
     295,   296,   297,   298,   299,   300,   301,    61,    60,    62,
     124,    94,    38,    43,    45,    42,    47,    37,   302,   303,
     304,    40,    41,    44,   123,   125,    59,    58,    91,    93,
      33,   126,    46
};
# endif

/* YYR1[YYN] -- Symbol number of symbol that rule YYN derives.  */
static const yytype_uint8 yyr1[] =
{
       0,    73,    74,    75,    75,    76,    76,    77,    78,    78,
      79,    79,    80,    80,    81,    81,    82,    82,    82,    82,
      83,    83,    83,    83,    83,    83,    83,    83,    83,    83,
      83,    84,    84,    85,    85,    86,    86,    86,    86,    87,
      88,    89,    90,    91,    91,    91,    91,    92,    93,    93,
      94,    95,    96,    96,    97,    97,    98,    98,    99,    99,
      99,    99,    99,    99,    99,    99,    99,   100,   100,   101,
     101,   102,   103,   104,   104,   104,   104,   105,   105,   105,
     105,   105,   105,   105,   105,   105,   105,   105,   105,   105,
     105,   105,   105,   105,   105,   105,   105,   105,   105,   105,
     105,   105,   105,   105,   105,   105,   105,   105,   105,   105,
     105,   106,   107,   107,   108,   108,   109,   109,   109,   110,
     111,   111,   111,   112,   113,   114,   115
};

/* YYR2[YYN] -- Number of symbols composing right hand side of rule YYN.  */
static const yytype_uint8 yyr2[] =
{
       0,     2,     1,     1,     2,     1,     1,     6,     0,     1,
       1,     3,     3,     2,     1,     2,     2,     1,     1,     1,
       1,     1,     1,     1,     1,     1,     1,     1,     1,     1,
       0,     2,     1,     5,     7,     1,     1,     1,     1,     9,
       5,     5,     6,     1,     1,     1,     0,     3,     1,     1,
       4,     4,     1,     0,     1,     3,     1,     3,     3,     3,
       3,     3,     3,     3,     3,     3,     3,     1,     1,     1,
       1,     4,     1,     2,     2,     2,     2,     3,     3,     2,
       3,     3,     3,     2,     2,     3,     3,     3,     3,     3,
       3,     3,     3,     3,     3,     1,     3,     3,     3,     3,
       3,     3,     3,     3,     3,     3,     1,     1,     1,     1,
       1,     3,     1,     3,     1,     3,     1,     1,     1,     1,
       1,     1,     1,     1,     7,     2,     2
};

/* YYDEFACT[STATE-NAME] -- Default rule to reduce with in state
   STATE-NUM when YYTABLE doesn't specify something else to do.  Zero
   means the default is an error.  */
static const yytype_uint8 yydefact[] =
{
      30,     0,    70,     0,    30,     0,     0,    28,    29,     0,
      32,     0,     8,     8,     0,     0,    69,    30,     0,     2,
       3,     6,    17,     5,     0,    24,    18,    19,    35,    36,
      37,    38,    22,    25,    23,    20,     0,    67,    68,    21,
      26,    27,     0,    46,     0,     0,     0,     0,   118,   117,
     116,     0,     0,     0,     0,     0,   122,   107,   123,   121,
      95,    31,   110,   109,   106,   120,   108,     0,   125,     9,
      10,   126,    73,    67,    74,    13,     0,    14,     1,     4,
      16,     0,    75,    76,     0,     0,     0,     0,     0,     0,
       0,     0,     0,    53,     0,     0,     0,    45,    43,    44,
       0,     0,     0,     8,     0,    83,     0,   118,   117,   116,
       0,     0,   112,   119,   114,    79,    84,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,    48,    49,     0,     0,    12,    15,    47,    59,    60,
      61,    62,    63,    66,    64,    65,    58,     0,    52,    54,
     123,    56,     0,    72,    30,     0,     0,     0,    30,     0,
       0,    77,     0,   111,     0,   102,   103,   104,   105,    80,
      78,    96,    97,    94,    92,    93,    86,    98,    99,   100,
     101,    91,    90,    89,    81,    82,    85,    87,    88,    50,
      11,    51,     0,     0,    71,    33,     0,    41,    30,    40,
       0,     0,   115,   113,    55,    57,    30,    46,    42,     7,
       0,    34,     0,     0,    30,   124,    39
};

/* YYDEFGOTO[NTERM-NUM].  */
static const yytype_int16 yydefgoto[] =
{
      -1,    18,    19,    20,    21,    68,    69,    22,    76,    23,
      24,    25,    26,    27,    28,    29,    30,    31,    96,    32,
     110,    33,    56,   157,   158,   159,    57,    36,    58,    59,
     162,    60,   161,    62,   111,   112,    63,   114,    64,    65,
      66,    40,    41
};

/* YYPACT[STATE-NUM] -- Index in YYTABLE of the portion describing
   STATE-NUM.  */
#define YYPACT_NINF -91
static const yytype_int16 yypact[] =
{
     464,   -53,   -91,   -50,   491,    -6,   -42,   -91,   -91,    -6,
     499,   -40,    -6,    -6,    -6,    -6,   -91,   259,    25,   -91,
      91,   -91,   -91,   -91,   -39,   -91,   -91,   -91,   -91,   -91,
     -91,   -91,   -91,   -91,    23,   -91,   553,   -13,   -91,   -91,
     -91,   -91,   499,    26,    29,   -30,   499,   -21,   -91,   -91,
     -18,   499,   499,    13,   499,   499,   -91,   -91,   961,   611,
     -91,   798,   -91,   -91,   -91,   -91,   -91,    19,   -91,   -91,
     -12,   -91,   -91,   -26,   -91,   -91,    -9,   123,   -91,   -91,
     -91,   499,   -91,   -91,   499,   499,   499,   499,   499,   499,
     499,   499,   499,   499,   499,   566,    -4,   -91,   -91,   -91,
     499,   499,   624,    -6,    14,    37,   682,    39,    40,   -91,
      42,     7,    22,   -91,   -91,    37,    37,   499,   499,   499,
     499,   499,   499,   499,   499,   499,   499,   499,   499,    19,
      19,   499,   499,   499,   499,   499,   499,   499,   499,   499,
     499,   -91,   -91,    28,    -6,   -91,   -91,   798,   798,   798,
     798,   798,   798,   798,   798,   798,   798,    35,   -91,    33,
     945,   798,    17,   798,   491,   499,   347,   740,   491,    36,
      16,   -91,    34,   -91,    13,   882,   882,   882,   882,   851,
     913,   882,   882,   398,   398,   398,    37,   -91,   -91,   882,
     882,   354,   337,   415,    15,    15,    37,    37,    37,   -91,
     -91,   -91,   499,   499,   -91,    83,   409,   -91,   491,   -91,
      27,    53,   -91,   -91,   -91,   798,   491,    26,   -91,   -91,
      47,   -91,    38,    56,   491,   -91,   -91
};

/* YYPGOTO[NTERM-NUM].  */
static const yytype_int16 yypgoto[] =
{
     -91,   -91,   101,   -91,   -91,   -11,   -20,   -87,    48,    12,
     -91,   -91,   -91,   -91,   -91,   -91,   -91,   -91,   -90,   -91,
     -64,   -91,     6,   -91,   -74,   -91,    24,    60,     0,    18,
     -91,    30,   209,   -91,   -45,   -91,   -52,   -41,   -91,   -91,
     -91,   -91,   -91
};

/* YYTABLE[YYPACT[STATE-NUM]].  What to do in state STATE-NUM.  If
   positive, shift that token.  If negative, reduce the rule which
   number is the opposite.  If zero, do what YYDEFACT says.
   If YYTABLE_NINF, syntax error.  */
#define YYTABLE_NINF -69
static const yytype_int16 yytable[] =
{
      37,   113,    71,   143,    37,    45,    34,     2,    42,    47,
      34,    43,    70,    70,    73,    73,    44,    37,    38,    46,
      37,    67,    38,    34,    35,    78,    34,    80,    35,    77,
      39,   101,    38,    38,    39,    38,    81,    16,    38,     2,
     103,    35,    94,    37,    35,   100,   128,    39,    93,    97,
      39,   144,    14,    15,   104,    94,   145,   107,   108,   109,
     170,    38,   165,   141,   142,   187,   188,    98,   128,    16,
     138,   139,   140,    99,    72,    74,   173,    37,    48,    49,
     109,   -48,   -49,    34,   172,   174,   204,   216,   211,    77,
     199,    17,   169,   160,     1,    38,   202,   201,   210,   220,
     224,    35,   225,    70,     2,     3,     4,    39,     5,     6,
       7,     8,     9,    10,    11,    12,    13,    14,    15,   223,
     113,    79,   113,   219,   200,   146,     1,   222,   214,   213,
       0,   212,     0,     0,    16,     0,     2,     3,     4,     0,
       5,     6,     7,     8,    70,    10,    11,    12,    13,    14,
      15,     0,     0,     0,     0,    17,     0,   -30,     0,     0,
       0,     0,     0,     0,    37,     0,    16,     0,    37,     0,
      34,     0,     0,     0,    34,     0,   205,     0,     0,     0,
     209,     0,    38,     0,     0,     0,    38,    17,    35,   -30,
       0,     0,    35,     0,    39,     0,     0,     0,    39,     0,
       0,     0,   160,     0,     0,     0,     0,     0,    37,     0,
       0,     0,     0,     0,    34,     0,    37,    37,     0,    61,
     218,     0,    34,    97,    37,     0,    38,     0,   221,     0,
      34,     0,    35,     0,    38,    38,   226,     0,    39,     0,
      35,    98,    38,     0,     0,     0,    39,    99,    35,     0,
       0,    95,     0,     0,    39,   102,     0,     0,     0,     0,
     105,   106,     1,   115,   116,     0,     0,     0,     0,     0,
       0,     0,     2,     3,     4,     0,     5,     6,     7,     8,
       0,    10,    11,    12,    13,    14,    15,     0,     0,     0,
     147,     0,     0,   148,   149,   150,   151,   152,   153,   154,
     155,   156,    16,   163,     0,     0,     0,     0,     0,   166,
     167,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,    17,    75,     0,   175,   176,   177,   178,
     179,   180,   181,   182,   183,   184,   185,   186,     0,     0,
     189,   190,   191,   192,   193,   194,   195,   196,   197,   198,
       0,     0,   117,   118,   119,   120,   121,   122,   123,   124,
       0,     0,     0,     0,     0,   125,   126,   127,   128,     0,
       0,     0,     0,     0,   206,   125,   126,   127,   128,     0,
       0,     0,   125,   126,   127,   128,     0,   129,   130,   135,
     136,   137,   138,   139,   140,   131,   132,   133,   134,   135,
     136,   137,   138,   139,   140,   134,   135,   136,   137,   138,
     139,   140,   215,   207,   117,   118,   119,   120,   121,   122,
     123,   124,     0,     0,     0,     0,   -69,   -69,   -69,   128,
       0,     0,     0,     0,     0,     0,     0,   125,   126,   127,
     128,     0,     0,   125,   126,   127,   128,     0,     0,   129,
     130,   136,   137,   138,   139,   140,     0,   131,   132,   133,
     134,   135,   136,   137,   138,   139,   140,     1,   136,   137,
     138,   139,   140,     0,     0,   217,     0,     2,     3,     4,
       0,     5,     6,     7,     8,     9,    10,    11,    12,    13,
      14,    15,     0,     0,     1,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     2,     3,     4,    16,     5,     6,
       7,     8,     2,    10,    11,    12,    13,    14,    15,     0,
       0,     0,     0,     0,     0,    14,    15,     0,    17,     0,
       0,     0,     0,     0,    16,     0,     0,     0,     0,     0,
       0,     0,    16,    48,    49,    50,     0,     0,     0,     0,
       0,     0,     0,    51,     0,    17,     0,     0,     0,     0,
      52,     0,     0,     0,     0,     0,     0,    53,     0,    54,
      55,   117,   118,   119,   120,   121,   122,   123,   124,    82,
      83,     0,     0,     0,     0,    84,    85,    86,    87,    88,
      89,    90,    91,     0,   125,   126,   127,   128,     0,     0,
      92,     0,     0,     0,     0,     0,   129,   130,     0,     0,
       0,     0,     0,     0,   131,   132,   133,   134,   135,   136,
     137,   138,   139,   140,     0,     0,     0,     0,   164,   117,
     118,   119,   120,   121,   122,   123,   124,   -68,   -68,     0,
       0,     0,     0,   -68,   -68,   -68,   -68,   -68,   -68,   -68,
     -68,     0,   125,   126,   127,   128,     0,     0,   -68,     0,
       0,     0,     0,     0,   129,   130,     0,     0,     0,     0,
       0,     0,   131,   132,   133,   134,   135,   136,   137,   138,
     139,   140,     0,     0,     0,     0,   168,   117,   118,   119,
     120,   121,   122,   123,   124,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
     125,   126,   127,   128,     0,     0,     0,     0,     0,     0,
       0,     0,   129,   130,     0,     0,     0,     0,     0,     0,
     131,   132,   133,   134,   135,   136,   137,   138,   139,   140,
       0,     0,     0,     0,   171,   117,   118,   119,   120,   121,
     122,   123,   124,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,   125,   126,
     127,   128,     0,     0,     0,     0,     0,     0,     0,     0,
     129,   130,     0,     0,     0,     0,     0,     0,   131,   132,
     133,   134,   135,   136,   137,   138,   139,   140,     0,     0,
       0,     0,   208,   117,   118,   119,   120,   121,   122,   123,
     124,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,   125,   126,   127,   128,
       0,     0,     0,     0,     0,     0,     0,     0,   129,   130,
       0,     0,     0,     0,     0,     0,   131,   132,   133,   134,
     135,   136,   137,   138,   139,   140,   117,   118,   119,   120,
       0,   122,   123,   124,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,   125,
     126,   127,   128,     0,     0,     0,     0,   -69,   -69,   -69,
     -69,   129,   130,   -69,   -69,     0,     0,     0,     0,   131,
     132,   133,   134,   135,   136,   137,   138,   139,   140,     0,
     125,   126,   127,   128,     0,     0,     0,     0,   117,   118,
     119,   120,   -69,   -69,   123,   124,     0,     0,     0,     0,
     -69,   -69,   133,   134,   135,   136,   137,   138,   139,   140,
       0,   125,   126,   127,   128,     0,     0,     0,     0,     0,
       0,     0,     0,   129,   130,     0,     0,     0,     0,     0,
       0,   131,   132,   133,   134,   135,   136,   137,   138,   139,
     140,   -67,   -67,     0,     0,     0,     0,   -67,   -67,   -67,
     -67,   -67,   -67,   -67,   -67,     0,     0,   -67,   -67,     0,
       0,     0,   -67,   -67,   -67,   -67,   -67,   -67,   -67,   -67,
     -67,     0,     0,     0,     0,     0,    93,     0,   -67,     0,
       0,     0,   203,    94,     0,     0,     0,     0,     0,     0,
       0,     0,    93,     0,     0,     0,     0,     0,     0,    94
};

static const yytype_int16 yycheck[] =
{
       0,    53,    13,    67,     4,     5,     0,    13,    61,     9,
       4,    61,    12,    13,    14,    15,     4,    17,     0,    61,
      20,    61,     4,    17,     0,     0,    20,    66,     4,    17,
       0,    61,    14,    15,     4,    17,    13,    43,    20,    13,
      61,    17,    68,    43,    20,    16,    31,    17,    61,    43,
      20,    63,    26,    27,    72,    68,    65,    44,    45,    46,
      46,    43,    66,    44,    45,   129,   130,    43,    31,    43,
      55,    56,    57,    43,    14,    15,    69,    77,    44,    45,
      46,    42,    42,    77,    42,    63,    69,     4,    72,    77,
      62,    64,   103,    93,     3,    77,    63,    62,    62,    46,
      62,    77,    46,   103,    13,    14,    15,    77,    17,    18,
      19,    20,    21,    22,    23,    24,    25,    26,    27,    72,
     172,    20,   174,   210,   144,    77,     3,   217,   202,   174,
      -1,   172,    -1,    -1,    43,    -1,    13,    14,    15,    -1,
      17,    18,    19,    20,   144,    22,    23,    24,    25,    26,
      27,    -1,    -1,    -1,    -1,    64,    -1,    66,    -1,    -1,
      -1,    -1,    -1,    -1,   164,    -1,    43,    -1,   168,    -1,
     164,    -1,    -1,    -1,   168,    -1,   164,    -1,    -1,    -1,
     168,    -1,   164,    -1,    -1,    -1,   168,    64,   164,    66,
      -1,    -1,   168,    -1,   164,    -1,    -1,    -1,   168,    -1,
      -1,    -1,   202,    -1,    -1,    -1,    -1,    -1,   208,    -1,
      -1,    -1,    -1,    -1,   208,    -1,   216,   217,    -1,    10,
     208,    -1,   216,   217,   224,    -1,   208,    -1,   216,    -1,
     224,    -1,   208,    -1,   216,   217,   224,    -1,   208,    -1,
     216,   217,   224,    -1,    -1,    -1,   216,   217,   224,    -1,
      -1,    42,    -1,    -1,   224,    46,    -1,    -1,    -1,    -1,
      51,    52,     3,    54,    55,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    13,    14,    15,    -1,    17,    18,    19,    20,
      -1,    22,    23,    24,    25,    26,    27,    -1,    -1,    -1,
      81,    -1,    -1,    84,    85,    86,    87,    88,    89,    90,
      91,    92,    43,    94,    -1,    -1,    -1,    -1,    -1,   100,
     101,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    64,    65,    -1,   117,   118,   119,   120,
     121,   122,   123,   124,   125,   126,   127,   128,    -1,    -1,
     131,   132,   133,   134,   135,   136,   137,   138,   139,   140,
      -1,    -1,     5,     6,     7,     8,     9,    10,    11,    12,
      -1,    -1,    -1,    -1,    -1,    28,    29,    30,    31,    -1,
      -1,    -1,    -1,    -1,   165,    28,    29,    30,    31,    -1,
      -1,    -1,    28,    29,    30,    31,    -1,    40,    41,    52,
      53,    54,    55,    56,    57,    48,    49,    50,    51,    52,
      53,    54,    55,    56,    57,    51,    52,    53,    54,    55,
      56,    57,   203,    66,     5,     6,     7,     8,     9,    10,
      11,    12,    -1,    -1,    -1,    -1,    28,    29,    30,    31,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    28,    29,    30,
      31,    -1,    -1,    28,    29,    30,    31,    -1,    -1,    40,
      41,    53,    54,    55,    56,    57,    -1,    48,    49,    50,
      51,    52,    53,    54,    55,    56,    57,     3,    53,    54,
      55,    56,    57,    -1,    -1,    66,    -1,    13,    14,    15,
      -1,    17,    18,    19,    20,    21,    22,    23,    24,    25,
      26,    27,    -1,    -1,     3,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    13,    14,    15,    43,    17,    18,
      19,    20,    13,    22,    23,    24,    25,    26,    27,    -1,
      -1,    -1,    -1,    -1,    -1,    26,    27,    -1,    64,    -1,
      -1,    -1,    -1,    -1,    43,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    43,    44,    45,    46,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    54,    -1,    64,    -1,    -1,    -1,    -1,
      61,    -1,    -1,    -1,    -1,    -1,    -1,    68,    -1,    70,
      71,     5,     6,     7,     8,     9,    10,    11,    12,    26,
      27,    -1,    -1,    -1,    -1,    32,    33,    34,    35,    36,
      37,    38,    39,    -1,    28,    29,    30,    31,    -1,    -1,
      47,    -1,    -1,    -1,    -1,    -1,    40,    41,    -1,    -1,
      -1,    -1,    -1,    -1,    48,    49,    50,    51,    52,    53,
      54,    55,    56,    57,    -1,    -1,    -1,    -1,    62,     5,
       6,     7,     8,     9,    10,    11,    12,    26,    27,    -1,
      -1,    -1,    -1,    32,    33,    34,    35,    36,    37,    38,
      39,    -1,    28,    29,    30,    31,    -1,    -1,    47,    -1,
      -1,    -1,    -1,    -1,    40,    41,    -1,    -1,    -1,    -1,
      -1,    -1,    48,    49,    50,    51,    52,    53,    54,    55,
      56,    57,    -1,    -1,    -1,    -1,    62,     5,     6,     7,
       8,     9,    10,    11,    12,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      28,    29,    30,    31,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    40,    41,    -1,    -1,    -1,    -1,    -1,    -1,
      48,    49,    50,    51,    52,    53,    54,    55,    56,    57,
      -1,    -1,    -1,    -1,    62,     5,     6,     7,     8,     9,
      10,    11,    12,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    28,    29,
      30,    31,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      40,    41,    -1,    -1,    -1,    -1,    -1,    -1,    48,    49,
      50,    51,    52,    53,    54,    55,    56,    57,    -1,    -1,
      -1,    -1,    62,     5,     6,     7,     8,     9,    10,    11,
      12,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    28,    29,    30,    31,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    40,    41,
      -1,    -1,    -1,    -1,    -1,    -1,    48,    49,    50,    51,
      52,    53,    54,    55,    56,    57,     5,     6,     7,     8,
      -1,    10,    11,    12,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    28,
      29,    30,    31,    -1,    -1,    -1,    -1,     5,     6,     7,
       8,    40,    41,    11,    12,    -1,    -1,    -1,    -1,    48,
      49,    50,    51,    52,    53,    54,    55,    56,    57,    -1,
      28,    29,    30,    31,    -1,    -1,    -1,    -1,     5,     6,
       7,     8,    40,    41,    11,    12,    -1,    -1,    -1,    -1,
      48,    49,    50,    51,    52,    53,    54,    55,    56,    57,
      -1,    28,    29,    30,    31,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    40,    41,    -1,    -1,    -1,    -1,    -1,
      -1,    48,    49,    50,    51,    52,    53,    54,    55,    56,
      57,    26,    27,    -1,    -1,    -1,    -1,    32,    33,    34,
      35,    36,    37,    38,    39,    -1,    -1,    26,    27,    -1,
      -1,    -1,    47,    32,    33,    34,    35,    36,    37,    38,
      39,    -1,    -1,    -1,    -1,    -1,    61,    -1,    47,    -1,
      -1,    -1,    67,    68,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    61,    -1,    -1,    -1,    -1,    -1,    -1,    68
};

/* YYSTOS[STATE-NUM] -- The (internal number of the) accessing
   symbol of state STATE-NUM.  */
static const yytype_uint8 yystos[] =
{
       0,     3,    13,    14,    15,    17,    18,    19,    20,    21,
      22,    23,    24,    25,    26,    27,    43,    64,    74,    75,
      76,    77,    80,    82,    83,    84,    85,    86,    87,    88,
      89,    90,    92,    94,    95,    99,   100,   101,   102,   104,
     114,   115,    61,    61,    82,   101,    61,   101,    44,    45,
      46,    54,    61,    68,    70,    71,    95,    99,   101,   102,
     104,   105,   106,   109,   111,   112,   113,    61,    78,    79,
     101,    78,   100,   101,   100,    65,    81,    82,     0,    75,
      66,    13,    26,    27,    32,    33,    34,    35,    36,    37,
      38,    39,    47,    61,    68,   105,    91,    95,    99,   104,
      16,    61,   105,    61,    72,   105,   105,    44,    45,    46,
      93,   107,   108,   109,   110,   105,   105,     5,     6,     7,
       8,     9,    10,    11,    12,    28,    29,    30,    31,    40,
      41,    48,    49,    50,    51,    52,    53,    54,    55,    56,
      57,    44,    45,    93,    63,    65,    81,   105,   105,   105,
     105,   105,   105,   105,   105,   105,   105,    96,    97,    98,
     101,   105,   103,   105,    62,    66,   105,   105,    62,    78,
      46,    62,    42,    69,    63,   105,   105,   105,   105,   105,
     105,   105,   105,   105,   105,   105,   105,    93,    93,   105,
     105,   105,   105,   105,   105,   105,   105,   105,   105,    62,
      79,    62,    63,    67,    69,    82,   105,    66,    62,    82,
      62,    72,   110,   107,    97,   105,     4,    66,    82,    80,
      46,    82,    91,    72,    62,    46,    82
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
   Once GCC version 2 has supplanted version 1, this can go.  */

#define YYFAIL		goto yyerrlab

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
      yyerror (parm, YY_("syntax error: cannot back up")); \
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
# if YYLTYPE_IS_TRIVIAL
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
# define YYLEX yylex (&yylval, YYLEX_PARAM)
#else
# define YYLEX yylex (&yylval, parm)
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
		  Type, Value, parm); \
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
yy_symbol_value_print (FILE *yyoutput, int yytype, YYSTYPE const * const yyvaluep, naslctxt * parm)
#else
static void
yy_symbol_value_print (yyoutput, yytype, yyvaluep, parm)
    FILE *yyoutput;
    int yytype;
    YYSTYPE const * const yyvaluep;
    naslctxt * parm;
#endif
{
  if (!yyvaluep)
    return;
  YYUSE (parm);
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
yy_symbol_print (FILE *yyoutput, int yytype, YYSTYPE const * const yyvaluep, naslctxt * parm)
#else
static void
yy_symbol_print (yyoutput, yytype, yyvaluep, parm)
    FILE *yyoutput;
    int yytype;
    YYSTYPE const * const yyvaluep;
    naslctxt * parm;
#endif
{
  if (yytype < YYNTOKENS)
    YYFPRINTF (yyoutput, "token %s (", yytname[yytype]);
  else
    YYFPRINTF (yyoutput, "nterm %s (", yytname[yytype]);

  yy_symbol_value_print (yyoutput, yytype, yyvaluep, parm);
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
yy_reduce_print (YYSTYPE *yyvsp, int yyrule, naslctxt * parm)
#else
static void
yy_reduce_print (yyvsp, yyrule, parm)
    YYSTYPE *yyvsp;
    int yyrule;
    naslctxt * parm;
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
		       		       , parm);
      YYFPRINTF (stderr, "\n");
    }
}

# define YY_REDUCE_PRINT(Rule)		\
do {					\
  if (yydebug)				\
    yy_reduce_print (yyvsp, Rule, parm); \
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
yydestruct (const char *yymsg, int yytype, YYSTYPE *yyvaluep, naslctxt * parm)
#else
static void
yydestruct (yymsg, yytype, yyvaluep, parm)
    const char *yymsg;
    int yytype;
    YYSTYPE *yyvaluep;
    naslctxt * parm;
#endif
{
  YYUSE (yyvaluep);
  YYUSE (parm);

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
int yyparse (naslctxt * parm);
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
yyparse (naslctxt * parm)
#else
int
yyparse (parm)
    naslctxt * parm;
#endif
#endif
{
/* The lookahead symbol.  */
int yychar;

/* The semantic value of the lookahead symbol.  */
YYSTYPE yylval;

    /* Number of syntax errors so far.  */
    int yynerrs;

    int yystate;
    /* Number of tokens to shift before error messages enabled.  */
    int yyerrstatus;

    /* The stacks and their tools:
       `yyss': related to states.
       `yyvs': related to semantic values.

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

    YYSIZE_T yystacksize;

  int yyn;
  int yyresult;
  /* Lookahead token as an internal (translated) token number.  */
  int yytoken;
  /* The variables used to return semantic value and location from the
     action routines.  */
  YYSTYPE yyval;

#if YYERROR_VERBOSE
  /* Buffer for error messages, and its allocated size.  */
  char yymsgbuf[128];
  char *yymsg = yymsgbuf;
  YYSIZE_T yymsg_alloc = sizeof yymsgbuf;
#endif

#define YYPOPSTACK(N)   (yyvsp -= (N), yyssp -= (N))

  /* The number of symbols on the RHS of the reduced rule.
     Keep to zero when no symbol should be popped.  */
  int yylen = 0;

  yytoken = 0;
  yyss = yyssa;
  yyvs = yyvsa;
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

	/* Each stack pointer address is followed by the size of the
	   data in use in that stack, in bytes.  This used to be a
	   conditional around just the two extra args, but that might
	   be undefined if yyoverflow is a macro.  */
	yyoverflow (YY_("memory exhausted"),
		    &yyss1, yysize * sizeof (*yyssp),
		    &yyvs1, yysize * sizeof (*yyvsp),
		    &yystacksize);

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
#  undef YYSTACK_RELOCATE
	if (yyss1 != yyssa)
	  YYSTACK_FREE (yyss1);
      }
# endif
#endif /* no yyoverflow */

      yyssp = yyss + yysize - 1;
      yyvsp = yyvs + yysize - 1;

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


  YY_REDUCE_PRINT (yyn);
  switch (yyn)
    {
        case 2:

/* Line 1455 of yacc.c  */
#line 144 "/home/peterwang/OpenVAS_Source/openvas-libraries-7.0.10/nasl/nasl_grammar.y"
    {
	  ((naslctxt*)parm)->tree = (yyvsp[(1) - (1)].node);
	;}
    break;

  case 3:

/* Line 1455 of yacc.c  */
#line 149 "/home/peterwang/OpenVAS_Source/openvas-libraries-7.0.10/nasl/nasl_grammar.y"
    {
	  (yyval.node) = alloc_tree_cell(LNB, NULL);
	  (yyval.node)->type = NODE_INSTR_L;
	  (yyval.node)->link[0] = (yyvsp[(1) - (1)].node);
	;}
    break;

  case 4:

/* Line 1455 of yacc.c  */
#line 155 "/home/peterwang/OpenVAS_Source/openvas-libraries-7.0.10/nasl/nasl_grammar.y"
    {
	  (yyval.node) = alloc_tree_cell(LNB, NULL);
	  (yyval.node)->type = NODE_INSTR_L;
	  (yyval.node)->link[0] = (yyvsp[(1) - (2)].node);
	  (yyval.node)->link[1] = (yyvsp[(2) - (2)].node);
	;}
    break;

  case 7:

/* Line 1455 of yacc.c  */
#line 165 "/home/peterwang/OpenVAS_Source/openvas-libraries-7.0.10/nasl/nasl_grammar.y"
    {
	  (yyval.node) = alloc_tree_cell(LNB, (yyvsp[(2) - (6)].str));
	  (yyval.node)->type = NODE_FUN_DEF;
	  (yyval.node)->link[0] = (yyvsp[(4) - (6)].node);
	  (yyval.node)->link[1] = (yyvsp[(6) - (6)].node);
	;}
    break;

  case 8:

/* Line 1455 of yacc.c  */
#line 172 "/home/peterwang/OpenVAS_Source/openvas-libraries-7.0.10/nasl/nasl_grammar.y"
    { (yyval.node) = NULL; ;}
    break;

  case 9:

/* Line 1455 of yacc.c  */
#line 172 "/home/peterwang/OpenVAS_Source/openvas-libraries-7.0.10/nasl/nasl_grammar.y"
    { (yyval.node) = (yyvsp[(1) - (1)].node); ;}
    break;

  case 10:

/* Line 1455 of yacc.c  */
#line 173 "/home/peterwang/OpenVAS_Source/openvas-libraries-7.0.10/nasl/nasl_grammar.y"
    { (yyval.node) = alloc_tree_cell(LNB, (yyvsp[(1) - (1)].str)); (yyval.node)->type = NODE_DECL; ;}
    break;

  case 11:

/* Line 1455 of yacc.c  */
#line 175 "/home/peterwang/OpenVAS_Source/openvas-libraries-7.0.10/nasl/nasl_grammar.y"
    {
	  (yyval.node) = alloc_tree_cell(LNB, (yyvsp[(1) - (3)].str));
	  (yyval.node)->type = NODE_DECL;
	  (yyval.node)->link[0] = (yyvsp[(3) - (3)].node);
	;}
    break;

  case 12:

/* Line 1455 of yacc.c  */
#line 182 "/home/peterwang/OpenVAS_Source/openvas-libraries-7.0.10/nasl/nasl_grammar.y"
    { (yyval.node) = (yyvsp[(2) - (3)].node); ;}
    break;

  case 13:

/* Line 1455 of yacc.c  */
#line 182 "/home/peterwang/OpenVAS_Source/openvas-libraries-7.0.10/nasl/nasl_grammar.y"
    { (yyval.node) = NULL; ;}
    break;

  case 15:

/* Line 1455 of yacc.c  */
#line 185 "/home/peterwang/OpenVAS_Source/openvas-libraries-7.0.10/nasl/nasl_grammar.y"
    {
	  if ((yyvsp[(1) - (2)].node) == NULL)
	    (yyval.node) = (yyvsp[(2) - (2)].node);
	  else
	    {
	      (yyval.node) = alloc_tree_cell(LNB, NULL);
	      (yyval.node)->type = NODE_INSTR_L;
	      (yyval.node)->link[0] = (yyvsp[(1) - (2)].node);
	      (yyval.node)->link[1] = (yyvsp[(2) - (2)].node);
	    }
	;}
    break;

  case 16:

/* Line 1455 of yacc.c  */
#line 198 "/home/peterwang/OpenVAS_Source/openvas-libraries-7.0.10/nasl/nasl_grammar.y"
    { (yyval.node) = (yyvsp[(1) - (2)].node); ;}
    break;

  case 28:

/* Line 1455 of yacc.c  */
#line 203 "/home/peterwang/OpenVAS_Source/openvas-libraries-7.0.10/nasl/nasl_grammar.y"
    {
	  (yyval.node) = alloc_tree_cell(LNB, NULL);
	  (yyval.node)->type =  NODE_BREAK;
	;}
    break;

  case 29:

/* Line 1455 of yacc.c  */
#line 207 "/home/peterwang/OpenVAS_Source/openvas-libraries-7.0.10/nasl/nasl_grammar.y"
    {
	  (yyval.node) = alloc_tree_cell(LNB, NULL);
	  (yyval.node)->type =  NODE_CONTINUE;
	;}
    break;

  case 30:

/* Line 1455 of yacc.c  */
#line 211 "/home/peterwang/OpenVAS_Source/openvas-libraries-7.0.10/nasl/nasl_grammar.y"
    { (yyval.node) = NULL; ;}
    break;

  case 31:

/* Line 1455 of yacc.c  */
#line 215 "/home/peterwang/OpenVAS_Source/openvas-libraries-7.0.10/nasl/nasl_grammar.y"
    {
	  (yyval.node) = alloc_tree_cell(LNB, NULL);
	  (yyval.node)->type =  NODE_RETURN;
	  (yyval.node)->link[0] = (yyvsp[(2) - (2)].node);
	;}
    break;

  case 32:

/* Line 1455 of yacc.c  */
#line 221 "/home/peterwang/OpenVAS_Source/openvas-libraries-7.0.10/nasl/nasl_grammar.y"
    {
	  (yyval.node) = alloc_tree_cell(LNB, NULL);
	  (yyval.node)->type =  NODE_RETURN;
	;}
    break;

  case 33:

/* Line 1455 of yacc.c  */
#line 228 "/home/peterwang/OpenVAS_Source/openvas-libraries-7.0.10/nasl/nasl_grammar.y"
    {
	  (yyval.node) = alloc_tree_cell(LNB, NULL);
	  (yyval.node)->type = NODE_IF_ELSE;
	  (yyval.node)->link[0] = (yyvsp[(3) - (5)].node); (yyval.node)->link[1] = (yyvsp[(5) - (5)].node);
	;}
    break;

  case 34:

/* Line 1455 of yacc.c  */
#line 234 "/home/peterwang/OpenVAS_Source/openvas-libraries-7.0.10/nasl/nasl_grammar.y"
    {
	  (yyval.node) = alloc_tree_cell(LNB, NULL);
	  (yyval.node)->type = NODE_IF_ELSE;
	  (yyval.node)->link[0] = (yyvsp[(3) - (7)].node); (yyval.node)->link[1] = (yyvsp[(5) - (7)].node); (yyval.node)->link[2] = (yyvsp[(7) - (7)].node);
	;}
    break;

  case 39:

/* Line 1455 of yacc.c  */
#line 243 "/home/peterwang/OpenVAS_Source/openvas-libraries-7.0.10/nasl/nasl_grammar.y"
    {
	  (yyval.node) = alloc_tree_cell(LNB, NULL);
	  (yyval.node)->type = NODE_FOR;
	  (yyval.node)->link[0] = (yyvsp[(3) - (9)].node);
	  (yyval.node)->link[1] = (yyvsp[(5) - (9)].node);
	  (yyval.node)->link[2] = (yyvsp[(7) - (9)].node);
	  (yyval.node)->link[3] = (yyvsp[(9) - (9)].node);
	;}
    break;

  case 40:

/* Line 1455 of yacc.c  */
#line 253 "/home/peterwang/OpenVAS_Source/openvas-libraries-7.0.10/nasl/nasl_grammar.y"
    {
	  (yyval.node) = alloc_tree_cell(LNB, NULL);
	  (yyval.node)->type = NODE_WHILE;
	  (yyval.node)->link[0] = (yyvsp[(3) - (5)].node);
	  (yyval.node)->link[1] = (yyvsp[(5) - (5)].node);
	;}
    break;

  case 41:

/* Line 1455 of yacc.c  */
#line 260 "/home/peterwang/OpenVAS_Source/openvas-libraries-7.0.10/nasl/nasl_grammar.y"
    {
	  (yyval.node) = alloc_tree_cell(LNB, NULL);
	  (yyval.node)->type = NODE_REPEAT_UNTIL;
	  (yyval.node)->link[0] = (yyvsp[(2) - (5)].node);
	  (yyval.node)->link[1] = (yyvsp[(4) - (5)].node);
	;}
    break;

  case 42:

/* Line 1455 of yacc.c  */
#line 268 "/home/peterwang/OpenVAS_Source/openvas-libraries-7.0.10/nasl/nasl_grammar.y"
    {
	  (yyval.node) = alloc_tree_cell(LNB, (yyvsp[(2) - (6)].str));
	  (yyval.node)->type = NODE_FOREACH;
	  (yyval.node)->link[0] = (yyvsp[(4) - (6)].node);
	  (yyval.node)->link[1] = (yyvsp[(6) - (6)].node);
	;}
    break;

  case 46:

/* Line 1455 of yacc.c  */
#line 276 "/home/peterwang/OpenVAS_Source/openvas-libraries-7.0.10/nasl/nasl_grammar.y"
    { (yyval.node) = NULL; ;}
    break;

  case 47:

/* Line 1455 of yacc.c  */
#line 280 "/home/peterwang/OpenVAS_Source/openvas-libraries-7.0.10/nasl/nasl_grammar.y"
    {
	  (yyval.node) = alloc_tree_cell(LNB, NULL);
	  (yyval.node)->type = NODE_REPEATED;
	  (yyval.node)->link[0] = (yyvsp[(1) - (3)].node);
	  (yyval.node)->link[1] = (yyvsp[(3) - (3)].node);
	;}
    break;

  case 48:

/* Line 1455 of yacc.c  */
#line 287 "/home/peterwang/OpenVAS_Source/openvas-libraries-7.0.10/nasl/nasl_grammar.y"
    { (yyval.str) = (yyvsp[(1) - (1)].data).val; ;}
    break;

  case 50:

/* Line 1455 of yacc.c  */
#line 291 "/home/peterwang/OpenVAS_Source/openvas-libraries-7.0.10/nasl/nasl_grammar.y"
    {
	  naslctxt	subctx;
	  int		x;

 	  subctx.always_authenticated = ((naslctxt*)parm)->always_authenticated;
	  x = init_nasl_ctx(&subctx, (yyvsp[(3) - (4)].str));
	  (yyval.node) = NULL;
	  if (x >= 0)
	    {
	      if (! naslparse(&subctx))
		{
		  (yyval.node) = subctx.tree;
		}
	      else
		nasl_perror(NULL, "%s: Parse error at or near line %d\n",
			(yyvsp[(3) - (4)].str), subctx.line_nb);
	      efree(&subctx.buffer);
	      fclose(subctx.fp);
	      subctx.fp = NULL;
	      efree(& (yyvsp[(3) - (4)].str));
	    }
          else
            {
              efree(& (yyvsp[(3) - (4)].str));
              return -2;
            }
	;}
    break;

  case 51:

/* Line 1455 of yacc.c  */
#line 321 "/home/peterwang/OpenVAS_Source/openvas-libraries-7.0.10/nasl/nasl_grammar.y"
    {
	  (yyval.node) = alloc_tree_cell(LNB, (yyvsp[(1) - (4)].str));
	  (yyval.node)->type = NODE_FUN_CALL;
	  (yyval.node)->link[0] = (yyvsp[(3) - (4)].node);
	;}
    break;

  case 53:

/* Line 1455 of yacc.c  */
#line 327 "/home/peterwang/OpenVAS_Source/openvas-libraries-7.0.10/nasl/nasl_grammar.y"
    { (yyval.node) = NULL; ;}
    break;

  case 55:

/* Line 1455 of yacc.c  */
#line 329 "/home/peterwang/OpenVAS_Source/openvas-libraries-7.0.10/nasl/nasl_grammar.y"
    {
	  (yyvsp[(1) - (3)].node)->link[1] = (yyvsp[(3) - (3)].node);
	  (yyval.node) = (yyvsp[(1) - (3)].node);
	;}
    break;

  case 56:

/* Line 1455 of yacc.c  */
#line 335 "/home/peterwang/OpenVAS_Source/openvas-libraries-7.0.10/nasl/nasl_grammar.y"
    {
	  (yyval.node) = alloc_tree_cell(LNB, NULL);
	  (yyval.node)->type = NODE_ARG;
	  (yyval.node)->link[0] = (yyvsp[(1) - (1)].node);
	;}
    break;

  case 57:

/* Line 1455 of yacc.c  */
#line 341 "/home/peterwang/OpenVAS_Source/openvas-libraries-7.0.10/nasl/nasl_grammar.y"
    {
	  (yyval.node) = alloc_tree_cell(LNB, (yyvsp[(1) - (3)].str));
	  (yyval.node)->type = NODE_ARG;
	  (yyval.node)->link[0] = (yyvsp[(3) - (3)].node);
	;}
    break;

  case 58:

/* Line 1455 of yacc.c  */
#line 349 "/home/peterwang/OpenVAS_Source/openvas-libraries-7.0.10/nasl/nasl_grammar.y"
    {
	  (yyval.node) = alloc_expr_cell(LNB, NODE_AFF, (yyvsp[(1) - (3)].node), (yyvsp[(3) - (3)].node));
	;}
    break;

  case 59:

/* Line 1455 of yacc.c  */
#line 352 "/home/peterwang/OpenVAS_Source/openvas-libraries-7.0.10/nasl/nasl_grammar.y"
    { (yyval.node) = alloc_expr_cell(LNB, NODE_PLUS_EQ, (yyvsp[(1) - (3)].node), (yyvsp[(3) - (3)].node)); ;}
    break;

  case 60:

/* Line 1455 of yacc.c  */
#line 353 "/home/peterwang/OpenVAS_Source/openvas-libraries-7.0.10/nasl/nasl_grammar.y"
    { (yyval.node) = alloc_expr_cell(LNB, NODE_MINUS_EQ, (yyvsp[(1) - (3)].node), (yyvsp[(3) - (3)].node)); ;}
    break;

  case 61:

/* Line 1455 of yacc.c  */
#line 354 "/home/peterwang/OpenVAS_Source/openvas-libraries-7.0.10/nasl/nasl_grammar.y"
    { (yyval.node) = alloc_expr_cell(LNB, NODE_MULT_EQ, (yyvsp[(1) - (3)].node), (yyvsp[(3) - (3)].node)); ;}
    break;

  case 62:

/* Line 1455 of yacc.c  */
#line 355 "/home/peterwang/OpenVAS_Source/openvas-libraries-7.0.10/nasl/nasl_grammar.y"
    { (yyval.node) = alloc_expr_cell(LNB, NODE_DIV_EQ, (yyvsp[(1) - (3)].node), (yyvsp[(3) - (3)].node)); ;}
    break;

  case 63:

/* Line 1455 of yacc.c  */
#line 356 "/home/peterwang/OpenVAS_Source/openvas-libraries-7.0.10/nasl/nasl_grammar.y"
    { (yyval.node) = alloc_expr_cell(LNB, NODE_MODULO_EQ, (yyvsp[(1) - (3)].node), (yyvsp[(3) - (3)].node)); ;}
    break;

  case 64:

/* Line 1455 of yacc.c  */
#line 357 "/home/peterwang/OpenVAS_Source/openvas-libraries-7.0.10/nasl/nasl_grammar.y"
    { (yyval.node) = alloc_expr_cell(LNB, NODE_R_SHIFT_EQ, (yyvsp[(1) - (3)].node), (yyvsp[(3) - (3)].node)); ;}
    break;

  case 65:

/* Line 1455 of yacc.c  */
#line 358 "/home/peterwang/OpenVAS_Source/openvas-libraries-7.0.10/nasl/nasl_grammar.y"
    { (yyval.node) = alloc_expr_cell(LNB, NODE_R_USHIFT_EQ, (yyvsp[(1) - (3)].node), (yyvsp[(3) - (3)].node)); ;}
    break;

  case 66:

/* Line 1455 of yacc.c  */
#line 359 "/home/peterwang/OpenVAS_Source/openvas-libraries-7.0.10/nasl/nasl_grammar.y"
    { (yyval.node) = alloc_expr_cell(LNB, NODE_L_SHIFT_EQ, (yyvsp[(1) - (3)].node), (yyvsp[(3) - (3)].node)); ;}
    break;

  case 67:

/* Line 1455 of yacc.c  */
#line 362 "/home/peterwang/OpenVAS_Source/openvas-libraries-7.0.10/nasl/nasl_grammar.y"
    { (yyval.node) = alloc_tree_cell(LNB, (yyvsp[(1) - (1)].str)); (yyval.node)->type = NODE_VAR; ;}
    break;

  case 70:

/* Line 1455 of yacc.c  */
#line 364 "/home/peterwang/OpenVAS_Source/openvas-libraries-7.0.10/nasl/nasl_grammar.y"
    { (yyval.str) = strdup("x"); ;}
    break;

  case 71:

/* Line 1455 of yacc.c  */
#line 367 "/home/peterwang/OpenVAS_Source/openvas-libraries-7.0.10/nasl/nasl_grammar.y"
    {
	  (yyval.node) = alloc_tree_cell(LNB, (yyvsp[(1) - (4)].str));
	  (yyval.node)->type = NODE_ARRAY_EL;
	  (yyval.node)->link[0] = (yyvsp[(3) - (4)].node);
	;}
    break;

  case 73:

/* Line 1455 of yacc.c  */
#line 376 "/home/peterwang/OpenVAS_Source/openvas-libraries-7.0.10/nasl/nasl_grammar.y"
    { (yyval.node) = alloc_expr_cell(LNB, EXPR_INCR, NULL, (yyvsp[(2) - (2)].node)); ;}
    break;

  case 74:

/* Line 1455 of yacc.c  */
#line 377 "/home/peterwang/OpenVAS_Source/openvas-libraries-7.0.10/nasl/nasl_grammar.y"
    {(yyval.node) = alloc_expr_cell(LNB, EXPR_DECR, NULL, (yyvsp[(2) - (2)].node)); ;}
    break;

  case 75:

/* Line 1455 of yacc.c  */
#line 378 "/home/peterwang/OpenVAS_Source/openvas-libraries-7.0.10/nasl/nasl_grammar.y"
    { (yyval.node)= alloc_expr_cell(LNB, EXPR_INCR, (yyvsp[(1) - (2)].node), NULL); ;}
    break;

  case 76:

/* Line 1455 of yacc.c  */
#line 379 "/home/peterwang/OpenVAS_Source/openvas-libraries-7.0.10/nasl/nasl_grammar.y"
    { (yyval.node)= alloc_expr_cell(LNB, EXPR_DECR, (yyvsp[(1) - (2)].node), NULL); ;}
    break;

  case 77:

/* Line 1455 of yacc.c  */
#line 383 "/home/peterwang/OpenVAS_Source/openvas-libraries-7.0.10/nasl/nasl_grammar.y"
    { (yyval.node) = (yyvsp[(2) - (3)].node); ;}
    break;

  case 78:

/* Line 1455 of yacc.c  */
#line 384 "/home/peterwang/OpenVAS_Source/openvas-libraries-7.0.10/nasl/nasl_grammar.y"
    {  (yyval.node) = alloc_expr_cell(LNB, EXPR_AND, (yyvsp[(1) - (3)].node), (yyvsp[(3) - (3)].node)); ;}
    break;

  case 79:

/* Line 1455 of yacc.c  */
#line 385 "/home/peterwang/OpenVAS_Source/openvas-libraries-7.0.10/nasl/nasl_grammar.y"
    {  (yyval.node) = alloc_expr_cell(LNB, EXPR_NOT, (yyvsp[(2) - (2)].node), NULL); ;}
    break;

  case 80:

/* Line 1455 of yacc.c  */
#line 386 "/home/peterwang/OpenVAS_Source/openvas-libraries-7.0.10/nasl/nasl_grammar.y"
    { (yyval.node) = alloc_expr_cell(LNB, EXPR_OR, (yyvsp[(1) - (3)].node), (yyvsp[(3) - (3)].node)); ;}
    break;

  case 81:

/* Line 1455 of yacc.c  */
#line 387 "/home/peterwang/OpenVAS_Source/openvas-libraries-7.0.10/nasl/nasl_grammar.y"
    { (yyval.node) = alloc_expr_cell(LNB, EXPR_PLUS, (yyvsp[(1) - (3)].node), (yyvsp[(3) - (3)].node)); ;}
    break;

  case 82:

/* Line 1455 of yacc.c  */
#line 388 "/home/peterwang/OpenVAS_Source/openvas-libraries-7.0.10/nasl/nasl_grammar.y"
    { (yyval.node) = alloc_expr_cell(LNB, EXPR_MINUS, (yyvsp[(1) - (3)].node), (yyvsp[(3) - (3)].node)); ;}
    break;

  case 83:

/* Line 1455 of yacc.c  */
#line 389 "/home/peterwang/OpenVAS_Source/openvas-libraries-7.0.10/nasl/nasl_grammar.y"
    { (yyval.node) = alloc_expr_cell(LNB, EXPR_U_MINUS, (yyvsp[(2) - (2)].node), NULL);;}
    break;

  case 84:

/* Line 1455 of yacc.c  */
#line 390 "/home/peterwang/OpenVAS_Source/openvas-libraries-7.0.10/nasl/nasl_grammar.y"
    { (yyval.node) = alloc_expr_cell(LNB, EXPR_BIT_NOT, (yyvsp[(2) - (2)].node), NULL);;}
    break;

  case 85:

/* Line 1455 of yacc.c  */
#line 391 "/home/peterwang/OpenVAS_Source/openvas-libraries-7.0.10/nasl/nasl_grammar.y"
    { (yyval.node) = alloc_expr_cell(LNB, EXPR_MULT, (yyvsp[(1) - (3)].node), (yyvsp[(3) - (3)].node)); ;}
    break;

  case 86:

/* Line 1455 of yacc.c  */
#line 392 "/home/peterwang/OpenVAS_Source/openvas-libraries-7.0.10/nasl/nasl_grammar.y"
    { (yyval.node) = alloc_expr_cell(LNB, EXPR_EXPO, (yyvsp[(1) - (3)].node), (yyvsp[(3) - (3)].node)); ;}
    break;

  case 87:

/* Line 1455 of yacc.c  */
#line 393 "/home/peterwang/OpenVAS_Source/openvas-libraries-7.0.10/nasl/nasl_grammar.y"
    { (yyval.node) = alloc_expr_cell(LNB, EXPR_DIV, (yyvsp[(1) - (3)].node), (yyvsp[(3) - (3)].node)); ;}
    break;

  case 88:

/* Line 1455 of yacc.c  */
#line 394 "/home/peterwang/OpenVAS_Source/openvas-libraries-7.0.10/nasl/nasl_grammar.y"
    { (yyval.node) = alloc_expr_cell(LNB, EXPR_MODULO, (yyvsp[(1) - (3)].node), (yyvsp[(3) - (3)].node)); ;}
    break;

  case 89:

/* Line 1455 of yacc.c  */
#line 395 "/home/peterwang/OpenVAS_Source/openvas-libraries-7.0.10/nasl/nasl_grammar.y"
    { (yyval.node) = alloc_expr_cell(LNB, EXPR_BIT_AND, (yyvsp[(1) - (3)].node), (yyvsp[(3) - (3)].node)); ;}
    break;

  case 90:

/* Line 1455 of yacc.c  */
#line 396 "/home/peterwang/OpenVAS_Source/openvas-libraries-7.0.10/nasl/nasl_grammar.y"
    { (yyval.node) = alloc_expr_cell(LNB, EXPR_BIT_XOR, (yyvsp[(1) - (3)].node), (yyvsp[(3) - (3)].node)); ;}
    break;

  case 91:

/* Line 1455 of yacc.c  */
#line 397 "/home/peterwang/OpenVAS_Source/openvas-libraries-7.0.10/nasl/nasl_grammar.y"
    { (yyval.node) = alloc_expr_cell(LNB, EXPR_BIT_OR, (yyvsp[(1) - (3)].node), (yyvsp[(3) - (3)].node)); ;}
    break;

  case 92:

/* Line 1455 of yacc.c  */
#line 398 "/home/peterwang/OpenVAS_Source/openvas-libraries-7.0.10/nasl/nasl_grammar.y"
    { (yyval.node) = alloc_expr_cell(LNB, EXPR_R_SHIFT, (yyvsp[(1) - (3)].node), (yyvsp[(3) - (3)].node)); ;}
    break;

  case 93:

/* Line 1455 of yacc.c  */
#line 399 "/home/peterwang/OpenVAS_Source/openvas-libraries-7.0.10/nasl/nasl_grammar.y"
    { (yyval.node) = alloc_expr_cell(LNB, EXPR_R_USHIFT, (yyvsp[(1) - (3)].node), (yyvsp[(3) - (3)].node)); ;}
    break;

  case 94:

/* Line 1455 of yacc.c  */
#line 400 "/home/peterwang/OpenVAS_Source/openvas-libraries-7.0.10/nasl/nasl_grammar.y"
    { (yyval.node) = alloc_expr_cell(LNB, EXPR_L_SHIFT, (yyvsp[(1) - (3)].node), (yyvsp[(3) - (3)].node)); ;}
    break;

  case 96:

/* Line 1455 of yacc.c  */
#line 402 "/home/peterwang/OpenVAS_Source/openvas-libraries-7.0.10/nasl/nasl_grammar.y"
    { (yyval.node) = alloc_expr_cell(LNB, COMP_MATCH, (yyvsp[(1) - (3)].node), (yyvsp[(3) - (3)].node)); ;}
    break;

  case 97:

/* Line 1455 of yacc.c  */
#line 403 "/home/peterwang/OpenVAS_Source/openvas-libraries-7.0.10/nasl/nasl_grammar.y"
    { (yyval.node) = alloc_expr_cell(LNB, COMP_NOMATCH, (yyvsp[(1) - (3)].node), (yyvsp[(3) - (3)].node)); ;}
    break;

  case 98:

/* Line 1455 of yacc.c  */
#line 404 "/home/peterwang/OpenVAS_Source/openvas-libraries-7.0.10/nasl/nasl_grammar.y"
    { (yyval.node) = alloc_RE_cell(LNB, COMP_RE_MATCH, (yyvsp[(1) - (3)].node), (yyvsp[(3) - (3)].str)); ;}
    break;

  case 99:

/* Line 1455 of yacc.c  */
#line 405 "/home/peterwang/OpenVAS_Source/openvas-libraries-7.0.10/nasl/nasl_grammar.y"
    { (yyval.node) = alloc_RE_cell(LNB, COMP_RE_NOMATCH, (yyvsp[(1) - (3)].node), (yyvsp[(3) - (3)].str)); ;}
    break;

  case 100:

/* Line 1455 of yacc.c  */
#line 406 "/home/peterwang/OpenVAS_Source/openvas-libraries-7.0.10/nasl/nasl_grammar.y"
    { (yyval.node) = alloc_expr_cell(LNB, COMP_LT, (yyvsp[(1) - (3)].node), (yyvsp[(3) - (3)].node)); ;}
    break;

  case 101:

/* Line 1455 of yacc.c  */
#line 407 "/home/peterwang/OpenVAS_Source/openvas-libraries-7.0.10/nasl/nasl_grammar.y"
    { (yyval.node) = alloc_expr_cell(LNB, COMP_GT, (yyvsp[(1) - (3)].node), (yyvsp[(3) - (3)].node)); ;}
    break;

  case 102:

/* Line 1455 of yacc.c  */
#line 408 "/home/peterwang/OpenVAS_Source/openvas-libraries-7.0.10/nasl/nasl_grammar.y"
    { (yyval.node) = alloc_expr_cell(LNB, COMP_EQ, (yyvsp[(1) - (3)].node), (yyvsp[(3) - (3)].node)); ;}
    break;

  case 103:

/* Line 1455 of yacc.c  */
#line 409 "/home/peterwang/OpenVAS_Source/openvas-libraries-7.0.10/nasl/nasl_grammar.y"
    { (yyval.node) = alloc_expr_cell(LNB, COMP_NE, (yyvsp[(1) - (3)].node), (yyvsp[(3) - (3)].node)); ;}
    break;

  case 104:

/* Line 1455 of yacc.c  */
#line 410 "/home/peterwang/OpenVAS_Source/openvas-libraries-7.0.10/nasl/nasl_grammar.y"
    { (yyval.node) = alloc_expr_cell(LNB, COMP_GE, (yyvsp[(1) - (3)].node), (yyvsp[(3) - (3)].node)); ;}
    break;

  case 105:

/* Line 1455 of yacc.c  */
#line 411 "/home/peterwang/OpenVAS_Source/openvas-libraries-7.0.10/nasl/nasl_grammar.y"
    { (yyval.node) = alloc_expr_cell(LNB, COMP_LE, (yyvsp[(1) - (3)].node), (yyvsp[(3) - (3)].node)); ;}
    break;

  case 111:

/* Line 1455 of yacc.c  */
#line 415 "/home/peterwang/OpenVAS_Source/openvas-libraries-7.0.10/nasl/nasl_grammar.y"
    { (yyval.node) = make_array_from_elems((yyvsp[(2) - (3)].node)); ;}
    break;

  case 112:

/* Line 1455 of yacc.c  */
#line 417 "/home/peterwang/OpenVAS_Source/openvas-libraries-7.0.10/nasl/nasl_grammar.y"
    { (yyval.node) = (yyvsp[(1) - (1)].node); ;}
    break;

  case 113:

/* Line 1455 of yacc.c  */
#line 418 "/home/peterwang/OpenVAS_Source/openvas-libraries-7.0.10/nasl/nasl_grammar.y"
    {
		(yyvsp[(1) - (3)].node)->link[1] = (yyvsp[(3) - (3)].node); (yyval.node) = (yyvsp[(1) - (3)].node);
	;}
    break;

  case 114:

/* Line 1455 of yacc.c  */
#line 422 "/home/peterwang/OpenVAS_Source/openvas-libraries-7.0.10/nasl/nasl_grammar.y"
    {
	  (yyval.node) = alloc_typed_cell(ARRAY_ELEM);
	  (yyval.node)->link[0] = (yyvsp[(1) - (1)].node);
	;}
    break;

  case 115:

/* Line 1455 of yacc.c  */
#line 425 "/home/peterwang/OpenVAS_Source/openvas-libraries-7.0.10/nasl/nasl_grammar.y"
    {
	  (yyval.node) = alloc_typed_cell(ARRAY_ELEM);
	  (yyval.node)->link[0] = (yyvsp[(3) - (3)].node);
	  (yyval.node)->x.str_val = (yyvsp[(1) - (3)].str);
	;}
    break;

  case 116:

/* Line 1455 of yacc.c  */
#line 431 "/home/peterwang/OpenVAS_Source/openvas-libraries-7.0.10/nasl/nasl_grammar.y"
    {  (yyval.node) = alloc_typed_cell(CONST_INT); (yyval.node)->x.i_val = (yyvsp[(1) - (1)].num); ;}
    break;

  case 117:

/* Line 1455 of yacc.c  */
#line 432 "/home/peterwang/OpenVAS_Source/openvas-libraries-7.0.10/nasl/nasl_grammar.y"
    {
	  (yyval.node) = alloc_typed_cell(CONST_STR); (yyval.node)->x.str_val = (yyvsp[(1) - (1)].str);
	  (yyval.node)->size = strlen((yyvsp[(1) - (1)].str));
	;}
    break;

  case 118:

/* Line 1455 of yacc.c  */
#line 436 "/home/peterwang/OpenVAS_Source/openvas-libraries-7.0.10/nasl/nasl_grammar.y"
    {
	  (yyval.node) = alloc_typed_cell(CONST_DATA); (yyval.node)->x.str_val = (yyvsp[(1) - (1)].data).val;
	  (yyval.node)->size = (yyvsp[(1) - (1)].data).len;
	;}
    break;

  case 120:

/* Line 1455 of yacc.c  */
#line 443 "/home/peterwang/OpenVAS_Source/openvas-libraries-7.0.10/nasl/nasl_grammar.y"
    { (yyval.node) = alloc_tree_cell(LNB, (yyvsp[(1) - (1)].str)); (yyval.node)->type = NODE_VAR; ;}
    break;

  case 124:

/* Line 1455 of yacc.c  */
#line 449 "/home/peterwang/OpenVAS_Source/openvas-libraries-7.0.10/nasl/nasl_grammar.y"
    {
	  char	*s = emalloc(44);
	  snprintf(s, 44, "%d.%d.%d.%d", (yyvsp[(1) - (7)].num), (yyvsp[(3) - (7)].num), (yyvsp[(5) - (7)].num), (yyvsp[(7) - (7)].num));
	  (yyval.node) = alloc_tree_cell(LNB, s);
	  (yyval.node)->type = CONST_STR;
	  (yyval.node)->size = strlen(s);
	;}
    break;

  case 125:

/* Line 1455 of yacc.c  */
#line 459 "/home/peterwang/OpenVAS_Source/openvas-libraries-7.0.10/nasl/nasl_grammar.y"
    {
	  (yyval.node) = alloc_tree_cell(LNB, NULL);
	  (yyval.node)->type = NODE_LOCAL;
	  (yyval.node)->link[0] = (yyvsp[(2) - (2)].node);
	;}
    break;

  case 126:

/* Line 1455 of yacc.c  */
#line 467 "/home/peterwang/OpenVAS_Source/openvas-libraries-7.0.10/nasl/nasl_grammar.y"
    {
	  (yyval.node) = alloc_tree_cell(LNB, NULL);
	  (yyval.node)->type = NODE_GLOBAL;
	  (yyval.node)->link[0] = (yyvsp[(2) - (2)].node);
	;}
    break;



/* Line 1455 of yacc.c  */
#line 2584 "nasl_grammar.tab.c"
      default: break;
    }
  YY_SYMBOL_PRINT ("-> $$ =", yyr1[yyn], &yyval, &yyloc);

  YYPOPSTACK (yylen);
  yylen = 0;
  YY_STACK_PRINT (yyss, yyssp);

  *++yyvsp = yyval;

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
      yyerror (parm, YY_("syntax error"));
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
	    yyerror (parm, yymsg);
	  }
	else
	  {
	    yyerror (parm, YY_("syntax error"));
	    if (yysize != 0)
	      goto yyexhaustedlab;
	  }
      }
#endif
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
		      yytoken, &yylval, parm);
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


      yydestruct ("Error: popping",
		  yystos[yystate], yyvsp, parm);
      YYPOPSTACK (1);
      yystate = *yyssp;
      YY_STACK_PRINT (yyss, yyssp);
    }

  *++yyvsp = yylval;


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
  yyerror (parm, YY_("memory exhausted"));
  yyresult = 2;
  /* Fall through.  */
#endif

yyreturn:
  if (yychar != YYEMPTY)
     yydestruct ("Cleanup: discarding lookahead",
		 yytoken, &yylval, parm);
  /* Do not reclaim the symbols of the rule which action triggered
     this YYABORT or YYACCEPT.  */
  YYPOPSTACK (yylen);
  YY_STACK_PRINT (yyss, yyssp);
  while (yyssp != yyss)
    {
      yydestruct ("Cleanup: popping",
		  yystos[*yyssp], yyvsp, parm);
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



/* Line 1675 of yacc.c  */
#line 473 "/home/peterwang/OpenVAS_Source/openvas-libraries-7.0.10/nasl/nasl_grammar.y"


#include <stdio.h>
#include <stdlib.h>
#include "openvas_logging.h"

static void
naslerror(naslctxt *parm, const char *s)
{
  fputs(s, stderr);
}

static GSList * inc_dirs = NULL;

/**
 * @brief Adds the given string as directory for searching for includes.
 *
 * @param dir  A directory path. This function will add a copy of this parameter
 *             to the list of include folders. This means the parameter can be
 *             freed elsewhere without affecting the list.
 *
 * @return  0 in case of success.
 *         -1 if the stat on the given directory path was unsuccessful.
 *         -2 if the given directory path was not a directory.
 */
int
add_nasl_inc_dir (const char * dir)
{
  if (dir == NULL)
    {
      return 0;
    }

  // Allow initialization with empty element
  if (*dir == '\0')
    {
      inc_dirs = g_slist_append (inc_dirs, g_strdup((gchar *)dir));
      return 0;
    }

  struct stat stat_buf;

  if (stat (dir, &stat_buf) != 0)
    return -1;

  if (S_ISDIR(stat_buf.st_mode) != 0)
    {
      inc_dirs = g_slist_append (inc_dirs, g_strdup((gchar *)dir));
      return 0;
    }
  else
    return -2;
}

/**
 * @brief Initialize a NASL context for a NASL file.
 *
 * @param pc   The NASL context handler.
 *
 * @param name The filename of the NASL script.
 *
 * @return    0  in case of success. Then, pc->fp is set with
 *               the respective file descriptor
 *            -1 if either the filename was not found/accessable
 *               or the signature verification failed (provided
 *               signature checking is enabled.
 *               Also, the pc->fp is set to NULL.
 *            In any case, various elements of pc are modified
 *            (initialized);
 */
int
init_nasl_ctx(naslctxt* pc, const char* name)
{
  gchar * full_name = NULL;
  GSList * inc_dir = inc_dirs; // iterator for include directories

  // initialize if not yet done (for openvas-server < 2.0.1)
  if (! inc_dirs) add_nasl_inc_dir("");

  pc->line_nb = 1;
  pc->tree = NULL;
  pc->buffer = emalloc(80);
  pc->maxlen = 80;
  pc->fp = NULL;

  while (inc_dir != NULL) {
    if (full_name)
      g_free (full_name);
    full_name = g_build_filename(inc_dir->data, name, NULL);

    if ((pc->fp = fopen(full_name, "r")) != NULL)
      break;

    inc_dir = g_slist_next(inc_dir);
  }

  if (! pc->fp) {
    log_legacy_write ("%s: Not able to open nor to locate it in include paths",
                      name);
    g_free(full_name);
    return -1;
  }

  if (! pc->always_authenticated && nasl_verify_signature(full_name) != 0) {
    log_legacy_write ("%s: bad or missing signature. Will not execute this"
                      " script", full_name);
    fclose(pc->fp);
    pc->fp = NULL;
    g_free(full_name);
    return -1;
  }

  g_free(full_name);
  return 0;
}

void
nasl_clean_ctx(naslctxt* c)
{
#if 0
  nasl_dump_tree(c->tree);
#endif
  deref_cell(c->tree);
  efree(&c->buffer);
  if (c->fp)
    {
      fclose(c->fp);
      c->fp = NULL;
    }
}

enum lex_state {
  ST_START = 0,
  ST_SPACE,
  ST_IDENT,
  ST_ZERO,
  ST_ZEROX,
  ST_OCT,
  ST_DEC,
  ST_HEX,
  ST_COMMENT,
  ST_SUP,
  ST_INF,
  ST_SUP_EXCL,
  ST_STRING1,
  ST_STRING1_ESC,
  ST_STRING2,
  ST_PLUS,
  ST_MINUS,
  ST_MULT,
  ST_DIV,
  ST_MODULO,
  ST_R_SHIFT,
  ST_R_USHIFT,
  ST_L_SHIFT,
  ST_NOT,
  ST_EQ,
  ST_AND,
  ST_OR };

static int
mylex(lvalp, parm)
     YYSTYPE *lvalp;
     void	*parm;
{
  char		*p;
  naslctxt	*ctx = parm;
  FILE		*fp;
  int		c, st = ST_START, len, r;
  int		x, i;

  if ( parm == NULL )
	return -1;

  fp = ctx->fp;
  p = ctx->buffer;
  len = 0;

  while ((c = getc(fp)) != EOF)
    {
      if (c ==  '\n')
	ctx->line_nb ++;

      switch(st)
	{
	case ST_START:
	  if (c == '#')
	    st = ST_COMMENT;
	  else if (isalpha(c) || c == '_')
	    {
	      st = ST_IDENT;
	      *p++ = c;
	      len ++;
	    }
	  else if (isspace(c))
	    st = ST_SPACE;
	  else if (c == '0')
	    st = ST_ZERO;
	  else if (isdigit(c))
	    {
	      st = ST_DEC;
	      *p++ = c;
	      len ++;
	    }
	  else if (c == '\'')
	    st = ST_STRING1;
	  else if (c == '"')
	    st = ST_STRING2;
	  else if (c == '+')
	    st = ST_PLUS;
	  else if (c == '-')
	    st = ST_MINUS;
	  else if (c == '*')
	    st = ST_MULT;
	  else if (c == '/')
	    st = ST_DIV;
	  else if (c == '%')
	    st = ST_MODULO;
	  else if (c == '>')
	    st =  ST_SUP;
	  else if (c == '<')
	    st = ST_INF;
	  else if (c == '=')
	    st = ST_EQ;
	  else if (c == '|')
	    st = ST_OR;
	  else if (c == '!')
	    st = ST_NOT;
	  else if (c == '&')
	    st = ST_AND;
	  else
	    {
	      return c;
	    }
	  break;

	case ST_STRING2:
	  if (c == '"')
	    goto exit_loop;
	  *p++ = c;
	  len ++;
	  break;

	case ST_STRING1:
	  if (c == '\'')
	    goto exit_loop;
	  else if (c == '\\')
	    {
	      c = getc(fp);
	      switch (c)
		{
		case EOF:
		  nasl_perror(NULL, "Unfinished string\n");
		  goto exit_loop; /* parse error? */

		case '\n':	/* escaped end of line */
		  ctx->line_nb ++;
		  break;
		case '\\':
		  *p++ ='\\'; len ++;
		  break;
		case 'n':
		  *p++ = '\n'; len++;
		  break;
		case 'f':
		  *p++ = '\f'; len ++;
		  break;
		case 't':
		  *p++ = '\t'; len ++;
		  break;
		case 'r':
		  *p++ = '\r'; len++;
		  break;
		case 'v':
		  *p++ = '\v'; len ++;
		  break;
		case '"':
		  *p ++ = '"'; len ++;
		  break;
	  /* Not yet, as we do not return the length of the string */
		case '0':
		  *p++ = '\0'; len++;
		  break;
		case '\'':
		  *p++ = '\''; len++;
		  break;

		case 'x':
		  x = 0;
		  for (i = 0; i < 2; i ++)
		    {
		      c = getc(fp);
		      if (c == EOF)
			{
			  nasl_perror(NULL, "Unfinished \\x escape sequence (EOF)\n");
			  goto exit_loop;
			}
		      if (c == '\n')
			ctx->line_nb ++;

		      c = tolower(c);
		      if (c >= '0' && c <= '9')
			x = x * 16 + (c - '0');
		      else if (c >= 'a' && c <= 'f')
			x = x * 16 + 10 + (c - 'a');
		      else
			{
			  nasl_perror(NULL, "Unfinished \\x escape sequence\n");
			  ungetc(c, fp);
			  if (c == '\n')
			    ctx->line_nb --;
			  break;
			}
		    }
		  *p++ = x; len ++;
		  break;

		default:
		  nasl_perror(NULL, "Unknown escape sequence \\%c\n", c);
		  *p++ = c; len ++;
		  break;
		}
	    }
	  else
	    {
	      *p++ = c;
	      len ++;
	    }
	  break;

	case ST_IDENT:
	  if (isalnum(c) || c == '_')
	    {
	      st = ST_IDENT;
	      *p++ = c;
	      len ++;
	    }
	  else
	    {
	      ungetc(c, fp);
	      if (c == '\n')
		ctx->line_nb --;
	      goto exit_loop;
	    }
	  break;

	case ST_ZERO:
	  if (c == 'x' || c == 'X')
	    st = ST_ZEROX;
	  else if (isdigit(c))
	    {
	      if (c <= '7')
		st = ST_OCT;
	      else
		st = ST_DEC;
	      *p ++ = c;
	      len ++;
	    }
	  else
	    {
	      ungetc(c, fp);
	      if (c == '\n')
		ctx->line_nb --;
	      goto exit_loop;
	    }
	  break;

	case ST_ZEROX:
	  if (isxdigit(c))
	    {
	      st = ST_HEX;
	      *p++ = c;
	      len ++;
	    }
	  else
	    {
	      /* This should be a parse error */
	      ungetc(c, fp);
	      if (c ==  '\n')
		ctx->line_nb --;
	      goto exit_loop;
	    }
	  break;

	case ST_OCT:
	  if (c >= '0')
	    {
	    if (c <= '7')
	      {
		*p++ = c;
		len ++;
		break;
	      }
	    else if (c <= '9')
	      {
		*p++ = c;
		len ++;
		st = ST_DEC;
		break;
	      }
	    }
	  ungetc(c, fp);
	  if (c ==  '\n')
	    ctx->line_nb --;
	  goto exit_loop;

	case ST_DEC:
	  if (isdigit(c))
	    {
	      *p++ = c;
	      len ++;
	    }
	  else
	    {
	      ungetc(c, fp);
	      if (c ==  '\n')
		ctx->line_nb --;
	      goto exit_loop;
	    }
	  break;

	case ST_HEX:
	  if (isxdigit(c))
	    {
	      *p++ = c;
	      len ++;
	    }
	  else
	    {
	      ungetc(c, fp);
	      if (c ==  '\n')
		ctx->line_nb --;
	      goto exit_loop;
	    }
	  break;

	case ST_SPACE:
	  if (! isspace(c))
	    {
	      ungetc(c, fp);
	      if (c ==  '\n')
		ctx->line_nb --;
	      st = ST_START;
	    }
	  break;

	case ST_COMMENT:
	  if (c == '\n')
	    st = ST_START;
	  break;

	case ST_SUP_EXCL:
	  if (c == '<')
	    return NOMATCH;
	  else
	    {
	      ungetc(c, fp);
	      if (c ==  '\n')
		ctx->line_nb --;
	      if (! isprint(c)) c = '.';
	      log_legacy_write ("lexer error: invalid token >!%c "
                                "parsed as >!< %c", c, c);
	      return NOMATCH;
	    }
	  break;

	case ST_SUP:
	  if (c == '=')
	    return SUPEQ;
	  else if (c == '<')
	    return MATCH;
	  else if (c == '>')
	    st = ST_R_SHIFT;
	  else if (c == '!')
	    st = ST_SUP_EXCL;
	  else
	    {
	      ungetc(c, fp);
	      if (c ==  '\n')
		ctx->line_nb --;
	      return '>';
	    }
	  break;

	case ST_INF:
	  if (c == '=')
	    return INFEQ;
	  else if (c == '<')
	    st = ST_L_SHIFT;
	  else
	    {
	      ungetc(c, fp);
	      if (c ==  '\n')
		ctx->line_nb --;
	      return '<';
	    }
	  break;

	case ST_R_SHIFT:
	  if (c == '=')
	    return R_SHIFT_EQ;
	  else if (c == '>')
	    st = ST_R_USHIFT;
	  else
	    {
	      ungetc(c, fp);
	      if (c ==  '\n')
		ctx->line_nb --;
	      return R_SHIFT;
	    }
	  /*NOTREACHED*/
	  break;

	case ST_R_USHIFT:
	  if (c == '=')
	    return R_USHIFT_EQ;
	  else
	    {
	      ungetc(c, fp);
	      if (c ==  '\n')
		ctx->line_nb --;
	      return R_USHIFT;
	    }
	  /*NOTREACHED*/
	  break;

	case ST_L_SHIFT:
	  if (c == '=')
	    return L_SHIFT_EQ;
	  else
	    {
	      ungetc(c, fp);
	      if (c ==  '\n')
		ctx->line_nb --;
	      return L_SHIFT;
	    }
	  /*NOTREACHED*/
	  break;

	case ST_AND:
	  if (c == '&')
	    return AND;
	  ungetc(c, fp);
	  if (c ==  '\n')
	    ctx->line_nb --;
	  return '&';

	case ST_OR:
	  if (c == '|')
	    return OR;
	  ungetc(c, fp);
	  if (c ==  '\n')
	    ctx->line_nb --;
	  return '|';

	case ST_NOT:
	  if (c == '=')
	    return NEQ;
	  else if (c == '~')
	    return RE_NOMATCH;
	  ungetc(c, fp);
	  if (c ==  '\n')
	    ctx->line_nb --;
	  return '!';

	case ST_EQ:
	  if (c == '=')
	    return EQ;
	  else if (c == '~')
	    return RE_MATCH;
	  else if (c == '>')
	    return ARROW;
	  ungetc(c, fp);
	  if (c ==  '\n')
	    ctx->line_nb --;
	  return '=';

	case ST_PLUS:
	  if (c == '+')
	    return PLUS_PLUS;
	  else if (c == '=')
	    return PLUS_EQ;

	  ungetc(c, fp);
	  if (c ==  '\n')
	    ctx->line_nb --;
	  return '+';

	case ST_MINUS:
	  if (c == '-')
	    return MINUS_MINUS;
	  else if (c == '=')
	    return MINUS_EQ;

	  ungetc(c, fp);
	  if (c ==  '\n')
	    ctx->line_nb --;
	  return '-';

	case ST_MULT:
	  if (c == '=')
	    return MULT_EQ;
	  else if (c == '*')
	    return EXPO;
	  ungetc(c, fp);
	  if (c ==  '\n')
	    ctx->line_nb --;
	  return '*';

	case ST_DIV:
	  if (c == '=')
	    return DIV_EQ;

	  ungetc(c, fp);
	  if (c ==  '\n')
	    ctx->line_nb --;
	  return '/';

	case ST_MODULO:
	  if (c == '=')
	    return MODULO_EQ;

	  ungetc(c, fp);
	  if (c ==  '\n')
	    ctx->line_nb --;
	  return '%';

	}

      if (len >= ctx->maxlen)
	{
	  int	offs = p - ctx->buffer;
	  char	*buf2;
	  ctx->maxlen += 80;
	  buf2 = erealloc(ctx->buffer, ctx->maxlen + 1);
	  if (buf2 == NULL)
	    {
	      perror("realloc");
	      abort();
	    }
	  p = buf2 + offs;
	  ctx->buffer = buf2;
	}
    }

 exit_loop:
  ctx->buffer[len] = '\0';
  switch (st)
    {
    case ST_START:
    case ST_COMMENT:
    case ST_SPACE:
      return 0;

    case ST_STRING2:
      r = STRING2;
      lvalp->str = estrdup(ctx->buffer);
      return r;

    case ST_STRING1:
      r = STRING1;
      lvalp->data.val = emalloc(len+2);
      memcpy(lvalp->data.val, ctx->buffer, len+1);
      lvalp->data.len = len;
      return r;

    case ST_IDENT:
      if (strcmp(ctx->buffer, "if") == 0)
	r = IF;
      else if (strcmp(ctx->buffer, "else") == 0)
	r = ELSE;
      else if (strcmp(ctx->buffer, "for") == 0)
	r = FOR;
      else if (strcmp(ctx->buffer, "while") == 0)
	r = WHILE;
      else if (strcmp(ctx->buffer, "repeat") == 0)
	r = REPEAT;
      else if (strcmp(ctx->buffer, "until") == 0)
	r = UNTIL;
      else if (strcmp(ctx->buffer, "foreach") == 0)
	r = FOREACH;
      else if (strcmp(ctx->buffer, "function") == 0)
	r = FUNCTION;
      else if (strcmp(ctx->buffer, "return") == 0)
	r = RETURN;
      else if (strcmp(ctx->buffer, "x") == 0)
	r = REP;
      else if (strcmp(ctx->buffer, "include") == 0)
	r = INCLUDE;
      else if (strcmp(ctx->buffer, "break") == 0)
	r = BREAK;
      else if (strcmp(ctx->buffer, "continue") == 0)
	r = CONTINUE;
      else if (strcmp(ctx->buffer, "local_var") == 0)
	r = LOCAL;
      else if (strcmp(ctx->buffer, "global_var") == 0)
	r = GLOBAL;
      else
	{
	  r = IDENT;
	  lvalp->str = estrdup(ctx->buffer);
	  return r;
	}
      return r;

    case ST_DEC:
      /* -123 is parsed as "-" and "123" so that we can write "4-2" without
       * inserting a white space after the minus operator
       * Note that strtoul would also work on negative integers */
      lvalp->num = x = strtoul(ctx->buffer, NULL, 10);
#if NASL_DEBUG > 1 && defined(ULONG_MAX) && defined(ERANGE)
      if (x == ULONG_MAX && errno == ERANGE)
	nasl_perror(NULL, "Integer overflow while converting %s at or near line %d\n", ctx->buffer, ctx->line_nb);
#endif
      return INTEGER;

    case ST_OCT:
      lvalp->num = x = strtoul(ctx->buffer, NULL, 8);
#if NASL_DEBUG > 1 && defined(ULONG_MAX) && defined(ERANGE)
      if (x == ULONG_MAX && errno == ERANGE)
	nasl_perror(NULL, "Integer overflow while converting %s at or near line %d\n", ctx->buffer, ctx->line_nb);
#endif
      return INTEGER;

    case ST_HEX:
      lvalp->num = x = strtoul(ctx->buffer, NULL, 16);
#if NASL_DEBUG > 1 && defined(ULONG_MAX)
      if (x == ULONG_MAX)
	nasl_perror(NULL, "Possible integer overflow while converting %s at or near line %d\n", ctx->buffer, ctx->line_nb);
#endif
      return INTEGER;

    case ST_ZEROX:
      nasl_perror(NULL, "Invalid token 0x parsed as 0 at line %d\n",
	      ctx->line_nb);
    case ST_ZERO:
      lvalp->num = 0;
      return INTEGER;
    default:
      abort();
    }
}

static int
nasllex(YYSTYPE * lvalp, void * parm)
{
  int	x = mylex (lvalp, parm);
  return x;
}


