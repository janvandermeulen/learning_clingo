import Pkg; Pkg.add(["HerbGrammar", "HerbSpecification","HerbSearch", "HerbInterpret", "HerbCore", "DataStructures", "JSON", "CSV", "DataFrames"]);

include("grammar_optimiser/grammar_optimiser.jl")


g = @cfgrammar begin
    Number = |(1:2)
    Number = x
    Number = Number + Number 
    Number = Number - Number
    Number = Number * Number
    Number = Number / Number
    # Number = √Complex(Number)
end

grammar_optimiser([rand(RuleNode, g, 5) for _ in 1:3], g, 1, 0.5)