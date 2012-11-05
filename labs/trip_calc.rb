require 'pry'

distance = nil
ppg = nil
speed = nil
mpg = nil
cash = nil

puts "how far are you going? (miles)"
distance = gets.to_f

puts "how fast are you going? (miles)"
speed = gets.to_f

puts "how much is price per gallon?"
ppg = gets.to_f

puts "what is the mpg of car?"
mpg = gets.to_f

puts "how much cash do you have?"
cash = gets.to_f

a = ppg*distance/mpg

time = distance / speed

if cash >= a
	puts "You will have $#{"%0.02f" % (cash-a)} when you arrive in #{"%0.02f" % time} hours."
else
	puts "Sorry, you do not have enough money for the trip."
end