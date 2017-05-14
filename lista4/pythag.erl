-module(pythag).
-export([pythag/1]).

pythag(D) ->
  [{A, B, C} ||
    A <- lists:seq(1,D div 3),      % a < b && b < c => 3*a < a+b+c => a < d/3
    B <- lists:seq(A+1,D div 2),    % b < c => b + b < d => b < d/2
    C <- [D-A-B],
    A*A + B*B =:= C*C
  ].