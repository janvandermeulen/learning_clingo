# Import stack datastructure
import Pkg; Pkg.add("DataStructures"); Pkg.add("JSON")
using JSON; using DataStructures

# Subtree_dict = (key: node ID, value: NamedTuple(compression id, parent id, child index, type))
global_dict = Dict{Int64, NamedTuple{(:comp_id,:parent_id, :child_nr, :type), <:Tuple{Int64,Int64,Int64,Int64}}}()
    
function parse_number(start_index, input)
    number = ""
    i = start_index
    while i <= length(input)
        char = input[i]
        if isdigit(char)
            number = number * char
        else
            break
        end
        i += 1
    end
    return number, i - 1
end

function parse(input, start_index=0)
    nodes, edges, output = "","",""
    parent, index = start_index, start_index
    # parent_stack keeps track of the parent node
    # child_stack keeps track of the last child number of the last depth
    parent_stack, child_stack = Stack{Int64}(), Stack{Int64}() 
    # Initialize the root
    if start_index != 0
        nodes = nodes * "comp_root($start_index)."
        nodes = nodes * "\ncomp_node($(start_index), $(input[1]))."
        global_dict[start_index] = (comp_id = start_index, parent_id = -1, child_nr = -1, type = parse(Int64, string(input[1])))
    else
        nodes = nodes * "node($(start_index), $(input[1]))."
    end
    # Iterate over the input string
    i = 2
    while i <= length(input) - 1
        char = input[i]
        if char == '{'
            push!(parent_stack, index)
            push!(child_stack, 0)
            parent = index
        elseif char == '}'
            pop!(parent_stack)
            parent = top(parent_stack)
            pop!(child_stack)
        elseif char == '_'
            child_nr = pop!(child_stack)
            index += 1
            push!(child_stack, child_nr + 1)
        elseif isdigit(char)
            number, i = parse_number(i, input)
            index += 1 # Nr of node / edge
            if start_index != 0
                nodes = nodes * "\ncomp_node($index, $number)."
            else
                nodes = nodes * "\nnode($index, $number)."
            end

            child_nr = pop!(child_stack)
            edges = edges * "\nedge($parent, $index, $child_nr)."
            if start_index != 0
                global_dict[index] = (comp_id = start_index, parent_id = parent, child_nr = child_nr, type = parse(Int64, number))
            end

            push!(child_stack, child_nr + 1)
        end
        i += 1
    end
    if start_index != 0
        output = "%Compression tree nodes\n" * nodes * "\n%Compression tree edges:" * edges
    else 
        output = "%Maint AST\n%Nodes\n" * nodes * "\n%Edges:" * edges
    end
    return index + 1, output
end

function parse_json(json_path, output_path)
    # Read in the JSON file
    json_content = read(json_path, String)
    json_parsed = JSON.parse(json_content)
    ast = json_parsed["ast"]
    subtrees = json_parsed["subtrees"]
    # Parse the JSON file
    index, output = parse(ast)
    for (i, subtree) in enumerate(subtrees)
        index, temp_output = parse(subtree, index)
        output = output * ("\n\n%Subtree $i\n") * temp_output
    end
    # Write the output to a file
    open(output_path, "w") do f
        write(f, output)
    end
end

parse_json(ARGS[1], ARGS[2])
"""
Schema:
Node(id, grammar_rule) e.g. Node(1, 1)
Edge(parent, child, child_nr) e.g. Edge(1, 2, 5)
"""