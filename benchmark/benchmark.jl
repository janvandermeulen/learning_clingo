import Pkg; Pkg.add(["HerbGrammar", "HerbSpecification", "HerbInterpret"])
using DataFrames; using CSV; using Base;
using HerbGrammar, HerbSpecification, HerbSearch, HerbInterpret

include("benchmark_setup.jl")
include("../grammar_optimiser/grammar_optimiser.jl")
include("../PBE_SLIA_Track_2019/grammars.jl")
include("../PBE_SLIA_Track_2019/data.jl")

function benchmark(g, asts, settings)
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

function benchmark(g, settings) 
    #1. Get the ASTs of solved problems
    asts = create_input(settings["input_path"])

    benchmark(g, asts, settings)
end

grammars = [name for name in names(Grammars, all=true, imported=false) if startswith(String(name), "grammar")]
problems = [name for name in names(Problems, all=true, imported=false) if startswith(String(name), "problem")]

for (x, y) in zip(grammars, problems)
    grammar = getfield(Grammars, x)
    problem = getfield(Problems, y)
    
    asts = [rand(RuleNode, grammar, 5) for i in 1:10]
    
end