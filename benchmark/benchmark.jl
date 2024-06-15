import Pkg; Pkg.add(["HerbGrammar", "HerbSpecification", "HerbSearch", "HerbInterpret"])
include("../grammar_optimiser/grammar_optimiser.jl")
# include("../HerbBenchmarks.jl/src/herb_benchmarks.jl")
using DataFrames; using CSV; using Base;
using HerbGrammar, HerbSpecification, HerbSearch, HerbInterpret

function create_solutions(grammar) :: Vector{RuleNode}
    csv = CSV.read(joinpath(dirname(@__FILE__), "inputs", "ast.csv"), DataFrame)
    functions = csv[:, 2]
    asts = csv[:, 1]
    for fun in functions
        println("function: " * fun)
        println("grammar:\n" * string(grammar))
        println(string2rulenode(fun, grammar))
    end
end

function string2rulenode(str::String, grammar::AbstractGrammar)
    temp_expr = Meta.parse(str)
    expr = Base.remove_linenums!(temp_expr)
    return expr2rulenode(expr, grammar)
end

function expr2rulenode(expr::Expr, grammar::AbstractGrammar) :: RuleNode
    if expr.head == :call
        # get the rule index
        rule = findfirst(==(expr), grammar.rules)
        if isnothing(rule)
            error("Rule: " * string(rule) * "not found in the grammar")
        end
        # create a rulenode
        rulenode = RuleNode(rule, [])
        return rulenode
    elseif expr.head == :block
        rulenode = RuleNode(3, [expr2rulenode(e, grammar) for e in expr.args])
    else
        error("Only call and block expressions are supported")
    end
end


function get_asts() 
    ast = CSV.read(joinpath(dirname(@__FILE__), "inputs", "ast.csv"), DataFrame)
    return ast[:, 1]
end

function benchmark(problem, asts, g, settings)
    start_time = time()
    iterator = BFSIterator(g, settings["output_type"], max_depth=settings["max_depth_iterator"])
    solution_original, _ = synth(problem, iterator)

    end_time = time()
    time_taken_original = end_time - start_time

    g = grammar_optimiser(asts, g)
    start_time = time()
    solution_extended, _ = synth(problem, BFSIterator(updated_g, settings["output_type"], max_depth=settings["max_depth_iterator"]))
    end_time = time()
    time_taken_extended = end_time - start_time

    return Dict(
        "time_taken_original" => time_taken_original, 
        "time_taken_extended" => time_taken_extended,
        "AST_size_original" => length(solution_original),
        "AST_size_extended" => length(solution_extended)
    )
end

settings = Dict(
    "output_type" => :String,
    "max_depth_iterator" => 10
)

format_string_grammars("results.csv")