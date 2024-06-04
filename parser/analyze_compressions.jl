
# take assign(A, X) grom the parse_output
# for each assign(A, X) --> look up which compression belongs to it (by comp_root)
# increment counter of compression
# for compression score: compression_counter/compression_size (how often is the compression used)
# and maybe convert back to Herb tree language

Comp_Counter = Dict{Int64, Int64}()

# dict should be a dictionary with compression_node_id as key and compression_root as value
# compressed_AST should be a list of "assign(A, X)" strings
function analyze_AST_singular(d, compressed_AST)
    for assign in compressed_AST
        # compression node is index #8 in assign
        comp_node = parse(Int64, (SubString(assign, 8, 8)))
        comp_id = d[comp_node]
        println("comp id is ", comp_id)
        if haskey(Comp_Counter, comp_id)
            Comp_Counter[comp_id] = Comp_Counter[comp_id] + 1
        else
            Comp_Counter[comp_id] = 1
        end
    end
end

### example
# compression node with id 2 is part of the subtree with id 10
d = Dict(1 => 9, 2 => 10, 4 => 10)
# compression node with id 2 is assigned to ast node with id 3
c_ast = ["assign(2, 3)", "assign(4, 5)", "assign(1, 0)"]

analyze_AST_singular(d, c_ast)

println("comp counter")
println(Comp_Counter)


