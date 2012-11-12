require "pry"

puts "number?"
num = gets.chomp.to_f
begin
	num.explode
rescue
	puts "the square of #{num} is #{num*num}"
end