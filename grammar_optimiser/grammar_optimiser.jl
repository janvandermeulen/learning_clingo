import Pkg; 
Pkg.add("HerbCore"); using HerbCore
include("get_subtrees.jl")
include("parse_subtrees_to_json.jl")
include("parse_input.jl")
include("parse_output.jl")

function run_command(command)
    run(`$command`)
end

function grammar_optimiser(trees::Vector{RuleNode}, grammar::AbstractGrammar)
    start_time = time()
    print("Stage 1: Select subtrees\n")     # 1a. Select subtrees 
    subtree_set = Vector{Any}()
    for tree in trees
        test = time()
        (subtrees_root, other_subtrees) = select_subtrees(tree, g)
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
    for i in 1:length(trees)
        input_location = Sys.iswindows() ? "grammar_optimiser/inputs/parser_input$(i).json" : "inputs/parser_input$(i).json"
        output_location = Sys.iswindows() ? "grammar_optimiser/clingo_inputs/model_input$(i).lp" : "clingo_inputs/model_input$(i).lp"
        parse_json(input_location, output_location)
    end
    print("Time for stage 2 : " * string(time() - start_time) * "\n"); start_time = time()
    print("Stage 3: call clingo\n")
    # 3. Call clingo 
    model_location = Sys.iswindows() ? "grammar_optimiser/model.lp" : "model.lp"
    for i in 1:length(trees)
        input_location = Sys.iswindows() ? "grammar_optimiser/clingo_inputs/model_input$(i).lp" : "clingo_inputs/model_input$(i).lp"
        output_location = Sys.iswindows() ? "grammar_optimiser/outputs/clingo_output$(i).json" : "outputs/clingo_output$(i).json"
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
        input_location = Sys.iswindows() ? "grammar_optimiser/outputs/clingo_output$(i).json" : "outputs/clingo_output$(i).json"
        push!(best_values, read_json(input_location))
    end
    for value in best_values
        print("Best value: " * string(value) * "\n")
    end
    # 5. Analyse clingo output
end

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

