class Bob
	def hey (remark)
		@remark = remark

		if shouting
			"Woah, chill out!"
		elsif question
			"Sure."
		elsif silent
			"Fine. Be that way!"
		else
			"Whatever."
		end
	end

	def shouting
		@remark
	end

	def question
		@remark[-1] == "?"
	end

	def silent
		@remark.strip.empty?
	end
end