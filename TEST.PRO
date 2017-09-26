domains
        X=symbol
predicates
	working(X, X).
	has(X,X).
	hasHigherEduc(X).
	fihishPostgraduated(X).
	canWorkAsUniTeacher(X).
clauses
	working(john, janior).
	working(tom, teacher).
	working(gloria, seller).
	working(mikle, universityTeacher).
	working(bill, engineer).
	working(mary, teacher).
	working(liz, teacher).
	has(universityTeacher, higherEduc).
	has(teacher, higherEduc).
	has(universityTeacher, postgraduate).
	hasHigherEduc(X):-
		working(X, Z),
		has(Z, higherEduc).
	fihishPostgraduated(X):-
		working(X, postgraduate).
	canWorkAsUniTeacher(X):-
		has(X, higherEduc),
		has(X, postgraduate).
goal
	/*hasHigherEduc(mikle),
	write("Michael has a higher education");
	write("Michael has no higher education").*/
	
	/*working(tom, postgraduate),
	write("Tom finished postgraduation");
	write("Tom did not finished postgraduation").*/
	
	/*hasHigherEduc(X),
	write(X, " has a higher education\n"), fail.*/
	
	/*working(liz, X),
	write("Liz working as ", X), fail.*/
	
	canWorkAsUniTeacher(engineer),
	write("Yes, he can");
	write("No, he can not").
	
	
	
	