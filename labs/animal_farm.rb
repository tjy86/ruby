require 'pry'

class Person
	attr_accessor :name, :age, :gender

	def initialize(n,a,g)
		@name = n
		@age = a
		@gender = g
	end
	def to_s
		"#{name}, #{age}, #{gender}"
	end
end

puts "create a (p)erson or (q)uit"
act = gets.chomp

people = []

while act != 'q'
	puts "name?"
	a = gets.chomp
	puts "age?"
	b = gets.chomp.to_i
	puts "gender?"
	c = gets.chomp
	z = Person.new(a,b,c)
	people << z
	puts "create a (p)erson or (q)uit"
	act = gets.chomp
end

puts people