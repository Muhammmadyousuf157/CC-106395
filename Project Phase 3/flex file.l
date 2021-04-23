%option noyywrap

%{
  int yylineno = 1;
%}


%%

exit|print|println|toString|readInt|readDouble|readLine|if|else|while|continue|break|int|double|bool|string {return keyword;}
true|false {return boolean;}
[a-zA-Z_][a-zA-Z0-9_]* {return id;}
\".*\" {return string;}
[0-9]+ {return integer;}
[0-9]+"."[0-9]+ {return floatnum;}
"=" {return assign;}
"+"|"-"|"*"|"/"|"%" {return arithmetic;}
"!"|"&&"|"||" {return logical;}
"=="|"!="|"<"|">"|"<="|">=" {return comparison;}
"(" {return openpara;}
")" {return closepara;}
"{" {return opencurly;}
"}" {return closecurly;}
";" {return terminator;}
%%
