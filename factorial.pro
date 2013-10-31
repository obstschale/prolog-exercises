/**
 * factorial
 * ---------
 * base case: X is 1|0 -> Z is 1
 * call fac recursively and multiply answer
 */
fac(X,Z):-
	(X==1;X==0),
	Z is 1.
fac(X,Z):-
	X > 1,
	A is X-1,
	fac(A,B),
	Z is X*B.
