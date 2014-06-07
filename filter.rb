def filter(numbers, options = {})
	for number in numbers
		if options[:odd] && !number.odd?
			next
		elsif options[:even] && !number.even?
			next
		elsif options[:min] && number < options[:min]
			next
		elsif options[:max] && number > options[:max]
			next
		end
		if options[:scale]
			number = number * options[:scale]
		end
		yield(number)
	end
end

nums = [6, -5, 319, 400, 18, 94, 11]
puts("Filter 1")
filter(nums, :min => 10, :max => 350, :odd => 1, :scale => 2) {|n| puts n}
puts("Filter 2")
filter(nums, :max => 0) {|n| puts n}
puts("Filter 3")
filter(nums) {|n| puts n}