/*
	Aluno: André Luis Francisco Junior
 
	------------------------------------------------------------------
	Operadores: <, >, <=, >=, ==, !=, &&, ||, !, +, -, *, /
	------------------------------------------------------------------

	Não consegui fazer o analisador reconhecer numeros com ponto flutuante, 
	mas os operadores >,<,>=,<=,==,!=,&&,||,!,+,-,*,/ são reconhecidos pelo 
	analisador. Deixei as tentativas de fazer o Float ser reconhecido no progeto.g


*/
'root'
	classe(-> X) print("aceito")
--	classe(-> X) code(X) print("aceito")

'type' IDENT
	ident(IDENT)
	nomeClasse(IDENT)
	paraTxt(IDENT)
	

'type' FLOAT

'type' BOOLEAN
	true
	false

'type' Expr
	logico(LOGICO)
	aritmetico(ARITM)

'type' LOGICO
	maior(ARITM, ARITM)
	menor(ARITM, ARITM)
	maiorigual(ARITM, ARITM)
	menorigual(ARITM, ARITM)
	igual(ARITM, ARITM)
	diferente(ARITM, ARITM)
	conjuncao(LOGICO, LOGICO)
	disjuncao(LOGICO, LOGICO)
	negacao(LOGICO)
	bool(BOOLEAN)

'type' ARITM
	mais(ARITM, ARITM)
	menos(ARITM, ARITM)
	vezes(ARITM, ARITM)
	dividir(ARITM, ARITM)
	negativo(ARITM)
	num(INT)
	float(FLOAT)
	
	
'type' CLASSE
	classe(IDENT)
	nomeEprograma(IDENT, IDENT)
	
'type' PROGRAMA
	programa(IDENT)
	metodoCabecalhoCorpo(IDENT, IDENT, IDENT)
	
'type' CABECALHO
	ident(IDENT)
	unico(IDENT)
	maisDeUm(IDENT, IDENT)

'type' DECLARACAOVAR
	ident(IDENT)
	unico(IDENT)
	maisDeUm(IDENT, IDENT)

'type' CORPO
	ident(IDENT)
	atribuicao(IDENT, IDENT)
	logi(EXPR, IDENT)
	arit(EXPR, IDENT)
	

'token' Number(-> INT)
'token' Float(-> FLOAT)
'token' Bool(-> BOOLEAN)
'token' Ident(-> IDENT)
'token' Classe(-> CLASSE)


'action' printFloat( -> FLOAT)

'action' armazenaArquivo(-> IDENT)

'action' existeArquivo(-> IDENT)

'nonterm' logico(-> LOGICO)
	'rule' logico(-> X): logico1(-> X)			-- Serve para ir para um () ou para um Booleano (true ou false)
	'rule' logico(-> X): logico2(-> X)			-- Serve para ir para um !, para um () ou Booleano
	'rule' logico(-> maior(X,Y)): aritmetico(-> X) ">" aritmetico(-> Y)
	'rule' logico(-> menor(X,Y)): aritmetico(-> X) "<" aritmetico(-> Y)
	'rule' logico(-> maiorigual(X,Y)): aritmetico(-> X) ">=" aritmetico(-> Y)
	'rule' logico(-> menorigual(X,Y)): aritmetico(-> X) "<=" aritmetico(-> Y)
	'rule' logico(-> igual(X,Y)): aritmetico(-> X) "==" aritmetico(-> Y)
	'rule' logico(-> diferente(X,Y)): aritmetico(-> X) "!=" aritmetico(-> Y)
	'rule' logico(-> conjuncao(X,Y)): aritmetico(-> X) "&&" aritmetico(-> Y)
	'rule' logico(-> disjuncao(X,Y)): aritmetico(-> X) "||" aritmetico(-> Y)
	
