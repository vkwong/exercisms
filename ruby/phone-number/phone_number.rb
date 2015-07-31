class PhoneNumber

  attr_reader :number

  def initialize(num)
    @number = trim_leading_one(remove_invalid_characters(number))
    @number = '0000000000' unless valid? @number
  end

  def to_s
    "(#{area_code}) #{exchange_number}-#{local_number}"
  end

  def area_code
    num[0,3]
  end

  def exchange_number
    num[3,3]
  end

  def local_number
    num[6,4]
  end

  private

  def remove_invalid_characters(number)
    number.gsub(/[^a-z\d]/, '')
  end

  def trim_leading_one(number)
    if number.length === 11 || number.length === 12
      number.sub(/^1/,'')
    else
      number
    end
  end

  def valid?(number)
    number.length === 10 && !number.match(/[a-z]/)
  end

end