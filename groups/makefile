group: lex.yy.c groups.tab.cpp
	bison -d groups.ypp
	flex lexgroup.l
	g++ -o group  lex.yy.c groups.tab.cpp
