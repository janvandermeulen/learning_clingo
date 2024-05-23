%% -------- INPUT PART ------------------------------

%% a compression of the following shape:
%%              a
%%             /\
%%            b  c

comp_root(0).
comp_node(0).
comp_node(1).
comp_node(2).
child_of(1, 0, 0).
child_of(2, 0, 2).

%% AST nodes of the following shape:
%%              d
%%             /  \
%%            e    f
%%           / \  / | \
%%          g  h  i j  k

node(3).
node(4).
node(5).
node(6).
node(7).
node(8).
node(9).
node(10).
child_of(4, 3, 0).
child_of(5, 3, 1).
child_of(6, 4, 0).
child_of(7, 4, 1).
child_of(8, 5, 0).
child_of(9, 5, 1).
child_of(10, 5, 2).

%% ------------ CONSTRAINTS PART --------------------------------

%% assigns compressions to models
{ assign(A, X) : comp_root(A) } 1 :- node(X).

%% it may not be that K has child with index I, and X does not have a child with index I
:- assign(K, X), child_of(M, K, I), #count {Y: child_of(Y, X, I)} = 0.

%% assign child I of X if there is child I of K to assign
assign(M, Y) :- assign(K, X), child_of(Y, X, I), child_of(M, K, I).

%% Each node X may have at most one assignment
:- node(X), #count {K: assign(K, X)} > 1.

#show assign/2.

%% ------------------------- optimizing part ---------------------------------

#maximize {1 , X : assign( _, X)}.