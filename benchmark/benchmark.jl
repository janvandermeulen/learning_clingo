import Pkg; Pkg.add(["HerbGrammar", "HerbSpecification", "HerbSearch", "HerbInterpret"])
include("../grammar_optimiser/grammar_optimiser.jl")
using DataFrames; using CSV; using Base;
using HerbGrammar, HerbSpecification, HerbSearch, HerbInterpret



function get_asts() 
    ast = CSV.read(joinpath(dirname(@__FILE__), "inputs", "ast.csv"), DataFrame)
    return ast[:, 1]
end

function benchmark(settings)
    (asts, g) = get_asts()
    problem = settings["problem"]

    start_time = time()
    # iterator = BFSIterator(g, :Number, max_depth=settings["max_depth_iterator"])
    g = @cfgrammar begin
        Number = |(1:2)
        Number = x
        Number = Number + Number 
        Number = Number * Number
    end
    problem = settings["problem"]
    iterator = BFSIterator(g, settings["output_type"], max_depth=settings["max_depth_iterator"])
    solution, flag = synth(problem, iterator)

    end_time = time()
    time_taken_original = end_time - start_time

    g = grammar_optimiser(asts, g)
    start_time = time()
    synth(problem, BFSIterator(updated_g, settings["output_type"], max_depth=settings["max_depth_iterator"]))
    end_time = time()
    time_taken_extended = end_time - start_time

    return (time_taken_original, time_taken_extended)
end

settings = Dict(
    "problem" => Problem([IOExample(Dict(:x => x), 2x+1) for x ∈ 1:5]),
    "output_type" => :Number,
    "max_depth_iterator" => 5
)
print(benchmark(settings))