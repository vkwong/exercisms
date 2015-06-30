class Fixnum

	def to_roman

		ROMAN_NUMERALS_MAPPING = {
		1 => "I",
		4 => "IV",
		5 => "V",
		9 => "IX",
		10 => "X",
		40 => "XL",
		50 => "L",
		90 => "XC",
		100 => "C",
		400 => "CD",
		500 => "D",
		900 => "CM",
		1000 => "M"
	}

		roman_symbols = ""
		arabic_numerals = self

		ROMAN_NUMERALS_MAPPING.each_pair do |arabic, roman|
			while arabic_numerals >= arabic
				arabic_numerals -= arabic
				roman_symbols << roman
			end
		end
		roman_symbols
	end
end