# CVC5 functions

## String typed
concat_cvc(str1::String, str2::String) = str1 * str2

replace_cvc(mainstr::String, to_replace::String, replace_with::String) = replace(mainstr, to_replace => replace_with)

at_cvc(str::String, index::Int) = str[index]

int_to_str_cvc(n::Int) = "$n"

substr_cvc(str::String, start_index::Int, end_index::Int) = str[start_index:end_index]

# Int typed
len_cvc(str::String) = length(str)

str_to_int_cvc(str::String) = parse(Int64, str)

indexof_cvc(str::String, substring::String, index::Int) = (n = findfirst(substring, str); n == nothing ? -1 : (n[1] >= index ? n[1] : -1))

# Bool typed
prefixof_cvc(prefix::String, str::String) = startswith(str, prefix)

suffixof_cvc(suffix::String, str::String) = endswith(str, suffix)

contains_cvc(str::String, contained::String) = contains(str, contained)

lt_cvc(str1::String, str2::String) = cmp(str1, str2) < 0

leq_cvc(str1::String, str2::String) = cmp(str1, str2) <= 0

isdigit_cvc(str::String) = tryparse(Int, str) !== nothing

