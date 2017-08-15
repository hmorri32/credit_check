card_number = "4929735477250543"

def validate(numbers)
  total = numbers.split("")
                 .map(&:to_i)
                 .map.with_index { |num, i| i.even? ? num * 2 : num }
                 .map { |num| num >= 10 ? num = 1 + (num - 10) : num }
                 .reduce(:+) 
                 
  total % 10 == 0 ? "ultra valid" : "def not"
end

validate(card_number)