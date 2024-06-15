import Pkg; Pkg.add(["HerbGrammar", "HerbSpecification", "HerbSearch", "HerbInterpret"])
include("../grammar_optimiser/grammar_optimiser.jl")
# include("../HerbBenchmarks.jl/src/herb_benchmarks.jl")
using DataFrames; using CSV; using Base;
using HerbGrammar, HerbSpecification, HerbSearch, HerbInterpret

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