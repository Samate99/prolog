gcd(X, 0, X).
gcd(X, Y, D) :-
  Y > 0,
  R is X mod Y,
  gcd(Y, R, D).

lcm(X, Y, L) :-
  gcd(X, Y, G),
  L is X * Y / G.
