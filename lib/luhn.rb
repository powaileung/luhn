module Luhn
  def self.is_valid?(number)
    digits = number.to_s.split('').map(&:to_i)
    num = digits.reverse
    num1 = num.map.with_index do |x, y|
      if y.odd?
        x *= 2
        if x >= 10
          x -= 9
        end
      end
      x
    end
    sum = num1.inject(:+)
    if sum % 10 == 0
      return true
    else
      return false
    end
  end
end
