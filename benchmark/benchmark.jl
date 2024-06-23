# import Pkg; Pkg.add(["HerbGrammar", "HerbSpecification","HerbSearch", "HerbInterpret"])
include("../grammar_optimiser/grammar_optimiser.jl")
include("benchmark_setup.jl")
include("problem_sets.jl")
include("grammars.jl")

using DataFrames; using CSV; using Base; using Shuffle; using DelimitedFiles;
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
        iterator = BFSIterator(g, settings["output_type"], max_depth=3)
        solution_original, _, iter_og_i = synth(problem, iterator, max_enumerations = 75000)
        push!(asts, solution_original)
    end


    #2. Extend the grammar
    println("=================================")
    println("STEP 2: COMPRESSING FOUND SOLUTIONS")
    g_extended = grammar_optimiser(asts, original_g, settings["subtree_selection_strategy"], settings["f_best"])
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

function benchmark_herb(settings) 
    #0. Backup original grammar
    g = settings["grammar"]
    problem = settings["problem"]
    original_g = deepcopy(g)
    asts::Vector{RuleNode} = []
    # asts::Vector{RuleNode} = generate_eval_set(40, g, 3)

    #1. Synthesise the train set using the original grammar
    println("=================================")
    println("STEP 1: RUNNING TRAINING WITH OLD GRAMMAR")

    for i in 1:10
        push!(asts, rand(RuleNode, g, settings["max_depth"]))
    end

    #2. Extend the grammar
    println("=================================")
    println("STEP 2: COMPRESSING FOUND SOLUTIONS")
    g_extended = grammar_optimiser(asts, original_g, settings["subtree_selection_strategy"], settings["f_best"])
    println("PRINTING NEW GRAMMAR")
    println(string(g_extended))


    #3. Synthesise the test set using the original grammar
    println("=================================")
    println("RUNNING TESTING WITH OLD GRAMMAR")

    iter_og = []

    start_time = time()

    iterator = BFSIterator(g, settings["output_type"], max_depth=settings["max_depth_iterator"])
    _, _, iter_og_i = synth(problem, iterator, max_enumerations = 75000)
    append!(iter_og, iter_og_i)

    end_time = time()

    time_taken_original = end_time - start_time

    #4. Synthesise the test set using the new grammar
    println("=================================")
    println("RUNNING TESTING WITH NEW GRAMMAR")

    iter_ext = []
    start_time = time()

    iterator = BFSIterator(g, settings["output_type"], max_depth=settings["max_depth_iterator"])
    _, _, iter_og_i = synth(problem, iterator, max_enumerations = 75000)
    append!(iter_og, iter_og_i)

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
    input = shuffle(input)[begin:10]

    halfway_point = trunc(Int64, length(input)*split)
    training_set = input[begin:halfway_point]
    testing_set = input[halfway_point + 1:end]

    return training_set, testing_set
end


function experiment_1()
    # Grammar
    g = dual_arith_bool_grammar

    # Generate evaluation set
    # eval_asts::Vector{RuleNode} = generate_eval_set(40, g, 3)
    training_set, testing_set = split_problem_set(dual_bool_arith, 0.8)



    # Settings
    settings = Dict(
        "output_type" => :Number,
        "max_depth_iterator" => 5,
        "grammar" => g,
        # The set of problems to test efficacy against
        "training_set" => training_set,
        "testing_set" => testing_set,
        "f_best" => 0.5::Float64,
        "subtree_selection_strategy" => 1::Int) # 1 is occurences and # 2 is occurences * size 
    results = benchmark(settings)
    return results
end

function experiment_2()
    # Grammar
    g = dual_arith_bool_grammar
    
    # Generate evaluation set
    # eval_asts::Vector{RuleNode} = generate_eval_set(40, g, 3)
    training_set, testing_set = split_problem_set(dual_bool_arith, 0.8)

    # Settings
    settings = Dict(
        "output_type" => :Number,
        "max_depth_iterator" => 5,
        "grammar" => g,
        # The set of problems to test efficacy against
        "training_set" => training_set,
        "testing_set" => testing_set,
        "f_best" => 0.75::Float64,
        "subtree_selection_strategy" => 1::Int) # 1 is occurences and # 2 is occurences * size 
    results = benchmark(settings)
    return results
end

function experiment_3()
    # Grammar
    g = dual_arith_bool_grammar
    
    # Generate evaluation set
    # eval_asts::Vector{RuleNode} = generate_eval_set(40, g, 3)
    training_set, testing_set = split_problem_set(dual_bool_arith, 0.8)

    # Settings
    settings = Dict(
        "output_type" => :Number,
        "max_depth_iterator" => 5,
        "grammar" => g,
        # The set of problems to test efficacy against
        "training_set" => training_set,
        "testing_set" => testing_set,
        "f_best" => 0.95::Float64,
        "subtree_selection_strategy" => 1::Int) # 1 is occurences and # 2 is occurences * size 
    results = benchmark(settings)
    return results
end

