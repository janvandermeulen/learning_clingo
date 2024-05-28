# Parsing


### Input parsing
The parser takes as an input a file in the formal of ```sample_input.json``` and can be called by running: 
- ```julia parse_input.jl <input_location.json> <output_location.txt>```
- ```julia parse_input.jl examples/sample_input.json examples/sample_clingo_input.lp```
It will then create an input for the clingo solver. 

### Output parsing
By running adding the ```--outf=2``` flag you can parse it into a json format. Run the output parser by: 
- ```julia output_parser.jl <clingo_output.json>```
For example: 
- ```clingo ../models/test_model_large.lp --outf=2 > examples/sample_clingo_output.json```
- ```julia parse_output.jl examples/sample_clingo_output.json```
The parser will have to be modified based on what the iterator needs later on. 