using Pkg; 
Pkg.add("Test"); Pkg.add("FileIO"); 
using Test; using FileIO; 

function run_command(command)
    run(`$command`)
end

function files_equal(file1::String, file2::String)
    open(file1, "r") do f1
        open(file2, "r") do f2
            return read(f1, String) == read(f2, String)
        end
    end
end


path_input_parser = "../parser/parse_input.jl"
path_output_parser = "../parser/parse_output.jl" 
path_test = "test_inputs/"
path_output = "temp_outputs/"
path_expected = "expected_outputs/"

function temp_cleanup()
    # command = `rm -f $(path_output)"*"`
    run(`rm -r $(path_output)`)
    run(`mkdir $(path_output)`)
end

@testset "Parser Tests" begin
    # Run the command
    # command = `julia ` * path_input_parser * path_test * `parser_input1.json ` * path_output * `parser_output1.lp`
    test1 = `julia $(path_input_parser) $(path_test)parser_input1.json $(path_output)parser_output1.lp`
    run(test1)
    
    # Compare the output file with the expected output
    @test files_equal(path_output * "parser_output1.lp", path_expected * "parser_output1.lp")

    # Clean up the temp directory
    temp_cleanup()
end