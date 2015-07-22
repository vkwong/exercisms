class Binary

	VERSION = 1

	attr_reader :digits

	def initialize(number)
		@digits = number.reverse.chars.collect(&:to_i)
	end

	def to_decimal
		number = 0
		digits.each_with_index do |digit, index|
			number += digit * 2 ** index
		end
		number
	end
end