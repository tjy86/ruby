require 'pry' # for debugging

act = nil # define act

#function to add subtract or quit
def action (t) # t is passed when function is called
	case t # what is t?
		when "a" # add when a
			puts "number 1"
			x = gets.to_f
			puts "number 2"
			y = gets.to_f
			sum = x + y
			puts "#{x} + #{y} = #{sum}"
		when "s" # subtract when s
			puts "number 1"
			x = gets.to_f
			puts "number 2"
			y = gets.to_f
			sum = x - y
			puts "#{x} - #{y} = #{sum}"
		when "m" # subtract when s
			puts "number 1"
			x = gets.to_f
			puts "number 2"
			y = gets.to_f
			sum = x * y
			puts "#{x} * #{y} = #{sum}"
		when "d" # subtract when s
			puts "number 1"
			x = gets.to_f
			puts "number 2"
			y = gets.to_f
			sum = x / y
			puts "#{x} / #{y} = #{sum}"
		when "q" # quit when q
			puts "quitting"
	end
end

while act != "q" # loop while act is not q
	puts "(a)dd, (s)ubtract, (m)ultiply, (d)ivide or (q)uit" # ask for q
	act = gets.chomp # user inputs for act, chomp to remove the \n
	action(act) # run the method, passing parameter act
end
