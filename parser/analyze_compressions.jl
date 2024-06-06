# c_info = (key: subtree ID, value: Tuple([subtree node IDs], subtree size, # times the subtree is used as compression))
c_info = Dict{Int64, NamedTuple{(:nodes,:occurences), <:Tuple{Vector,Int64}}}()

# INPUT:
# d: a dictionary(key: compression_id, value: list of nodes)
# compressed_AST: ["assign(A, X)", assign(B, Y), ...]
function analyze_AST_singular(d, compressed_AST)
    for assign in compressed_AST

        # parse the compression node id
        node_id = parse(Int64, (SubString(assign, 8, 8)))

        # find all the compressions that contain that node
        comp_matches = [C for (C, nodes) in d if node_id in nodes]

        # there should only be one compression with that node id
        @assert length(comp_matches) == 1
        C = comp_matches[1]

        # increment the counter if the compression C has been used already
        if haskey(c_info, C)
            c_info[C] = (nodes = c_info[C].nodes, occurences = c_info[C].occurences + 1)

        # initialize the counter for the first usage of the compression
        else
            c_info[C] = (nodes = d[C], occurences = 1)
        end
    end

    for (C, v) in c_info
        s = length(v.nodes)

        # the number of occurences of a compression must be exactly divisible by its size
        @assert mod(v.occurences, s) == 0
        c_info[C] = (nodes = v.nodes, occurences = trunc(Int, v.occurences / s))
    end
end


### EXAMPLE
### Subtree_dict: key: compression id, value: list of nodes
Subtree_dict = Dict{Int64, Vector}(1 => [7,8,9], 0 => [2,3,5])

### compression node with id 2 is assigned to ast node with id 3
c_ast = ["assign(2, x)", "assign(3, x)", "assign(5, x)", "assign(8, x)", "assign(9, x)", "assign(7, x)"]

analyze_AST_singular(Subtree_dict, c_ast)

println("compression information")
println(c_info)