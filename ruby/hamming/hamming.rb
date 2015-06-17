class Hamming

	VERSION = 1

	def self.compute (s, t)
		raise ArgumentError, "The lengths of the strings are not equal." if (s.length != t.length)
		(0..s.length).count do |i|
			s[i] != t[i]
		end
	end
end