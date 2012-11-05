require 'pry'
# this is a comment
# use this any time you ened to explain

puts "what is your name?"
first = gets
# version 1 - normal
puts "you typed in " + first
# version 2 - string interpolation	
puts "you typed in #{first}"
# version 3 - single quotes
puts 'you typed in #{first}'

puts "Enter a number"
a = gets
a = a.to_i
puts "Enter a floating point number"
b = gets
b = b.to_f

c = a + b

puts "The result of #{a} + #{b} is #{c}"


# this is how to depug using pry
binding.pry



puts "what is your age?"
age = gets.to_i

if age < 5
	puts "You are a baby"
elsif (age >= 5) && (age <18)
	puts "You are a minor"
else
	puts "You are an adult"
end

puts "enter a letter"	
letter = gets.chomp
#chomp takes away the new line 'character'

#case statement
case letter
when "a"
	puts "you typed in a"
when "b"
	puts "you typed in b"
when "c"
	puts "you typed in #{letter}"
when "d"
	puts "you typed in #{letter}"
end

#looping
puts "enter a starting number"
start = gets.to_i
puts "enter an ending number"
stop = gets.to_i

while start <= stop
	puts "Counting #{start}"
	start += 1
end

# methods / functions in ruby
def square(a)
 a * a
end

puts "enter a number to square"
b = gets.to_i
c = square(b)
puts "the square of #{b} is #{c}"

def volume (l,w,h)
	l*w*h	
end

puts "length"
length = gets.to_i
puts "width"
width = gets.to_i
puts "height"
height = gets.to_i
vol = volume(length,width,height)
puts "the volume of #{length} and #{width} and #{height} is #{vol}"
