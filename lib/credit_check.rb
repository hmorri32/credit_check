card_number = "4929735477250543"

class LuhnStuff
  attr_accessor :cc_number  

  def initialize(cc_number)
    @cc_number = cc_number
  end

  def splitter(arr)
    arr.split("")
  end

  def integers(arr)
    arr.map(&:to_i)
  end

  def reverse_it(arr)
    arr.reverse
  end

  def every_other_times_two(arr)
    arr.map.with_index {|num, i| i.odd? ? num * 2 : num }
  end

  def add_over_ten(arr)
    arr.map { |num| num >= 10 ? num - 9  : num }
  end

  def add_all_digits(arr)
    arr.reduce(:+)
  end

  def validate
    split          = splitter(@cc_number)
    as_ints        = integers(split)
    reversed       = reverse_it(as_ints)
    by_two         = every_other_times_two(reversed)
    added_over_ten = add_over_ten(by_two)
    total          = add_all_digits(added_over_ten)
    puts total % 10 == 0 ? 'valid' : 'not'
  end

end



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

# def validate(cc)
#   total = cc.split("")
#             .map(&:to_i)
#             .reverse
#             .map.with_index { |num, i| i.odd? ? num * 2 : num }
#             .map { |num| num >= 10 ? num - 9 : num }
#             .reduce(:+) 
                 
#   puts total % 10 == 0 ? "ultra valid" : "def not"
# end

card1 = LuhnStuff.new("342804633855673")
card1.validate

# validate(card_number)
# validate("342804633855673")
# validate("342801633855673")