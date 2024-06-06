###################### COMPRESSION ANALYSIS #############################


# (key: subtree ID, value: NamedTuple([subtree node IDs], # times the subtree is used as compression))
c_info = Dict{Int64, NamedTuple{(:nodes,:occurences), <:Tuple{Vector,Int64}}}()


# FUNCTION: Analyzes 1 AST and puts the resulting compression information in c_info
# INPUT:
# d: a dictionary(key: compression_id, value: [subtree node IDs])
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


###################### EXAMPLE USAGE #############################

# Subtree_dict = Dict{Int64, Vector}(1 => [7,8,9], 0 => [2,3,5])
# c_ast = ["assign(2, x)", "assign(3, x)", "assign(5, x)", "assign(8, x)", "assign(9, x)", "assign(7, x)", "assign(8, x)", "assign(9, x)", "assign(7, x)"]

# analyze_AST_singular(Subtree_dict, c_ast)

# println("compression information")
# for (k,v) in c_info
#     println("compression ", k)
#     println(v)
#     println()
# end



###################### COMPRESSION SELECTION #############################

function select_compression(c, best_n)
    # change here for the heuristics
    case = 1

    # sorting the dictionary
    # case 1: occurences
    if case == 1
        println("sorting by #occurences...")
        c = sort(collect(c), by=x->x[2].occurences, rev=true) # decreasing order of value

        for (k,v) in c
            print(v.occurences)
            println(": ", k, " ", v,)
        end
    # case 2: occurences * size
    elseif  case ==2
        println("sorting by #occurences * tree_size...")
        c = sort(collect(c), by=x->(x[2].occurences * length(x[2].nodes)), rev=true) # decreasing order of value

        for (k,v) in c
            print(v.occurences * length(v.nodes))
            println(": ", k, " ", v,)
        end
    end

    # taking the best n percentage
    index = floor.(Int, length(c) * best_n)
    c = c[begin:index]

    println("selection is:")
    for (k,v) in c
        println(k, " ", v)
    end


end


dictionary1 = Dict{Int64, NamedTuple{(:nodes,:occurences), <:Tuple{Vector,Int64}}}(
    0 => (nodes = [1, 2, 3], occurences = 2),
    1 => (nodes = [1, 2], occurences = 1),
    2 => (nodes = [1, 2, 3, 4], occurences = 0),
    3 => (nodes = [1, 2, 3, 4, 5, 6], occurences = 1),
    4 => (nodes = [1, 2, 3], occurences = 2),
    5 => (nodes = [1, 2, 3, 4], occurences = 2))


select_compression(dictionary1, 0.5)