class Binary

	VERSION = 1

	attr_reader :digits

	def initialize(number)
		fail ArgumentError.new("Invalid binary input #{number}") unless valid?(number)
		@digits = number.reverse.chars.collect(&:to_i)
	end

	def to_decimal
		number = 0
		digits.each_with_index do |digit, index|
			number += digit * 2 ** index
		end
		number
	end

	def valid?(s)
		s.chars.all? { |char| ['0', '1'].include?(char) }
	end
end