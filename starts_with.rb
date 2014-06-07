def each_starts_with(strings_arr, string)
	for value in strings_arr
		if value.start_with?(string)
			yield(value)
		end
	end
end

puts("Example 1")
strings = ["hello", "hi"]
each_starts_with(strings, "hell") { |s| puts(s) }

puts("Example 2")
strings2 = ["abcd", "axyz", "able", "xyzab", "qrst"]
each_starts_with(strings2, "ab") { |s| puts(s) }

puts("Example 3")
strings3 = ["lalala", "blahlah", "hala", "callah", "bahaha", "lara"]
each_starts_with(strings3, "la") { |s| puts(s) }