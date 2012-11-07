require "pry"
numbers = []
squared = []
action = nil;

def square(x)
	x = x*x
end


puts "input a number or (q)uit?"
action = gets.chomp

while action != 'q'
	numbers << action.to_f
	puts "input a number or (q)uit?"
	action = gets.chomp
end

puts numbers.join(', ')
numbers.map {|x| squared << square(x)}
puts squared.join(', ')