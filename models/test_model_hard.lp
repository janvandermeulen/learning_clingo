%% -------- INPUT PART ------------------------------

%% a compression of the following shape:
%%              a
%%             /\
%%            b  c

comp_root(0).
comp_node(0).
comp_node(1).
comp_node(2).
edge(0, 1, 0).
edge(0, 2, 2).

%% a compression of the following shape:
%%              x
%%             /
%%            y 
%%           / \ 
%%          w   z

comp_root(11).
comp_node(11).
comp_node(12).
comp_node(13).
comp_node(14).
edge(11, 12, 0).
edge(12, 13, 0).
edge(12, 14, 1).

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
edge(3, 4, 0).
edge(3, 5, 1).
edge(4, 6, 0).
edge(4, 7, 1).
edge(5, 8, 0).
edge(5, 9, 1).
edge(5, 10, 2).

%% ------------ CONSTRAINTS PART --------------------------------

%% assigns compressions to models
{ assign(A, X) : comp_root(A) } 1 :- node(X).

%% it may not be that K has child with index I, and X does not have a child with index I
:- assign(K, X), edge(K, M, I), #count {Y: edge(X, Y, I)} = 0.

%% assign child I of X if there is child I of K to assign
assign(M, Y) :- assign(K, X), edge(X, Y, I), edge(K, M, I).

%% Each node X may have at most one assignment
:- node(X), #count {K: assign(K, X)} > 1.

%% Each node X may only be assigned to compressionnode K if they have the same type
:- assign(A, X), type(X, I), type(A, J), I!=J.

#show assign/2.

%% ------------------------- optimizing part ---------------------------------

#maximize {1 , X : assign( _, X)}.