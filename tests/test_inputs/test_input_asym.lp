%% -------- INPUT PART ------------------------------

%% a compression of the following shape:
%%              a
%%             /\
%%            b  c

comp_root(0).
comp_node(0, 0).
comp_node(1, 0).
comp_node(2, 0).
edge(0, 1, 0).
edge(0, 2, 2).

%% AST nodes of the following shape:
%%              d
%%             /  \
%%            e    f
%%           / \  / | \
%%          g  h  i j  k

node(3, 0).
node(4, 0).
node(5, 0).
node(6, 0).
node(7, 0).
node(8, 0).
node(9, 0).
node(10, 0).
edge(3, 4, 0).
edge(3, 5, 1).
edge(4, 6, 0).
edge(4, 7, 1).
edge(5, 8, 0).
edge(5, 9, 1).
edge(5, 10, 2).