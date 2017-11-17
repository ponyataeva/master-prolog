domains
	list=integer*.
predicates
	f(list, integer).
clauses
	f([],0):-!.
	f([X|Y],R):-
		X<>4,
		f(Y,R).
	f([4|Y],R):-
		f(Y,R1),
		R=R1+1.
goal
	f([1,2,3,4,4,4,4,4,5,4],Y),
	write("Count of 4: ", Y)