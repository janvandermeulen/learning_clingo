# add all imports
using HerbSearch, HerbCore, HerbSpecification, HerbInterpret, HerbGrammar, JSON

# include("sampling_grammar.jl")
include("get_subtrees.jl")

# define our very simple context-free grammar
# Can add and multiply an input variable x or the integers 1,2.
g = @csgrammar begin
    Number = |(1 : 2) # 3-5
    
    Number = Number + Number # 6
end

random_tree = rand(RuleNode, g, 4)
println(random_tree)
println(rulenode2expr(random_tree, g))
(subtrees_root, other_subtrees) = select_subtrees(random_tree, g)
subtrees = vcat(subtrees_root, other_subtrees)

println("subtrees: ", [rulenode2expr(subtree, g) for subtree in subtrees])

subtrees_filtered = [subtree for subtree in subtrees if selection_criteria(random_tree, subtree) > 1]

println("filtered: ", [rulenode2expr(subtree, g) for subtree in subtrees_filtered])