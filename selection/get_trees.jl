using HerbSearch, HerbSpecification, HerbInterpret, HerbGrammar

# define our very simple context-free grammar
# Can add and multiply an input variable x or the integers 1,2.
g = @csgrammar begin
    Element = Number # 1
    Element = Bool # 2

    Number = |(1 : 3) # 3-5
    
    Number = Number + Number # 6
    Bool = Number ≡ Number # 7
    Number = x # 8
    
    Number = Bool ? Number : Number # 9
    Bool = Bool ? Bool : Bool # 10
end

problem = Problem([IOExample(Dict(:x => x), 2x+1) for x ∈ 1:5])
iterator = BFSIterator(g, :Element, max_depth=5)

top_items = [] # Best x trees (currently x = 5)
worst_best = 0 # Tree in top_items with lowest score
by = x -> HerbSearch.evaluate(problem, x, SymbolTable(g, Main), shortcircuit=true, allow_evaluation_errors=true) # Sorting based on score

for (i, candidate_program) ∈ enumerate(iterator)
    # Create expression from rulenode representation of AST
    expr = rulenode2expr(candidate_program, g)
    # Calculate how many input-output pairs succeed
    score = HerbSearch.evaluate(problem, expr, SymbolTable(g, Main), shortcircuit=true, allow_evaluation_errors=true)
    
    if score == 1 # temporary; to test that best were indeed found and added to list
        println(expr)
    end

    if length(top_items) < 5 # fill list until 5 items
        push!(top_items, expr)
        if score < worst_best
            global worst_best = score
        end
    elseif score > worst_best # keep best items found
        push!(top_items, expr)
        sort!(top_items, by=by, rev=true)
        pop!(top_items)
        global worst_best = HerbSearch.evaluate(problem, top_items[5], SymbolTable(g, Main), shortcircuit=true, allow_evaluation_errors=true)
    end

    if i > 200 #stop after having seen 200 trees
        break;
    end

    # Evaluate the expression
    # score = evaluate(problem, expr, symboltable, shortcircuit=shortcircuit, allow_evaluation_errors=allow_evaluation_errors)
    # if score == 1
    #     return (candidate_program, optimal_program)
    # elseif score >= best_score
    #     best_score = score
    #    best_program = candidate_program
    #end

    # Check stopping criteria
    #if i > iterator.max_enumerations || time() - start_time > iterator.max_time
    #    break;
    #end
end

 println(top_items)

# solution, flag = synth(problem, iterator)
# program = rulenode2expr(solution, g) # should yield 2*6 +1 
# println(program)

# output = execute_on_input(SymbolTable(g), program, Dict(:x => 6)) 
# println(output)