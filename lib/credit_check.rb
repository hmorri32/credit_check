
class LuhnStuff
  def initialize(cc_number)
    @cc_number = cc_number
  end

  def splitter(string)
    string.split("")
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
    split           = splitter(@cc_number)
    as_ints         = integers(split)
    reversed        = reverse_it(as_ints)
    by_two          = every_other_times_two(reversed)
    added_over_ten  = add_over_ten(by_two)
    total           = add_all_digits(added_over_ten)
    puts total % 10 == 0 ? 'valid' : 'not'
  end
end



# validate(card_number)
# validate("342804633855673")
# validate("342801633855673")