/* All students are smart */
smart(S):-student(S).

/* Whoever is smart is powerful */
powerful(S):-smart(S).

/* Whoever is computer scientist and professor is powerful */
powerful(S):-cs(S),prof(S).

/* Computer scientists are crazy */
crazy(S):-cs(S).

/* Alan is a student */
student(alan).

/* Brad is a student */
student(brad).

/* Colin is a computer scientist */
cs(colin).

/* Colin is a professor */
prof(colin).
