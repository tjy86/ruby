require 'pry'

load 'person.rb'
load 'animal.rb'
load 'farm.rb'

people = []
animals = []
farms = []

puts "Would you like to create a (p)erson, (a)nimal, (f)arm or (q)uit?"
response = gets.chomp.downcase

while response != 'q'

	if response == 'p'	

		puts "What is your name?"
		name = gets.chomp

		puts "What is your age?"
		age = gets.chomp

		puts "What is your gender?"
		gender = gets.chomp
		z = Person.new(name, gender, age)
		people << z
		
		puts "which farm does this person belong to? #{farms.join(', ')}"
		f = gets.chomp
		farms.each do |x|
			if x.to_s == f
				x.people << z
			end
		end

		puts "Would you like to create a (p)erson, (a)nimal, (f)arm or (q)uit?"
		response = gets.chomp.downcase

	elsif response == 'a'

		puts "name?"
		name = gets.chomp

		puts "species?"
		species = gets.chomp

		puts "gender?"
		gender = gets.chomp
		z = Animal.new(name, species, gender)
		animals << z


		puts "which farm does this person belong to? #{farms.join(', ')}"
		f = gets.chomp
		farms.each do |x|
			if x.to_s == f
				x.animals << z
			end
		end
		
		puts "Would you like to create a (p)erson, (a)nimal, (f)arm or (q)uit?"
		
		response = gets.chomp.downcase
	
	elsif response == 'f'

		puts "name?"
		name = gets.chomp

		farms << Farm.new(name)

		puts "Would you like to create a (p)erson, (a)nimal, (f)arm or (q)uit?"
		response = gets.chomp.downcase
	end
			
end

puts "Below are the stored farms in your database:"
puts farms

puts "people"
farms.each do |x|
	puts "#{x} #{x.people}"
end

puts "animals"
farms.each do |x|
	puts "#{x} #{x.animals}"
end
