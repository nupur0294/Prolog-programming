% This buffer is for notes you don't want to save.
% If you want to create a file, visit that file with C-x C-f,
% then enter the text in that file's own buffer.

smaller_than(_,[],[]).
smaller_than(N,[H|T],T1):-
    N>=H,
    smaller_than(N,T,T1).
smaller_than(N,[H|T],[H|T1]):-
    N<H,
    smaller_than(N,T,T1).

