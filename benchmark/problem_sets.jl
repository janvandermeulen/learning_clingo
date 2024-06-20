using Statistics;

single_arith = [
    Problem([IOExample(Dict(:x => x), x^2) for x ∈ 1:5]),
    Problem([IOExample(Dict(:x => x), x^3) for x ∈ 10:15]),
    Problem([IOExample(Dict(:x => x), 2^x) for x ∈ 1:3]),
    Problem([IOExample(Dict(:x => x), 3^x) for x ∈ 2:3]),
    Problem([IOExample(Dict(:x => x), x^2 + 2x) for x ∈ 5:10]),
    Problem([IOExample(Dict(:x => x), 2x^2) for x ∈ 1:5]),
    Problem([IOExample(Dict(:x => x), 4x^2 - 5) for x ∈ 1:3]),
    Problem([IOExample(Dict(:x => x), x^3 - 2x^2 + 3) for x ∈ 1:5]),
    Problem([IOExample(Dict(:x => x), x^3 - 3x^2 + 2x) for x ∈ 1:5]),
    Problem([IOExample(Dict(:x => x), 2x^3) for x ∈ 1:5]),
    Problem([IOExample(Dict(:x => x), 3x^3 + 4x^2) for x ∈ 1:5]),
    Problem([IOExample(Dict(:x => x), 2x^3 + 2) for x ∈ 1:3]),
    Problem([IOExample(Dict(:x => x), x^3 - x^2 + x) for x ∈ 1:5]),
    Problem([IOExample(Dict(:x => x), x^2 - x - 4) for x ∈ 2:5]),
    Problem([IOExample(Dict(:x => x), 2x^4) for x ∈ 17:21]),
    Problem([IOExample(Dict(:x => x), 5x^2 + 2x + 1) for x ∈ 1:3]),
    Problem([IOExample(Dict(:x => x), x^3 + 2x + 2) for x ∈ 1:5]),
    Problem([IOExample(Dict(:x => x), 4x^3 - 3x + 2x) for x ∈ 1:5]),
    Problem([IOExample(Dict(:x => x), x^2 / 2) for x ∈ 1:5]),
    Problem([IOExample(Dict(:x => x), x^4 / 4) for x ∈ 14:20]),
    Problem([IOExample(Dict(:x => x), (x^2 + 2x) / 2) for x ∈ 1:5]),
    Problem([IOExample(Dict(:x => x), factorial(x)) for x ∈ 1:2]),
    Problem([IOExample(Dict(:x => x), x^2 + 4x) for x ∈ 1:10]),
    Problem([IOExample(Dict(:x => x), 2*factorial(x)) for x ∈ 1:2]),
    Problem([IOExample(Dict(:x => x), 3x^2 + 4x + 1) for x ∈ 1:5]),
    Problem([IOExample(Dict(:x => x), x^2) for x ∈ 5:10]),
    Problem([IOExample(Dict(:x => x), x^3) for x ∈ 3:9]),
    Problem([IOExample(Dict(:x => x), x + x^3) for x ∈ 1:3]),
    Problem([IOExample(Dict(:x => x), x^5 + x) for x ∈ 1:5]),
    Problem([IOExample(Dict(:x => x), x^6 - 2) for x ∈ 1:4]),
    Problem([IOExample(Dict(:x => x), x^3 + 2x^2) for x ∈ 1:5]),
    Problem([IOExample(Dict(:x => x), 2x^2 - 3x) for x ∈ 1:5]),
    Problem([IOExample(Dict(:x => x), x^3 - 4x + 3) for x ∈ 1:5]),
    Problem([IOExample(Dict(:x => x), 3x^2 + x - 2) for x ∈ 1:5]),
    Problem([IOExample(Dict(:x => x), x^3 - 2x^2 - 4) for x ∈ 1:5]),
    Problem([IOExample(Dict(:x => x), 2x^3 + 3x - 5) for x ∈ 1:5]),
    Problem([IOExample(Dict(:x => x), x^2 + 6x) for x ∈ 1:5]),
    Problem([IOExample(Dict(:x => x), 4x^3 - 2x + 3) for x ∈ 1:5]),
    Problem([IOExample(Dict(:x => x), x^3 + x^2 - 3) for x ∈ 1:5]),
    Problem([IOExample(Dict(:x => x), 2x^4 - x^2 + 4) for x ∈ 1:5]),
    Problem([IOExample(Dict(:x => x), x^3 + 3x^2 - 2) for x ∈ 1:5]),
    Problem([IOExample(Dict(:x => x), 3x^2 + 4x - 1) for x ∈ 1:5]),
    Problem([IOExample(Dict(:x => x), x^3 - x^2 + 1) for x ∈ 1:5]),
    Problem([IOExample(Dict(:x => x), 2x^3 - 4x^2 + 5) for x ∈ 1:5]),
    Problem([IOExample(Dict(:x => x), x^2 - 3x + 2) for x ∈ 1:5]),
    Problem([IOExample(Dict(:x => x), 4x^3 - 2x + 3) for x ∈ 1:5]),
    Problem([IOExample(Dict(:x => x), x^3 + 2x - 4) for x ∈ 1:5]),
    Problem([IOExample(Dict(:x => x), 3x^3 - 2x^2 - x) for x ∈ 1:5]),
    Problem([IOExample(Dict(:x => x), x^3 - x + 2) for x ∈ 1:5]),
    Problem([IOExample(Dict(:x => x), 2x^2 + 3x + 5) for x ∈ 1:5]),
    Problem([IOExample(Dict(:x => x), x^3 - 2x + 4) for x ∈ 1:5]),
    Problem([IOExample(Dict(:x => x), 3x^3 - 4x^2 + x) for x ∈ 1:5]),
    Problem([IOExample(Dict(:x => x), x^2 - 3x - 4) for x ∈ 1:5]),
    Problem([IOExample(Dict(:x => x), 2x^3 + x^2 - 2x - 3) for x ∈ 1:5]),
    Problem([IOExample(Dict(:x => x), x^3 + 2x^2 - 4x + 5) for x ∈ 1:5]),
    Problem([IOExample(Dict(:x => x), 3x^2 - 2x + 4) for x ∈ 1:5]),
    Problem([IOExample(Dict(:x => x), x^3 + 3x^2 + 2x - 4) for x ∈ 1:5]),
    Problem([IOExample(Dict(:x => x), 2x^3 - x^2 - 3x + 2) for x ∈ 1:5]),
    Problem([IOExample(Dict(:x => x), x^3 + 4x^2 + 3x - 2) for x ∈ 1:5]),
    Problem([IOExample(Dict(:x => x), 3x^3 - 2x^2 - x + 4) for x ∈ 1:5]),
    Problem([IOExample(Dict(:x => x), x^3) for x ∈ 1:5]),
    Problem([IOExample(Dict(:x => x), 2x^2) for x ∈ 1:5]),
    Problem([IOExample(Dict(:x => x), x^2 - 4) for x ∈ 1:5]),
    Problem([IOExample(Dict(:x => x), 3x + 2) for x ∈ 1:5]),
    Problem([IOExample(Dict(:x => x), x^3 - 2x) for x ∈ 1:5]),
    Problem([IOExample(Dict(:x => x), 2x^2 + 5) for x ∈ 1:5]),
    Problem([IOExample(Dict(:x => x), x^2 + 6x) for x ∈ 1:5]),
    Problem([IOExample(Dict(:x => x), 4x^3 - 3) for x ∈ 1:5]),
    Problem([IOExample(Dict(:x => x), x^3 + 2) for x ∈ 1:5]),
    Problem([IOExample(Dict(:x => x), 2x^3 - x^2) for x ∈ 1:5]),
    Problem([IOExample(Dict(:x => x), x^2 + 3x - 2) for x ∈ 1:5]),
    Problem([IOExample(Dict(:x => x), 3x^2 + 4) for x ∈ 1:5]),
    Problem([IOExample(Dict(:x => x), x^3 - 1) for x ∈ 1:5]),
    Problem([IOExample(Dict(:x => x), 2x^3 - 4x) for x ∈ 1:5]),
    Problem([IOExample(Dict(:x => x), x^2 - 3) for x ∈ 1:5]),
    Problem([IOExample(Dict(:x => x), 4x^3 + 2x) for x ∈ 1:5]),
    Problem([IOExample(Dict(:x => x), x^3 + 2x - 4) for x ∈ 1:5]),
    Problem([IOExample(Dict(:x => x), 3x^2 - 2x - 1) for x ∈ 1:5]),
    Problem([IOExample(Dict(:x => x), x^3 - x + 2) for x ∈ 1:5]),
    Problem([IOExample(Dict(:x => x), 2x^2 + 3) for x ∈ 1:5]),
    Problem([IOExample(Dict(:x => x), x^2 - 2x + 4) for x ∈ 1:5]),
    Problem([IOExample(Dict(:x => x), 3x^3 - 4x) for x ∈ 1:5]),
    Problem([IOExample(Dict(:x => x), x^3 - 3x^2 - 4) for x ∈ 1:5]),
    Problem([IOExample(Dict(:x => x), 2x^3 + x - 3) for x ∈ 1:5]),
    Problem([IOExample(Dict(:x => x), x^2 + 2x - 1) for x ∈ 1:5]),
    Problem([IOExample(Dict(:x => x), 3x^2 - 2) for x ∈ 1:5]),
    Problem([IOExample(Dict(:x => x), x^3 + 3x^2 + 2) for x ∈ 1:5]),
    Problem([IOExample(Dict(:x => x), 2x^2 - x + 3) for x ∈ 1:5]),
    Problem([IOExample(Dict(:x => x), x^3 + 4x^2 - 2) for x ∈ 1:5]),
    Problem([IOExample(Dict(:x => x), 3x^3 - 2x - 1) for x ∈ 1:5]),
    Problem([IOExample(Dict(:x => x), x^3 + 2x^2 - 3x) for x ∈ 1:5]),
    Problem([IOExample(Dict(:x => x), 2x^2 - 4x + 5) for x ∈ 1:5]),
    Problem([IOExample(Dict(:x => x), x^3 - 4x - 3) for x ∈ 1:5]),
    Problem([IOExample(Dict(:x => x), 3x^2 + x - 2) for x ∈ 1:5]),
    Problem([IOExample(Dict(:x => x), x^3 - 2x^2 - 4) for x ∈ 1:5]),
    Problem([IOExample(Dict(:x => x), 2x^3 + 3x - 5) for x ∈ 1:5]),
    Problem([IOExample(Dict(:x => x), x^3 + x^2 - 3) for x ∈ 1:5]),
    Problem([IOExample(Dict(:x => x), 2x^3 - x^2 + 4) for x ∈ 1:5]),
    Problem([IOExample(Dict(:x => x), x^3 + 3x^2 - 2) for x ∈ 1:5]),
    Problem([IOExample(Dict(:x => x), 3x^2 + 4x - 1) for x ∈ 1:5]),
    Problem([IOExample(Dict(:x => x), x^3 - x^2 + 1) for x ∈ 1:5]),
    Problem([IOExample(Dict(:x => x), 2x^3 - 4x^2 + 5) for x ∈ 1:5]),
    Problem([IOExample(Dict(:x => x), x^2 - 3x + 2) for x ∈ 1:5]),
    Problem([IOExample(Dict(:x => x), x^3 + 2x - 4) for x ∈ 1:5]),
    Problem([IOExample(Dict(:x => x), 3x^3 - 2x^2 - x) for x ∈ 1:5]),
    Problem([IOExample(Dict(:x => x), x^3 - x + 2) for x ∈ 1:5]),
    Problem([IOExample(Dict(:x => x), 2x^2 + 3x + 5) for x ∈ 1:5]),
    Problem([IOExample(Dict(:x => x), x^3 - 2x + 4) for x ∈ 1:5]),
    Problem([IOExample(Dict(:x => x), 3x^3 - 4x^2 + x) for x ∈ 1:5]),
    Problem([IOExample(Dict(:x => x), x^2 - 3x - 4) for x ∈ 1:5]),
    Problem([IOExample(Dict(:x => x), 2x^3 + x^2 - 2x - 3) for x ∈ 1:5]),
    Problem([IOExample(Dict(:x => x), x^3 + 2x^2 - 4x + 5) for x ∈ 1:5]),
    Problem([IOExample(Dict(:x => x), 3x^2 - 2x + 4) for x ∈ 1:5]),
    Problem([IOExample(Dict(:x => x), x^3 + 3x^2 + 2x - 4) for x ∈ 1:5]),
    Problem([IOExample(Dict(:x => x), 2x^3 - x^2 - 3x + 2) for x ∈ 1:5]),
    Problem([IOExample(Dict(:x => x), x^3 + 4x^2 + 3x - 2) for x ∈ 1:5]),
    Problem([IOExample(Dict(:x => x), 3x^3 - 2x^2 - x + 4) for x ∈ 1:5]),
    Problem([IOExample(Dict(:x => x), x^3 + x^2 - x + 1) for x ∈ 1:5]),
    Problem([IOExample(Dict(:x => x), 2x^3 + 3x^2 - 4x + 5) for x ∈ 1:5]),
    Problem([IOExample(Dict(:x => x), x^3 - 3x^2 + 2x - 1) for x ∈ 1:5]),
    Problem([IOExample(Dict(:x => x), 4x^3 - 2x^2 + 3x - 1) for x ∈ 1:5]),
    Problem([IOExample(Dict(:x => x), x^3 + 2x^2 - 3x + 4) for x ∈ 1:5]),
    Problem([IOExample(Dict(:x => x), 3x^3 + 4x^2 - 2x - 1) for x ∈ 1:5]),
    Problem([IOExample(Dict(:x => x), x^3 - x^2 + x - 2) for x ∈ 1:5]),
    Problem([IOExample(Dict(:x => x), 2x^3 + 3x^2 + 4x + 5) for x ∈ 1:5]),
    Problem([IOExample(Dict(:x => x), x^3 - 2x^2 - 3x + 4) for x ∈ 1:5]),
    Problem([IOExample(Dict(:x => x), 3x^3 + 2x^2 - 4x + 1) for x ∈ 1:5]),
    Problem([IOExample(Dict(:x => x), x^3 - 3x^2 + 5x - 4) for x ∈ 1:5]),
    Problem([IOExample(Dict(:x => x), 2x^3 + x^2 - 2x - 3) for x ∈ 1:5]),
    Problem([IOExample(Dict(:x => x), x^3 + 2x^2 + 3x - 4) for x ∈ 1:5]),
    Problem([IOExample(Dict(:x => x), 3x^3 - 2x^2 + 4x - 5) for x ∈ 1:5]),
    Problem([IOExample(Dict(:x => x), x^3 + 3x^2 + 2x - 4) for x ∈ 1:5]),
    Problem([IOExample(Dict(:x => x), 2x^3 - x^2 - 3x + 2) for x ∈ 1:5]),
    Problem([IOExample(Dict(:x => x), x^3 + 4x^2 + 3x - 2) for x ∈ 1:5]),
    Problem([IOExample(Dict(:x => x), 3x^3 - 2x^2 - x + 4) for x ∈ 1:5]),
    Problem([IOExample(Dict(:x => x), x^3 - 4x^2 + 2x + 3) for x ∈ 1:5]),
    Problem([IOExample(Dict(:x => x), 3x^3 + x^2 - 2x - 1) for x ∈ 1:5]),
    Problem([IOExample(Dict(:x => x), x^3 - 2x^2 + x - 4) for x ∈ 1:5]),
    Problem([IOExample(Dict(:x => x), 2x^3 + 3x^2 - x + 5) for x ∈ 1:5]),
    Problem([IOExample(Dict(:x => x), x^3 - 5x^2 + 6x - 2) for x ∈ 1:5]),
    Problem([IOExample(Dict(:x => x), x^3 + x^2 - 3x + 2) for x ∈ 1:5]),
    Problem([IOExample(Dict(:x => x), 2x^3 - x^2 + 4x - 3) for x ∈ 1:5]),
    Problem([IOExample(Dict(:x => x), x^3 + 3x^2 - 2x + 4) for x ∈ 1:5]),
    Problem([IOExample(Dict(:x => x), 3x^3 - 2x^2 + 4x - 1) for x ∈ 1:5]),
    Problem([IOExample(Dict(:x => x), 2x^3 - 3x^2 + 4x - 5) for x ∈ 1:5])
]

