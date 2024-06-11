import Pkg; Pkg.add(["HerbGrammar", "HerbSpecification", "HerbSearch", "HerbInterpret"])
using HerbGrammar, HerbSpecification, HerbSearch, HerbInterpret

# function that takes a tree in the form of a list of nodes, and converts it to a Herb interpretable tree
# input:
#### global dictionary d: (key: node_id, value: namedTuple(compression_id, parent_id, child_nr, type))
#### one compression ID: int
# output: Herb tree
function getNodes(d, compression)
    s = Set()

    # get the nodes needed for this tree, aka all that belong to the compression
    for (node_id, v) in d
        if v.compression_id == compression
            push!(s, (node_id, v))
        end
    end

    # tree::RuleNode
    # rootNode
    # matching type with grammar rule?

    # get the nodes

end

# function that takes a grammar and a Herb-tree, and extends the gramar with it
# input: herb tree, standard grammar
# output: extended grammar
function extendGrammar(tree, grammar)
    new_grammar_rule = rulenode2expr(tree, grammar)
    add_rule!(grammar, :(Number = $new_grammar_rule))

    return grammar
end

g = @cfgrammar begin
    Number = |(1:2)
    Number = x
    Number = Number + Number 
    Number = Number * Number
end

problem = Problem([IOExample(Dict(:x => x), 2x+1) for x ∈ 1:5])

iterator = BFSIterator(g, :Number, max_depth=5)
solution, flag = synth(problem, iterator)

new = extendGrammar(solution, g)

println(new)