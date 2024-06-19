using Statistics;

single_arith = [
    # Polynomials
    Problem([IOExample(Dict(:x => x), x^2) for x ∈ 1:5]),
    Problem([IOExample(Dict(:x => x), x^3) for x ∈ 1:5]),
    Problem([IOExample(Dict(:x => x), 2^x) for x ∈ 1:5]),
    Problem([IOExample(Dict(:x => x), 3^x) for x ∈ 1:5]),
    # Problem([IOExample(Dict(:x => x), x^2 + 2x) for x ∈ 1:5]),
    # Problem([IOExample(Dict(:x => x), 2x^2) for x ∈ 1:5]),
    # Problem([IOExample(Dict(:x => x), 4x^2 - 5x) for x ∈ 1:5]),
    # Problem([IOExample(Dict(:x => x), x^3 - 3x^2 + 2x) for x ∈ 1:5]),
    # Problem([IOExample(Dict(:x => x), 2x^3) for x ∈ 1:5]),
    # Problem([IOExample(Dict(:x => x), 3x^3 + 4x^2) for x ∈ 1:5]),
    # Problem([IOExample(Dict(:x => x), 4x^3 - 5x^2 + 6x) for x ∈ 1:5]),
    # Problem([IOExample(Dict(:x => x), x^4 - 4x^3 + 6x^2 - 4x) for x ∈ 1:5]),
    # Problem([IOExample(Dict(:x => x), 2x^4) for x ∈ 1:5]),
    # Problem([IOExample(Dict(:x => x), 3x^4 + 2x^3) for x ∈ 1:5]),
    # Problem([IOExample(Dict(:x => x), 4x^4 - 3x^3 + 2x^2) for x ∈ 1:5]),
    # Problem([IOExample(Dict(:x => x), x^2 / 2) for x ∈ 1:5]),
    # Problem([IOExample(Dict(:x => x), x^4 / 4) for x ∈ 1:5]),
    # Problem([IOExample(Dict(:x => x), (x^2 + 2x) / 2) for x ∈ 1:5]),
    # # Factorials
    # Problem([IOExample(Dict(:x => x), factorial(x)) for x ∈ 1:10]),
    # Problem([IOExample(Dict(:x => x), factorial(x) + 3) for x ∈ 1:10]),
    # Problem([IOExample(Dict(:x => x), 2*factorial(x)) for x ∈ 1:10]),
    # Problem([IOExample(Dict(:x => x), factorial(x)/2) for x ∈ 1:10]),
    # # # Integer Powers
    # Problem([IOExample(Dict(:x => x), x^2) for x ∈ 1:10]),
    # Problem([IOExample(Dict(:x => x), x^3 + 5) for x ∈ 1:10]),
    # Problem([IOExample(Dict(:x => x), x + x^4 - 3) for x ∈ 1:10]),
    # Problem([IOExample(Dict(:x => x), x^5 + x) for x ∈ 1:10]),
    # Problem([IOExample(Dict(:x => x), x^6 - 2) for x ∈ 1:10]),
    # # # Exponential Functions
    # Problem([IOExample(Dict(:x => x), 2^x) for x ∈ 1:10]),
    # Problem([IOExample(Dict(:x => x), 3^x + 1) for x ∈ 1:10]),
    # Problem([IOExample(Dict(:x => x), 5^x - 2) for x ∈ 1:10]),
    # Problem([IOExample(Dict(:x => x), 2^(x+1)) for x ∈ 1:10]),
    # Problem([IOExample(Dict(:x => x), 4^x * 2) for x ∈ 1:10]),
]

dual_bool_arith = [
    # Mean
    Problem(
        [IOExample(Dict{Symbol, Any}(:x => 3, :y => 5), middle(3,5)),
        IOExample(Dict{Symbol, Any}(:x => 4, :y => 8), middle(4,8)),
        IOExample(Dict{Symbol, Any}(:x => 2, :y => 9), middle(2,9)),
        IOExample(Dict{Symbol, Any}(:x => 1, :y => 3), middle(1,3)),
        IOExample(Dict{Symbol, Any}(:x => 4, :y => 4), middle(4,4)),
        IOExample(Dict{Symbol, Any}(:x => 6, :y => 0), middle(6,0))],
        )
]

