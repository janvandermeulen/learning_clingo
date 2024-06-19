single_arith_grammar = @cfgrammar begin
    Number = |(1:2)
    Number = x
    Number = Number + Number 
    Number = Number - Number
    Number = Number * Number
    Number = Number / Number
    # Number = √Complex(Number)
end

dual_arith_bool_grammar = @cfgrammar begin
    Number = |(1:2)
    Number = x
    Number = y
    Number = Number + Number 
    Number = Number - Number
    Number = Number * Number
    Number = Number / Number
end

base_grammar = @cfgrammar begin
    Number = |(1:2)
    Number = x
    Number = Number + Number 
    Number = Number * Number
end