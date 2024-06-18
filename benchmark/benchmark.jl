import Pkg; Pkg.add(["HerbGrammar", "HerbSpecification", "HerbInterpret"])
include("../grammar_optimiser/grammar_optimiser.jl")
include("../HerbBenchmarks.jl/src/data/SyGuS/PBE_SLIA_Track_2019/PBE_SLIA_Track_2019.jl")
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

format_string_grammars("results.csv")
