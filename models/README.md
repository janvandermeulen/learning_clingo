# running_model

put the command 'clingo <path_to_file> 0' in the terminal

eg. clingo models/test_model.lp 0


# input template
node(*AST_node_id*): a node of the AST
comp_node(*compression_node_id*): a node of a subtree/compression
comp_root(*compression_node_id*): the root of a subtree/compression (this *node_id* must also exist as comp_node(*node_id*))
edge(*node_id*, *parent_node_id*, *child_index*): an edge in either the AST or a subtree/compression
type(*node_id*, *type*): the type of either an AST node or a subtree/compression node

Each *node_id* must be completely unique in the entire set of AST and compression nodes

# output template
assign(*Compression_node_id*, *AST_node_id*)