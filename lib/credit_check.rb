require_relative 'credit_methods'

class CreditCheck
  attr_reader :valid

  def initialize(cc_number)
    @cc_number = cc_number
    @valid     = false
    @methods   = CreditMethods.new
  end

  def validate
    split           = @methods.splitter(@cc_number)
    as_ints         = @methods.integers(split)
    reversed        = @methods.reverse_it(as_ints)
    by_two          = @methods.every_other_times_two(reversed)
    added_over_ten  = @methods.add_over_ten(by_two)
    total           = @methods.add_all_digits(added_over_ten)
    puts total % 10 == 0 ? @valid = true : @valid
  end
end