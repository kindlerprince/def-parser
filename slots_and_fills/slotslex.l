%{
	#include<iostream>
	using namespace std;
	#include "slots.tab.hpp"
%}

%option noyywrap

%%

[0-9]+		            {yylval.val = atoi(yytext) ; return NUM;}
[0-9]+		            {yylval.val = atoi(yytext) ; return PT;}
[S][L][O][T][S]       {yylval.str = yytext ; return SLOTS; }
[R][E][C][T]          {yylval.str = yytext ; return RECT; }
[P][O][L][Y][G][O][N] {yylval.str = yytext ; return POLYGON; }
[;]		                {return END;}
[ \n\t]			          ;
.			                {cout<<"Unrecognized token"<<endl;}
