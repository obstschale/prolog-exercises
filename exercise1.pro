successor(zero,one).
successor(one,two).
successor(two,three).
successor(three,four).
successor(four,five).
successor(five,six).
successor(six,seven).
successor(seven,eight).
successor(eight,nine).

predecessor(X,Y):-successor(Y,X).

/* using recursion to introduce an add predicate */
add(X,zero,X).
add(X,Y,Z):-successor(A,Y),add(X,A,B),successor(B,Z).

/* how about subtracting? */
/* x+y=z -> z-y=x */
/* sub(X,Y,Z):-successor(A,Y),add(X,A,B),predecessor(B,Z).*/
sub(Z,Y,X):-add(X,Y,Z).

/* multiplication */
%% mul(X,one,X).
mul(_,zero,zero).
mul(X,Y,Z):-successor(A,Y),mul(X,A,B),add(X,B,Z).

/* relations: =, >, <, not = */
%% eq(X,Y):-sub(X,Y,zero).
eq(X,X).
gt(X,Y):-predecessor(X,A),sub(A,Y,B),eq(B,B).
lt(X,Y):-gt(Y,X).
%% neq(X,Y):-sub(X,Y,A),gt(A,zero).
%% neq(X,Y):-sub(Y,X,A),gt(A,zero).
neq(X,Y):-gt(X,Y);lt(X,Y).
/** return max of two number
  * check if x>y
  * check if y>x
  * check if x=y
  */
max(X,Y,X):-gt(X,Y).
max(X,Y,Y):-gt(Y,X).
max(X,X,X).

/* divison of integer */
div(X,X,one).
/** using successor at last because I only increment by one and
  * an addition with one would result in more actions than
  * using successor()
  */
div(X,Y,Z):-sub(X,Y,A),div(A,Y,B),successor(B,Z).

/* module */
/**
 * fact is that if X mod X -> zero
 * fact is that anything mod 1 -> zero
 * then we have to consider 3 cases
 *   1. Y > X
 *     if true -> it is always the difference
 *   2. X < Y
 *     two sub cases
 *     a. it is divisible by Y
 *     b. it is not divisible by Y
 *       -> by what do we have to decrement X that X/Y is possible?
 *       -> second fact: Z is always smaller than Y
 */
mod(X,X,zero).
mod(_,one,zero).
mod(X,Y,Z):-gt(Y,X),sub(Y,X,Z).
mod(X,Y,zero):-lt(Y,X),div(X,Y,_).
mod(X,Y,Z):-
	lt(Y,X),
	predecessor(X,A),
	mod(A,Y,B),
	successor(B,Z),
	lt(Z,Y).
