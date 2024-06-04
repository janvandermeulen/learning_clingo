import Pkg; Pkg.add("CSV"); Pkg.add("DataFrames");
using CSV; using DataFrames;

function setup_benchmark()
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
end

setup_benchmark()