# using HerbGrammar;

Base.isequal(k1::RuleNode, k2::RuleNode) = compare(k1, k2)


#TODO: With generate_stats, immediately put in the rulenode as key, then we don't have to convert it later on.
# Also, we cannot put it earlier as RuleNode in the globaldict, as there it's per node, not per tree
# But do we then even need the global dictionary? Can we factor it out?
# IF we create the rulenodes immediately from the parser, we wouldn't need the global dictionary.
# But we can't do that because we don't have complete compressions yet. Yes we do actually?
# But how will we match assign-statements with a dictionary where the keys are RuleNodes, instead of node id's
# redesign the dictionary: key => RuleNode, value => list of node ID's (first one is root/id), size (implicit), occurences
# And then how do we do the generate_tree_from_compression thing without the global dict? We can already make the dict when enumerating subtrees?
# we can almost, we have the size, occurences (=0), but not a list of node ids, especially since the nodes dont have any id yet
# so we'd still have to do that in the parser where ids are assigned

function generate_stats(d, compressed_AST)
    """
    Compression Analysis. Analyzes 1 AST to see how many times each compression was used.
    # Arguments
    - `d::Dict`: the global dictionary (key: node_id, value: namedTuple(compressiond_id, parent_id, child_nr, type, [children]))
    - `compressed_AST::Vector{String}`: a list of assign-statements ["assign(A, X)", assign(B, Y), ...]
    # Result 
    - `c_info::Dict{Int64, NamedTuple{(:size, :occurences), <:Tuple{Int64,Int64}}}`: an dict(key: compression_id, value: Tuple(size, # occurences))) 
    """

    c_info = Dict{Int64, NamedTuple{(:size, :occurences), <:Tuple{Int64,Int64}}}()


    for assign in compressed_AST

        # parse the node id
        m = match(r"\((\d+),", assign)

        @assert m !== nothing
        @assert length(m.captures) == 1
        node_id = parse(Int64, m.captures[1])

        # get the compression id
        C = d[node_id].comp_id

        # initialize the counter for the first occurence of the compression
        if !haskey(c_info, C)
            c_info[C] = (size = sum(v.comp_id == C for v in values(d)), occurences = 0)
        end
        
        c_info[C] = (size = c_info[C].size, occurences = c_info[C].occurences + 1)        
    end

    for (C, v) in c_info
        # the sum of occurences of all nodes of a compression must be exactly divisible by the compression's size
        @assert (mod(v.occurences, v.size) == 0) || (v.size == 0)
        c_info[C] = (size = v.size, occurences = trunc(Int, v.occurences / v.size))
    end

    return c_info
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

function zip_stats(stats::Vector{Dict{RuleNode, NamedTuple{(:size,:occurences), <:Tuple{Int64,Int64}}}}) #put this int64 back to rulenode!
    """
    Combines the statistics of multiple ASTs into one dictionary.
    # Arguments
    - `stats::Vector{Dict{RuleNode, NamedTuple{(:size,:occurences), <:Tuple{Int64,Int64}}}}`: a list of dictionaries (key: RuleNode, value: NamedTuple(size, occurences))
    # Result
    - `d::Dict{RuleNode, NamedTuple{(:size,:occurences), <:Tuple{Int64,Int64}}}`: a dictionary (key: RuleNode, value: NamedTuple(size, occurences))
    """
    d = mergewith!((v1, v2) -> begin
        @assert v1.size == v2.size "Adding tree statistics of trees with different sizes is not allowed"
        (size = v1.size, occurences = v1.occurences + v2.occurences)
    end, stats...)
    
    return d

end

function select_compressions(case, c, f_best)
    """
    Selects the best compressions according to some heuristic.
    # Arguments
    - `case::Int64`: the heuristic to use (1: occurences, 2: occurences * size)
    - `c::Dict{RuleNode, NamedTuple{(:size,:occurences), <:Tuple{Int64,Int64}}}`: a dictionary (key: compression (RuleNode), value: tuple(size, # occurences))
    - `f_best::Float64`: a float in range [0,1], that specifies what proportion of the compressions will get selected
    # Result
    - `c::Vector{RuleNode}`: a sorted and filtered list of compression IDs
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