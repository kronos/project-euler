-module(problem1).
-export([solve/0]).

solve() ->
  find_multiples(1, 1000).

find_multiples(Count, Count) ->
  0;

find_multiples(Current, Count) when Current rem 3 == 0 ->
  find_multiples(Current + 1, Count) + Current;

find_multiples(Current, Count) when Current rem 5 == 0 ->
  find_multiples(Current + 1, Count) + Current;

find_multiples(Current, Count) ->
  find_multiples(Current + 1, Count).
