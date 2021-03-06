% This buffer is for notes you don't want to save.
% If you want to create a file, visit that file with C-x C-f,
% then enter the text in that file's own buffer.

flatten([],[]).
flatten([H|T],X):-
    flatten(T,X1),
    conc(H,X1,X).

conc([],X,X).
conc([H|T],X,[H|T1]):-
    conc(T,X,T1).
