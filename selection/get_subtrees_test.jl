# add all imports
using HerbSearch, HerbCore, HerbSpecification, HerbInterpret, HerbGrammar

# include("sampling_grammar.jl")
include("get_subtrees.jl")

# define our very simple context-free grammar
# Can add and multiply an input variable x or the integers 1,2.
g = @csgrammar begin
    Number = |(1 : 2) # 3-5
    
    Number = Number + Number # 6
end

random_tree = rand(RuleNode, g, 2)
println(rulenode2expr(random_tree, g))
(subtrees_root, other_subtrees) = select_subtrees(random_tree, g)
subtrees = vcat(subtrees_root, other_subtrees)

print([rulenode2expr(subtree, g) for subtree in subtrees])