'nonterm' logico1(-> LOGICO)			-- Serve para ir para um () ou para um booleano (true ou false)	
	'rule' logico1(-> bool(X): BOOLEAN(-> X)
	'rule' logico1(-> X): "(" logico(-> X) ")"

'nonterm' logico2(-> LOGICO)			-- Serve para ir para um !, para um () ou Booleano
	'rule' logico2(-> bool(X): BOOLEAN(-> X)
	'rule' logico2(-> negacao(X)): "!" logico2(-> X)
	'rule' logico2(-> X): "(" logico(-> X) ")"


'nonterm' aritmetico(-> ARITM)
	'rule' aritmetico(-> mais(X,Y)): aritmetico(-> X) "+" aritmetico(-> Y)
	'rule' aritmetico(-> menos(X,Y)): aritmetico(-> X) "-" aritmetico(-> Y)

'nonterm' aritmetico2(-> ARITM)
	'rule' aritmetico2(-> X): aritmetico3(-> X)
	'rule' aritmetico2(-> vezes(X,Y)): aritmetico2(->X) "*" aritmetico3(-> Y)
	'rule' aritmetico2(-> dividir(X, Y)): aritmetico2(->X) "/" aritmetico3(-> Y)

'nonterm' aritmetico3(-> ARITM)	
	'rule' aritmetico3(-> num(X)): Number(-> X)
	'rule' aritmetico3(-> negativo(X)): "-" aritmetico3(-> X)
	'rule' aritmetico3(-> X): "(" aritmetico(-> X) ")"


-- *****************************************************************


'nonterm' classe(-> CLASSE)
	'rule' classe(-> nomeEprograma(X,Y)): "public" "class" nomeClasse(-> X) "{" programa( ->Y) "}"			-- "public" "class" (Mais geral)
	'rule' classe(-> nomeEprograma(X,Y)): "private" "class" nomeClasse(-> X) "{" programa( ->Y) "}"			

	
'nonterm' nomeClasse(-> IDENT)
	'rule' nomeClasse(-> X):


'nonterm' programa(-> PROGRAMA)
	'rule' programa(-> declaracao(X,Y)): "public" declaracaoVar(X)
	'rule' programa(-> declaracao(X,Y)): "private" declaracaoVar(X)
	
	'rule' programa(-> metodoCabecalhoCorpo(X,Y,Z)): "public" nomeClasse(-> X) "(" cabecalho(-> Y) ")"		"{" corpo(-> Z) "}"		-- (aceitar int, float, string)
	'rule' programa(-> metodoCabecalhoCorpo(X,Y,Z)): "private" nomeClasse(-> X) "(" cabecalho(-> Y) ")"		"{" corpo(-> Z) "}"		

'nonterm' declaracaoVar(-> DECLARACAOVAR)
	'rule' declaracaoVar(-> ident(X)): Ident(-> X)	
	'rule' declaracaoVar(-> unico(X)): "String" armazena(-> X) ";"
	'rule' declaracaoVar(-> unico(X)): "int" armazena(-> X) ";"
	'rule' declaracaoVar(-> unico(X)): "float" armazena(-> X) ";"
	'rule' declaracaoVar(-> maisDeUm (X,Y)): "String" armazena(-> X) ";" "public" declaracaoVar(-> Y)
	'rule' declaracaoVar(-> maisDeUm (X,Y)): "String" armazena(-> X) ";" "private" declaracaoVar(-> Y)
	'rule' declaracaoVar(-> maisDeUm (X,Y)): "int" armazena(-> X) ";" "public" declaracaoVar(-> Y)
	'rule' declaracaoVar(-> maisDeUm (X,Y)): "int" armazena(-> X) ";" "private" declaracaoVar(-> Y)
	'rule' declaracaoVar(-> maisDeUm (X,Y)): "float" armazena(-> X) ";" "public" declaracaoVar(-> Y)
	'rule' declaracaoVar(-> maisDeUm (X,Y)): "float" armazena(-> X) ";" "private" declaracaoVar(-> Y)

'nonterm' cabecalho(-> CABECALHO)
	'rule' cabecalho(-> ident(X)): Ident(-> X)
	'rule' cabecalho(-> unico(X)): "String" ident(X)
	'rule' cabecalho(-> unico(X)): "int" ident(X)
	'rule' cabecalho(-> unico(X)): "float" ident(X)
	'rule' cabecalho(-> maisDeUm (X,Y)): "String" ident(X) "," cabecalho(-> Y)
	'rule' cabecalho(-> maisDeUm (X,Y)): "int" ident(X) "," cabecalho(-> Y)
	'rule' cabecalho(-> maisDeUm (X,Y)): "float" ident(X) "," cabecalho(-> Y)



'nonterm' armazena(-> IDENT)
	'rule' armazena(-> paraTxt(X)): armazenaArquivo(X) -- armazena no arquivo e retorna uma string
	
	
'nonterm' corpo(-> CORPO)
	'rule' corpo(-> ident(X)):
	'rule' corpo(-> ident(X)): Ident(-> X) 
	'rule' corpo(-> atribuicao(X,Y)): existeArquivo(X) "=" ident(Y) ";" corpo(Z)
	'rule' corpo(-> atribuicao(X,Y)): "this." existeArquivo(X) "=" ident(Y) ";" corpo(Z)
	'rule' corpo(-> logi(X,Y)): logico(X) ";" corpo(Y)
	'rule' corpo(-> arit(X,Y)): aritmetico(X) ";" corpo(Y)

	

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
	'rule' code(negativo(X)):  print("-") code(X)

	'rule' code(num(N)): print(N)





/*
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




'nonterm' expression(-> Expr)

	'rule' expression(-> X): expression2(-> X)
	'rule' expression(-> X): expression3(-> X)
	'rule' expression(-> X): expression4(-> X)
	'rule' expression(-> maior(X,Y)): expression(-> X) ">" expression2(-> Y)
	'rule' expression(-> menor(X,Y)): expression(-> X) "<" expression2(-> Y)
	'rule' expression(-> maiorigual(X,Y)): expression(-> X) ">=" expression2(-> Y)
	'rule' expression(-> menorigual(X,Y)): expression(-> X) "<=" expression2(-> Y)
	'rule' expression(-> igual(X,Y)): expression(-> X) "==" expression2(-> Y)
	'rule' expression(-> diferente(X,Y)): expression(-> X) "!=" expression2(-> Y)

	'rule' expression(-> conjuncao(X,Y)): expression(-> X) "&&" expression3(-> Y)
	'rule' expression(-> disjuncao(X,Y)): expression(-> X) "||" expression3(-> Y)

	'rule' expression(-> mais(X,Y)): expression(-> X) "+" expression4(-> Y)
	'rule' expression(-> menos(X,Y)): expression(-> X) "-" expression4(-> Y)




'nonterm' expression2(-> Expr)

	'rule' expression2(-> num(X)): Number(-> X)
	'rule' expression2(-> X): "(" expression(-> X) ")"


'nonterm' expression3(-> Expr)

	'rule' expression3(-> num(X)): Number(-> X)
	'rule' expression3(-> negacao(X)): "!" expression3(-> X)
	'rule' expression3(-> X): "(" expression(-> X) ")"

'nonterm' expression4(-> Expr)

	'rule' expression4(-> X): expression5(-> X)
	'rule' expression4(-> vezes(X, Y)): expression4(-> X) "*" expression5(-> Y)
	'rule' expression4(-> dividir(X, Y)): expression4(-> X) "/" expression5(-> Y)

'nonterm' expression5(-> Expr)

	'rule' expression5(-> num(X)): Number(-> X)
	'rule' expression5(-> negativo(X)): "-" expression5(-> X)
	'rule' expression5(-> X): "(" expression(-> X) ")"

*/
