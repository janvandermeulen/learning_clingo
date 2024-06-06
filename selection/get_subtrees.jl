using HerbSearch, HerbCore, HerbSpecification, HerbInterpret, HerbGrammar

function select_subtrees(tree::RuleNode, g::AbstractGrammar)
    child_subtrees = []
    subtrees_tree_root = []
    other_subtrees = []
    for child in tree.children
        (subtrees_child, other_subtrees_child) = select_subtrees(child, g)
        push!(child_subtrees, subtrees_child)
        other_subtrees = vcat(other_subtrees, subtrees_child, other_subtrees_child)
    end
    
    # for every combination
    for perm in combinations_helper(length(tree.children))
        if sum(perm) == length(perm)
            continue
        end
        subtree_candidates = []
        push!(subtree_candidates, deepcopy(tree)) # copy the tree
        # for every child
        for (i, include) in pairs(perm)
            for candidate in subtree_candidates
                if include
                    for (j, child_subtree) in pairs(child_subtrees[i])
                        subtree = j == 1 ? candidate : deepcopy(candidate)
                        subtree.children[i] = child_subtree
                    end
                else
                    hole = Hole(get_domain(g, g.bytype[child_types(g, candidate)[i]]))
                    candidate.children[i] = hole
                end
            end
        end	
        subtrees_tree_root = vcat(subtree_candidates, subtrees_tree_root)
    end
    push!(subtrees_tree_root, tree)
    return (subtrees_tree_root, other_subtrees)
end

function combinations_helper(n::Int)
    return n == 0 ? [] : combinations(n)
end

function combinations(n::Int)
    if n == 0
        return [[]]
    end
    smaller_combinations = combinations(n - 1)
    return vcat([vcat(true, perm) for perm in smaller_combinations], 
        [vcat(false, perm) for perm in smaller_combinations])
end

function selection_criteria(tree::RuleNode, subtree::AbstractRuleNode)
    return length(subtree) > 1
end