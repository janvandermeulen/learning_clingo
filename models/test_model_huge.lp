%% -------- INPUT PART ------------------------------

%% a compression of the following shape:
%%               0
%%             /   \
%%            1    2
%% notive that the middle child (index 1) is not included in this compression

comp_root(0).
comp_node(0).
comp_node(1).
comp_node(2).
edge(1, 0, 0).
edge(2, 0, 2).

%% a compression of the following shape:
%%              3
%%             /\
%%            4  5

comp_root(3).
comp_node(3).
comp_node(4).
comp_node(5).
edge(4, 3, 0).
edge(5, 3, 1).

%% a compression of the following shape:
%%              6
%%             /
%%            7 
%%           / \ 
%%          8   9

comp_root(6).
comp_node(6).
comp_node(7).
comp_node(8).
comp_node(9).
edge(7, 6, 0).
edge(8, 7, 0).
edge(9, 7, 1).

%% AST nodes of the following shape:
%%                 a
%%             /   |    \
%%            b    c     d
%%           / \  / | \
%%          e   f g h  i
%%         / \      / \  \
%%        j  k     l  m  n
%%

node(a).
node(b).
node(c).
node(d).
node(e).
node(f).
node(g).
node(h).
node(i).
node(j).
node(k).
node(l).
node(m).
node(n).
edge(b, a, 0).
edge(c, a, 1).
edge(d, a, 2).
edge(e, b, 0).
edge(f, b, 1).
edge(g, c, 0).
edge(h, c, 1).
edge(i, c, 2).
edge(j, e, 0).
edge(k, e, 1).
edge(l, h, 0).
edge(m, h, 1).
edge(n, k, 0).

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