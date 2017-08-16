require_relative 'credit_check'

card_number = "4929735477250543"
card  = LuhnStuff.new("4929735477250543")
amex1 = LuhnStuff.new("342804633855673")
amex2 = LuhnStuff.new("342801633855673")
card.validate
amex1.validate
amex2.validate




# validate(card_number)
# validate("342804633855673")
# validate("342801633855673")