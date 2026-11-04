
% Lab 10 - Graphs
% Directed graph between Saudi cities

% Facts
edge('Madinah', 'Makkah').
edge('Makkah', 'Madinah').
edge('Madinah', 'Taif').
edge('Madinah', 'Tabuk').
edge('Makkah', 'Riyadh').
edge('Tabuk', 'Taif').
edge('Taif', 'Tabuk').
edge('Taif', 'Dammam').
edge('Riyadh', 'Dammam').
edge('Dammam', 'Riyadh').
edge('Dammam', 'Qatif').
edge('Qatif', 'Dammam').
edge('Qatif', 'Madinah').

% Find a path between two cities
travel(From, To, Path) :-
    path(From, To, [From], ReversePath),
    reverse(ReversePath, Path).

% Destination reached
path(To, To, Visited, Visited).

% Continue searching
path(From, To, Visited, Path) :-
    edge(From, Next),
    \+ member(Next, Visited),
    path(Next, To, [Next|Visited], Path).
