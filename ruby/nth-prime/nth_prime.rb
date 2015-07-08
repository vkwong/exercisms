require 'prime'

class Prime

	def self.nth(count)
		fail ArgumentError, 'must be greater than 0' if count < 1

		primes = 0
		num = 1

		while primes < count
			num += 1
			primes += 1 if self.prime?(num)
		end
		num
	end

	def prime?(num)
		return false if num == 1
		return true if num == 2
		(2..Math.sqrt(num).ceil).each do |i|
			return false if num % i == 0
		end
		return true
	end
end
