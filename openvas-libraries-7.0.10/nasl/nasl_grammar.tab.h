
/* A Bison parser, made by GNU Bison 2.4.1.  */

/* Skeleton interface for Bison's Yacc-like parsers in C
   
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

/* Line 1676 of yacc.c  */
#line 48 "/home/peterwang/OpenVAS_Source/openvas-libraries-7.0.10/nasl/nasl_grammar.y"

  int		num;
  char		*str;
  struct asciiz {
    char	*val;
    int		len;
  } data;
  tree_cell	*node;



/* Line 1676 of yacc.c  */
#line 113 "nasl_grammar.tab.h"
} YYSTYPE;
# define YYSTYPE_IS_TRIVIAL 1
# define yystype YYSTYPE /* obsolescent; will be withdrawn */
# define YYSTYPE_IS_DECLARED 1
#endif




