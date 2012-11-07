require 'pry'

class Animal
	attr_accessor :name, :species, :gender 

	def initialize(n, s, g) 
		@name = n 
		@species = s
		@gender = g
	end

	def to_s
		"#{name}, #{species}, #{gender}"
	end
end