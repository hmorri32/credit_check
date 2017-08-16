require_relative 'credit_check'

card  = CreditCheck.new("4929735477250543")
amex1 = CreditCheck.new("342804633855673")
amex2 = CreditCheck.new("342801633855673")

card.validate
amex1.validate
amex2.validate