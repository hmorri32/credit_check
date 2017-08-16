require 'minitest/autorun'
require 'minitest/pride'
require './lib/credit_check'

class UnitTests < Minitest::Test

  def setup
    @card         = CreditCheck.new("4929735477250543")
    @valid_amex   = CreditCheck.new("342804633855673")
    @invalid_amex = CreditCheck.new("342801633855673")
  end
  
  def test_card_existence
    assert_instance_of CreditCheck, @card
    assert_instance_of CreditCheck, @valid_amex
    assert_instance_of CreditCheck, @invalid_amex
  end

  def test_splitter
    split = @card.splitter("4929735477250543")
    assert_equal ["4", "9", "2", "9", "7", "3", "5", "4", "7", "7", "2", "5", "0", "5", "4", "3"], split
  end

  def test_integers
    ints = @card.integers(["1", "2", "3"])
    assert_equal [1,2,3], ints 
  end

  def test_reverse_method
    reversed = @card.reverse_it([1, 2, 3])
    assert_equal [3, 2, 1], reversed
  end

  def test_every_other_doubler
    doubled = @card.every_other_times_two([1, 2, 3, 4, 5])
    assert_equal [1, 4, 3, 8, 5], doubled
  end

  def test_add_over_ten
    summed = @card.add_over_ten([12, 2, 13])
    assert_equal [3, 2, 4], summed
  end

  def test_add_all_digits 
    sum = @card.add_all_digits([1, 2, 3, 4, 5, 6])
    assert_equal 21, sum 
  end
end

class Integration < Minitest::Test
  def setup
    @card  = CreditCheck.new("4929735477250543")
    @amex1 = CreditCheck.new("342804633855673")
    @amex2 = CreditCheck.new("342801633855673")
  end

  def test_card_validity
    @card.validate
    assert @card.valid
  end

  def test_amex1_validity
    @amex1.validate
    assert @amex1.valid
  end
  
  def test_amex1_validity
    @amex2.validate
    refute @amex2.valid
  end
end
  