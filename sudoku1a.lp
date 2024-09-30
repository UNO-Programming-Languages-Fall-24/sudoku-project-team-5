% Sudoku Solver
%
% Hints:
% For subgrid of size n, subgrids can be identified by labels 1..n*n
% A cell (x,y) can be mapped to the subgrid labeled 1+(((x-1)/n)*n+(y-1)/n)

% Your implementation please...

cell(1..4, 1..4).
{sudoku(X, Y, N) : N=1..4} = 1 :- cell(X, Y).

:- sudoku(X, Y, N), sudoku(X, Z, N), Y != Z.
:- sudoku(X, Y, N), sudoku(Z, Y, N), X != Z.

sudoku(X, Y, N) :- initial(X, Y, N).

#show sudoku/3.
