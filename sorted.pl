% This buffer is for notes you don't want to save.
% If you want to create a file, visit that file with C-x C-f,
% then enter the text in that file's own buffer.

is_sorted([]).

is_sorted([_]).
is_sorted([X,Y|T]):-
    Y>X,
    is_sorted([Y|T]).

swich_unsorted([],[]).

swich_unsorted([X],[X]).
switch_unsorted([X, Y|List], [Y, X|List]):-
X > Y.
switch_unsorted([X, Y|List], [X|Rlist]):-
X =< Y,
switch_unsorted([Y|List], Rlist).

sort_2(L,L):-
    is_sorted(L).

sort_2(L,R):-
    not(is_sorted(L)),
    swich_unsorted(L,T),
    sort_2(T,R).


