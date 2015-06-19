class Gigasecond

	VERSION = 1

	GIGASECOND = 10 ** 9

	def self.from(date)
		(date.to_time + GIGASECOND).to_time
	end
end