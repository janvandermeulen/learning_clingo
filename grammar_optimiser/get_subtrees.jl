using HerbSearch, HerbCore, HerbSpecification, HerbInterpret, HerbGrammar, DataStructures



function select_subtrees(tree::RuleNode, g::AbstractGrammar)
    if length(tree.children) == 0
        return ([tree], [])
    end   
    child_subtrees = []
    subtrees_tree_root = []# subtrees with papa node
    other_subtrees = [] # subtrees without papa node

    for (i, child) in pairs(tree.children)
        (subtrees_child, other_subtrees_child) = select_subtrees(child, g)
        push!(child_subtrees, subtrees_child)
        other_subtrees = vcat(other_subtrees, subtrees_child, other_subtrees_child)
    end

    # for every combination
    for perm in combinations(length(tree.children))
        
        subtree_candidates = cons(deepcopy(tree), nil()) # copy the tree
        # for every child
        for (i, include) in pairs(perm)
            for candidate in subtree_candidates
                if include
                    for (j, child_subtree) in pairs(child_subtrees[i])
                        subtree = j == 1 ? candidate : deepcopy(candidate)
                        subtree.children[i] = child_subtree
                        if j != 1
                            subtree_candidates = cons(subtree, subtree_candidates)
                        end
                    end
                else
                    hole = Hole(get_domain(g, g.bytype[child_types(g, candidate)[i]]))
                    candidate.children[i] = hole
                end
            end
        end	
        subtrees_tree_root = vcat([candidate for candidate in subtree_candidates], subtrees_tree_root)
    end

    return (subtrees_tree_root, other_subtrees)
end

# function combinations_helper(n::Int)
#     return n == 0 ? [] : combinations(n)
# end

function combinations(n::Int)
    if n == 0
        return [[]]
    end
    smaller_combinations = combinations(n - 1)
    return vcat([vcat(true, perm) for perm in smaller_combinations], 
        [vcat(false, perm) for perm in smaller_combinations])
end

function selection_criteria(tree::RuleNode, subtree::AbstractRuleNode)
    size = length(subtree)
    return size > 1 && size < length(tree)
end