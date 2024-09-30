% Sudoku Solver
%
% Hints:
% For subgrid of size n, subgrids can be identified by labels 1..n*n
% A cell (x,y) can be mapped to the subgrid labeled 1+(((x-1)/n)*n+(y-1)/n)

% Your implementation please...

cell(1..4, 1..4).
{cell(X, Y, N) : N=1..4} = 1 :- cell(X, Y).

:- cell(X, Y, N), cell(X, Z, N), Y != Z.
:- cell(X, Y, N), cell(Z, Y, N), X != Z.

cell(X, Y, N) :- initial(X, Y, N).

% #show cell/3.
#show sudoku/3.
