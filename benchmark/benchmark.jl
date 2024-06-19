import Pkg; Pkg.add(["HerbGrammar", "HerbSpecification", "HerbSearch", "HerbInterpret"])
include("../grammar_optimiser/grammar_optimiser.jl")
include("benchmark_setup.jl")
# include("../HerbBenchmarks.jl/src/herb_benchmarks.jl")
include("problem_sets.jl")
include("grammars.jl")
using DataFrames; using CSV; using Base;
using HerbGrammar, HerbSpecification, HerbSearch, HerbInterpret

function benchmark(settings) 
    #1. Get the ASTs of solved problems
    g = settings["grammar"]
    original_g = deepcopy(g)
    asts::Vector{RuleNode} = settings["learn_asts"]

    #2. Extend the grammar
    g_extended = grammar_optimiser(asts, original_g, settings["subtree_selection_strategy"])
    #2a print the new grammar
    println("PRINTING NEW GRAMMAR")
    println(string(g_extended))
    println("=================================")
    #3. Get the problem
    # problem = settings["problem"]
    #4. Synthesise the solution using the original grammar

    println("RUNNING WITH OLD GRAMMAR...")

    iter_og = []

    start_time = time()
    for problem in settings["eval_problems"]
        iterator = BFSIterator(g, settings["output_type"], max_depth=settings["max_depth_iterator"])
        solution_original, _, iter_og_i = synth(problem, iterator, max_enumerations = 20000)
        append!(iter_og, iter_og_i)
    end
    # iterator = BFSIterator(g, settings["output_type"], max_depth=settings["max_depth_iterator"])
    # solution_original, _ = synth(problem, iterator)
    end_time = time()

    time_taken_original = end_time - start_time

    println("=================================")
    println("RUNNING WITH NEW GRAMMAR")

    iter_ext = []
    #5. Synthesise the solution using the extended grammar
    start_time = time()
    # iterator = BFSIterator(g_extended, settings["output_type"], max_depth=settings["max_depth_iterator"])
    # solution_extended, _ = synth(problem, iterator)
    for problem in settings["eval_problems"]
        iterator = BFSIterator(g_extended, settings["output_type"], max_depth=settings["max_depth_iterator"])
        solution_extended, _, iter_ext_i = synth(problem, iterator, max_enumerations = 20000)
        append!(iter_ext, iter_ext_i)
    end
    end_time = time()
    return Dict(
        "time_taken_original" => time_taken_original, 
        "time_taken_extended" => end_time - start_time,
        "iter_original" => iter_og,
        "iter_ext" => iter_ext,
        "grammar_extended" => g_extended,
        # "AST_size_original" => length(solution_original),
        # "AST_size_extended" => length(solution_extended)
    )
end

function results_to_csv(i::Int64, results::Vector{Any})
    df = DataFrame(results)
    CSV.write("results_$i.csv", df)
end

function generate_eval_set(n_trees::Int, g, size::Int)::Vector{RuleNode}
    eval_asts::Vector{RuleNode} = []
    while length(eval_asts) < n_trees
        ast = rand(RuleNode, g, size)
        if depth(ast) == size
            push!(eval_asts, ast)
        end
    end
    return eval_asts
end


function experiment_1()
    # Grammar
    g = single_arith_grammar

    # Generate evaluation set
    eval_asts::Vector{RuleNode} = generate_eval_set(40, g, 3)
    # Settings
    settings = Dict(
        "output_type" => :Number,
        "max_depth_iterator" => 5,
        "learn_asts" => eval_asts,
        "grammar" => g,
        # The set of problems to test efficacy against
        "eval_problems" =>  single_arith,
        "grammar_extension_percentage" => 0.5::Float64,
        "subtree_selection_strategy" => 1::Int,) # 1 is occurences and # 2 is occurences * size 
    results = benchmark(settings)
    return results
end

function experiment_2()
    # Grammar
    g = single_arith_grammar
    # Generate evaluation set
    eval_asts::Vector{RuleNode} = generate_eval_set(40, g, 3)
    # Settings
    settings = Dict(
        "output_type" => :Number,
        "max_depth_iterator" => 5,
        "learn_asts" => eval_asts,
        "grammar" => g,
        # The set of problems to test efficacy against
        "eval_problems" => single_arith,
        "grammar_extension_percentage" => 0.5::Float64,
        "subtree_selection_strategy" => 1::Int,) # 1 is occurences and # 2 is occurences * size 
    results = benchmark(settings)
    return results
end

function all_benchmarks()

    runs = 10

    results1 = []
    for _ in 1:runs
        push!(results1, experiment_1())
        # print(string(result))
    end
    print(results_to_csv(1, results1))

    results2 = []
    for I in 1:runs
        push!(results2, experiment_2())
        # print(string(result))
    end
    print(results_to_csv(2, results2))
end

all_benchmarks()