%{
	#include<iostream>
	using namespace std;
	#include "groups.tab.hpp"
%}

%option noyywrap

%%

[0-9]+		                 {yylval.val = atoi(yytext) ; return NUM;}
[G][R][O][U][P][S]          {yylval.str = yytext ; return GROUPS; }
[R][E][G][I][O][N]          {yylval.str = yytext ; return REGION; }
[P][R][O][P][E][R][T][Y]    {yylval.str = yytext ; return PROPERTY; }
[;]		                      {return END;}
[ \n\t]			          ;
.			                {cout<<"Unrecognized token"<<endl;}
