%{
#include "gen.h"
extern YYSTYPE yylval;
extern long yypos;
#define yysetpos() { yylval.attr[0] = yypos; yypos += yyleng; }
%}
%%
"/" { yysetpos(); return yytk_SLASH; }
"*" { yysetpos(); return yytk_ASTERISK; }
"!" { yysetpos(); return yytk_EXCLAM; }
")" { yysetpos(); return yytk_RPAREN; }
"(" { yysetpos(); return yytk_LPAREN; }
"-" { yysetpos(); return yytk_MINUS; }
"+" { yysetpos(); return yytk_PLUS; }
"||" { yysetpos(); return yytk_BAR_BAR; }
"&&" { yysetpos(); return yytk_AMPERSAND_AMPERSAND; }
"!=" { yysetpos(); return yytk_EXCLAM_EQUAL; }
"==" { yysetpos(); return yytk_EQUAL_EQUAL; }
"<=" { yysetpos(); return yytk_LESS_EQUAL; }
">=" { yysetpos(); return yytk_GREATER_EQUAL; }
"<" { yysetpos(); return yytk_LESS; }
">" { yysetpos(); return yytk_GREATER; }
[0-9]+ {
   yylval.attr[1] = atoi(yytext);
   yysetpos();
   return Number;
}
\  { yypos += 1; }
\t { yypos += 1; }
\r { yypos += 1; }
\n { yyPosToNextLine(); }
. { yysetpos(); yyerror("illegal token"); }
%%
#ifndef yywrap
yywrap() { return 1; }
#endif
