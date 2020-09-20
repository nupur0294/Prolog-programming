% This buffer is for notes you don't want to save.
% If you want to create a file, visit that file with C-x C-f,
% then enter the text in that file's own buffer.

is_list([]).
is_list([_|Tail]) :-
is_list(Tail).
% base case
flatten([], []).
% recursive case 1: first element is a list
flatten([X|Y], List):-
is_list(X), % X is a list
flatten(X,List1),
flatten(Y, List2),
append(List1, List2, List).
% recursive case 2: first element is not a list
flatten([X|Y], [X|List]):-
not(is_list(X)),
flatten(Y, List).
