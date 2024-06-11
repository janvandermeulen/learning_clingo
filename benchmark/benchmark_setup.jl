import Pkg; Pkg.add("CSV"); Pkg.add("DataFrames");
using CSV; using DataFrames;

g = @cfgrammar begin
    Number = |(1:2)
    Number = x
    Number = Number + Number 
    Number = Number * Number
end

path_model = "../parser/parse_input.jl"
function setup_benchmark()
    trees = []
    # Generate trees with the grammar
    random_tree = rand(RuleNode, g, 5)
    for i in 1:50
        push!(trees, random_tree)
    end
    # Find all subtrees 
    
    # Write the trees and all subtrees to a file - TODO: change this to parse to json and have the right input
    ast = CSV.read("inputs/ast.csv", DataFrame)
    ast_input = ast[:, 1] # Get the input column from the dataframe
    for (i, ast) in enumerate(ast_input)
        path = "inputs/ast_input_$i.txt"
        print("writing ast $i to file: " * ast * "\n")
        # Casting to IOBuffer otherwise the "{" and "}" cause issues
        open(path, "w") do file
            write(file, IOBuffer(String(ast))) 
        end
    end
    # Call clingo 

end



setup_benchmark()