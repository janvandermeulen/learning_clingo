import Pkg; Pkg.add("JSON")
using HerbSearch, HerbCore, HerbSpecification, HerbInterpret, HerbGrammar, JSON

function parse_subtrees_to_json(subtrees::Vector{Any}, tree::RuleNode, id::Int)
    println(subtrees)
    modified_subtrees = []
    for i in 1:length(subtrees)
        str = string(subtrees[i])[5:end-1]
        modified_string = replace(str, r"hole\[Bool\[[^\]]*\]\]" => "_")
        println(str)
        push!(modified_subtrees, modified_string)
    end

    result = Dict(
        "ast" => string(tree),
        "subtrees" => modified_subtrees
    )

    json_string = JSON.json(result)

    open("inputs/parser_input$(id).json", "w") do file
        write(file, json_string)
    end
end