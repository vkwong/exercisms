class Hexadecimal

  def values
  {
    '0' => 0,
    '1' => 1,
    '2' => 2,
    '3' => 3,
    '4' => 4,
    '5' => 5,
    '6' => 6,
    '7' => 7,
    '8' => 8,
    '9' => 9,
    'a' => 10,
    'b' => 11,
    'c' => 12,
    'd' => 13,
    'e' => 14,
    'f' => 15
    }
  end
 
  attr_reader :digits

  def initialize(decimal)
    @digits = decimal.reverse.chars
  end
 
  def to_decimal
    return 0 unless valid?
 
    decimal = 0
    digits.each_with_index do |digit, index|
      decimal += values[digit] * 16 ** index
    end
    decimal
  end
 
  def valid?
    !digits.to_a.join('')[/[^0-9a-f]/, 0]
  end
end