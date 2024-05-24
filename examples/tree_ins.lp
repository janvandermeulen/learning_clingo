% Nodes
node(n1). % Root node
node(n2).
node(n3).
leaf(2).
leaf(3).
leaf(4).
leaf(5).

% Operators at nodes
op(n1, "*").
op(n2, "+").
op(n3, "+").

% Tree structure
left(n1, n2).
right(n1, n3).
left(n2, 3).
right(n2, 4).
left(n3, 2).
right(n3, 5).

% Value of leaves
value(3, 3).
value(4, 4).
value(2, 2).
value(5, 5).
