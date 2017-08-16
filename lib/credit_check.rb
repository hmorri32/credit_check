card_number = "4929735477250543"

# def integers(arr)
#   arr.map(&:to_i)
# end

# def reverse_arr(arr)
#   arr.reverse
# end

# def times_two(arr)
#   arr.map.with_index {|num, i| i.odd? ? num * 2 : num }
# end

# def add_over_ten(arr)
#   arr.map { |num| num >= 10 ? num - 9  : num }
# end

# def sum_all_digits(arr)
#   arr.reduce(:+)
# end

# def validate(numbers)
#   split      = numbers.split("")
#   int        = integers(split)
#   reversed   = reverse_arr(int)
#   doubled    = times_two(reversed)
#   added      = add_over_ten(doubled)
#   total      = sum_all_digits(added)
#   puts total % 10 == 0 ? "ultra valid" : "def not"
# end

def validate(numbers)
  total = numbers.split("")
                 .map(&:to_i)
                 .reverse
                 .map.with_index { |num, i| i.odd? ? num * 2 : num }
                 .map { |num| num >= 10 ? num -9 : num }
                 .reduce(:+) 
                 
  puts total % 10 == 0 ? "ultra valid" : "def not"
end


validate(card_number)
validate("342804633855673")
validate("342801633855673")