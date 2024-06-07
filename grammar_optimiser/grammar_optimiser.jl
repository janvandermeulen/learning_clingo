import Pkg; 
Pkg.add("HerbCore"); using HerbCore
include("get_subtrees.jl")
include("parse_subtrees_to_json.jl")
function grammar_optimiser(trees::Vector{RuleNode}, grammar::AbstractGrammar)
    # 1a. Select subtrees 
    subtree_set = Vector{Any}()
    for tree in trees
        (subtrees_root, other_subtrees) = select_subtrees(tree, g)
        subtrees = vcat(subtrees_root, other_subtrees)
        subtree_set = vcat(subtree_set, subtrees)
    end

    subtree_set = unique(subtree_set)

    # 1b. Prune subtrees - TODO 
    # 2. Parse subtrees to json
    for (id, tree) in enumerate(trees)
        parse_subtrees_to_json(subtree_set, tree, id)
    end
    
    # 3. Call clingo 
    
    # 4. Parse clingo output to json
     
    # 5. Analyse clingo output
end

g = @cfgrammar begin
    Number = |(1:2)
    Number = x
    Number = Number + Number 
    Number = Number * Number
end
trees::Vector{RuleNode} = []
# Generate trees with the grammar
for i in 1:3
    push!(trees, rand(RuleNode, g, 5))
end
grammar_optimiser(trees, g)


