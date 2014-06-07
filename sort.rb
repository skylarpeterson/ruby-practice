class Sorter
   include Enumerable
   
   def compare_strings(x, y)
   		xNums = x.scan(/\d+/)
 		if xNums.length == 0
    		xNums.push(-1)
 		end 
     	yNums = y.scan(/\d+/)
 		if yNums.length == 0
    		yNums.push(-1)
 		end
 		if xNums[0].to_i > yNums[0].to_i
    		return 1
 		elsif yNums[0].to_i > xNums[0].to_i
    		return -1
 		else
    		return 0
 		end
   end
   
   def funny_sort(strings)
       	newStrings = strings.sort { |x,y| compare_strings(x, y) }
		return newStrings
   end
end

puts("First Example")
strings = ["-100X500", "abc99.6"]
newStrings = Sorter.new.funny_sort(strings)
for value in newStrings
  puts(value)
end

puts("Second Example")
strings2 = ["4", "foo3fii5", "blah", "cookie7"]
newStrings2 = Sorter.new.funny_sort(strings2)
for value in newStrings2
  puts(value)
end

puts("Third Example")
strings3 = ["3OBFUSCATE", "my30friends", "bcr500lala", "s-13", "haha", "hoohoo", "hehe"]
newStrings3 = Sorter.new.funny_sort(strings3)
for value in newStrings3
  puts(value)
end