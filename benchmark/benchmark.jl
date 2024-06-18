import Pkg; Pkg.add(["HerbGrammar", "HerbSpecification", "HerbSearch", "HerbInterpret"])
include("../grammar_optimiser/grammar_optimiser.jl")
include("benchmark_setup.jl")
# include("../HerbBenchmarks.jl/src/herb_benchmarks.jl")
using DataFrames; using CSV; using Base;
using HerbGrammar, HerbSpecification, HerbSearch, HerbInterpret

function benchmark(g, settings) 
    #1. Get the ASTs of solved problems
    # asts = create_input(settings["input_path"]) IMPORTANT: if these inputs do not match the grammar, you get errors!
    original_g = deepcopy(g)

    asts::Vector{RuleNode} = []
    # Generate trees with the grammar
    for i in 1:settings["n_random_asts"]
        push!(asts, rand(RuleNode, g, 5))
        print("Tree $i: " * string(asts[i]) * "\n")
    end

    #2. Extend the grammar
    g_extended = grammar_optimiser(asts, g)
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
    for problem in settings["problem_set"]
        iterator = BFSIterator(original_g, settings["output_type"], max_depth=settings["max_depth_iterator"])
        solution_original, _, iter_og_i = synth(problem, iterator)
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
    for problem in settings["problem_set"]
        iterator = BFSIterator(g_extended, settings["output_type"], max_depth=settings["max_depth_iterator"])
        solution_extended, _, iter_ext_i = synth(problem, iterator)
        append!(iter_ext, iter_ext_i)
    end
    end_time = time()
    return Dict(
        "time_taken_original" => time_taken_original, 
        "time_taken_extended" => end_time - start_time,
        "iter_original" => iter_og,
        "iter_ext" => iter_ext
        # "AST_size_original" => length(solution_original),
        # "AST_size_extended" => length(solution_extended)
    )
end
  
settings = Dict(
    "output_type" => :Number,
    "max_depth_iterator" => 5,
    "input_path" => joinpath(dirname(@__FILE__), "inputs", "ast.csv"),
    # The set of problems to test efficacy against
    "problem_set" => [Problem([IOExample(Dict(:x => x), 2x+1) for x ∈ 1:5]), 
                  Problem([IOExample(Dict(:x => x), 3x+5) for x ∈ 1:5]),
                  Problem([IOExample(Dict(:x => x), 2+4x) for x ∈ 1:5]),
                  Problem([IOExample(Dict(:x => x), 5x+5) for x ∈ 1:5]),
                  Problem([IOExample(Dict(:x => x), 2x+2+2x+2) for x ∈ 1:5])],
    # "problem_set" => [Problem([IOExample(Dict(:x => x), 2x+3+2x+3+2x+3+2x) for x ∈ 1:5])]
    "n_random_asts" => 20
)

g = @cfgrammar begin
    Number = |(1:2)
    Number = x
    Number = Number + Number 
    Number = Number * Number
end

result = benchmark(g, settings)
print(string(result))

#= 
A set of problems
problems = []
functions = []
push!(problems, Problem([IOExample(Dict(:x => x), 2x+1) for x ∈ 1:5]))
push!(functions, "2x+1")
push!(problems, Problem([IOExample(Dict(:x => x), 3x+5) for x ∈ 1:5]))
push!(problems, Problem([IOExample(Dict(:x => x), 2+4x) for x ∈ 1:5]))
push!(problems, Problem([IOExample(Dict(:x => x), 5x+5) for x ∈ 1:5]))
push!(problems, Problem([IOExample(Dict(:x => x), 2x+2+2x+2) for x ∈ 1:5]))
push!(problems, Problem([IOExample(Dict(:x => x), 4x+3+2x) for x ∈ 1:5]))
push!(problems, Problem([IOExample(Dict(:x => x), 2x+3+2x) for x ∈ 1:5]))
push!(problems, Problem([IOExample(Dict(:x => x), 2x+3+2x+3) for x ∈ 1:5]))
push!(problems, Problem([IOExample(Dict(:x => x), 2x+3+2x+3+2x) for x ∈ 1:5]))
push!(problems, Problem([IOExample(Dict(:x => x), 2x+3+2x+3+2x+3) for x ∈ 1:5]))
push!(problems, Problem([IOExample(Dict(:x => x), 2x+3+2x+3+2x+3+2x) for x ∈ 1:5]))
=#
