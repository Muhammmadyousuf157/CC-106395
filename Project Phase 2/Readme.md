## Phase 2 
## Flex File


# CODE -- FLEX FIL.l
```
%{
#define id 1
#define keyword 2
#define string 3
#define integer 4
#define floatnum 5
#define assign 6
#define arithmetic 7
#define logical 8
#define comparison 9
#define openpara 10
#define closepara 11
#define opencurly 12
#define closecurly 13
#define terminator 14
#define boolean 15
%}

%%
exit|print|println|toString|readInt|readDouble|readLine|if|else|while|continue|break|int|double|bool|string printf("[%d, %s]", keyword, yytext);
true|false printf("[%d, %s]", boolean, yytext);
[a-zA-Z_][a-zA-Z0-9_]* printf("[%d, %s]", id, yytext);
\".*\" printf("[%d, %s]", string, yytext);
[0-9]+ printf("[%d, %s]", integer, yytext);
[0-9]+"."[0-9]+ printf("[%d, %s]", floatnum, yytext);
"=" printf("[%d, %s]", assign, yytext);
"+"|"-"|"*"|"/"|"%" printf("[%d, %s]", arithmetic, yytext);
"!"|"&&"|"||" printf("[%d, %s]", logical, yytext);
"=="|"!="|"<"|">"|"<="|">=" printf("[%d, %s]", comparison, yytext);
"(" printf("[%d, %s]", openpara, yytext);
")" printf("[%d, %s]", closepara, yytext);
"{" printf("[%d, %s]", opencurly, yytext);
"}" printf("[%d, %s]", closecurly, yytext);
";" printf("[%d, %s]", terminator, yytext);
%%

int main() {
  yylex();
}

```
