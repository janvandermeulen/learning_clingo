# function that takes a tree in the form of a list of nodes, and converts it to a Herb interpretable tree
# input:
#### global dictionary d: (key: node_id, value: namedTuple(compressiond_id, parent_id, child_nr, type))
#### one compression ID: int
# output: Herb tree
function getNodes(d, compression)
    s = Set()

    # get the nodes needed for this tree, aka all that belong to the compression
    for (node_id ,v) in d
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
end