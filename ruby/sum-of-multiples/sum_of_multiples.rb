class SumOfMultiples

	attr_reader :multiples

	def initialize(*multiples)
		@multiples = multiples
	end

	def self.to(limit)
		new(5, 3).to(limit)
	end

	def to(limit)
		sum = 0
		(1...limit).each do |n|
			sum += n if multiple?(n)
		end
		sum
	end

	private

	def multiple?(n)
		multiples.any? do |multiple|
			n % multiple == 0
		end
	end
end