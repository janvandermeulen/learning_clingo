using Pkg; Pkg.add("IterTools")

function select_subtrees(tree::AbstractRuleNode)
    subtrees = []
    for perm in permutations(length(tree.children))
        subtree = deepcopy(tree)
        subtree.children = [if perm[i] == 1 tree.children[i] else Hole end for i in 1:length(perm)]
        push!(subtrees, subtree)
    end
    for subtree in subtrees
        if any(child isa RuleNode for child in subtree.children)
            subtrees = vcat(subtrees, select_subtrees(subtree))
        end
    end
    return subtrees
end


function permutations(n::Int)
    if n == 0
        return [[]]
    else
        smaller_permutations = permutations(n - 1)
        return vcat([vcat(1, perm) for perm in smaller_permutations], [vcat(0, perm) for perm in smaller_permutations])
    end
end

