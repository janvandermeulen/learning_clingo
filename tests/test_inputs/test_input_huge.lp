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
edge(0, 1, 0).
edge(0, 2, 2).

%% a compression of the following shape:
%%              3
%%             /\
%%            4  5

comp_root(3).
comp_node(3).
comp_node(4).
comp_node(5).
edge(3, 4, 0).
edge(3, 5, 1).

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
edge(6, 7, 0).
edge(7, 8, 0).
edge(7, 9, 1).

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
edge(a, b, 0).
edge(a, c, 1).
edge(a, d, 2).
edge(b, e, 0).
edge(b, f, 1).
edge(c, g, 0).
edge(c, h, 1).
edge(c, i, 2).
edge(e, j, 0).
edge(e, k, 1).
edge(h, l, 0).
edge(h, m, 1).
edge(k, n, 0).