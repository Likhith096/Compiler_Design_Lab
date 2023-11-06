%option noyywrap
%{
   #include<stdio.h>
%}
%%
int|float|char {printf("\n%s->Keyword",yytext);}
[a-zA-Z]* {printf("\n%s->Identifier",yytext);}
,|; {printf("\n%s->Seperator",yytext);}
%%
void main()
{
   yylex();
}
