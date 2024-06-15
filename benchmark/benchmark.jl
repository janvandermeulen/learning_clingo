import Pkg; Pkg.add(["HerbGrammar", "HerbSpecification", "HerbSearch", "HerbInterpret"])
include("../grammar_optimiser/grammar_optimiser.jl")
include("benchmark_setup.jl")
# include("../HerbBenchmarks.jl/src/herb_benchmarks.jl")
using DataFrames; using CSV; using Base;
using HerbGrammar, HerbSpecification, HerbSearch, HerbInterpret

function benchmark(g, settings) 
    #1. Get the ASTs of solved problems
    asts = create_input(settings["input_path"])
    #2. Extend the grammar
    g_extended = grammar_optimiser(asts, grammar)
    #3. Get the problem
    problem = settings["problem"]
    #4. Synthesise the solution using the original grammar
    start_time = time()
    iterator = BFSIterator(g, settings["output_type"], max_depth=settings["max_depth_iterator"])
    solution_original, _ = synth(problem, iterator)
    end_time = time()
    time_taken_original = end_time - start_time
    #5. Synthesise the solution using the extended grammar
    start_time = time()
    iterator = BFSIterator(g_extended, settings["output_type"], max_depth=settings["max_depth_iterator"])
    solution_extended, _ = synth(problem, iterator)
    end_time = time()
    return Dict(
        "time_taken_original" => time_taken_original, 
        "time_taken_extended" => end_time - start_time,
        "AST_size_original" => length(solution_original),
        "AST_size_extended" => length(solution_extended)
    )
end


#=
function benchmark(settings)
    (asts, g) = get_asts()
    problem = settings["problem"]

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
=#