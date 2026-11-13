city(makkah, madinah).
city(makkah, riyadh).
city(riyadh, dammam).
city(dammam, riyadh).
city(dammam, alQatif).
city(alQatif, dammam).
city(alQatif, madinah).
city(madinah, makkah).
city(madinah, tabuk).
city(madinah, taif).
city(taif, dammam).
city(taif, tabuk).
city(tabuk, taif).

%Rules
travel(From, To, Path):-
    road(From, To, [From],  P),
    reverse(P, Path).

%to avoid loops
road(X, X, P, P).
road(X, Y, Visited, Path):-
    city(X, Z),
    not(member(Z,Visited)),
    road(Z, Y, [Z|Visited], Path).
