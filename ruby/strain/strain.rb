class Array
	def keep
		each_with_object([]) do |e, results|
			results << e if yield(e)
		end
	end

	def discard
		keep { |e| !yield(e) }
	end
end