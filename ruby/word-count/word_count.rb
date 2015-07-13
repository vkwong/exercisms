#hashing
class Phrase
	
	def initialize(phrase)
		@phrase = phrase
	end

	def word_count
		count = Hash.new(0)
		words.each { |word, count| count[word] += 1}

		count
	end

	private

	def words
		@phrase.downcase.gsub(/[\W_]+/)
	end
end