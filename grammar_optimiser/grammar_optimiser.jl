import Pkg; 
Pkg.add("HerbCore"); using HerbCore
include("get_subtrees.jl")
include("parse_subtrees_to_json.jl")
function grammar_optimiser(trees::Vector{RuleNode}, grammar::AbstractGrammar)
    # 1a. Select subtrees 
    subtrees = Set() 
    for tree in trees
        subtrees = union(subtrees, collect(select_subtrees(tree, grammar)))
    end
    # 1b. Prune subtrees - TODO 
    # 2. Parse subtrees to json
    subtree_vector = collect(subtrees)
    print(typeof(subtree_vector))
    for (id, tree) in enumerate(trees)
        parse_subtrees_to_json(subtree_vector, tree, id)
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
for i in 1:1
    push!(trees, rand(RuleNode, g, 5))
end
grammar_optimiser(trees, g)


