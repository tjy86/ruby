require "pry"

class	Student
	attr_accessor :name, :dob, :gender, :gpa, :major
	def initialize(n,d,g,p,m)
		@name = n
		@dob = d
		@gender =g
		@gpa = p
		@major = m
	end	
	def to_s
		"#{name}, #{dob}, #{gender}, #{gpa}, #{major}"
	end
end

students = []

puts "name, dob, gender, gpa, major"
s1 = Student.new('thomas','12/20/86','m','4.0','awesome')
s2 = Student.new('diana','1/2/86','f','3.9','management')
s3 = Student.new('paul','1/1/86','m','3.8','art history')

students << s1 << s2 << s3

puts students