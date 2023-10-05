/* 
*	Projeto no arquivo teste.g, aqui não funciona
*
*
*	------------------------------------------------------------------
*	Operadores: <, >, <=, >=, ==, !=, &&, ||, !, +, -, *, /
*	------------------------------------------------------------------
*
*	Não consegui fazer o analisador reconhecer numeros com ponto flutuante, 
*	mas os operadores >,<,>=,<=,==,!=,&&,||,!,+,-,*,/ são reconhecidos pelo 
*	analisador. Mesmo nao funcionando, deixei os arquivos e comentei as
*	linhas sobre Float.
*
*
*/

'root'
   expression(-> X) code(X)
/*
'type' FLOAT

'action' printFloat(FLOAT)

--'root' imprime(-> X) printFloat(X)

'nonterm' imprime(-> FLOAT)

	'rule' imprime(-> X): Float(-> X)

'token' Float(-> FLOAT)
*/
'type' Expr
	maior(Expr, Expr)
	menor(Expr, Expr)
	maiorigual(Expr, Expr)
	menorigual(Expr, Expr)
	igual(Expr, Expr)
	diferente(Expr, Expr)

	conjuncao(Expr, Expr)
	disjuncao(Expr, Expr)
	negacao(Expr)

	mais(Expr, Expr)
	menos(Expr, Expr)
	vezes(Expr, Expr)
	dividir(Expr, Expr)
	negativo(Expr)

	num(INT)
--	float(FLOAT)



'nonterm' expression(-> Expr)

   'rule' expression(-> X): expression2(-> X)
   'rule' expression(-> maior(X,Y)): expression(-> X) ">" expression2(-> Y)
   'rule' expression(-> menor(X,Y)): expression(-> X) "<" expression2(-> Y)
   'rule' expression(-> maiorigual(X,Y)): expression(-> X) ">=" expression2(-> Y)
   'rule' expression(-> menorigual(X,Y)): expression(-> X) "<=" expression2(-> Y)
   'rule' expression(-> igual(X,Y)): expression(-> X) "==" expression2(-> Y)
   'rule' expression(-> diferente(X,Y)): expression(-> X) "!=" expression2(-> Y)

   'rule' expression(-> conjuncao(X,Y)): expression(-> X) "&&" expression3(-> Y)
   'rule' expression(-> conjuncao(X,Y)): expression(-> X) "||" expression3(-> Y)

	'rule' expression(-> mais(X,Y)): expression(-> X) "+" expression4(-> Y)
	'rule' expression(-> menos(X,Y)): expression(-> X) "-" expression4(-> Y)


'nonterm' expression2(-> Expr)

	'rule' expression2(-> num(X)): Number(-> X)
--	'rule' expression2(-> float(X)): Float(-> X)
	'rule' expression2(-> X): "(" expression(-> X) ")"


'nonterm' expression3(-> Expr)

	'rule' expression3(-> num(X)): Number(-> X)
--	'rule' expression3(-> float(X)): Float(-> X)
	'rule' expression3(-> negacao(X)): "!" expression3(-> X)
	'rule' expression3(-> X): "(" expression(-> X) ")"

'nonterm' expression4(-> Expr)

	'rule' expression4(-> X): expression5(-> X)
	'rule' expression4(-> vezes(X, Y)): expression4(-> X) "*" expression5(-> Y)
	'rule' expression4(-> dividir(X, Y)): expression4(-> X) "/" expression5(-> Y)

'nonterm' expression5(-> Expr)

	'rule' expression5(-> num(X)): Number(-> X)
--	'rule' expression5(-> float(X)): Float(-> X)
	'rule' expression5(-> negativo(X)): "-" expression5(-> X)
	'rule' expression5(-> X): "(" expression(-> X) ")"


'token' Number(-> INT)


'action' code (Expr)

	'rule' code(maior(X1, X2)): code(X1) print(">") code(X2)
	'rule' code(menor(X1, X2)): code(X1) print("<") code(X2) 
	'rule' code(maiorigual(X1, X2)): code(X1) print(">=") code(X2)
	'rule' code(menorigual(X1, X2)): code(X1) print("<=") code(X2)
	'rule' code(igual(X1, X2)): code(X1) print("==") code(X2)
	'rule' code(diferente(X1, X2)): code(X1) print("!=") code(X2)

	'rule' code(conjuncao(X1, X2)): code(X1) print("&&") code(X2)
	'rule' code(disjuncao(X1, X2)): code(X1) print("||") code(X2)
	'rule' code(negacao(X)): print("!") code(X)

	'rule' code(mais(X1, X2)): code(X1) print("+") code(X2)
	'rule' code(menos(X1, X2)): code(X1) print("-") code(X2)
	'rule' code(vezes(X1, X2)): code(X1) print("*") code(X2)
	'rule' code(dividir(X1, X2)): code(X1) print("/") code(X2)
	'rule' code(negativo(X)): print("-") code(X)

	'rule' code(num(N)): print(N)
--	'rule' code(float(N)): printFloat(N)

