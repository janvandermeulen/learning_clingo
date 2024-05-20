% Generate encoding of the tree structure and value calculation
{ value(N, I): node(N) } = I :- I = 1..100
% Ensure every node has a left and right child unless it is a leaf
:- node(X), not leaf(Y), not left(X, Y).
:- node(X), not leaf(Y), not right(X, Y).

% Calculate values for non-leaf nodes
value(X, V) :- 
    op(X, "+"), 
    left(X, L), 
    right(X, R), 
    value(L, VL), 
    value(R, VR), 
    V = plus(R, VR).
value(X, V) :- 
    op(X, "*"), 
    left(X, L), 
    right(X, R), 
    value(L, VL), 
    value(R, VR), 
    V = times(VL, VR).

% Display the value of the root node
#show value/2.
