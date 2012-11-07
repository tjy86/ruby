require 'pry'

class Dog
	attr_accessor :name

	def initialize(n)
		@name = n		
	end
	def to_s
		"#{name} is a dog! he likes to go woof!"
	end
end

class Person
	attr_accessor :name, :gender, :dogs
	def initialize(n,g) # must be called initialize
		@name = n
		@gender = g
		@dogs = []
	end
	def to_s
		"#{name} is a #{gender}"		
	end
end
p1 = Person.new('thomas', 'male')
p2 = Person.new('diana', 'female')
p3 = Person.new('paulie', 'male')

d1 = Dog.new('lassy')
d2 = Dog.new('filo')
d3 = Dog.new('spot')
d4 = Dog.new('champ')

p1.dogs << d1 << d2 << d3
p2.dogs << d4

binding.pry
# puts p1.name
# puts p2.gender

# people = []
# people << p1 << p2 << p3
# puts people[1]
# puts people[1].gender
# puts people.each {|p| puts "cool : #{p}"}
# puts people.each {|p| puts "cool : #{p.gender}"}