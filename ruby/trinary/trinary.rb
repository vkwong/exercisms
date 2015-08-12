class Trinary

  attr_reader :digits

  def initialize(str)
    @digits = str.reverse.chars.collect(&:to_i)
  end

  def to_decimal
    str = 0
    digits.each_with_index do |digit, i|
      str += digit * (3 ** i)
    end
    str
  end

end