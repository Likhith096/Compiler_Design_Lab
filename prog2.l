%option noyywrap
%{
  #include<stdio.h>
%}
%%
[0-9]+ {printf("\n%s is Number",yytext);}
[+-/*] {printf("\n%s->Operator",yytext);}
[ /t/n] {/*Ignore WhiteSpace and NewLine*/}
[a-zA-Z]+ {printf("\n%s->Identifier",yytext);}
%%
void main()
{
   printf("Enter\n");
   yylex();
}
