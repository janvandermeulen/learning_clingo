# add all imports
using HerbSearch, HerbCore, HerbSpecification, HerbInterpret, HerbGrammar

# include("sampling_grammar.jl")
include("get_subtrees.jl")

# define our very simple context-free grammar
# Can add and multiply an input variable x or the integers 1,2.
g = @csgrammar begin
    Element = Number # 1
    Element = Bool # 2

    Number = |(1 : 3) # 3-5
    
    Number = Number + Number # 6
    Bool = Number ≡ Number # 7
    Number = x # 8
    
    Number = Bool ? Number : Number # 9
    Bool = Bool ? Bool : Bool # 10
end

random_tree = rand(RuleNode, g, 5)
subtrees = select_subtrees(random_tree)