class Raindrops
	RAINDROP_MESSAGES = {
		3 => 'Pling', 
		5 => 'Plang', 
		7 => 'Plong'
	}

	def self.convert(x)
		msg = ''

		RAINDROP_MESSAGES.each do |prime, sound|
			msg << sound if x % prime == 0
		end

		msg.empty? ? x.to_s : msg
	end

end