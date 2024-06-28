using JSON; using DataStructures; using HerbCore

function parse_tree_to_clingo(input, index, comp = false, comp_nodes = [])
    """
    Parses a tree from a string.
    # Arguments
    - `input::RuleNode`: the input tree
    - `global_dict::Dict`: the global dictionary
    - `start_index::Int64`: the index to start parsing from
    # Result
    - `index::Int64`: the index of the last node parsed
    - `output::String`: the parsed tree
    """ 
    nodes, edges = "",""

    type = input.ind
    current_index = index

    if comp
        nodes = nodes * "\ncomp_node($(index), $(type))."
        append!(comp_nodes, index)
    else 
        nodes = nodes = nodes * "\nnode($(index), $(type))."
    end

    child_nr = 0

    for child in input.children
        index = index + 1

        child_nr = child_nr + 1

        if child isa Hole
            continue
        end

        # make an edge
        edges = edges * "\nedge($current_index, $index, $child_nr)." 
    
        # and get the string from the recursive call
        child_nodes, child_edges, index = parse_tree_to_clingo(child, index, comp, comp_nodes)
        # and add it to the nodes and edges
        nodes = nodes * child_nodes
        edges = edges * child_edges
    end   

    return nodes, edges, index
end

Base.length(::Hole) = 0

function Base.length(root::RuleNode)
	retval = 1
	for c in root.children
	    retval += length(c)
	end
	return retval
end


function trees_to_clingo(ast, subtrees, output_path)
    # dictionary: key => RuleNode, value => list of node ID's (first one is root/id), size (implicit), occurences
    comp_dict = Dict{RuleNode, NamedTuple{(:nodes,:size,:occurences), <:Tuple{Vector{Int64},Int64,Int64}}}()

    index::Int64 = 1

    # first make the AST
    nodes, edges, index = parse_tree_to_clingo(ast, index)
    output = "%Main AST\n%Nodes" * nodes * "\n%Edges:" * edges

    # then make all the compressions
    for (i, s) in enumerate(subtrees)
        output = output * ("\n\n%Subtree $i\n") * "%Compression tree nodes\n" * "comp_root($(index+1))."
        comp_nodes = Vector{Int64}()
        nodes, edges, index = parse_tree_to_clingo(s, index + 1, true, comp_nodes)
        output =  output * nodes * "\n%Compression tree edges:" * edges

        @assert length(comp_nodes) == length(s) ("The number of nodes found for this subtree ($(length(comp_nodes))) does not match the number of nodes ($(length(s))) that are in it")
        comp_dict[s] = (nodes = comp_nodes, size = length(s), occurences = 0)
    end

    # Write the output to a file
    open(output_path, "w") do f
        write(f, output)
    end

    return comp_dict
end

"""
Schema:
Node(id, grammar_rule) e.g. Node(1, 1)
Edge(parent, child, child_nr) e.g. Edge(1, 2, 5)
"""