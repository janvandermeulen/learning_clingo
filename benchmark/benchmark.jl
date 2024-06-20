import Pkg; Pkg.add(["HerbGrammar", "HerbSpecification", "HerbSearch", "HerbInterpret"])
include("../grammar_optimiser/grammar_optimiser.jl")
include("benchmark_setup.jl")
# include("../HerbBenchmarks.jl/src/herb_benchmarks.jl")
include("problem_sets.jl")
include("grammars.jl")
using DataFrames; using CSV; using Base; using Shuffle;
using HerbGrammar, HerbSpecification, HerbSearch, HerbInterpret

function benchmark(settings) 
    #0. Backup original grammar
    g = settings["grammar"]
    original_g = deepcopy(g)
    asts::Vector{RuleNode} = []
    # asts::Vector{RuleNode} = generate_eval_set(40, g, 3)

    #1. Synthesise the train set using the original grammar
    println("=================================")
    println("STEP 1: RUNNING TRAINING WITH OLD GRAMMAR")

    for problem in settings["training_set"]
        iterator = BFSIterator(g, settings["output_type"], max_depth=settings["max_depth_iterator"])
        solution_original, _, iter_og_i = synth(problem, iterator, max_enumerations = 75000)
        push!(asts, solution_original)
    end


    #2. Extend the grammar
    println("=================================")
    println("STEP 2: COMPRESSING FOUND SOLUTIONS")
    g_extended = grammar_optimiser(asts, original_g, settings["subtree_selection_strategy"], settings["best_n"])
    println("PRINTING NEW GRAMMAR")
    println(string(g_extended))


    #3. Synthesise the test set using the original grammar
    println("=================================")
    println("RUNNING TESTING WITH OLD GRAMMAR")

    iter_og = []

    start_time = time()
    for problem in settings["testing_set"]
        iterator = BFSIterator(g, settings["output_type"], max_depth=settings["max_depth_iterator"])
        solution_original, _, iter_og_i = synth(problem, iterator, max_enumerations = 75000)
        # push!(asts, solution_original)
        append!(iter_og, iter_og_i)
    end

    end_time = time()

    time_taken_original = end_time - start_time

    #4. Synthesise the test set using the new grammar
    println("=================================")
    println("RUNNING TESTING WITH NEW GRAMMAR")

    iter_ext = []
    start_time = time()

    # iterator = BFSIterator(g_extended, settings["output_type"], max_depth=settings["max_depth_iterator"])
    # solution_extended, _ = synth(problem, iterator)
    for problem in settings["testing_set"]
        iterator = BFSIterator(g_extended, settings["output_type"], max_depth=settings["max_depth_iterator"])
        solution_extended, _, iter_ext_i = synth(problem, iterator, max_enumerations = 75000)
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

function split_problem_set(input::Vector, split::Float64 = 0.75)
    input = shuffle(input)

    halfway_point = trunc(Int64, length(input)*split)
    training_set = input[begin:halfway_point]
    testing_set = input[halfway_point + 1:end]

    return training_set, testing_set
end


function experiment_1()
    # Grammar
    g = single_arith_grammar

    # Generate evaluation set
    # eval_asts::Vector{RuleNode} = generate_eval_set(40, g, 3)
    training_set, testing_set = split_problem_set(single_arith, 0.8)



    # Settings
    settings = Dict(
        "output_type" => :Number,
        "max_depth_iterator" => 5,
        "grammar" => g,
        # The set of problems to test efficacy against
        "training_set" => training_set,
        "testing_set" => testing_set,
        "best_n" => 0.55::Float64,
        "subtree_selection_strategy" => 1::Int,) # 1 is occurences and # 2 is occurences * size 
    results = benchmark(settings)
    return results
end

function experiment_2()
    # Grammar
    g = single_arith_grammar
    
    # Generate evaluation set
    # eval_asts::Vector{RuleNode} = generate_eval_set(40, g, 3)
    training_set, testing_set = split_problem_set(single_arith, 0.8)

    # Settings
    settings = Dict(
        "output_type" => :Number,
        "max_depth_iterator" => 5,
        "grammar" => g,
        # The set of problems to test efficacy against
        "training_set" => training_set,
        "testing_set" => testing_set,
        "best_n" => 0.85::Float64,
        "subtree_selection_strategy" => 1::Int,) # 1 is occurences and # 2 is occurences * size 
    results = benchmark(settings)
    return results
end

function all_benchmarks()

    runs = 10

    improvements1 = []
    results1 = []
    for _ in 1:runs
        push!(results1, experiment_1())
        println(typeof(results1))
        push!(improvements1, results1[end]["iter_original"] - results1[end]["iter_ext"])
        # print(string(results1))
    end
    print(results_to_csv(1, results1))

    improvements2 = []
    results2 = []
    for _ in 1:runs
        push!(results2, experiment_2())
        push!(improvements2, results2[end]["iter_original"] - results2[end]["iter_ext"])
        # print(string(result))
    end
    print(results_to_csv(2, results2))


    println("-----------------------------------------------------------------------------")
    println("Improvements exp 1: ")
    println(improvements1)
    println("improvements exp 2: ")
    println(improvements2)
end

all_benchmarks()