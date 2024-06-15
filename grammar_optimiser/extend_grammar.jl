import Pkg; Pkg.add(["HerbGrammar", "HerbSpecification", "HerbSearch", "HerbInterpret"])
using HerbGrammar, HerbSpecification, HerbSearch, HerbInterpret

# function that takes a tree in the form of a list of nodes, and converts it to a Herb interpretable tree
# input:
#### global dictionary d: (key: node_id, value: namedTuple(compression_id, parent_id, child_nr, type))
#### one compression ID: int
# output: Herb tree

function generate_tree_from_compression(parent, d, compression_id, grammar)
    parent_type = d[parent].type
    actual_children = grammar.childtypes[parent_type]
    
    children::Vector{AbstractRuleNode} = []
    current_child = 1

    for child in d[parent].children
        child_tree = generate_tree_from_compression(child, d, compression_id, grammar)
        child_nr = d[child].child_nr
        while current_child < child_nr + 1
            hole = Hole(get_domain(grammar, grammar.bytype[actual_children[current_child]]))
            push!(children, hole)
            current_child = current_child + 1
        end

        push!(children, child_tree)
        current_child = current_child + 1
    end

    # add remaining children; children that could be missing
    if current_child > 1
        current_child = current_child - 1
        while current_child < length(actual_children)
            hole = Hole(get_domain(grammar, grammar.bytype[actual_children[current_child]]))
            push!(children, hole)
            current_child = current_child + 1
        end
    end 

    tree = RuleNode(parent_type, children)
    return tree
end

# calls above function for an entire dict of compressions
function generate_trees_from_compressions(global_dict, stats, grammar)

    tree_stats_dict = Dict{RuleNode, NamedTuple{(:size,:occurences), <:Tuple{Int64,Int64}}}()

    for (comp_id, values) in stats
        t = generate_tree_from_compression(comp_id, global_dict, comp_id, grammar)
        tree_stats_dict[t] = values
    end
    
    return tree_stats_dict
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

Subtree_dict = Dict{Int64, NamedTuple{(:comp_id, :parent_id, :child_nr, :type, :children), <:Tuple{Int64,Int64,Int64,Int64,Vector{Int64}}}}(
    5 => (comp_id = 5, parent_id = -1, child_nr = -1, type = 5, children = Int64[]),
    16 => (comp_id = 14, parent_id = 14, child_nr = 1, type = 1, children = Int64[]),
    20 => (comp_id = 20, parent_id = -1, child_nr = -1, type = 5, children = [21, 22]),
    8 => (comp_id = 8, parent_id = -1, child_nr = -1, type = 5, children = [10]),
    17 => (comp_id = 17, parent_id = -1, child_nr = -1, type = 5, children = [18]),
    22 => (comp_id = 20, parent_id = 20, child_nr = 1, type = 1, children = Int64[]),
    11 => (comp_id = 11, parent_id = -1, child_nr = -1, type = 5, children = Int64[]),
    14 => (comp_id = 14, parent_id = -1, child_nr = -1, type = 5, children = [16]),
    21 => (comp_id = 20, parent_id = 20, child_nr = 0, type = 2, children = Int64[]),
    10 => (comp_id = 8, parent_id = 8, child_nr = 1, type = 1, children = Int64[]),
    18 => (comp_id = 17, parent_id = 17, child_nr = 0, type = 2, children = Int64[])
)

tree = generate_tree_from_compression(17, Subtree_dict, 17, g)
println(tree)

new = extendGrammar(tree, g)