# running_model

put the command 'clingo <path_to_file> 0' in the terminal

eg. clingo models/test_model.lp 0


# input template
node(*node_id*): a node of the AST
comp_node(*node_id*): a node of a subtree/compression
comp_root(*node_id*): the root of a subtree/compression (this *node_id* must also exist as comp_node(*node_id*))
child_of(*node_id*, *parent_node_id*, *child_index*): an edge in either the AST or a subtree/compression
type(*node_id*, *type*): the type of either an AST node or a subtree/compression node

Each *node_id* must be completely unique

