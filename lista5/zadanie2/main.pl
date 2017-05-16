dwukrotnie(X, L) :-
  /* X występuje w L co najmniej raz, ale poprzedza go S (być może pusta) */
  append(S, [X|T], L),
  \+ member(X, S),

  /* X występuje w T co najmniej raz, ale poprzedza go Q (być może pusta) */
  append(Q, [X|Tt], T),
  \+ member(X, Q),

  /* X nie występuje w Tt (czyli wystąpił w L dwa razy) */
  \+ member(X, Tt).

jednokrotnie(X, L) :-
  /* jw. */
  append(S, [X|T], L),
  \+ member(X, S),
  \+ member(X, T).