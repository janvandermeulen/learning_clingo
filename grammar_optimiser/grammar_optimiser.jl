import Pkg; 
using HerbCore; using Base; using CSV;
Pkg.add("HerbCore"); 
include("get_subtrees.jl")
include("parse_subtrees_to_json.jl")
include("parse_input.jl")
include("parse_output.jl")
include("analyze_compressions.jl")
include("extend_grammar.jl")

function run_command(command)
    run(`$command`)
end

function grammar_optimiser(trees::Vector{RuleNode}, grammar::AbstractGrammar, subtree_selection_strategy::Int)
    dir_path = dirname(@__FILE__)     
    start_time = time()
    print("Stage 1: Select subtrees\n")     # 1a. Select subtrees 
    subtree_set = Vector{Any}()
    for tree in trees
        test = time()
        (subtrees_root, other_subtrees) = select_subtrees(tree, grammar)
        # print("Time for tree selection 1: " * string(time() - test) * "\n"); test = time()
        subtrees = vcat(subtrees_root, other_subtrees)
        # print("Time for concatenation 1: " * string(time() - test) * "\n"); test = time()
        subtrees = filter(subtree -> selection_criteria(tree, subtree), subtrees) #remove subtrees size 1 and treesize
        subtree_set = vcat(subtree_set, subtrees)
        # print("Time for concatenation 2: " * string(time() - test) * "\n"); test = time()
    end
    print("Time for stage 1: " * string(time() - start_time) * "\n"); start_time = time()
    subtree_set = unique(subtree_set)
    print("Stage 2: parse subtrees to json\n")     # 2. Parse subtrees to json

    for (id, tree) in enumerate(trees)
        parse_subtrees_to_json(subtree_set, tree, id)
    end
    global_dicts = []
    for i in 1:length(trees)
        input_location = joinpath(dir_path, "inputs", "parser_input$(i).json")
        output_location = joinpath(dir_path, "clingo_inputs", "model_input$(i).lp")
        global_dict = parse_json(input_location, output_location)
        push!(global_dicts, global_dict)
    end
    print("Time for stage 2 : " * string(time() - start_time) * "\n"); start_time = time()
    print("Stage 3: call clingo\n")
    # 3. Call clingo 
    model_location = joinpath(dir_path, "model.lp")
    for i in 1:length(trees)
        input_location = joinpath(dir_path, "clingo_inputs", "model_input$(i).lp")
        output_location = joinpath(dir_path, "outputs", "clingo_output$(i).json")
        command = `clingo $(model_location) $(input_location) --outf=2`
        print("Running command: " * string(command) * "\n")
        try 
            open(output_location, "w") do output_file
                run(pipeline(command, output_file))
            end 
        catch e
            print("Error: " * string(e) * "\n")
        end
    end
    print("Time for stage 3 : " * string(time() - start_time) * "\n"); start_time = time()
    print("Stage 4: Parse clingo output to json\n")     # 4. Parse clingo output to json
    best_values = []
    for i in 1:length(trees)
        input_location = joinpath(dir_path, "outputs", "clingo_output$(i).json")
        push!(best_values, read_json(input_location))
    end
    for value in best_values
        print("Best value: " * string(value) * "\n")
    end

    print("Stage 5: Analyze subtrees\n") # 5. Analyse clingo output
    best_n = 0.5 # which percentage of compressions do we want (will be rounded up)

    all_stats = Vector{Dict{RuleNode, NamedTuple{(:size,:occurences), <:Tuple{Int64,Int64}}}}()

    for i in 1:length(trees)
        node_assignments = best_values[i]

        stats = generate_stats(global_dicts[i], node_assignments)

        stats = generate_trees_from_compressions(global_dicts[i], stats, grammar)

        push!(all_stats, stats)
    end

    combined_stats = zip_stats(all_stats)
    best_compressions = select_compressions(subtree_selection_strategy, combined_stats, best_n)

    new_grammar = grammar

    println("best compressions:")
    for b in best_compressions
        println(b)
        new_grammar = extendGrammar(b, new_grammar)
    end

    return new_grammar

end


function main(ARGS)
    g = @cfgrammar begin
        Number = |(1:2)
        Number = x
        Number = Number + Number 
        Number = Number * Number
    end
    trees::Vector{RuleNode} = []
    # Generate trees with the grammar
    for i in 1:3
        push!(trees, rand(RuleNode, g, 5))
        print("Tree $i: " * string(trees[i]) * "\n")
    end
    print("running optimiser \n")
    grammar_optimiser(trees, g)
end


