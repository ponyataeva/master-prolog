domains
	list = integer*
predicates
	find(integer,list).
	delete(list,list,list).
clauses
	find(X,[X|T]).
	find(X,[H|T]):- X <> H, find(X,T).
	delete([H1|T1], L2, L3):- find(H1,L2), delete(T1,L2,L3).
	delete([H1|T1], L2,[H1|L3]):- delete(T1,L2,L3).
	delete([],_,[]).
goal
	delete([1,2,3,3,4],[1,3],R), write(R).