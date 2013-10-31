/**
 * factorial
 * ---------
 * base case: 0! is 1
 * call fac recursively and multiply answer
 */
fac(0,1).
fac(X,Z):-
	X > 0,
	A is X-1,
	fac(A,B),
	Z is X*B.
