module Enumerable
	def each_group_by_first_letter
		groups = self.group_by { |s| s[0, 1] }
		groups.keys.each do |key|
			yield(key, groups[key])
		end
	end
end

x = ["abcd", "axyz", "able", "xyzab", "qrst"]
x.each_group_by_first_letter do |letter, words|
  puts(letter + ': ' + words.to_s)
end