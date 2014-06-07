class Adder
	attr_accessor :int_num
	def initialize(num)
		@int_num = num
	end
	def is_int?(str)
		str.to_i.to_s == str
	end
	def method_missing(meth, *args, &block)
		if meth.to_s.start_with?("plus") && is_int?(meth.to_s[4..-1])
			name = meth.to_s
			num = meth.to_s[4..-1]
			self.class.class_eval do
				define_method(name) { @int_num += num.to_i }
			end
			@int_num += num.to_i
		else
			super
		end
	end
end

adder = Adder.new(10)
puts(adder.int_num)
adder.plus30
puts(adder.int_num)
adder.plus30
puts(adder.int_num)
adder.plus40
puts(adder.int_num)
adder.plus40f