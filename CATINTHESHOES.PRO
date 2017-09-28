predicates
	brother(symbol, symbol).
	thing(symbol).
	thingMap(symbol, symbol).
	whatGet(symbol).
clauses
	brother(vasya, large).
	brother(petya, middle).
	brother(kolya, small).
	thing(melniza).
	thing(house).
	thing(cat).
	thingMap(large, melniza).
	thingMap(middle, house).
	thingMap(small, X):-
		thing(X),
		not(thingMap(large, X)),
		not(thingMap(large, X)).
	get(X, Z):-
		brother(X, Y),
		thingMap(Y, Z).
goal
	write("Kolya get: "), 
	get(kolya, Y),
	write(" ",Y), fail.