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
    Element = Number # 1
    Element = Bool # 2
    # Number logic
    Number = |(1:2) # 3-4
    # Bool = true
    # Bool = false
    # Bool = |(true:false) # 5-6
    Number = x # 7
    Number = y # 8
    Number = Number + Number # 9
    Number = Number - Number # 10
    Number = Number * Number # 11
    Number = Number / Number # 12 
    # Bool logic
    # Bool = Number ≡ Number # 13
    Bool = Number > Number # 14
    Number = Bool ? Number : Number # 15
    Bool = Bool ? Bool : Bool # 16
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
    Number = Number - Number # 7
    Bool = Number ≡ Number # 8
    Number = x # 9
    
    Number = Bool ? Number : Number # 10
    Bool = Bool ? Bool : Bool # 11
end