function experiment_4()
    # Grammar
    g = dual_arith_bool_grammar

    # Generate evaluation set
    # eval_asts::Vector{RuleNode} = generate_eval_set(40, g, 3)
    training_set, testing_set = split_problem_set(dual_bool_arith, 0.8)



    # Settings
    settings = Dict(
        "output_type" => :Number,
        "max_depth_iterator" => 5,
        "grammar" => g,
        # The set of problems to test efficacy against
        "training_set" => training_set,
        "testing_set" => testing_set,
        "f_best" => 0.5::Float64,
        "subtree_selection_strategy" => 2::Int) # 1 is occurences and # 2 is occurences * size 
    results = benchmark(settings)
    return results
end

function experiment_5()
    # Grammar
    g = dual_arith_bool_grammar
    
    # Generate evaluation set
    # eval_asts::Vector{RuleNode} = generate_eval_set(40, g, 3)
    training_set, testing_set = split_problem_set(dual_bool_arith, 0.8)

    # Settings
    settings = Dict(
        "output_type" => :Number,
        "max_depth_iterator" => 5,
        "grammar" => g,
        # The set of problems to test efficacy against
        "training_set" => training_set,
        "testing_set" => testing_set,
        "f_best" => 0.75::Float64,
        "subtree_selection_strategy" => 2::Int) # 1 is occurences and # 2 is occurences * size 
    results = benchmark(settings)
    return results
end

function experiment_6()
    # Grammar
    g = dual_arith_bool_grammar
    
    # Generate evaluation set
    # eval_asts::Vector{RuleNode} = generate_eval_set(40, g, 3)
    training_set, testing_set = split_problem_set(dual_bool_arith, 0.8)

    # Settings
    settings = Dict(
        "output_type" => :Number,
        "max_depth_iterator" => 5,
        "grammar" => g,
        # The set of problems to test efficacy against
        "training_set" => training_set,
        "testing_set" => testing_set,
        "f_best" => 0.95::Float64,
        "subtree_selection_strategy" => 2::Int) # 1 is occurences and # 2 is occurences * size 
    results = benchmark(settings)
    return results
end

function all_benchmarks()

    runs = 10

    improvements1 = []
    results1 = []
    start_time = time()
    for i in 1:runs
        println("experiment ", 1 ," iteration ", i)
        push!(results1, experiment_1())
        # println(typeof(results1))
        push!(improvements1, results1[end]["iter_original"] - results1[end]["iter_ext"])
        # print(string(results1))
    end
    end_time = time()
    println(results_to_csv(1, results1))

    println("experiment 1 done: ", end_time-start_time)
    println("Improvements exp 1: ")
    println(improvements1)
    println("-----------------------------------------------------------------------------")

    improvements2 = []
    results2 = []
    start_time = time()
    for i in 1:runs
        println("experiment ", 2 ," iteration ", i)

        push!(results2, experiment_2())
        push!(improvements2, results2[end]["iter_original"] - results2[end]["iter_ext"])
        # print(string(result))
    end
    end_time = time()
    print(results_to_csv(2, results2))

    println("experiment 2 done: ", end_time-start_time)
    println("improvements exp 2: ")
    println(improvements2)
    println("-----------------------------------------------------------------------------")

    improvements3 = []
    results3 = []
    start_time = time()
    for i in 1:runs
        println("experiment ", 3 ," iteration ", i)

        push!(results3, experiment_3())
        push!(improvements3, results3[end]["iter_original"] - results3[end]["iter_ext"])
        # print(string(result))
    end
    end_time = time()
    print(results_to_csv(3, results3))

    println("experiment 3 done: ", end_time-start_time)
    println("improvements exp 3: ")
    println(improvements3)
    println("-----------------------------------------------------------------------------")


    improvements4 = []
    results4 = []
    start_time = time()
    for i in 1:runs
        println("experiment ", 4 ," iteration ", i)
        push!(results4, experiment_4())
        # println(typeof(results1))
        push!(improvements4, results4[end]["iter_original"] - results4[end]["iter_ext"])
        # print(string(results1))
    end
    end_time = time()
    println(results_to_csv(4, results4))

    println("experiment 4 done: ", end_time-start_time)
    println("Improvements exp 4: ")
    println(improvements4)
    println("-----------------------------------------------------------------------------")

    improvements5 = []
    results5 = []
    start_time = time()
    for i in 1:runs
        println("experiment ", 5 ," iteration ", i)

        push!(results5, experiment_5())
        push!(improvements5, results5[end]["iter_original"] - results5[end]["iter_ext"])
        # print(string(result))
    end
    end_time = time()
    print(results_to_csv(5, results5))

    println("experiment 5 done: ", end_time-start_time)
    println("improvements exp 5: ")
    println(improvements5)
    println("-----------------------------------------------------------------------------")

    improvements6 = []
    results6 = []
    start_time = time()
    for i in 1:runs
        println("experiment ", 6 ," iteration ", i)

        push!(results6, experiment_6())
        push!(improvements6, results6[end]["iter_original"] - results6[end]["iter_ext"])
        # print(string(result))
    end
    end_time = time()
    print(results_to_csv(6, results6))

    println("experiment 6 done: ", end_time-start_time)
    println("improvements exp 6: ")
    println(improvements6)
    println("-----------------------------------------------------------------------------")

    println("all improvements:")
    println(improvements1)
    println(improvements2)
    println(improvements3)
    println(improvements4)
    println(improvements5)
    println(improvements6)
end

all_benchmarks()
