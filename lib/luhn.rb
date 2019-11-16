module Luhn
  def self.is_valid?(number)
    #break credit card into individual digits
    #double every other digit
    nums = []
    digits = number.to_s.split('').map(&:to_i) 
    digits.reverse.each_with_index do |x, y|
      if y % 2 == 0
        double_val = x * 2
        nums.push(double_val) 
      else
        nums.push(x)
      end
    end
    
    
    nums.map do |i|
      if i >= 10
        i - 9
      end
    end

    
    sum = nums.inject(:+)
    
    return sum % 10 == 0
  end
end
