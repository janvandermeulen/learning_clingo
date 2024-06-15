import Pkg;  
Pkg.add("DataFrames"); Pkg.add("CSV"); Pkg.add(["HerbGrammar", "HerbSpecification", "HerbSearch", "HerbInterpret"]); 
using HerbGrammar, HerbSpecification, HerbSearch, HerbInterpret; using DataFrames; using CSV;


g = @cfgrammar begin
    Number = |(1:2)
    Number = x
    Number = Number + Number 
    Number = Number * Number
end


function create_input(csv_path:: String) :: Vector{RuleNode}
    """
    # Arguments
    - `csv_path::String`: Path to the csv file containing the ASTs.
    # Result 
    - `results::Vector{RuleNode}`: the ASTs converted to RuleNodes such that they can be used as input to the grammar_optimiser. 
    """
    csv = CSV.read(csv_path, DataFrame)
    asts = csv[:, 1]
    results :: Vector{RuleNode} = []
    for ast in asts
        println("ast: " * ast)
        push!(results, string_2_rulenode(ast))
    end
end

# Rulenode constructors
# 1: RuleNode(ind::Int, _val::Any) - _val is optional and this is used for terminal nodes
# 2: RuleNode(ind::Int, children::Vector{AbstractRuleNode})
function string_2_rulenode(ast::String,debug::Bool=false) :: RuleNode
    """
    # Arguments
    - `ast::String`: AST to be converted to RuleNode.
    - `debug::Bool`: Whether to print debug statements.
    # Result 
    - `rulenode::RuleNode`: the AST converted to RuleNode such that it can be used as input to the grammar_optimiser. 
    """
    if length(ast) == 1
        return RuleNode(parse(Int, ast))
    end 
    # If the AST is not a single node, we need to parse the children 
    println("Calling recursive method for children: " * ast[3:length(ast)-1])
    println("With rootnode: " * string(parse(Int, ast[1])))
    return RuleNode(parse(Int, ast[1]), parse_all_children(ast, 3, length(ast) - 1, debug))
    # return string_2_rulenode_rec(ast, 1, length(ast), debug)
end

function string_2_rulenode_rec(ast::String, start_index::Int, end_index::Int, debug::Bool) :: RuleNode
    """
    Given an AST, this function parses the children of the AST and returns the RuleNode of the AST and the index of the next character to be parsed.
    # Arguments
    - `ast::String`: AST to be converted to RuleNode.
    - `index::Int`: Index in the string where the child is located
    # Result
    - `rulenode::RuleNode`: the AST converted to RuleNode such that it can be used as input to the grammar_optimiser.
    - `index::Int`: Index of the next character to be parsed.
    """
    i::Int = start_index
    ind = ast[i] # We expect the first character to be the index of the grammar rule for that node
    children::Vector{RuleNode} = []



    while i <= end_index
        char = ast[i]
        if debug
            println("Debug for iteration i: " * string(i) * " char: " * string(char))
            println("char is digit: " * string(isdigit(char)))
            println("char is terminal: " * string(is_terminal(ast, i)))
        end
        if isdigit(char)
            # Option 1: Rulenode is a terminal node
            if is_terminal(ast, i)
                if debug 
                    println("Terminal node: " * string(char))
                end
                push!(children, RuleNode(parse(Int, char)))
            else 
            # Option 2: Rulenode is a non-terminal node -> Parse children and then add to child list
                next_brace = find_closing_brace(ast, i + 2)
                if debug
                    println("Non-terminal node: " * string(char))
                    println("Next brace: " * string(next_brace))
                    println("Going into recursive method with ast: " * ast[i + 2:next_brace-1])
                    println("=====RECURSIVE METHOD=====")
                end
                children = parse_all_children(ast, i + 2, next_brace - 1, debug)
                println("Size of children: " * string(length(children)))
                for i in 1:length(children)
                    if debug 
                        println("Pushing child: " * string(i) * " " * string(children[i]))
                    end 
                    push!(children, children[i])
                end
                i = next_brace
            end
        end
        if debug
            println("======NEXT ITERATION=====")
        end
        i = i + 1
    end 
    if debug
        println("Final tree is: " * string(RuleNode(parse(Int, ind), children)))
        println("Children of the tree are: "* string(children))
        println("Root of the tree is: " * string(parse(Int, ind)))
        println("========END OF METHOD=======")
    end
    return RuleNode(parse(Int, ind), children)
