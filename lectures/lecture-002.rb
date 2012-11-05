require 'pry'

colors = ['blue','green','yellow']
puts "enter a new color:"
color = gets.chomp
colors << color

person = {}
puts "last name?"
person[:last] = gets.chomp
puts "first name?"
person[:first] = gets.chomp
puts "age?"
person[:age] = gets.chomp

colors.each do |color|
	puts "The color is #{color}"
end

(1..10).each do |x|
	puts "the power of the number is #{x**x}"
end

person.each do |key,value|
	puts "key #{key} value '#{value}"
	end
