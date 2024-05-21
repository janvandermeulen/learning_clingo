import Pkg; Pkg.add(["HerbGrammar", "HerbSpecification", "HerbSearch", "HerbInterpret"])
using HerbGrammar, HerbSpecification, HerbSearch, HerbInterpret

g = @cfgrammar begin
    Number = |(1:2)
    Number = x
    Number = Number + Number 
    Number = Number * Number
end

problem = Problem([IOExample(Dict(:x => x), 2x+1) for x ∈ 1:5])

iterator = BFSIterator(g, :Number, max_depth=5)
solution, flag = synth(problem, iterator)
println(solution)
println(flag)
program = rulenode2expr(solution, g) # should yield 2*6+1
println(program)
output = execute_on_input(SymbolTable(g), program, Dict(:x => 6)) 
println(output)