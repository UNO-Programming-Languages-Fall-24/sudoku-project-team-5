% Sudoku Solver
%
% Hints:
% For subgrid of size n, subgrids can be identified by labels 1..n*n
% A cell (x,y) can be mapped to the subgrid labeled 1+(((x-1)/n)*n+(y-1)/n)

% Your implementation please...

cell(1..9, 1..9).
subgrid(X, Y, 1+(((X-1)/3)*3+(Y-1)/3)) :- cell(X, Y).

{sudoku(X, Y, N) : N=1..9} = 1 :- subgrid(X, Y, G).

:- sudoku(X, Y, N), sudoku(X, Z, N), Y != Z.
:- sudoku(X, Y, N), sudoku(Z, Y, N), X != Z.

:- subgrid(X1, Y1, G), subgrid(X2, Y2, G), sudoku(X1, Y1, N1), sudoku(X2, Y2, N2), X1 != X2, Y1 != Y2, N1 = N2.

sudoku(X, Y, N) :- initial(X, Y, N).

#show sudoku/3.