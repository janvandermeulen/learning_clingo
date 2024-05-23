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
child_of(2, 0, 1).

%% AST nodes of the following shape:
%%              d
%%             /  \
%%            e    f

node(3).
node(4).
node(5).
child_of(4, 3, 0).
child_of(5, 3, 1).

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