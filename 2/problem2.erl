-module(problem2).
-export([solve/0]).

solve() ->
  fib(1, 1, 4000000).

fib(_, Fib2, Count) when Fib2 > Count ->
  0;

fib(Fib1, Fib2, Count) when Fib2 rem 2 == 0 ->
  fib(Fib2, Fib2 + Fib1, Count) + Fib2;

fib(Fib1, Fib2, Count) ->
  fib(Fib2, Fib2 + Fib1, Count).
