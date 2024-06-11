using Pkg; Pkg.add("JSON")
using JSON

# Provide the path to the JSON file from the directory where you execute the script
# E.g. if running from the root of this directory: julia models/output_parser.jl test_output.json
# json_file = ARGS[1]
function read_json(json_file)
    json_content = read(json_file, String)
    json_parsed = JSON.parse(json_content)

    witnesses = json_parsed["Call"][1]["Witnesses"]
    last_witness = witnesses[end]
    last_value = last_witness["Value"] #The best solution found
    return last_value
end
