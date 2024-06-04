using HerbSearch, HerbCore, HerbSpecification, HerbInterpret, HerbGrammar

function sum_alt(xs::typeof([]))
    sum = 0	
    for x in xs
        sum += x
    end
    return sum
end

function select_subtrees(tree::RuleNode, g::AbstractGrammar)
    child_subtrees = []
    subtrees_tree_root = []
    other_subtrees = []
    for child in tree.children
        (subtrees_child, other_subtrees_child) = select_subtrees(child, g)
        push!(child_subtrees, subtrees_child)
        other_subtrees = vcat(other_subtrees, subtrees_child)
        other_subtrees = vcat(other_subtrees, other_subtrees_child)
        # print("child subtrees:", [rulenode2expr(sub, g) for sub in subtrees], "\n")
    end
    
    temp = permutations_helper(length(tree.children))
    # print(temp, "\n")

    print("permutations: ", temp, "\n")
    # for every permutation
    for perm in temp
        print(perm, "\n")
        if sum_alt(perm) == length(perm)
            print("break\n")
            continue
        end
        print("continue\n")
        subtree_candidates = []
        push!(subtree_candidates, deepcopy(tree)) # copy the tree
        # for every child
        for i in 1:length(perm)
            for candidate in subtree_candidates
                if perm[i] == 1
                    for j in 1:length(child_subtrees[i])
                        subtree = j == 1 ? candidate : deepcopy(candidate)
                        child_subtree = child_subtrees[i][j]
                        subtree.children[i] = child_subtree
                        # push!(subtree_candidates, subtree)
                    end
                else
                    hole = Hole(get_domain(g, g.bytype[child_types(g, candidate)[i]]))
                    candidate.children[i] = hole
                end
                # print(perm, rulenode2expr(subtree, g), "\n")
            end
        end	
        subtrees_tree_root = vcat(subtree_candidates, subtrees_tree_root)
    end
    push!(subtrees_tree_root, tree)
    # print("=======\n")
    # print([rulenode2expr(sub, g) for sub in subtrees], "\n")
    return (subtrees_tree_root, other_subtrees)
end

function permutations_helper(n::Int)
    if n == 0
        return []
    else
        return permutations(n)
    end
end

function permutations(n::Int)
    if n == 0
        return [[]]
    else
        smaller_permutations = permutations(n - 1)
        return vcat([vcat(1, perm) for perm in smaller_permutations], [vcat(0, perm) for perm in smaller_permutations])
    end
end

