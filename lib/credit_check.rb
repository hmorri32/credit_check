card_number = "4929735477250543"

def integers(arr)
  arr.map(&:to_i)
end

def times_two(arr)
  arr.map.with_index {|num, i| i.even? ? num * 2 : num }
end

def add_over_ten(arr)
  arr.map { |num| num >= 10 ? num = 1 + (num - 10) : num }
end

def sum_all_digits(arr)
  arr.reduce(:+)
end

def validate(numbers)
  split      = numbers.split("")
  int        = integers(split)
  doubled    = times_two(int)
  added      = add_over_ten(doubled)
  total      = sum_all_digits(added)
  total % 10 == 0 ? "ultra valid" : "def not"
end




# def validate(numbers)
#   total = numbers.split("")
#                  .map(&:to_i)
#                  .map.with_index { |num, i| i.even? ? num * 2 : num }
#                  .map { |num| num >= 10 ? num = 1 + (num - 10) : num }
#                  .reduce(:+) 
                 
#   puts total % 10 == 0 ? "ultra valid" : "def not"
# end


validate(card_number)