# Running
To run the example input the following commands.
- ```julia ../parser/parse_input.jl sample_input.json clingo_input.lp```
- ```clingo ../models/model.lp clingo_input.lp --outf=2 > clingo_output.json```
- ```julia ../parser/parse_output.jl clingo_output.json ```
This will print out the result of running the ```sample_input.json``` in the terminal.