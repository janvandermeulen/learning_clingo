# Running Model
Put the command ```clingo <path_to_model>``` in the terminal, for example ```clingo models/test_model.lp```. If you want to run a model with an input file instead of hardcoded input, use ```clingo <path_to_input_file> model.lp``` in the terminal


# Input Template
```node(<AST_node_id>, <type>)```: a node of the AST with an id and a type (eg. plus)
```comp_node(<compression_node_id>, <type>)```: a node of a subtree/compression with an id and a type
```comp_root(<compression_node_id>)```: the root of a subtree/compression (this ```<node_id>``` must also exist as ```comp_node(<node_id>)```)
```edge(<parent_node_id>, <node_id>, <child_index>)```: an edge in either the AST or a subtree/compression

Each ```<node_id>``` must be completely unique in the entire set of AST and compression nodes

# Output Template
```assign(<Compression_node_id>, <AST_node_id>)```