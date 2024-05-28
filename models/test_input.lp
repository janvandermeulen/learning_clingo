%% -------- INPUT PART ------------------------------

%% a compression of the following shape:
%%              a
%%             /\
%%            b  c

comp_root(0).
comp_node(0, 1).
comp_node(1, 2).
comp_node(2, 2).
edge(0, 1, 0).
edge(0, 2, 1).

%% AST nodes of the following shape:
%%              d
%%             /  \
%%            e    f

node(3, 1).
node(4, 2).
node(5, 2).
edge(3, 4, 0).
edge(3, 5, 1).