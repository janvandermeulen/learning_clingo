using HerbGrammar, HerbSpecification, HerbSearch, HerbInterpret

function extendGrammar(tree, grammar)
    """
    Extends a given grammar with a Herb tree.
    # Arguments
    - `tree::RuleNode`: the Herb tree
    - `grammar::AbstractGrammar`: the grammar to extend
    # Result
    - `grammar::AbstractGrammar`: the extended grammar
    """

    type = return_type(grammar, tree.ind)
    new_grammar_rule = rulenode2expr(tree, grammar)
    add_rule!(grammar, :($type = $new_grammar_rule))

    return grammar
end