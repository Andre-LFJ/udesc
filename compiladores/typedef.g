'type' FLOAT

'root' expression(-> X) print(X)

'nonterm' expression(-> FLOAT)

'rule' expression(-> X): Float(-> X)

'token' Float(-> FLOAT)

-- ----------------------- --

'type' BOOL

'root' expression(-> X) print(X)

'nonterm' expression(-> BOOL)

'rule' expression(-> X): Bool(-> X)

'token' Bool(-> BOOL)
