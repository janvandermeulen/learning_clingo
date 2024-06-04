
# Compression_info = (key: subtree ID, value: Tuple([subtree node IDs], compression size, # times the subtree is used as compression))
Compression_info = Dict{Int64, Tuple{Vector, Int64, Int64}}()

# INPUT:
# d: a dictionary(key: compression_id, value: list of nodes)
# compressed_AST: ["assign(A, X)", assign(B, Y), ...]
function analyze_AST_singular(d, compressed_AST)
    for assign in compressed_AST
        comp_node = parse(Int64, (SubString(assign, 8, 8)))
        comp_matches = [k for (k,v) in d if comp_node in v][1]
        @assert length(comp_matches) == 1
        comp_id = comp_matches[1]
        if haskey(Compression_info, comp_id)
            Compression_info[comp_id] = (Compression_info[comp_id][1], Compression_info[comp_id][2], Compression_info[comp_id][3] + 1)
        else
            Compression_info[comp_id] = (d[comp_id], length(d[comp_id]), 1)
        end
    end

    for (_,v) in Compression_info
        @assert mod(v[3], v[2]) == 0
    end
end


### EXAMPLE
### Subtree_dict: key: compression id, value: list of nodes
Subtree_dict = Dict{Int64, Vector}(1 => [7,8,9], 0 => [2,3,5])
### compression node with id 2 is assigned to ast node with id 3
c_ast = ["assign(2, x)", "assign(3, x)", "assign(5, x)", "assign(8, x)", "assign(9, x)", "assign(7, x)"]

analyze_AST_singular(Subtree_dict, c_ast)

println("compression information")
println(Compression_info)