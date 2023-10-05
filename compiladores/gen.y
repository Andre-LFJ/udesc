%{
typedef long * yy;
#define yyu (-2147483647L)
static yy yynull;
extern yy yyh;
extern yy yyhx;
static yyErr(n,l)
{
yyAbort(n,"teste", l);
}
/* start */
/* end */
typedef struct {long attr[2];} yyATTRIBUTES;
#define YYSTYPE yyATTRIBUTES
extern YYSTYPE yylval;

%}
%start ROOT_
%token Number 257
%token yytk_SLASH 258
%token yytk_ASTERISK 259
%token yytk_EXCLAM 260
%token yytk_RPAREN 261
%token yytk_LPAREN 262
%token yytk_MINUS 263
%token yytk_PLUS 264
%token yytk_BAR_BAR 265
%token yytk_AMPERSAND_AMPERSAND 266
%token yytk_EXCLAM_EQUAL 267
%token yytk_EQUAL_EQUAL 268
%token yytk_LESS_EQUAL 269
%token yytk_GREATER_EQUAL 270
%token yytk_LESS 271
%token yytk_GREATER 272
%%
ROOT_:
   expression

{
yy yyb;
yy yyv_X;
yy yy_1_1;
yy yy_2_1;
yy_1_1 = (yy)($1.attr[1]);
yyv_X = yy_1_1;
yy_2_1 = yyv_X;
code(yy_2_1);
$$.attr[0] = $1.attr[0];
}
;
expression:
   expression2

