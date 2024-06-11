include("../grammar_optimiser/grammar_optimiser.jl")

g = @cfgrammar begin
    Number = |(1:2)
    Number = x
    Number = Number + Number 
    Number = Number * Number
end

function get_asts()
    ast = CSV.read("inputs/ast.csv", DataFrame)
    return ast[:, 1]

end

function benchmark(settings)
    (asts, g) = get_asts()
    problem = settings["problem"]

    start_time = time()
    synth(problem, BFSIterator(g, settings["output_type"], max_depth=settings["max_depth_iterator"]))
    end_time = time()
    time_taken_original = end_time - start_time

    g = grammar_optimiser(asts, g)
    start_time = time()
    synth(problem, BFSIterator(updated_g, settings["output_type"], max_depth=settings["max_depth_iterator"]))
    end_time = time()
    time_taken_extended = end_time - start_time

    return (time_taken_original, time_taken_extended)
end

print(benchmark(["problem" => Problem([IOExample(Dict(:x => x), 2x+1) for x ∈ 1:5]), "output_type" => :Number, "max_depth_iterator" => 5]))