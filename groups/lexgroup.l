%{
	#include<iostream>
	using namespace std;
	#include "groups.tab.hpp"
%}

%option noyywrap

%%

"GROUPS"					{yylval.str = yytext ;	return GROUPS; }
"REGION"					{yylval.str = yytext ;	return REGION; }
"PROPERTY"					{yylval.str = yytext ;	return PROPERTY; }
"END"						{yylval.str = yytext ;	return END;}
[0-9]+		                {yylval.val = atoi(yytext) ; return NUM; }
[A-Z0-9]+					{yylval.str=yytext;		return COMP; }
[a-zA-Z][a-zA-Z0-9]+		{yylval.str = yytext;	return ID; }
";"							{yylval.op =yytext[0];	return STOP; }
"+"							{yylval.op==yytext[0];	return PLUS; }
"-"							{yylval.op==yytext[0];	return MINUS; }
"("							{yylval.op=yytext[0];	return LBRACKET;}
")"							{yylval.op=yytext[0];	return RBRACKET; }
[ \n\t]
.							{cout<<"Unrecognized token"<<endl; exit(0); }
