class Sieve

	attr_reader :range

	def initialize (n)
		@n = n
		@range = (2..n).to_a
	end

	def primes
		(2..range.length).each do |x|
			range.delete_if {|i| i % x == 0 && i > x}
		end
		range
	end
end