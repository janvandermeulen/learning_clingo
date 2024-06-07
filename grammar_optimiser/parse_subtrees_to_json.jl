import Pkg; Pkg.add("JSON")
using HerbSearch, HerbCore, HerbSpecification, HerbInterpret, HerbGrammar, JSON

function parse_subtrees_to_json(subtrees::Vector{Any}, tree::RuleNode, id::Int)
    modified_subtrees = []
    for i in 1:length(subtrees)
        str = string(subtrees[i])
        modified_string = replace(str, r"hole\[Bool\[[^\]]*\]\]" => "_")
        push!(modified_subtrees, modified_string)
    end

    result = Dict(
        "ast" => string(tree),
        "subtrees" => modified_subtrees
    )

    json_string = JSON.json(result)

    path = Sys.iswindows() ? "grammar_optimiser/inputs/parser_input$(id).json" : "inputs/parser_input$(id).json"

    open(path, "w") do file
        write(file, json_string)
    end
end