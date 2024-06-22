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
    Problem([IOExample(Dict(:x => x), 2x^3 - 3x^2 - 5) for x ∈ 1:5]),
    Problem([IOExample(Dict(:x => x), x + x^2 + 4) for x ∈ 1:5]),
    Problem([IOExample(Dict(:x => x), 2x - x^2 - 3) for x ∈ 1:5]),
    Problem([IOExample(Dict(:x => x), x^3 - x^2 - x) for x ∈ 1:5]),
    Problem([IOExample(Dict(:x => x), x - 2x^2 + 3) for x ∈ 1:5]),
    Problem([IOExample(Dict(:x => x), 2x^2 - 3x) for x ∈ 1:5])
]

dual_bool_arith = [
    # Variations for problem 1
    Problem([IOExample(Dict(:x => x, :y => y), x > y ? x + y : x - y) for x ∈ 1:3 for y ∈ 1:3]),
    Problem([IOExample(Dict(:x => x, :y => y), x > y ? x + y + 1 : x - y - 1) for x ∈ 1:3 for y ∈ 1:3]),
    Problem([IOExample(Dict(:x => x, :y => y), x > y ? x + y * 2 : x - y * 2) for x ∈ 1:3 for y ∈ 1:3]),
    Problem([IOExample(Dict(:x => x, :y => y), x > y ? (x + y) * 2 : (x - y) * 2) for x ∈ 1:3 for y ∈ 1:3]),
    Problem([IOExample(Dict(:x => x, :y => y), x > y ? x + y : x > 2 ? x - y : y - x) for x ∈ 1:3 for y ∈ 1:3]),

    # Variations for problem 2
    Problem([IOExample(Dict(:x => x, :y => y), x <= y ? x * y : x / y) for x ∈ 1:3 for y ∈ 1:3]),
    Problem([IOExample(Dict(:x => x, :y => y), x <= y ? x * y + 1 : x / y + 1) for x ∈ 1:3 for y ∈ 1:3]),
    Problem([IOExample(Dict(:x => x, :y => y), x <= y ? x * y * 2 : x / (y + 1)) for x ∈ 1:3 for y ∈ 1:3]),
    Problem([IOExample(Dict(:x => x, :y => y), x <= y ? (x * y) / 2 : (x + y) / 2) for x ∈ 1:3 for y ∈ 1:3]),
    Problem([IOExample(Dict(:x => x, :y => y), x <= y ? x * y : x < 2 ? x / y : x - y) for x ∈ 1:3 for y ∈ 1:3]),

    # Variations for problem 3
    Problem([IOExample(Dict(:x => x, :y => y), x == y ? x + 5 : y + 5) for x ∈ 1:3 for y ∈ 1:3]),
    Problem([IOExample(Dict(:x => x, :y => y), x == y ? x + 6 : y + 4) for x ∈ 1:3 for y ∈ 1:3]),
    Problem([IOExample(Dict(:x => x, :y => y), x == y ? x * 2 + 5 : y * 2 + 5) for x ∈ 1:3 for y ∈ 1:3]),
    Problem([IOExample(Dict(:x => x, :y => y), x == y ? (x + 5) * 2 : (y + 5) * 2) for x ∈ 1:3 for y ∈ 1:3]),
    Problem([IOExample(Dict(:x => x, :y => y), x == y ? x + 5 : x > y ? x + 3 : y + 3) for x ∈ 1:3 for y ∈ 1:3]),

    # Variations for problem 4
    Problem([IOExample(Dict(:x => x, :y => y), x != y ? x * 2 : y * 2) for x ∈ 1:3 for y ∈ 1:3]),
    Problem([IOExample(Dict(:x => x, :y => y), x != y ? x * 3 : y * 3) for x ∈ 1:3 for y ∈ 1:3]),
    Problem([IOExample(Dict(:x => x, :y => y), x != y ? x * 2 + 1 : y * 2 + 1) for x ∈ 1:3 for y ∈ 1:3]),
    Problem([IOExample(Dict(:x => x, :y => y), x != y ? (x + 1) * 2 : (y + 1) * 2) for x ∈ 1:3 for y ∈ 1:3]),
    Problem([IOExample(Dict(:x => x, :y => y), x != y ? x * 2 : x > 2 ? y * 3 : y * 2) for x ∈ 1:3 for y ∈ 1:3]),

    # Variations for problem 5
    Problem([IOExample(Dict(:x => x, :y => y), x >= y ? x - y : y - x) for x ∈ 1:3 for y ∈ 1:3]),
    Problem([IOExample(Dict(:x => x, :y => y), x >= y ? x - y + 1 : y - x + 1) for x ∈ 1:3 for y ∈ 1:3]),
    Problem([IOExample(Dict(:x => x, :y => y), x >= y ? (x - y) * 2 : (y - x) * 2) for x ∈ 1:3 for y ∈ 1:3]),
    Problem([IOExample(Dict(:x => x, :y => y), x >= y ? x - y / 2 : y - x / 2) for x ∈ 1:3 for y ∈ 1:3]),
    Problem([IOExample(Dict(:x => x, :y => y), x >= y ? x - y : x > 1 ? y - x : x + y) for x ∈ 1:3 for y ∈ 1:3]),

    # Variations for problem 6
    Problem([IOExample(Dict(:x => x, :y => y), x < y ? (x + y) * 2 : (x - y) * 2) for x ∈ 1:3 for y ∈ 1:3]),
    Problem([IOExample(Dict(:x => x, :y => y), x < y ? (x + y) * 3 : (x - y) * 3) for x ∈ 1:3 for y ∈ 1:3]),
    Problem([IOExample(Dict(:x => x, :y => y), x < y ? (x + y) * 2 + 1 : (x - y) * 2 + 1) for x ∈ 1:3 for y ∈ 1:3]),
    Problem([IOExample(Dict(:x => x, :y => y), x < y ? (x + y + 1) * 2 : (x - y + 1) * 2) for x ∈ 1:3 for y ∈ 1:3]),
    Problem([IOExample(Dict(:x => x, :y => y), x < y ? (x + y) * 2 : x > 2 ? (x - y) * 3 : (x - y) * 2) for x ∈ 1:3 for y ∈ 1:3]),

    # Variations for problem 7
    Problem([IOExample(Dict(:x => x, :y => y), (x > y ? x : y) + (x < y ? x : y)) for x ∈ 1:3 for y ∈ 1:3]),
    Problem([IOExample(Dict(:x => x, :y => y), (x > y ? x + 1 : y + 1) + (x < y ? x + 1 : y + 1)) for x ∈ 1:3 for y ∈ 1:3]),
    Problem([IOExample(Dict(:x => x, :y => y), (x > y ? x * 2 : y * 2) + (x < y ? x * 2 : y * 2)) for x ∈ 1:3 for y ∈ 1:3]),
    Problem([IOExample(Dict(:x => x, :y => y), (x > y ? x : y) * 2 + (x < y ? x : y)) for x ∈ 1:3 for y ∈ 1:3]),
    Problem([IOExample(Dict(:x => x, :y => y), (x > y ? x : y > 2 ? y * 2 : y) + (x < y ? x : y < 2 ? y * 2 : y)) for x ∈ 1:3 for y ∈ 1:3]),

    # Variations for problem 8
    Problem([IOExample(Dict(:x => x, :y => y), x > 10 && y > 10 ? x + y : x * y) for x ∈ 1:3 for y ∈ 1:3]),
    Problem([IOExample(Dict(:x => x, :y => y), x > 9 && y > 9 ? x + y + 1 : x * y + 1) for x ∈ 1:3 for y ∈ 1:3]),
    Problem([IOExample(Dict(:x => x, :y => y), x > 11 && y > 11 ? x + y * 2 : x * y * 2) for x ∈ 1:3 for y ∈ 1:3]),
    Problem([IOExample(Dict(:x => x, :y => y), x > 10 && y > 10 ? (x + y) / 2 : (x * y) / 2) for x ∈ 1:3 for y ∈ 1:3]),
    Problem([IOExample(Dict(:x => x, :y => y), x > 10 && y > 10 ? x + y : x > y ? x * y : y * x) for x ∈ 1:3 for y ∈ 1:3]),

    # Variations for problem 9
    Problem([IOExample(Dict(:x => x, :y => y), x < 0 || y < 0 ? x - y : x + y) for x ∈ 1:3 for y ∈ 1:3]),
    Problem([IOExample(Dict(:x => x, :y => y), x < 1 || y < 1 ? x - y + 1 : x + y + 1) for x ∈ 1:3 for y ∈ 1:3]),
    Problem([IOExample(Dict(:x => x, :y => y), x < 0 || y < 0 ? x - y * 2 : x + y * 2) for x ∈ 1:3 for y ∈ 1:3]),
    Problem([IOExample(Dict(:x => x, :y => y), x < 0 || y < 0 ? (x - y) * 2 : (x + y) * 2) for x ∈ 1:3 for y ∈ 1:3]),
    Problem([IOExample(Dict(:x => x, :y => y), x < 0 || y < 0 ? x - y : x < 2 ? x + y : x * y) for x ∈ 1:3 for y ∈ 1:3]),

    # Variations for problem 10
    Problem([IOExample(Dict(:x => x, :y => y), x == 0 ? y * 2 : (y == 0 ? x * 2 : x + y)) for x ∈ 1:3 for y ∈ 1:3]),
    Problem([IOExample(Dict(:x => x, :y => y), x == 0 ? y * 3 : (y == 0 ? x * 3 : x + y + 1)) for x ∈ 1:3 for y ∈ 1:3]),
    Problem([IOExample(Dict(:x => x, :y => y), x == 0 ? y * 2 + 1 : (y == 0 ? x * 2 + 1 : x * y)) for x ∈ 1:3 for y ∈ 1:3]),
    Problem([IOExample(Dict(:x => x, :y => y), x == 0 ? (y + 1) * 2 : (y == 0 ? (x + 1) * 2 : (x + y) / 2)) for x ∈ 1:3 for y ∈ 1:3]),
    Problem([IOExample(Dict(:x => x, :y => y), x == 0 ? y * 2 : (y == 0 ? x * 2 : x > y ? x + y : y + x)) for x ∈ 1:3 for y ∈ 1:3]),

    # Variations for problem 11
    Problem([IOExample(Dict(:x => x, :y => y), (x > y ? x : y) - (x < y ? x : y)) for x ∈ 1:3 for y ∈ 1:3]),
    Problem([IOExample(Dict(:x => x, :y => y), (x > y ? x + 1 : y + 1) - (x < y ? x + 1 : y + 1)) for x ∈ 1:3 for y ∈ 1:3]),
    Problem([IOExample(Dict(:x => x, :y => y), (x > y ? x * 2 : y * 2) - (x < y ? x * 2 : y * 2)) for x ∈ 1:3 for y ∈ 1:3]),
    Problem([IOExample(Dict(:x => x, :y => y), ((x > y ? x : y) - (x < y ? x : y)) * 2) for x ∈ 1:3 for y ∈ 1:3]),
    Problem([IOExample(Dict(:x => x, :y => y), (x > y ? x : y > 2 ? y * 2 : y) - (x < y ? x : y < 2 ? y * 2 : y)) for x ∈ 1:3 for y ∈ 1:3]),

    # Variations for problem 12
    Problem([IOExample(Dict(:x => x, :y => y), x * y > 0 ? x + y : x - y) for x ∈ 1:3 for y ∈ 1:3]),
    Problem([IOExample(Dict(:x => x, :y => y), x * y > 1 ? x + y + 1 : x - y + 1) for x ∈ 1:3 for y ∈ 1:3]),
    Problem([IOExample(Dict(:x => x, :y => y), x * y > 3 ? x + y * 2 : x - y * 2) for x ∈ 1:3 for y ∈ 1:3]),
    Problem([IOExample(Dict(:x => x, :y => y), x * y > 0 ? (x + y) * 2 : (x - y) * 2) for x ∈ 1:3 for y ∈ 1:3]),
    Problem([IOExample(Dict(:x => x, :y => y), x * y > 4 ? x + y : x - y) for x ∈ 1:3 for y ∈ 1:3]),
    
    # Variations for problem 13
    Problem([IOExample(Dict(:x => x, :y => y), x > y ? x / (y + 1) : y / (x + 1)) for x ∈ 1:3 for y ∈ 1:3]),
    Problem([IOExample(Dict(:x => x, :y => y), x > y ? x / (y + 2) : y / (x + 2)) for x ∈ 1:3 for y ∈ 1:3]),
    Problem([IOExample(Dict(:x => x, :y => y), x > y ? (x + 1) / (y + 1) : (y + 1) / (x + 1)) for x ∈ 1:3 for y ∈ 1:3]),
    Problem([IOExample(Dict(:x => x, :y => y), x > y ? x / (y + 3) + 1 : y / (x + 4) + 1) for x ∈ 1:3 for y ∈ 1:3]),
    Problem([IOExample(Dict(:x => x, :y => y), x > y ? x / (y + 1) : x == y ? 1 : y / (x + 1)) for x ∈ 1:3 for y ∈ 1:3]),

    # Variations for problem 14
    Problem([IOExample(Dict(:x => x, :y => y), x == y ? x * y : (x > y ? x - y : y - x)) for x ∈ 1:3 for y ∈ 1:3]),
    Problem([IOExample(Dict(:x => x, :y => y), x == y ? x * y + 1 : (x > y ? x - y + 1 : y - x + 1)) for x ∈ 1:3 for y ∈ 1:3]),
    Problem([IOExample(Dict(:x => x, :y => y), x == y ? x * y * 2 : (x > y ? (x - y) * 2 : (y - x) * 2)) for x ∈ 1:3 for y ∈ 1:3]),
    Problem([IOExample(Dict(:x => x, :y => y), x == y ? (x + y) * y : (x > y ? x - y / 2 : y - x / 2)) for x ∈ 1:3 for y ∈ 1:3]),
    Problem([IOExample(Dict(:x => x, :y => y), x == y ? x * y : (x > y ? x - y : x < 2 ? y - x : x + y)) for x ∈ 1:3 for y ∈ 1:3]),

    # Variations for problem 15
    Problem([IOExample(Dict(:x => x, :y => y), (x > 0 ? x : -x) + (y > 0 ? y : -y)) for x ∈ 1:3 for y ∈ 1:3]),
    Problem([IOExample(Dict(:x => x, :y => y), (x > 0 ? x + 1 : -x + 1) + (y > 0 ? y + 1 : -y + 1)) for x ∈ 1:3 for y ∈ 1:3]),
    Problem([IOExample(Dict(:x => x, :y => y), (x > 0 ? x * 2 : -x * 2) + (y > 0 ? y * 2 : -y * 2)) for x ∈ 1:3 for y ∈ 1:3]),
    Problem([IOExample(Dict(:x => x, :y => y), ((x > 0 ? x : -x) + (y > 0 ? y : -y)) * 2) for x ∈ 1:3 for y ∈ 1:3]),
    Problem([IOExample(Dict(:x => x, :y => y), (x > 0 ? x : x < -1 ? -x * 2 : -x) + (y > 0 ? y : y < -1 ? -y * 2 : -y)) for x ∈ 1:3 for y ∈ 1:3]),

    # Variations for problem 16
    Problem([IOExample(Dict(:x => x, :y => y), x + y > 10 ? x * y : x + y) for x ∈ 1:3 for y ∈ 1:3]),
    Problem([IOExample(Dict(:x => x, :y => y), x + y > 9 ? x * y + 1 : x + y + 1) for x ∈ 1:3 for y ∈ 1:3]),
    Problem([IOExample(Dict(:x => x, :y => y), x + y > 10 ? x * y * 2 : (x + y) * 2) for x ∈ 1:3 for y ∈ 1:3]),
    Problem([IOExample(Dict(:x => x, :y => y), x + y > 10 ? x * y / 2 : (x + y) / 2) for x ∈ 1:3 for y ∈ 1:3]),
    Problem([IOExample(Dict(:x => x, :y => y), x + y > 10 ? x * y : x > y ? x + y : y + x) for x ∈ 1:3 for y ∈ 1:3]),

    # Variations for problem 17
    Problem([IOExample(Dict(:x => x, :y => y), x > 2 * y ? x - y : y - x) for x ∈ 1:3 for y ∈ 1:3]),
    Problem([IOExample(Dict(:x => x, :y => y), x > 2 * y ? x - y + 1 : y - x + 1) for x ∈ 1:3 for y ∈ 1:3]),
    Problem([IOExample(Dict(:x => x, :y => y), x > 2 * y ? (x - y) * 2 : (y - x) * 2) for x ∈ 1:3 for y ∈ 1:3]),
    Problem([IOExample(Dict(:x => x, :y => y), x > 2 * y ? x - y / 2 : y - x / 2) for x ∈ 1:3 for y ∈ 1:3]),
    Problem([IOExample(Dict(:x => x, :y => y), x > 2 * y ? x - y : x > y ? y - x : x + y) for x ∈ 1:3 for y ∈ 1:3]),

    # Variations for problem 18
    Problem([IOExample(Dict(:x => x, :y => y), x * y == 0 ? x + y : x * y) for x ∈ 1:3 for y ∈ 1:3]),
    Problem([IOExample(Dict(:x => x, :y => y), x * y == 0 ? x + y + 1 : x * y + 1) for x ∈ 1:3 for y ∈ 1:3]),
    Problem([IOExample(Dict(:x => x, :y => y), x * y == 0 ? (x + y) * 2 : x * y * 2) for x ∈ 1:3 for y ∈ 1:3]),
    Problem([IOExample(Dict(:x => x, :y => y), x * y == 0 ? (x + y) / 2 : x * y / 2) for x ∈ 1:3 for y ∈ 1:3]),
    Problem([IOExample(Dict(:x => x, :y => y), x * y == 0 ? x + y : x > y ? x * y : y * x) for x ∈ 1:3 for y ∈ 1:3]),

    # Variations for problem 19
    Problem([IOExample(Dict(:x => x, :y => y), (x > y ? x : y) * (x < y ? x : y)) for x ∈ 1:3 for y ∈ 1:3]),
    Problem([IOExample(Dict(:x => x, :y => y), (x > y ? x + 1 : y + 1) * (x < y ? x + 1 : y + 1)) for x ∈ 1:3 for y ∈ 1:3]),
    Problem([IOExample(Dict(:x => x, :y => y), (x > y ? x * 2 : y * 2) * (x < y ? x * 2 : y * 2)) for x ∈ 1:3 for y ∈ 1:3]),
    Problem([IOExample(Dict(:x => x, :y => y), ((x > y ? x : y) * (x < y ? x : y)) + 1) for x ∈ 1:3 for y ∈ 1:3]),
    Problem([IOExample(Dict(:x => x, :y => y), (x > y ? x : y > 2 ? y * 2 : y) * (x < y ? x : y < 2 ? y * 2 : y)) for x ∈ 1:3 for y ∈ 1:3]),

    # Variations for problem 20
    Problem([IOExample(Dict(:x => x, :y => y), x == y ? (x + y) * 2 : (x > y ? x - y : y - x)) for x ∈ 1:3 for y ∈ 1:3]),
    Problem([IOExample(Dict(:x => x, :y => y), x == y ? (x + y) * 3 : (x > y ? x - y + 1 : y - x + 1)) for x ∈ 1:3 for y ∈ 1:3]),
    Problem([IOExample(Dict(:x => x, :y => y), x == y ? (x + y) * 2 + 1 : (x > y ? (x - y) * 2 : (y - x) * 2)) for x ∈ 1:3 for y ∈ 1:3]),
    Problem([IOExample(Dict(:x => x, :y => y), x == y ? ((x + y) * 2) / 2 : (x > y ? x - y / 2 : y - x / 2)) for x ∈ 1:3 for y ∈ 1:3]),
    Problem([IOExample(Dict(:x => x, :y => y), x == y ? (x + y) * 2 : (x > y ? x - y : x < 2 ? y - x : x + y)) for x ∈ 1:3 for y ∈ 1:3])
]