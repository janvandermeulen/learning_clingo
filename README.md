# learning_clingo
A repo to practice with using clingo.

### Running the parser 
To run the parser pass the following command:
- ```julia parser.jl <input_string> > input.lp```
This command will generate the input.lp file that can be used to run the clingo command.
- Example: 
```julia parser.jl "4{1,2,3{10,11,12},4}" > input.lp```

### Running clingo
To run some examples you can run it using the clingo command. 
```clingo <encoding> <instance>```
```clingo examples/toh_enc.lp examples/toh_ins.lp```
### Notes
- Problems should be solved in a with a uniform problem description. 