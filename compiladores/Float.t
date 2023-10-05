[0-9]+\.[0-9]+ {
	yylval.attr[1] = atof(yytext);
	yysetpos();
	return Float;
}
