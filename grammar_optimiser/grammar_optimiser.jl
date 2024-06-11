import Pkg; 
Pkg.add("HerbCore"); using HerbCore
include("get_subtrees.jl")
include("parse_subtrees_to_json.jl")

function grammar_optimiser(trees::Vector{RuleNode}, grammar::AbstractGrammar)
    start_time = time()
    print("Stage 1: Select subtrees" * "\n")     # 1a. Select subtrees 
    subtree_set = Vector{Any}()
    for tree in trees
        test = time()
        (subtrees_root, other_subtrees) = select_subtrees(tree, g)
        print("Time for tree selection 1: " * string(time() - test) * "\n"); test = time()
        subtrees = vcat(subtrees_root, other_subtrees)
        print("Time for concatenation 1: " * string(time() - test) * "\n"); test = time()
        subtree_set = vcat(subtree_set, subtrees)
        print("Time for concatenation 2: " * string(time() - test) * "\n"); test = time()
    end
    print("Time for stage 1: " * string(time() - start_time) * "\n")
    start_time = time()
    subtree_set = unique(subtree_set)
    # 1b. Prune subtrees - TODO (remove all of size 1)
    print("Stage 2: parse subtrees to json")
    # 2. Parse subtrees to json
    for (id, tree) in enumerate(trees)
        parse_subtrees_to_json(subtree_set, tree, id)
    end
    print("Time for stage 2 : " * string(time() - start_time) * "\n")
    print("Stage 3: call clingo")
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
    push!(trees, rand(RuleNode, g, 10))
    print("Tree $i: " * string(trees[i]) * "\n")
end
print("running optimiser \n")
grammar_optimiser(trees, g)


