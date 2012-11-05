require 'pry'

puts "Do you want to calculate your trip costs (y/n)?"
response = gets.chomp
def calc(miles, speed, gas_price, mpg, money)
	#calculate cost of trip
	cost_of_trip = (miles/mpg)*gas_price

	#if cost of trip is more than the money you have then...
	if cost_of_trip > money
		[]
	#if cost of trip is less than the money you have, then you can go
	elsif cost_of_trip <= money

		#calculate money remaining
		remaining = money - cost_of_trip
		time = miles/speed
		[remaining, time]
	end
end

while response == "y"

	#miles you're traveling
	puts "How far are you going (miles as integer)?"
	miles = gets.to_f

	#speed you're going (mph)
	puts "How fast are you going (miles per hour as integer)?"
	speed = gets.to_f

	#gas price per gallon
	puts "How much is gas per gallon?"
	gas_price = gets.to_f

	#mpg of car
	puts "What is the MPG of your car?"
	mpg = gets.to_f

	#money you have
	puts "How much money do you have?"
	money = gets.to_f

	results = calc(miles, speed, gas_price, mpg, money)

	if results.length < 1
			puts "Sorry, you do not have enough money for the trip."
	else
			puts "You will have $#{results[0]} remaining when you arrive in #{results[1]} hours."
	end

	puts "Do you want to calculate your trip costs (y/n)?"
	response = gets.chomp

end

