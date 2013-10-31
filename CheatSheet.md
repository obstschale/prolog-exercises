#### Filename

Prolog files can end with `.pl`, `.pro`, and `.P`. I personally prefer `.pro` to avoid confusion with Perl scripts which end with `.pl`.

#### Facts

A fact (aka exiting rule) is something that is true and we know. E.g. X * 1 is always X

	multiplication(X,one,X).

#### Comments

Comments in prolog are like (multi-line) comments in C

	/* this is a comment in C and in Prolog */

Single line comments are different in prolog.

	% single-line comments are not introduced with
	%% double slash instead use (double) prozent.

#### Singleton variables

Some facts are needed but would return in a warning

	mul(X,zero,zero).
	Warning: Singleton variables: [X]

To avoid this warning but keep the fact use a underscore as variable.

	mul(_,zero,zero).

#### write()

Prolog has a built in print function.

	%% print the value of X
	write(X)
