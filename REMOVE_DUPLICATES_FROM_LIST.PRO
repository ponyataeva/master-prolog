domains
	list = integer*
predicates
	find(integer,list).
	delete(list,list).
	addIf(integer,list,list).
clauses
	find(X,[X|T]).
	find(X,[H|T]):- X <> H, find(X,T).
	delete([H1|T1],R):- delete(T1,R1), addIf(H1,R1,R).
	delete([],[]).
	addIf(H,L2,L3):-find(H,L2), L3=L2.
	addIf(H,L2,[H|L2]).
goal
	delete([1,2,3,3,4],R), write(R).