require 'pry'

a = 250..180000
sum = a.reduce(:+)

puts "sum is #{sum}"

colors = []

	puts "do you want to (a)dd color or (q)uit?"
	z = gets.chomp
while z != 'q'
	puts "what color?"
	color = gets.chomp
	colors << color
	puts "do you want to (a)dd color or (q)uit?"
	z = gets.chomp
end

puts "here are your colors: #{colors.join(', ')}"