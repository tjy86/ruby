
# this is a comment

puts "Do you want to (a)dd, (s)ubtract, (m)ultiply, (d)ivide, (p)ower or square (r)oot or (q)uit?"
response = gets.chomp

while response != 'q'
	puts "First?"
	first = gets.to_f
	puts "Second (if necessary)"
	second = gets.to_f

	if response == 'a'
		total = first + second
	elsif response == 's'
		total = first - second
	elsif response == 'm'
		total = first * second
	elsif response == 'd'
		total = first / second
	elsif response == 'p'
		total = first ** second
	elsif response == 'r'
			total = Math.sqrt(first)		
	end

	puts "The result of #{first} and #{second} is #{total}"
	puts "Do you want to (a)dd, (s)ubtract, (m)ultiply, (d)ivide, (p)ower or square (r)oot or (q)uit?"
	response = gets.chomp

end





