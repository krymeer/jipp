path(X, Y) :- 
  explore(X, Y, []).

explore(X, Y, List) :-
  arc(X, Z),
  \+ (member(Z, List)),
  (
    Y = Z;
    explore(Z, Y, [X|List])
  ).