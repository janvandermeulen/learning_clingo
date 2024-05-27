%% -------- INPUT PART ------------------------------

%% a compression of the following shape:
%%              a
%%             /\
%%            b  c

comp_root(0).
comp_node(0).
comp_node(1).
comp_node(2).
type(0, 1).
edge(1, 0, 0).
edge(2, 0, 1).

%% AST nodes of the following shape:
%%              d
%%             /  \
%%            e    f

node(3).
node(4).
node(5).
type(3, 1).
edge(4, 3, 0).
edge(5, 3, 1).

%% ------------ CONSTRAINTS PART --------------------------------

%% assigns compressions to models
{ assign(A, X) : comp_root(A) } 1 :- node(X).

%% it may not be that K has child with index I, and X does not have a child with index I
:- assign(K, X), edge(M, K, I), #count {Y: edge(Y, X, I)} = 0.

%% assign child I of X if there is child I of K to assign
assign(M, Y) :- assign(K, X), edge(Y, X, I), edge(M, K, I).

%% Each node X may have at most one assignment
:- node(X), #count {K: assign(K, X)} > 1.

%% Each node X may only be assigned to compressionnode K if they have the same type
:- assign(A, X), type(X, I), type(A, J), I!=J.

#show assign/2.

%% ------------------------- optimizing part ---------------------------------

#maximize {1 , X : assign( _, X)}.