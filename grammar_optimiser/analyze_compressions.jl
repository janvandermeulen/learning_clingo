
Base.isequal(k1::RuleNode, k2::RuleNode) = compare(k1, k2)

function count_occurences(d, compressed_AST)
    """
    Compression Analysis. Analyzes 1 AST to see how many times each compression was used.
    # Arguments
    - `d::Dict`: the global dictionary (key: RuleNode, value: namedTuple(nodes, size, occurences))
    - `compressed_AST::Vector{String}`: a list of assign-statements ["assign(A, X)", assign(B, Y), ...]
    # Result 
    - `c_info::Dict{RuleNode, NamedTuple{(:nodes, :size, :occurences), <:Tuple{Vector, Int64,Int64}}}`: an dict(key: rulenode, value: Tuple(children, size, # occurences))) 
    """

    for assign in compressed_AST

        # parse the node id
        m = match(r"\((\d+),", assign)

        @assert m !== nothing
        @assert length(m.captures) == 1
        node_id = parse(Int64, m.captures[1])
        Cs = [key for (key, value) in d if node_id in value.nodes]
        @assert length(Cs) == 1
        C = Cs[1]
        
        d[C] = (nodes = d[C].nodes, size = d[C].size, occurences = d[C].occurences + 1)        
    end

    for (C, v) in d
        # the sum of occurences of all nodes of a compression must be exactly divisible by the compression's size
        @assert (mod(v.occurences, v.size) == 0) || (v.size == 0)
        d[C] = (nodes = d[C].nodes, size = v.size, occurences = trunc(Int, v.occurences / v.size))
    end

    return d
end


function compare(rn₁, rn₂)::Bool
    """
    Compares two RuleNodes. Returns true if they are equal, false otherwise.
    This is an adaptation of the original Herb compare method, such that it can handle holes.
    # Arguments
    - `rn₁::RuleNode`: a RuleNode
    - `rn₂::RuleNode`: a RuleNode
    # Result
    - `Bool`: true if the RuleNodes are equal, false otherwise
    """
    
    if typeof(rn₁) != typeof(rn₂) return false end
    if (rn₁ isa Hole) && (rn₂ isa Hole) return true end
    if !(rn₁ isa RuleNode) || !(rn₂ isa RuleNode) return false end

    if rn₁.ind == rn₂.ind
        for (c₁, c₂) ∈ zip(rn₁.children, rn₂.children)
            comparison = compare(c₁, c₂)
            if !comparison return false end
        end
        return true
    end
    return false
end

function zip_stats(stats::Vector{Dict{RuleNode, NamedTuple{(:nodes,:size,:occurences), <:Tuple{Vector{Int64},Int64,Int64}}}})
    """
    Combines the statistics of multiple ASTs into one dictionary.
    # Arguments
    - `stats::Vector{Dict{RuleNode, NamedTuple{(:nodes:size,:occurences), <:Tuple{Vector{Int64},Int64,Int64}}}}`: a list of dictionaries (key: RuleNode, value: NamedTuple(size, occurences))
    # Result
    - `d::Dict{RuleNode, NamedTuple{(:nodes,:size,:occurences), <:Tuple{Vector{Int64},Int64,Int64}}}`: a dictionary (key: RuleNode, value: NamedTuple(size, occurences))
    # !! Note !! 
    - The content of the nodes field is not correct anymore after this merge;
    The contents of nodes of two merging keys might not be the same, as the node_id's are not consistent over different AST compressions.
    However, the structure/grammar rules are correct, and the specific node_id's do not matter anymore after this point.
    """
    d = mergewith!((v1, v2) -> begin
        @assert v1.size == v2.size "Adding tree statistics of trees with different sizes is not allowed"
        (nodes = v1.nodes, size = v1.size, occurences = v1.occurences + v2.occurences)
    end, stats...)
    
    return d
end

function select_compressions(case, c, f_best)
    """
    Selects the best compressions according to some heuristic.
    # Arguments
    - `case::Int64`: the heuristic to use (1: occurences, 2: occurences * size)
    - `c::Dict{RuleNode, NamedTuple{(:nodes:size,:occurences), <:Tuple{Vector{Int64},Int64,Int64}}}`: a dictionary (key: compression (RuleNode), value: tuple(size, # occurences))
    - `f_best::Float64`: a float in range [0,1], that specifies what proportion of the compressions will get selected
    # Result
    - `c::Vector{RuleNode}`: a sorted and filtered list of compressions
    """

    # Heuristic 1: sort by #occurences
    if case == 1
        println("sorting by #occurences...")
        c = sort(collect(c), by=x->x[2].occurences, rev=true)
    # Heuristic 2: sort by #occurences * size
    elseif  case ==2
        println("sorting by #occurences * tree_size...")
        c = sort(collect(c), by=x->(x[2].occurences * x[2].size), rev=true)
    end

    # Extra heuristic: filter out compressions of size 1
    filter!(x -> x[2].size != 1, c)
    
    # Extra heuristic: filter out compressions with fewer than 2 occurences
    filter!(x -> x[2].occurences >= 2, c)

    # taking the best n percentage of compressions
    index = ceil.(Int, length(c) * f_best)
    c = c[begin:index]


   return map(first, c)
end