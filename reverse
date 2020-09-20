% This buffer is for notes you don't want to save.
% If you want to create a file, visit that file with C-x C-f,
% then enter the text in that file's own buffer.

reverse([],[]).
reverse([H|T],Rev):-
    reverse(T,T_rev),
    append(T_rev,[H],Rev).
