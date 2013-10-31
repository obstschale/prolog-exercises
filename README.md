# Prolog Exercises

- 24th October 2013 - Exercise 1
- 31st October 2013 - Exercise 1 (cont.)
- 31st October 2013 - Factorial

---
#### Examples (examples.pro)
A simple file to show the syntax of prolog.

#### Exercise 1 (exercise1.pro)
This exercise has multiple tasks:

* introduce ten digits by using `successor` and `predecessor` relationships
	* `successor(zero,one)`
* introduce a *predicate* that adds two numbers
* introduce (in terms of addition) subtraction
* introduce multiplication
* introduce relations:
	* equal =
	* greater than >
	* less than <
	* not equal ¬=
	* max - the greater of two numerals
* introduce division
* introduce module

#### Factorial (factorial.pro)

Introduce *factorial* `n!` of a number.

First we need a exist rule and it is known that `0!` is 1.

	fac(0,1).

If `X > 1` we call `fac` recursively and multiply the result with X.

	fac(X,Z):-
		X > 1,
		A is X-1,
		fac(A,B),
		Z is X*B.

---
