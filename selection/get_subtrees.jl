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
    subtrees = []
    for child in tree.children
        subtrees_child = select_subtrees(child, g)
        push!(child_subtrees, subtrees_child)
        subtrees = vcat(subtrees_child, subtrees)
        # print("child subtrees:", [rulenode2expr(sub, g) for sub in subtrees], "\n")
    end
    
    for perm in permutations(length(tree.children))
        if sum_alt(perm) == 0
            continue
        end
        for i in 1:length(perm)
            subtree = deepcopy(tree)
            if perm[i] == 1
                for child_subtree in child_subtrees[i]
                    # insert!(subtree, HerbGrammar.root_node_loc(subtree.children[i]), child_subtree)
                    subtree.children[i] = child_subtree
                end
            else
                # path_to_hole = get_path(subtree, subtree.children[i])
                hole = Hole(get_domain(g, g.bytype[child_types(g, tree)[i]]))
                # swap_node(subtree, hole, path_to_hole)
                subtree.children[i] = hole
                # insert!(subtree, HerbGrammar.root_node_loc(subtree.children[i]), Hole(get_domain(g, g.bytype[child_types(g, tree)[i]])))
            end
            push!(subtrees, subtree)
        end	
    end
    push!(subtrees, tree)
    # print([rulenode2expr(sub, g) for sub in subtrees], "\n")
    return subtrees
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

