%{
	#include<iostream>
	using namespace std;
	#include "fills.tab.hpp"
%}

%option noyywrap

%%

[0-9]+		            {yylval.val = atoi(yytext) ; return NUM;}
[0-9]+		            {yylval.val = atoi(yytext) ; return PT;}
[+]										{yylval.c = yytext[0] ; return OP; }
[F][I][L][L][S]       {yylval.str = yytext ; return FILLS; }
[R][E][C][T]          {yylval.str = yytext ; return RECT; }
[P][O][L][Y][G][O][N] {yylval.str = yytext ; return POLYGON; }
[O][P][C]             {yylval.str = yytext ; return OPC; }
[V][I][A]             {yylval.str = yytext ; return VIA; }
[;]		                {return END;}
[ \n\t]			          ;
.			                {cout<<"Unrecognized token"<<endl;}
