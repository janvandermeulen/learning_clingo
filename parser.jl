# Import stack datastructure
import Pkg; Pkg.add("DataStructures")
using DataStructures
    
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

function parse(input)
    nodes, edges = "",""
    parent, index = 0, 0
    # parent_stack keeps track of the parent node
    # child_stack keeps track of the last child number of the last depth
    parent_stack, child_stack = Stack{Int64}(), Stack{Int64}() 
    # Initialize the root
    nodes = nodes * "Node(0, $(input[1]))"
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
            nodes = nodes * "\nNode($index, $number)"
            child_nr = pop!(child_stack)
            edges = edges * "\nEdge($parent, $index, $child_nr)"
            push!(child_stack, child_nr + 1)
        end
        i += 1
    end
    println("%Nodes\n" * nodes * "\n\n%Edges:" * edges)
end


parse(ARGS[1])
"""
Schema:
Node(index, grammar_rule) e.g. Node(1, 1)
Edge(parent, child, child_nr) e.g. Edge(1, 2, 5)
"""