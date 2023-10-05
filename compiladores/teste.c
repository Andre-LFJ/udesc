typedef long * yy;
#define yyu (-2147483647L)
static yy yynull;
extern yy yyh;
extern yy yyhx;
static yyErr(n,l)
{
yyAbort(n,"teste", l);
}
yyeq_Expr(t1, t2) yy t1, t2;
{
switch(t1[0]) {
case 1: return (t2[0] == 1)
&& yyeq_Expr((yy)t1[1], (yy)t2[1])
&& yyeq_Expr((yy)t1[2], (yy)t2[2])
;
case 2: return (t2[0] == 2)
&& yyeq_Expr((yy)t1[1], (yy)t2[1])
&& yyeq_Expr((yy)t1[2], (yy)t2[2])
;
case 3: return (t2[0] == 3)
&& yyeq_Expr((yy)t1[1], (yy)t2[1])
&& yyeq_Expr((yy)t1[2], (yy)t2[2])
;
case 4: return (t2[0] == 4)
&& yyeq_Expr((yy)t1[1], (yy)t2[1])
&& yyeq_Expr((yy)t1[2], (yy)t2[2])
;
case 5: return (t2[0] == 5)
&& yyeq_Expr((yy)t1[1], (yy)t2[1])
&& yyeq_Expr((yy)t1[2], (yy)t2[2])
;
case 6: return (t2[0] == 6)
&& yyeq_Expr((yy)t1[1], (yy)t2[1])
&& yyeq_Expr((yy)t1[2], (yy)t2[2])
;
case 7: return (t2[0] == 7)
&& yyeq_Expr((yy)t1[1], (yy)t2[1])
&& yyeq_Expr((yy)t1[2], (yy)t2[2])
;
case 8: return (t2[0] == 8)
&& yyeq_Expr((yy)t1[1], (yy)t2[1])
&& yyeq_Expr((yy)t1[2], (yy)t2[2])
;
case 9: return (t2[0] == 9)
&& yyeq_Expr((yy)t1[1], (yy)t2[1])
;
case 10: return (t2[0] == 10)
&& yyeq_Expr((yy)t1[1], (yy)t2[1])
&& yyeq_Expr((yy)t1[2], (yy)t2[2])
;
case 11: return (t2[0] == 11)
&& yyeq_Expr((yy)t1[1], (yy)t2[1])
&& yyeq_Expr((yy)t1[2], (yy)t2[2])
;
case 12: return (t2[0] == 12)
&& yyeq_Expr((yy)t1[1], (yy)t2[1])
&& yyeq_Expr((yy)t1[2], (yy)t2[2])
;
case 13: return (t2[0] == 13)
&& yyeq_Expr((yy)t1[1], (yy)t2[1])
&& yyeq_Expr((yy)t1[2], (yy)t2[2])
;
case 14: return (t2[0] == 14)
&& yyeq_Expr((yy)t1[1], (yy)t2[1])
;
case 15: return (t2[0] == 15)
&& (t1[1] == t2[1])
;
}
}
yyPrint_Expr(t) yy t;
{
switch(t[0]) {
case 1: 
yyTerm("maior");
yyFirstArg();
yyPrint_Expr((yy)t[1]);
yyNextArg();
yyPrint_Expr((yy)t[2]);
yyEndArgs();
break;
case 2: 
yyTerm("menor");
yyFirstArg();
yyPrint_Expr((yy)t[1]);
yyNextArg();
yyPrint_Expr((yy)t[2]);
yyEndArgs();
break;
case 3: 
yyTerm("maiorigual");
yyFirstArg();
yyPrint_Expr((yy)t[1]);
yyNextArg();
yyPrint_Expr((yy)t[2]);
yyEndArgs();
break;
case 4: 
yyTerm("menorigual");
yyFirstArg();
yyPrint_Expr((yy)t[1]);
yyNextArg();
yyPrint_Expr((yy)t[2]);
yyEndArgs();
break;
case 5: 
yyTerm("igual");
yyFirstArg();
yyPrint_Expr((yy)t[1]);
yyNextArg();
yyPrint_Expr((yy)t[2]);
yyEndArgs();
break;
case 6: 
yyTerm("diferente");
yyFirstArg();
yyPrint_Expr((yy)t[1]);
yyNextArg();
yyPrint_Expr((yy)t[2]);
yyEndArgs();
break;
case 7: 
yyTerm("conjuncao");
yyFirstArg();
yyPrint_Expr((yy)t[1]);
yyNextArg();
yyPrint_Expr((yy)t[2]);
yyEndArgs();
break;
case 8: 
yyTerm("disjuncao");
yyFirstArg();
yyPrint_Expr((yy)t[1]);
yyNextArg();
yyPrint_Expr((yy)t[2]);
yyEndArgs();
break;
case 9: 
yyTerm("negacao");
yyFirstArg();
yyPrint_Expr((yy)t[1]);
yyEndArgs();
break;
case 10: 
yyTerm("mais");
yyFirstArg();
yyPrint_Expr((yy)t[1]);
yyNextArg();
yyPrint_Expr((yy)t[2]);
yyEndArgs();
break;
case 11: 
yyTerm("menos");
yyFirstArg();
yyPrint_Expr((yy)t[1]);
yyNextArg();
yyPrint_Expr((yy)t[2]);
yyEndArgs();
break;
case 12: 
yyTerm("vezes");
yyFirstArg();
yyPrint_Expr((yy)t[1]);
yyNextArg();
yyPrint_Expr((yy)t[2]);
yyEndArgs();
break;
case 13: 
yyTerm("dividir");
yyFirstArg();
yyPrint_Expr((yy)t[1]);
yyNextArg();
yyPrint_Expr((yy)t[2]);
yyEndArgs();
break;
case 14: 
yyTerm("negativo");
yyFirstArg();
yyPrint_Expr((yy)t[1]);
yyEndArgs();
break;
case 15: 
yyTerm("num");
yyFirstArg();
yyPrint_INT((yy)t[1]);
yyEndArgs();
break;
}
}
yybroadcast_Expr(t,In,Out,Handler)
yy t, In, *Out; int (*Handler) ();
{
yy A, B;
A = In;
if (! Handler(yybroadcast_Expr, t, In, Out)) {
switch(t[0]) {
case 1: 
yybroadcast_Expr((yy)t[1], A, &B, Handler);
yybroadcast_Expr((yy)t[2], B, &A, Handler);
*Out = A;
break;
case 2: 
yybroadcast_Expr((yy)t[1], A, &B, Handler);
yybroadcast_Expr((yy)t[2], B, &A, Handler);
*Out = A;
break;
case 3: 
yybroadcast_Expr((yy)t[1], A, &B, Handler);
yybroadcast_Expr((yy)t[2], B, &A, Handler);
*Out = A;
break;
case 4: 
yybroadcast_Expr((yy)t[1], A, &B, Handler);
yybroadcast_Expr((yy)t[2], B, &A, Handler);
*Out = A;
break;
case 5: 
yybroadcast_Expr((yy)t[1], A, &B, Handler);
yybroadcast_Expr((yy)t[2], B, &A, Handler);
*Out = A;
break;
case 6: 
yybroadcast_Expr((yy)t[1], A, &B, Handler);
yybroadcast_Expr((yy)t[2], B, &A, Handler);
*Out = A;
break;
case 7: 
yybroadcast_Expr((yy)t[1], A, &B, Handler);
yybroadcast_Expr((yy)t[2], B, &A, Handler);
*Out = A;
break;
case 8: 
yybroadcast_Expr((yy)t[1], A, &B, Handler);
yybroadcast_Expr((yy)t[2], B, &A, Handler);
*Out = A;
break;
case 9: 
yybroadcast_Expr((yy)t[1], A, &B, Handler);
*Out = B;
break;
case 10: 
yybroadcast_Expr((yy)t[1], A, &B, Handler);
yybroadcast_Expr((yy)t[2], B, &A, Handler);
*Out = A;
break;
case 11: 
yybroadcast_Expr((yy)t[1], A, &B, Handler);
yybroadcast_Expr((yy)t[2], B, &A, Handler);
*Out = A;
break;
case 12: 
yybroadcast_Expr((yy)t[1], A, &B, Handler);
yybroadcast_Expr((yy)t[2], B, &A, Handler);
*Out = A;
break;
case 13: 
yybroadcast_Expr((yy)t[1], A, &B, Handler);
yybroadcast_Expr((yy)t[2], B, &A, Handler);
*Out = A;
break;
case 14: 
yybroadcast_Expr((yy)t[1], A, &B, Handler);
*Out = B;
break;
case 15: 
*Out = A;
break;
}
}
}
int yyparse_rc = 0;
ROOT()
{
extern char *THIS_RUNTIME_SYSTEM;
char *GENTLE = "Gentle 3.0 01100401 (C) 1992, 1997";
if (strcmp(THIS_RUNTIME_SYSTEM, GENTLE))
{ printf("INCONSISTENT GENTLE RUNTIME SYSTEM\n"); exit(1); }
yyExtend();
yyparse_rc = yyparse();
}
code(yyin_1)
yy yyin_1;
{
{
yy yyb;
yy yy_0_1;
yy yyv_X1;
yy yy_0_1_1;
yy yyv_X2;
yy yy_0_1_2;
yy yy_1_1;
yy yy_2_1;
yy yy_3_1;
yy_0_1 = yyin_1;
if (yy_0_1[0] != 1) goto yyfl_9_1;
yy_0_1_1 = ((yy)yy_0_1[1]);
yy_0_1_2 = ((yy)yy_0_1[2]);
yyv_X1 = yy_0_1_1;
yyv_X2 = yy_0_1_2;
yy_1_1 = yyv_X1;
code(yy_1_1);
yy_2_1 = ((yy)">");
yyPrint_STRING(yy_2_1);
yyEndPrint();
yy_3_1 = yyv_X2;
code(yy_3_1);
return;
yyfl_9_1 : ;
}
{
yy yyb;
yy yy_0_1;
yy yyv_X1;
yy yy_0_1_1;
yy yyv_X2;
yy yy_0_1_2;
yy yy_1_1;
yy yy_2_1;
yy yy_3_1;
yy_0_1 = yyin_1;
if (yy_0_1[0] != 2) goto yyfl_9_2;
yy_0_1_1 = ((yy)yy_0_1[1]);
yy_0_1_2 = ((yy)yy_0_1[2]);
yyv_X1 = yy_0_1_1;
yyv_X2 = yy_0_1_2;
yy_1_1 = yyv_X1;
code(yy_1_1);
yy_2_1 = ((yy)"<");
yyPrint_STRING(yy_2_1);
yyEndPrint();
yy_3_1 = yyv_X2;
code(yy_3_1);
return;
yyfl_9_2 : ;
}
{
yy yyb;
yy yy_0_1;
yy yyv_X1;
yy yy_0_1_1;
yy yyv_X2;
yy yy_0_1_2;
yy yy_1_1;
yy yy_2_1;
yy yy_3_1;
yy_0_1 = yyin_1;
if (yy_0_1[0] != 3) goto yyfl_9_3;
yy_0_1_1 = ((yy)yy_0_1[1]);
yy_0_1_2 = ((yy)yy_0_1[2]);
yyv_X1 = yy_0_1_1;
yyv_X2 = yy_0_1_2;
yy_1_1 = yyv_X1;
code(yy_1_1);
yy_2_1 = ((yy)">=");
yyPrint_STRING(yy_2_1);
yyEndPrint();
yy_3_1 = yyv_X2;
code(yy_3_1);
return;
yyfl_9_3 : ;
}
{
yy yyb;
yy yy_0_1;
yy yyv_X1;
yy yy_0_1_1;
yy yyv_X2;
yy yy_0_1_2;
yy yy_1_1;
yy yy_2_1;
yy yy_3_1;
yy_0_1 = yyin_1;
if (yy_0_1[0] != 4) goto yyfl_9_4;
yy_0_1_1 = ((yy)yy_0_1[1]);
yy_0_1_2 = ((yy)yy_0_1[2]);
yyv_X1 = yy_0_1_1;
yyv_X2 = yy_0_1_2;
yy_1_1 = yyv_X1;
code(yy_1_1);
yy_2_1 = ((yy)"<=");
yyPrint_STRING(yy_2_1);
yyEndPrint();
yy_3_1 = yyv_X2;
code(yy_3_1);
return;
yyfl_9_4 : ;
}
{
yy yyb;
yy yy_0_1;
yy yyv_X1;
yy yy_0_1_1;
yy yyv_X2;
yy yy_0_1_2;
yy yy_1_1;
yy yy_2_1;
yy yy_3_1;
yy_0_1 = yyin_1;
if (yy_0_1[0] != 5) goto yyfl_9_5;
yy_0_1_1 = ((yy)yy_0_1[1]);
yy_0_1_2 = ((yy)yy_0_1[2]);
yyv_X1 = yy_0_1_1;
yyv_X2 = yy_0_1_2;
yy_1_1 = yyv_X1;
code(yy_1_1);
yy_2_1 = ((yy)"==");
yyPrint_STRING(yy_2_1);
yyEndPrint();
yy_3_1 = yyv_X2;
code(yy_3_1);
return;
yyfl_9_5 : ;
}
{
yy yyb;
yy yy_0_1;
yy yyv_X1;
yy yy_0_1_1;
yy yyv_X2;
yy yy_0_1_2;
yy yy_1_1;
yy yy_2_1;
yy yy_3_1;
yy_0_1 = yyin_1;
if (yy_0_1[0] != 6) goto yyfl_9_6;
yy_0_1_1 = ((yy)yy_0_1[1]);
yy_0_1_2 = ((yy)yy_0_1[2]);
yyv_X1 = yy_0_1_1;
yyv_X2 = yy_0_1_2;
yy_1_1 = yyv_X1;
code(yy_1_1);
yy_2_1 = ((yy)"!=");
yyPrint_STRING(yy_2_1);
yyEndPrint();
yy_3_1 = yyv_X2;
code(yy_3_1);
return;
yyfl_9_6 : ;
}
{
yy yyb;
yy yy_0_1;
yy yyv_X1;
yy yy_0_1_1;
yy yyv_X2;
yy yy_0_1_2;
yy yy_1_1;
yy yy_2_1;
yy yy_3_1;
yy_0_1 = yyin_1;
if (yy_0_1[0] != 7) goto yyfl_9_7;
yy_0_1_1 = ((yy)yy_0_1[1]);
yy_0_1_2 = ((yy)yy_0_1[2]);
yyv_X1 = yy_0_1_1;
yyv_X2 = yy_0_1_2;
yy_1_1 = yyv_X1;
code(yy_1_1);
yy_2_1 = ((yy)"&&");
yyPrint_STRING(yy_2_1);
yyEndPrint();
yy_3_1 = yyv_X2;
code(yy_3_1);
return;
yyfl_9_7 : ;
}
{
yy yyb;
yy yy_0_1;
yy yyv_X1;
yy yy_0_1_1;
yy yyv_X2;
yy yy_0_1_2;
yy yy_1_1;
yy yy_2_1;
yy yy_3_1;
yy_0_1 = yyin_1;
if (yy_0_1[0] != 8) goto yyfl_9_8;
yy_0_1_1 = ((yy)yy_0_1[1]);
yy_0_1_2 = ((yy)yy_0_1[2]);
yyv_X1 = yy_0_1_1;
yyv_X2 = yy_0_1_2;
yy_1_1 = yyv_X1;
code(yy_1_1);
yy_2_1 = ((yy)"||");
yyPrint_STRING(yy_2_1);
yyEndPrint();
yy_3_1 = yyv_X2;
code(yy_3_1);
return;
yyfl_9_8 : ;
}
{
yy yyb;
yy yy_0_1;
yy yyv_X;
yy yy_0_1_1;
yy yy_1_1;
yy yy_2_1;
yy_0_1 = yyin_1;
if (yy_0_1[0] != 9) goto yyfl_9_9;
yy_0_1_1 = ((yy)yy_0_1[1]);
yyv_X = yy_0_1_1;
yy_1_1 = ((yy)"!");
yyPrint_STRING(yy_1_1);
yyEndPrint();
yy_2_1 = yyv_X;
code(yy_2_1);
return;
yyfl_9_9 : ;
}
{
yy yyb;
yy yy_0_1;
yy yyv_X1;
yy yy_0_1_1;
yy yyv_X2;
yy yy_0_1_2;
yy yy_1_1;
yy yy_2_1;
yy yy_3_1;
yy_0_1 = yyin_1;
if (yy_0_1[0] != 10) goto yyfl_9_10;
yy_0_1_1 = ((yy)yy_0_1[1]);
yy_0_1_2 = ((yy)yy_0_1[2]);
yyv_X1 = yy_0_1_1;
yyv_X2 = yy_0_1_2;
yy_1_1 = yyv_X1;
code(yy_1_1);
yy_2_1 = ((yy)"+");
yyPrint_STRING(yy_2_1);
yyEndPrint();
yy_3_1 = yyv_X2;
code(yy_3_1);
return;
yyfl_9_10 : ;
}
{
yy yyb;
yy yy_0_1;
yy yyv_X1;
yy yy_0_1_1;
yy yyv_X2;
yy yy_0_1_2;
yy yy_1_1;
yy yy_2_1;
yy yy_3_1;
yy_0_1 = yyin_1;
if (yy_0_1[0] != 11) goto yyfl_9_11;
yy_0_1_1 = ((yy)yy_0_1[1]);
yy_0_1_2 = ((yy)yy_0_1[2]);
yyv_X1 = yy_0_1_1;
yyv_X2 = yy_0_1_2;
yy_1_1 = yyv_X1;
code(yy_1_1);
yy_2_1 = ((yy)"-");
yyPrint_STRING(yy_2_1);
yyEndPrint();
yy_3_1 = yyv_X2;
code(yy_3_1);
return;
yyfl_9_11 : ;
}
{
yy yyb;
yy yy_0_1;
yy yyv_X1;
yy yy_0_1_1;
yy yyv_X2;
yy yy_0_1_2;
yy yy_1_1;
yy yy_2_1;
yy yy_3_1;
yy_0_1 = yyin_1;
if (yy_0_1[0] != 12) goto yyfl_9_12;
yy_0_1_1 = ((yy)yy_0_1[1]);
yy_0_1_2 = ((yy)yy_0_1[2]);
yyv_X1 = yy_0_1_1;
yyv_X2 = yy_0_1_2;
yy_1_1 = yyv_X1;
code(yy_1_1);
yy_2_1 = ((yy)"*");
yyPrint_STRING(yy_2_1);
yyEndPrint();
yy_3_1 = yyv_X2;
code(yy_3_1);
return;
yyfl_9_12 : ;
}
{
yy yyb;
yy yy_0_1;
yy yyv_X1;
yy yy_0_1_1;
yy yyv_X2;
yy yy_0_1_2;
yy yy_1_1;
yy yy_2_1;
yy yy_3_1;
yy_0_1 = yyin_1;
if (yy_0_1[0] != 13) goto yyfl_9_13;
yy_0_1_1 = ((yy)yy_0_1[1]);
yy_0_1_2 = ((yy)yy_0_1[2]);
yyv_X1 = yy_0_1_1;
yyv_X2 = yy_0_1_2;
yy_1_1 = yyv_X1;
code(yy_1_1);
yy_2_1 = ((yy)"/");
yyPrint_STRING(yy_2_1);
yyEndPrint();
yy_3_1 = yyv_X2;
code(yy_3_1);
return;
yyfl_9_13 : ;
}
{
yy yyb;
yy yy_0_1;
yy yyv_X;
yy yy_0_1_1;
yy yy_1_1;
yy yy_2_1;
yy_0_1 = yyin_1;
if (yy_0_1[0] != 14) goto yyfl_9_14;
yy_0_1_1 = ((yy)yy_0_1[1]);
yyv_X = yy_0_1_1;
yy_1_1 = ((yy)"-");
yyPrint_STRING(yy_1_1);
yyEndPrint();
yy_2_1 = yyv_X;
code(yy_2_1);
return;
yyfl_9_14 : ;
}
{
yy yyb;
yy yy_0_1;
yy yyv_N;
yy yy_0_1_1;
yy yy_1_1;
yy_0_1 = yyin_1;
if (yy_0_1[0] != 15) goto yyfl_9_15;
yy_0_1_1 = ((yy)yy_0_1[1]);
yyv_N = yy_0_1_1;
yy_1_1 = yyv_N;
yyPrint_INT(yy_1_1);
yyEndPrint();
return;
yyfl_9_15 : ;
}
yyErr(2,89);
}
