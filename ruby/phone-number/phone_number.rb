class PhoneNumber

  attr_reader :phone_number

  def initialize(phone_number)
    @phone_number = phone_number
  end

  def number
    converter.to_phone_number
  end

  def area_code
    number[0..2]
  end

  def middle_part
    number[3..5]
  end

  def last_part
    number[6..9]
  end

  def to_s
    "(#{area_code}) #{middle_part}-#{last_part}"
  end

  private

    def converter
      @converter ||= Converter.new(phone_number)
    end
end

class Converter
  
  attr_reader :number

  def initialize(input)
    @number = input.scan(/\d/).join
  end

  def to_phone_number
    if valid?(number)
      number[/(\d{10})\z/, 1]
    else
      invalid_phone_number
    end
  end

    # case 
    # when phone_number_too_long? || phone_number_too_short?
    #   invalid_phone_number
    # when phone_number_includes_letters?
    #   invalid_phone_number
    # when phone_number_with_one_first?
    #   phone_number_with_first_one_omitted
    # else
    #   number
    # end

  private
  
    def invalid_phone_number
      "0000000000"
    end

    def valid?(number)
      return true if number.length == 10
      return true if number.length == 11 && number.start_with?('1')
      false
    end

    def clean(number)
      return '0' * 10 if number.match(/[a-zA-Z]/)
      number = number.gsub(/[^0-9]/, '')
      to_phone_number
    end

    # def phone_number_too_long?
    #   (number.length > 10 && number.chars.first != "1") || (number.length > 11 && number.chars.first == "1")
    # end

    # def phone_number_too_short?
    #   number.length < 10
    # end

    # def phone_number_with_one_first?
    #   number.length > 10 && number.chars.first == "1"
    # end

    # def phone_number_with_first_one_omitted
    #   number[1..-1]
    # end

    # def phone_number_includes_letters
    #   number[/^[0-9]+$/] != number
    # end
end