# http://stackoverflow.com/questions/995593/what-does-or-equals-mean-in-ruby
class Robot

	LETTERS = ('A'..'Z').to_a

	def name
		@name ||= initialize
	end

	def initialize
		"#{LETTERS.sample(2).join('')}#{rand(0..9)}#{rand(0..9)}#{rand(0..9)}"
	end

	def reset
		@name = nil
	end
end