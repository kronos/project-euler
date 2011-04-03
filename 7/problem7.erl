-module(problem7).
-export([solve/0]).

solve() ->
  primes([2], 10000).

next_prime(List, N) ->
  case lists:all(fun(E) -> (N rem E) =/= 0 end, List) of
    true ->
      N;
    false ->
      next_prime(List, N + 1)
  end.

primes([Head|_], 1) ->
  Head;

primes(List, N) ->
  Prime = next_prime(List, lists:nth(1, List) + 1),
  primes([Prime|List], N-1).