dual_bool_arith = [
    Problem([IOExample(Dict(:x => x, :y => y), x + y) for x ∈ 1:3 for y ∈ 1:3]), #1
    Problem([IOExample(Dict(:x => x, :y => y), middle(x,y)) for (x,y) ∈ Set([(1, 3), (2, 4), (3, 5), (1, 9), (3, 7)])]), #2
    Problem([IOExample(Dict(:x => x, :y => y), min(x, y)) for (x,y) ∈ Set([(1, 3), (4, 2), (3, 5), (9, 1), (3, 7)])]), #3
    Problem([IOExample(Dict(:x => x, :y => y), max(x, y)) for (x,y) ∈ Set([(1, 3), (2, 4), (6, 5), (1, 4), (3, 1)])]), #4
    # Some Arithmetic - polynomials
    Problem([IOExample(Dict(:x => x, :y => y), x^2 + y) for x ∈ 1:3 for y ∈ 1:3]), #5
    Problem([IOExample(Dict(:x => x, :y => y), 2x^2 - y) for x ∈ 1:3 for y ∈ 1:3]), #6
    Problem([IOExample(Dict(:x => x, :y => y), x^2 - 2y) for x ∈ 1:3 for y ∈ 1:3]), #7
    Problem([IOExample(Dict(:x => x, :y => y), 2x^2 - 2y) for x ∈ 1:3 for y ∈ 1:3]), #8
    Problem([IOExample(Dict(:x => x, :y => y), x^2 + 2y^2) for x ∈ 1:3 for y ∈ 1:3]), #9
    Problem([IOExample(Dict(:x => x, :y => y), 2x^2 + 2y^2) for x ∈ 1:3 for y ∈ 1:3]), #10
    Problem([IOExample(Dict(:x => x, :y => y), x^2 - 2y^2) for x ∈ 1:3 for y ∈ 1:3]), #11
    # Some arithmetic with division
    Problem([IOExample(Dict(:x => x, :y => y), x^2 / y) for x ∈ 1:3 for y ∈ 1:3]), #12
    Problem([IOExample(Dict(:x => x, :y => y), x^2 / y^2) for x ∈ 1:3 for y ∈ 1:3]), #13
    Problem([IOExample(Dict(:x => x, :y => y), x^2 / 2) for x ∈ 1:3 for y ∈ 1:3]), #14
    Problem([IOExample(Dict(:x => x, :y => y), x^2 / 2y) for x ∈ 1:3 for y ∈ 1:3]), #15
    Problem([IOExample(Dict(:x => x, :y => y), x^2 / (y + 1)) for x ∈ 1:3 for y ∈ 1:3]), #16
    Problem([IOExample(Dict(:x => x, :y => y), x^2 / (y - 1)) for x ∈ 1:3 for y ∈ 1:3]), #17
    # Some arithmetic with multiplication
    Problem([IOExample(Dict(:x => x, :y => y), x^2 * y) for x ∈ 1:3 for y ∈ 1:3]), #18 
    Problem([IOExample(Dict(:x => x, :y => y), x * y^2) for x ∈ 1:3 for y ∈ 1:3]), #19 
    Problem([IOExample(Dict(:x => x, :y => y), x^2 * y^2) for x ∈ 1:3 for y ∈ 1:3]), #20
    Problem([IOExample(Dict(:x => x, :y => y), x^2 * 2) for x ∈ 1:3 for y ∈ 1:3]), #21
    Problem([IOExample(Dict(:x => x, :y => y), x^2 * 2y) for x ∈ 1:3 for y ∈ 1:3]), #22
    # Some easy arithmetic together with mean, min and max
    Problem([IOExample(Dict(:x => x, :y => y), middle(x, y) + 1) for (x,y) ∈ Set([(1, 3), (2, 4), (3, 5), (1, 9), (3, 7)])]), #23
    Problem([IOExample(Dict(:x => x, :y => y), min(x, y) + 1) for (x,y) ∈ Set([(1, 3), (4, 2), (3, 5), (9, 1), (3, 7)])]), #24
    Problem([IOExample(Dict(:x => x, :y => y), max(x, y) + 1) for (x,y) ∈ Set([(1, 3), (2, 4), (6, 5), (1, 4), (3, 1)])]), #25
    Problem([IOExample(Dict(:x => x, :y => y), middle(x, y) - 1) for (x,y) ∈ Set([(1, 3), (2, 4), (3, 5), (1, 9), (3, 7)])]), #26
    Problem([IOExample(Dict(:x => x, :y => y), min(x, y) - 1) for (x,y) ∈ Set([(1, 3), (4, 2), (3, 5), (9, 1), (3, 7)])]), #27
    Problem([IOExample(Dict(:x => x, :y => y), max(x, y) - 1) for (x,y) ∈ Set([(1, 3), (2, 4), (6, 5), (1, 4), (3, 1)])]), #28
    Problem([IOExample(Dict(:x => x, :y => y), middle(x, y) * 2) for (x,y) ∈ Set([(1, 3), (2, 4), (3, 5), (1, 9), (3, 7)])]), #29
    Problem([IOExample(Dict(:x => x, :y => y), min(x, y) * x) for (x,y) ∈ Set([(1, 3), (4, 2), (3, 5), (9, 1), (3, 7)])]), #30
    Problem([IOExample(Dict(:x => x, :y => y), max(x, y) * y) for (x,y) ∈ Set([(1, 3), (2, 4), (6, 5), (1, 4), (3, 1)])]), #31
    Problem([IOExample(Dict(:x => x, :y => y), middle(x, y) / 2) for (x,y) ∈ Set([(1, 3), (2, 4), (3, 5), (1, 9), (3, 7)])]), #32
    Problem([IOExample(Dict(:x => x, :y => y), min(x, y) / x) for (x,y) ∈ Set([(1, 3), (4, 2), (3, 5), (9, 1), (3, 7)])]), #33
    Problem([IOExample(Dict(:x => x, :y => y), max(x, y) / y) for (x,y) ∈ Set([(1, 3), (2, 4), (6, 5), (1, 4), (3, 1)])]), #34
    # Absolute difference
    Problem([IOExample(Dict(:x => x, :y => y), abs(x - y)) for x ∈ 1:3 for y ∈ 1:3]), #35
    # Boolean logic
    Problem([IOExample(Dict(:x => x, :y => y), x ? 1 : 2) for x ∈ true:false]), #36
    Problem([IOExample(Dict(:x => x, :y => y), x ? y : 2) for (x, y) ∈ Set([(true, 1), (true, 2), (false, 1), (false, 2)])]), #37
    Problem([IOExample(Dict(:x => x, :y => y), x ? 1 : y) for (x, y) ∈ Set([(true, 1), (true, 3), (false, 1), (false, 2)])]), #38
    Problem([IOExample(Dict(:x => x, :y => y), x ? y : y) for (x, y) ∈ Set([(true, 1), (true, 3), (false, 1), (false, 2)])]), #39
    Problem([IOExample(Dict(:x => x, :y => y), x ? y^2 : y) for (x, y) ∈ Set([(true, 1), (true, 3), (false, 1), (false, 2)])]), #40    
    # Boolean logic with y as boolean and x as integer
    Problem([IOExample(Dict(:x => x, :y => y), y ? x : 2) for (x, y) ∈ Set([(1, true), (2, true), (1, false), (2, false)])]), #41
    Problem([IOExample(Dict(:x => x, :y => y), y ? 1 : x) for (x, y) ∈ Set([(1, true), (2, true), (1, false), (2, false)])]), #42
    Problem([IOExample(Dict(:x => x, :y => y), y ? x : x) for (x, y) ∈ Set([(1, true), (2, true), (1, false), (2, false)])]), #43
    Problem([IOExample(Dict(:x => x, :y => y), y ? x^2 : x) for (x, y) ∈ Set([(1, true), (2, true), (1, false), (2, false)])]), #44
    # Boolean logic with x and y as integer, using x > y and x = y operators
    Problem([IOExample(Dict(:x => x, :y => y), x > y ? 1 : 2) for x ∈ 1:3 for y ∈ 1:3]), #45
    Problem([IOExample(Dict(:x => x, :y => y), x > y ? x : 2) for x ∈ 1:3 for y ∈ 1:3]), #46
    Problem([IOExample(Dict(:x => x, :y => y), x > y ? 1 : y) for x ∈ 1:3 for y ∈ 1:3]), #47
    Problem([IOExample(Dict(:x => x, :y => y), x > y ? y : 2) for x ∈ 1:3 for y ∈ 1:3]), #48
    Problem([IOExample(Dict(:x => x, :y => y), x == y ? 1 : 2) for x ∈ 1:3 for y ∈ 1:3]), #49
    Problem([IOExample(Dict(:x => x, :y => y), x == y ? x : 2) for x ∈ 1:3 for y ∈ 1:3]), #50
    Problem([IOExample(Dict(:x => x, :y => y), x == y ? 1 : y) for x ∈ 1:3 for y ∈ 1:3]), #51
    Problem([IOExample(Dict(:x => x, :y => y), x == y ? y : 4) for x ∈ 1:3 for y ∈ 1:3]), #52
    # More complex boolean logic
    Problem([IOExample(Dict(:x => x, :y => y), x^2 > y ? 1 : y) for x ∈ 1:3 for y ∈ 1:3]), #53
    Problem([IOExample(Dict(:x => x, :y => y), x^2 > y ? x : 2) for x ∈ 1:3 for y ∈ 1:3]), #54
    Problem([IOExample(Dict(:x => x, :y => y), x^2 == y ? 1 : 2) for x ∈ 1:3 for y ∈ 1:3]), #55
    Problem([IOExample(Dict(:x => x, :y => y), x + 2 == y^2  ? x : 2) for x ∈ 1:3 for y ∈ 1:3]), #56
    Problem([IOExample(Dict(:x => x, :y => y), x + 2 == y^2  ? 1 : y) for x ∈ 1:3 for y ∈ 1:3]), #57
    Problem([IOExample(Dict(:x => x, :y => y), x + 2 == y^2  ? x : y) for x ∈ 1:3 for y ∈ 1:3]), #58
    # 59-68: Additional Arithmetic Operations with Mean
    Problem([IOExample(Dict(:x => x, :y => y), middle(x, y) + x) for (x,y) ∈ Set([(1, 3), (2, 4), (3, 5), (1, 9), (3, 7)])]), #59
    Problem([IOExample(Dict(:x => x, :y => y), middle(x, y) + y) for (x,y) ∈ Set([(1, 3), (2, 4), (3, 5), (1, 9), (3, 7)])]), #60
    Problem([IOExample(Dict(:x => x, :y => y), middle(x, y) - x) for (x,y) ∈ Set([(1, 3), (2, 4), (3, 5), (1, 9), (3, 7)])]), #61
    Problem([IOExample(Dict(:x => x, :y => y), middle(x, y) - y) for (x,y) ∈ Set([(1, 3), (2, 4), (3, 5), (1, 9), (3, 7)])]), #62
    Problem([IOExample(Dict(:x => x, :y => y), middle(x, y) * x) for (x,y) ∈ Set([(1, 3), (2, 4), (3, 5), (1, 9), (3, 7)])]), #63
    Problem([IOExample(Dict(:x => x, :y => y), middle(x, y) * y) for (x,y) ∈ Set([(1, 3), (2, 4), (3, 5), (1, 9), (3, 7)])]), #64
    Problem([IOExample(Dict(:x => x, :y => y), middle(x, y) / x) for (x,y) ∈ Set([(1, 3), (2, 4), (3, 5), (1, 9), (3, 7)])]), #65
    Problem([IOExample(Dict(:x => x, :y => y), middle(x, y) / y) for (x,y) ∈ Set([(1, 3), (2, 4), (3, 5), (1, 9), (3, 7)])]), #66
    Problem([IOExample(Dict(:x => x, :y => y), (middle(x, y) + 1) * 2) for (x,y) ∈ Set([(1, 3), (2, 4), (3, 5), (1, 9), (3, 7)])]), #67
    Problem([IOExample(Dict(:x => x, :y => y), (middle(x, y) - 1) / 2) for (x,y) ∈ Set([(1, 3), (2, 4), (3, 5), (1, 9), (3, 7)])]), #68
    # 69-78: More Complex Polynomial Operations
    Problem([IOExample(Dict(:x => x, :y => y), x^3 + y^2) for x ∈ 1:3 for y ∈ 1:3]), #69
    Problem([IOExample(Dict(:x => x, :y => y), x^3 - y^2) for x ∈ 1:3 for y ∈ 1:3]), #70
    Problem([IOExample(Dict(:x => x, :y => y), x^3 * y^2) for x ∈ 1:3 for y ∈ 1:3]), #71
    Problem([IOExample(Dict(:x => x, :y => y), x^3 / y^2) for x ∈ 1:3 for y ∈ 1:3]), #72
    Problem([IOExample(Dict(:x => x, :y => y), 3x^2 + 2y^2) for x ∈ 1:3 for y ∈ 1:3]), #73
    Problem([IOExample(Dict(:x => x, :y => y), 3x^2 - 2y^2) for x ∈ 1:3 for y ∈ 1:3]), #74
    Problem([IOExample(Dict(:x => x, :y => y), 3x^2 * 2y^2) for x ∈ 1:3 for y ∈ 1:3]), #75
    Problem([IOExample(Dict(:x => x, :y => y), 3x^2 / 2y^2) for x ∈ 1:3 for y ∈ 1:3]), #76
    Problem([IOExample(Dict(:x => x, :y => y), x^3 + 2y) for x ∈ 1:3 for y ∈ 1:3]), #77
    Problem([IOExample(Dict(:x => x, :y => y), 2x^3 - y) for x ∈ 1:3 for y ∈ 1:3]), #78
    # 79-82: Operations with Absolute Differences
    Problem([IOExample(Dict(:x => x, :y => y), abs(x^2 - y)) for x ∈ 1:3 for y ∈ 1:3]), #79
    Problem([IOExample(Dict(:x => x, :y => y), abs(x^2 - y^2)) for x ∈ 1:3 for y ∈ 1:3]), #80
    Problem([IOExample(Dict(:x => x, :y => y), abs(x^3 - y^2)) for x ∈ 1:3 for y ∈ 1:3]), #81
    Problem([IOExample(Dict(:x => x, :y => y), abs(x^3 - y^3)) for x ∈ 1:3 for y ∈ 1:3]), #82
    # 83-88: Operations with powers of x and y
    Problem([IOExample(Dict(:x => x, :y => y), x^y) for x ∈ 1:2 for y ∈ 1:2]), #83
    Problem([IOExample(Dict(:x => x, :y => y), y^x) for x ∈ 1:2 for y ∈ 1:2]), #84
    Problem([IOExample(Dict(:x => x, :y => y), x^y + y^x) for x ∈ 1:2 for y ∈ 1:2]), #85
    Problem([IOExample(Dict(:x => x, :y => y), x^y - y^x) for x ∈ 1:2 for y ∈ 1:2]), #86
    Problem([IOExample(Dict(:x => x, :y => y), 2x^y * y^x) for x ∈ 1:2 for y ∈ 1:2]), #87
    Problem([IOExample(Dict(:x => x, :y => y), 2x^y / y^x) for x ∈ 1:2 for y ∈ 1:2]), #88
    # 89 - 100: I'm out of inspiration, some random cases
    Problem([IOExample(Dict(:x => x, :y => y), x^2 + y^2) for x ∈ 1:3 for y ∈ 1:3]), #89
    Problem([IOExample(Dict(:x => x, :y => y), x^2 - y^2) for x ∈ 1:3 for y ∈ 1:3]), #90
    Problem([IOExample(Dict(:x => x, :y => y), x^2 * y^2) for x ∈ 1:3 for y ∈ 1:3]), #91
    Problem([IOExample(Dict(:x => x, :y => y), x^2 / y^2) for x ∈ 1:3 for y ∈ 1:3]), #92
    Problem([IOExample(Dict(:x => x, :y => y), 2x - 2y) for x ∈ 1:3 for y ∈ 1:3]), #93
    Problem([IOExample(Dict(:x => x, :y => y), 2x + 2y) for x ∈ 1:3 for y ∈ 1:3]), #94
    Problem([IOExample(Dict(:x => x, :y => y), 2x * 2y) for x ∈ 1:3 for y ∈ 1:3]), #95
    Problem([IOExample(Dict(:x => x, :y => y), 2x / 2y) for x ∈ 1:3 for y ∈ 1:3]), #96
    Problem([IOExample(Dict(:x => x, :y => y), x^3 + 2y) for x ∈ 1:3 for y ∈ 1:3]), #97
    Problem([IOExample(Dict(:x => x, :y => y), 2x^3 - y) for x ∈ 1:3 for y ∈ 1:3]), #98
    Problem([IOExample(Dict(:x => x, :y => y), x^3 + y^2) for x ∈ 1:3 for y ∈ 1:3]), #99
    Problem([IOExample(Dict(:x => x, :y => y), x^3 - y^2) for x ∈ 1:3 for y ∈ 1:3]), #100
]   

single_bool = [
    # Mean
    Problem(
        [IOExample(Dict(:x => 0), 2),
        IOExample(Dict(:x => 1), 3),
        IOExample(Dict(:x => 2), 1)],
        )
]
