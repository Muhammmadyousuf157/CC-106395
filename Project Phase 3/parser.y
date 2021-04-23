%{
  #include <stdio.h>
%}

%start program

%token keyword
%token id
%token integer
%token floatnum
%token string
%token arithmetic
%token comparison
%token logical
%token assign
%token opencurly
%token closecurly
%token openpara
%token closepara
%token terminator
%token boolean


%right '+' '-' '*' '/' '%' '='
 
%left "&&" "||" '!' '<' '>' "<=" ">=" "==" "!="

%nonassoc "else"

%%

program:
  /* epsilon */
| statement program
;

statement:
  block
| terminator
| assign
| declaration
| if
| while
| "break" terminator 
| "continue" terminator 
| "exit" openpara closepara terminator
| "print" parExpression terminator 
| "println" parExpression terminator 
;

block:
  opencurly program closecurly
;

expression:
  literal
| id
| '!' expression
| '-' expression
| expression '+' expression
| expression '-' expression
| expression '*' expression
| expression '/' expression
| expression '%' expression
| expression '<' expression
| expression '>' expression
| expression "<=" expression
| expression ">=" expression
| expression "==" expression
| expression "!=" expression
| expression "&&" expression
| expression "||" expression
| parExpression
| "readInt" openpara closepara 
| "readDouble" openpara closepara 
| "readLine" openpara closepara 
| "toString" parExpression
;

parExpression:
  openpara expression closepara 
;

assignment:
  id assign expression terminator
;

declarationOne:
  /* epsilon */
| assign expression
;

declaration:
  type id declarationOne terminator
;

ifOne:
  /* epsilon */
| "else" statement
;

if:
  "if" parExpression statement ifOne
;

while:
  "while" parExpression statement
;

type:
  "int"
| "double"
| "bool"
| "string"
;

booleanLiteral:
  "true"
| "false"
;

literal:
  id
| floatnum
| string
| boolean
;

%%

#include "lex.yy.c"

void main()
{
  if (!yyparse())
    printf("\nSuccessfully Parsed, 0 Errors.\n");
  else
    printf("\nAn Error Occurred!\n");
}

yyerror(char *s)
{
	printf("line %d : %s %s\n", yylineno, s, yytext );
}   
