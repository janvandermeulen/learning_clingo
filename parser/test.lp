%Maint AST
%Nodes
node(0, 4).
node(1, 1).
node(2, 2).
node(3, 3).
node(4, 10).
node(5, 11).
node(6, 4).
%Edges:
edge(0, 1, 0).
edge(0, 2, 1).
edge(0, 3, 2).
edge(3, 4, 0).
edge(3, 5, 1).
edge(0, 6, 3).

%Subtree 1
%Compression tree nodes
comp_root(7).
comp_node(7, 1).
comp_node(8, 2).
comp_node(9, 3).
%Compression tree edges:
edge(7, 8, 0).
edge(7, 9, 1).

%Subtree 2
%Compression tree nodes
comp_root(10).
comp_node(10, 2).
comp_node(12, 3).
%Compression tree edges:
edge(10, 12, 1).