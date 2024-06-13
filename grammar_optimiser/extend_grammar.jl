import Pkg; Pkg.add(["HerbGrammar", "HerbSpecification", "HerbSearch", "HerbInterpret"])
using HerbGrammar, HerbSpecification, HerbSearch, HerbInterpret

# function that takes a tree in the form of a list of nodes, and converts it to a Herb interpretable tree
# input:
#### global dictionary d: (key: node_id, value: namedTuple(compression_id, parent_id, child_nr, type))
#### one compression ID: int
# output: Herb tree

function generate_tree_from_compression(parent, d, compression_id)
    children::Vector{RuleNode} = []
    for (key, value) in d
        if (value.parent_id == parent && value.comp_id == compression_id)
            child = key
            child_tree = generate_tree_from_compression(child, d, compression_id)
            push!(children, child_tree)
        end
    end

    tree = RuleNode(d[parent].type, children)
    return tree
end
    
    # tree::RuleNode
    # rootNode
    # matching type with grammar rule?

    # get the nodes


# function that takes a grammar and a Herb-tree, and extends the gramar with it
# input: herb tree, standard grammar
# output: extended grammar
function extendGrammar(tree, grammar)
    type = return_type(grammar, tree.ind)
    new_grammar_rule = rulenode2expr(tree, grammar)
    add_rule!(grammar, :($type = $new_grammar_rule))

    return grammar
end

# Subtree_dict = Dict{Int64, NamedTuple{(:comp_id, :parent_id, :child_nr, :type), <:Tuple{Int64,Int64,Int64,Int64}}}(
#     2 => (comp_id = 2, parent_id = -1, child_nr = -1, type = 2),
#     3 => (comp_id = 2, parent_id = 2, child_nr = 1, type = 2),
#     5 => (comp_id = 2, parent_id = 2, child_nr = 2, type = 4),
#     7 => (comp_id = 7, parent_id = -1, child_nr = -1, type = 0),
#     8 => (comp_id = 7, parent_id = 7, child_nr = 0, type = 1),
#     9 => (comp_id = 7, parent_id = 7, child_nr = 1, type = 1),
# )
# c_ast = ["assign(2, x)", "assign(3, x)", "assign(5, x)", "assign(8, x)", "assign(9, x)", "assign(7, x)", "assign(8, x)", "assign(9, x)", "assign(7, x)"]

# tree = generate_tree_from_compression(2, Subtree_dict, 2)
# println(tree)

g = @cfgrammar begin
    Number = |(1:2)
    Number = x
    Number = Number + Number 
    Number = Number * Number
end

# new = extendGrammar(tree, g)

# println(new)