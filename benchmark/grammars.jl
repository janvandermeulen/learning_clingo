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

bool_grammar = @csgrammar begin
    Element = Number # 1
    Element = Bool # 2

    Number = |(1 : 3) # 3-5
    
    Number = Number + Number # 6
    Bool = Number ≡ Number # 7
    Number = x # 8
    
    Number = Bool ? Number : Number # 9
    Bool = Bool ? Bool : Bool # 10
end