# Import stack datastructure
import Pkg; Pkg.add("DataStructures"); Pkg.add("JSON")
using JSON; using DataStructures
    
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
    nodes, edges = "",""
    parent, index = start_index, start_index
    # parent_stack keeps track of the parent node
    # child_stack keeps track of the last child number of the last depth
    parent_stack, child_stack = Stack{Int64}(), Stack{Int64}() 
    # Initialize the root
    if start_index != 0
        nodes = nodes * "comp_root($start_index)"
        nodes = nodes * "\ncomp_node($(start_index), $(input[1]))"
    else
        nodes = nodes * "node($(start_index), $(input[1]))"
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
        elseif isdigit(char)
            number, i = parse_number(i, input)
            index += 1 # Nr of node / edge
            if start_index != 0
                nodes = nodes * "\ncomp_node($index, $number)"
            else
                nodes = nodes * "\nnode($index, $number)"
            end
            child_nr = pop!(child_stack)
            edges = edges * "\nedge($parent, $index, $child_nr)"
            push!(child_stack, child_nr + 1)
        end
        i += 1
    end
    if start_index != 0
        println("%Compression tree nodes\n" * nodes * "\n%Compression tree edges:" * edges)
    else 
        println("%Nodes\n" * nodes * "\n\n%Edges:" * edges)
    end
    return index
end

function parse_json(json_path)
    # Read in the JSON file
    json_content = read(json_path, String)
    json_parsed = JSON.parse(json_content)
    ast = json_parsed["ast"]
    subtrees = json_parsed["subtrees"]
    # Parse the JSON file
    index = parse(ast) + 1
    for (i, subtree) in enumerate(subtrees)
        println("\nSubtree $i")
        index = parse(subtree, index) + 1
    end
end

parse_json(ARGS[1])
"""
Schema:
Node(id, grammar_rule) e.g. Node(1, 1)
Edge(parent, child, child_nr) e.g. Edge(1, 2, 5)
"""