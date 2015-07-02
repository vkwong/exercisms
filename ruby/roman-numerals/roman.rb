class Fixnum

	ROMAN_NUMERALS_MAPPING = {
		1000 => "M",
		900 => "CM",
		500 => "D",
		400 => "CD",
		100 => "C",
		90 => "XC",
		50 => "L",
		40 => "XL",
		10 => "X",
		9 => "IX",
		5 => "V",
		4 => "IV",
		1 => "I",
	}

	def to_roman
		roman_symbols = ""
		arabic_numerals = self

		ROMAN_NUMERALS_MAPPING.each do |arabic, roman|
			while arabic_numerals >= arabic
				arabic_numerals -= arabic
				roman_symbols << roman
			end
		end
		roman_symbols
	end
end