{
yy yyb;
yy yy_0_1;
yy yyv_X;
yy yy_1_1;
yy_1_1 = (yy)($1.attr[1]);
yyv_X = yy_1_1;
yy_0_1 = yyv_X;
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
expression:
   expression3

{
yy yyb;
yy yy_0_1;
yy yyv_X;
yy yy_1_1;
yy_1_1 = (yy)($1.attr[1]);
yyv_X = yy_1_1;
yy_0_1 = yyv_X;
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
expression:
   expression4

{
yy yyb;
yy yy_0_1;
yy yyv_X;
yy yy_1_1;
yy_1_1 = (yy)($1.attr[1]);
yyv_X = yy_1_1;
yy_0_1 = yyv_X;
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
expression:
   expression
   yytk_GREATER
   expression2

{
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yyv_X;
yy yy_1_1;
yy yyv_Y;
yy yy_3_1;
yy_1_1 = (yy)($1.attr[1]);
yy_3_1 = (yy)($3.attr[1]);
yyb = yyh;
yyh += 3; if (yyh > yyhx) yyExtend();
yyv_X = yy_1_1;
yyv_Y = yy_3_1;
yy_0_1_1 = yyv_X;
yy_0_1_2 = yyv_Y;
yy_0_1 = yyb + 0;
yy_0_1[0] = 1;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $2.attr[0];
}
;
expression:
   expression
   yytk_LESS
   expression2

{
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yyv_X;
yy yy_1_1;
yy yyv_Y;
yy yy_3_1;
yy_1_1 = (yy)($1.attr[1]);
yy_3_1 = (yy)($3.attr[1]);
yyb = yyh;
yyh += 3; if (yyh > yyhx) yyExtend();
yyv_X = yy_1_1;
yyv_Y = yy_3_1;
yy_0_1_1 = yyv_X;
yy_0_1_2 = yyv_Y;
yy_0_1 = yyb + 0;
yy_0_1[0] = 2;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $2.attr[0];
}
;
expression:
   expression
   yytk_GREATER_EQUAL
   expression2

{
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yyv_X;
yy yy_1_1;
yy yyv_Y;
yy yy_3_1;
yy_1_1 = (yy)($1.attr[1]);
yy_3_1 = (yy)($3.attr[1]);
yyb = yyh;
yyh += 3; if (yyh > yyhx) yyExtend();
yyv_X = yy_1_1;
yyv_Y = yy_3_1;
yy_0_1_1 = yyv_X;
yy_0_1_2 = yyv_Y;
yy_0_1 = yyb + 0;
yy_0_1[0] = 3;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $2.attr[0];
}
;
expression:
   expression
   yytk_LESS_EQUAL
   expression2

{
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yyv_X;
yy yy_1_1;
yy yyv_Y;
yy yy_3_1;
yy_1_1 = (yy)($1.attr[1]);
yy_3_1 = (yy)($3.attr[1]);
yyb = yyh;
yyh += 3; if (yyh > yyhx) yyExtend();
yyv_X = yy_1_1;
yyv_Y = yy_3_1;
yy_0_1_1 = yyv_X;
yy_0_1_2 = yyv_Y;
yy_0_1 = yyb + 0;
yy_0_1[0] = 4;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $2.attr[0];
}
;
expression:
   expression
   yytk_EQUAL_EQUAL
   expression2

{
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yyv_X;
yy yy_1_1;
yy yyv_Y;
yy yy_3_1;
yy_1_1 = (yy)($1.attr[1]);
yy_3_1 = (yy)($3.attr[1]);
yyb = yyh;
yyh += 3; if (yyh > yyhx) yyExtend();
yyv_X = yy_1_1;
yyv_Y = yy_3_1;
yy_0_1_1 = yyv_X;
yy_0_1_2 = yyv_Y;
yy_0_1 = yyb + 0;
yy_0_1[0] = 5;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $2.attr[0];
}
;
expression:
   expression
   yytk_EXCLAM_EQUAL
   expression2

{
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yyv_X;
yy yy_1_1;
yy yyv_Y;
yy yy_3_1;
yy_1_1 = (yy)($1.attr[1]);
yy_3_1 = (yy)($3.attr[1]);
yyb = yyh;
yyh += 3; if (yyh > yyhx) yyExtend();
yyv_X = yy_1_1;
yyv_Y = yy_3_1;
yy_0_1_1 = yyv_X;
yy_0_1_2 = yyv_Y;
yy_0_1 = yyb + 0;
yy_0_1[0] = 6;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $2.attr[0];
}
;
expression:
   expression
   yytk_AMPERSAND_AMPERSAND
   expression3

{
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yyv_X;
yy yy_1_1;
yy yyv_Y;
yy yy_3_1;
yy_1_1 = (yy)($1.attr[1]);
yy_3_1 = (yy)($3.attr[1]);
yyb = yyh;
yyh += 3; if (yyh > yyhx) yyExtend();
yyv_X = yy_1_1;
yyv_Y = yy_3_1;
yy_0_1_1 = yyv_X;
yy_0_1_2 = yyv_Y;
yy_0_1 = yyb + 0;
yy_0_1[0] = 7;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $2.attr[0];
}
;
expression:
   expression
   yytk_BAR_BAR
   expression3

{
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yyv_X;
yy yy_1_1;
yy yyv_Y;
yy yy_3_1;
yy_1_1 = (yy)($1.attr[1]);
yy_3_1 = (yy)($3.attr[1]);
yyb = yyh;
yyh += 3; if (yyh > yyhx) yyExtend();
yyv_X = yy_1_1;
yyv_Y = yy_3_1;
yy_0_1_1 = yyv_X;
yy_0_1_2 = yyv_Y;
yy_0_1 = yyb + 0;
yy_0_1[0] = 8;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $2.attr[0];
}
;
expression:
   expression
   yytk_PLUS
   expression4

{
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yyv_X;
yy yy_1_1;
yy yyv_Y;
yy yy_3_1;
yy_1_1 = (yy)($1.attr[1]);
yy_3_1 = (yy)($3.attr[1]);
yyb = yyh;
yyh += 3; if (yyh > yyhx) yyExtend();
yyv_X = yy_1_1;
yyv_Y = yy_3_1;
yy_0_1_1 = yyv_X;
yy_0_1_2 = yyv_Y;
yy_0_1 = yyb + 0;
yy_0_1[0] = 10;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $2.attr[0];
}
;
expression:
   expression
   yytk_MINUS
   expression4

{
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yyv_X;
yy yy_1_1;
yy yyv_Y;
yy yy_3_1;
yy_1_1 = (yy)($1.attr[1]);
yy_3_1 = (yy)($3.attr[1]);
yyb = yyh;
yyh += 3; if (yyh > yyhx) yyExtend();
yyv_X = yy_1_1;
yyv_Y = yy_3_1;
yy_0_1_1 = yyv_X;
yy_0_1_2 = yyv_Y;
yy_0_1 = yyb + 0;
yy_0_1[0] = 11;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $2.attr[0];
}
;
expression2:
   Number

{
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yyv_X;
yy yy_1_1;
yy_1_1 = (yy)($1.attr[1]);
yyb = yyh;
yyh += 2; if (yyh > yyhx) yyExtend();
yyv_X = yy_1_1;
yy_0_1_1 = yyv_X;
yy_0_1 = yyb + 0;
yy_0_1[0] = 15;
yy_0_1[1] = ((long)yy_0_1_1);
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
expression2:
   yytk_LPAREN
   expression
   yytk_RPAREN

{
yy yyb;
yy yy_0_1;
yy yyv_X;
yy yy_2_1;
yy_2_1 = (yy)($2.attr[1]);
yyv_X = yy_2_1;
yy_0_1 = yyv_X;
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
expression3:
   Number

{
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yyv_X;
yy yy_1_1;
yy_1_1 = (yy)($1.attr[1]);
yyb = yyh;
yyh += 2; if (yyh > yyhx) yyExtend();
yyv_X = yy_1_1;
yy_0_1_1 = yyv_X;
yy_0_1 = yyb + 0;
yy_0_1[0] = 15;
yy_0_1[1] = ((long)yy_0_1_1);
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
expression3:
   yytk_EXCLAM
   expression3

{
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yyv_X;
yy yy_2_1;
yy_2_1 = (yy)($2.attr[1]);
yyb = yyh;
yyh += 2; if (yyh > yyhx) yyExtend();
yyv_X = yy_2_1;
yy_0_1_1 = yyv_X;
yy_0_1 = yyb + 0;
yy_0_1[0] = 9;
yy_0_1[1] = ((long)yy_0_1_1);
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
expression3:
   yytk_LPAREN
   expression
   yytk_RPAREN

{
yy yyb;
yy yy_0_1;
yy yyv_X;
yy yy_2_1;
yy_2_1 = (yy)($2.attr[1]);
yyv_X = yy_2_1;
yy_0_1 = yyv_X;
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
expression4:
   expression5

{
yy yyb;
yy yy_0_1;
yy yyv_X;
yy yy_1_1;
yy_1_1 = (yy)($1.attr[1]);
yyv_X = yy_1_1;
yy_0_1 = yyv_X;
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
expression4:
   expression4
   yytk_ASTERISK
   expression5

{
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yyv_X;
yy yy_1_1;
yy yyv_Y;
yy yy_3_1;
yy_1_1 = (yy)($1.attr[1]);
yy_3_1 = (yy)($3.attr[1]);
yyb = yyh;
yyh += 3; if (yyh > yyhx) yyExtend();
yyv_X = yy_1_1;
yyv_Y = yy_3_1;
yy_0_1_1 = yyv_X;
yy_0_1_2 = yyv_Y;
yy_0_1 = yyb + 0;
yy_0_1[0] = 12;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $2.attr[0];
}
;
expression4:
   expression4
   yytk_SLASH
   expression5

{
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yyv_X;
yy yy_1_1;
yy yyv_Y;
yy yy_3_1;
yy_1_1 = (yy)($1.attr[1]);
yy_3_1 = (yy)($3.attr[1]);
yyb = yyh;
yyh += 3; if (yyh > yyhx) yyExtend();
yyv_X = yy_1_1;
yyv_Y = yy_3_1;
yy_0_1_1 = yyv_X;
yy_0_1_2 = yyv_Y;
yy_0_1 = yyb + 0;
yy_0_1[0] = 13;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $2.attr[0];
}
;
expression5:
   Number

{
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yyv_X;
yy yy_1_1;
yy_1_1 = (yy)($1.attr[1]);
yyb = yyh;
yyh += 2; if (yyh > yyhx) yyExtend();
yyv_X = yy_1_1;
yy_0_1_1 = yyv_X;
yy_0_1 = yyb + 0;
yy_0_1[0] = 15;
yy_0_1[1] = ((long)yy_0_1_1);
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
expression5:
   yytk_MINUS
   expression5

{
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yyv_X;
yy yy_2_1;
yy_2_1 = (yy)($2.attr[1]);
yyb = yyh;
yyh += 2; if (yyh > yyhx) yyExtend();
yyv_X = yy_2_1;
yy_0_1_1 = yyv_X;
yy_0_1 = yyb + 0;
yy_0_1[0] = 14;
yy_0_1[1] = ((long)yy_0_1_1);
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
expression5:
   yytk_LPAREN
   expression
   yytk_RPAREN

{
yy yyb;
yy yy_0_1;
yy yyv_X;
yy yy_2_1;
yy_2_1 = (yy)($2.attr[1]);
yyv_X = yy_2_1;
yy_0_1 = yyv_X;
$$.attr[1] = ((long)yy_0_1);
$$.attr[0] = $1.attr[0];
}
;