end

function parse_all_children(ast::String, start_index::Int, end_index::Int, debug::Bool) :: Vector{RuleNode}
"""
Given an index of a rule node, this function parses all it's children and returns them as a vector of RuleNodes.
# Arguments
- `ast::String`: AST to be converted to RuleNode.
- `start_index::Int`: Index of the opening brace.
- `end_index::Int`: Index of the closing brace.
# Result
- `children::Vector{RuleNode}`: Vector of RuleNodes.
"""
    children::Vector{RuleNode} = []
    i = start_index
    while i <= end_index
        char = ast[i]
        if debug
            println("Debug for iteration i: " * string(i) * " char: " * string(char))
            println("char is digit: " * string(isdigit(char)))
            println("char is terminal: " * string(is_terminal(ast, i)))
        end
        if isdigit(char)
            if is_terminal(ast, i)
                if debug 
                    println("Adding terminal node: " * string(parse(Int, char)))
                end
                push!(children, RuleNode(parse(Int, char)))
            else
                next_brace = find_closing_brace(ast, i + 2)
                if debug
                    println("Non-terminal node: " * string(char))
                    println("Next brace: " * string(next_brace))
                    println("Going into recursive method with ast: " * ast[i + 2:next_brace-1])
                    println("=====RECURSIVE METHOD=====")
                end
                rec_children = parse_all_children(ast, i + 2, next_brace - 1, debug)
                if debug
                    println("Adding children" * string(rec_children) * " To parent: " * string(char))
                    # println("Size of children: " * string(length(rec_children)))
                end
                push!(children, RuleNode(parse(Int, char), rec_children))
                i = next_brace
            end
        end
        i = i + 1
        if debug
            println("======NEXT ITERATION=====")
        end
    end
    if debug 
        println("Found the follwowing children: " * string(children))
        println("===== LEAVING PARSE_ALL_CHILDREN METHOD =====")
    end
    return children
end

function is_terminal(ast::String, index::Int) :: Bool
    """
    Given an AST and the index of the node, this function returns whether the node is a terminal node.
    # Arguments
    - `ast::String`: AST to be converted to RuleNode.
    - `index::Int`: Index of the node.
    # Result
    - `is_terminal::Bool`: Whether the node is a terminal node.
    """
    if index == length(ast)
        return true
    end
    return string(ast[index + 1]) != "{"
end

function find_closing_brace(ast::String, start_index::Int) :: Int
    """
    Given an AST and the index of the opening brace, this function returns the index of the closing brace.
    # Arguments
    - `ast::String`: AST to be converted to RuleNode.
    - `start_index::Int`: Index of the opening brace.
    # Result
    - `index::Int`: Index of the closing brace.
    """
    open_bracket_count::Int = 1
    index = start_index
    while open_bracket_count > 0
        index += 1
        if string(ast[index]) == "{"
            open_bracket_count += 1
        elseif string(ast[index]) == "}"
            open_bracket_count -= 1
        end
    end
    return index
end 

# csv_path = CSV.read(joinpath(dirname(@__FILE__), "inputs", "ast.csv"), DataFrame)
# create_input(csv_path, g)

# Test
tree = string_2_rulenode("4{4{1,1}1}", true)
println("Children of the tree are: "* string(tree.children))
println("Tree is: " * string(tree))
println(rulenode2expr(tree, g))