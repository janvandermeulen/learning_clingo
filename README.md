# Grammar Optimiser

Codebase for the refactoring for program synthesis project. See `getting_started.jl` to see how it should be used. The main `grammar_optimiser` function is in `grammar_optimiser/grammar_optimiser.jl`. It takes a list of ASTs, a grammar, a subtree selection strategy and the fraction of best compressions that should be used.

# Running the Benchmark

In order to be able to run the `benchmark.jl` file, the `search_procedure.jl` file in the `HerbSearch` package has to be changed. The function `synth(...)` has to be changed to return the number of iterations used in addition to the current return values. So the signature of the function has to be:
`function synth(
    problem::Problem,
    iterator::ProgramIterator; 
    shortcircuit::Bool=true, 
    allow_evaluation_errors::Bool=false,
    max_time = typemax(Int),
    max_enumerations = typemax(Int),
    mod::Module=Main
)::Union{Tuple{RuleNode, SynthResult, Int64}, Nothing}`, where the Int64 is the number of iterations.

## Authors
- Rixt Hellinga
- Jan van der Meulen
- Pallabi Sree Sarker
- Matteo Bertorotta
- Roan Rosema
