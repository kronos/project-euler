-module(problem6).
-export([solve/0]).

solve() ->
  math:pow((1+100)*50, 2) - lists:foldl(fun(X, Sum) -> math:pow(X, 2) + Sum end, 0, lists:seq(1, 100)).