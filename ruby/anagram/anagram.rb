class Anagram

	attr_reader :subject

	def initialize(word)
		@subject = AnagramWord.new(word)
	end

	def match(words)
		words.select do |match|
			subject.anagram_of? match
		end
	end
end
 
class AnagramWord

	attr_reader :subject

	def initialize(subject)
		@subject = subject
	end

	def anagram_of?(word)
		!duplicate?(word) && fingerprint == norm(word)
	end

	def duplicate?(word)
		word.downcase == subject.downcase
	end

	def norm(word)
		word.downcase.chars.sort
	end

	def fingerprint
		@fingerprint ||= norm(subject)
	end
end