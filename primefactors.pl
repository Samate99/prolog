prime_factors(1, []).

prime_factors(N, [F|Fs]) :-
  N > 1,
  smallest_factor(N, F),
  N1 is N // F,
  prime_factors(N1, Fs).

smallest_factor(N, F) :-
  smallest_factor(N, 2, F).

smallest_factor(N, F, F) :-
  F * F > N, !.
smallest_factor(N, F, F) :-
  N mod F =:= 0, !.
smallest_factor(N, F, R) :-
  F1 is F + 1,
  smallest_factor(N, F1, R).
