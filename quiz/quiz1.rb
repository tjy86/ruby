require 'pry'

puts "name?"
name = gets.chomp
puts "first number?"
a = gets.chomp.to_f
puts "second number?"
b = gets.chomp.to_f
puts "third number?"
c = gets.chomp.to_f

d = (a+b)*c
e = a**b
f = Math.sqrt(a*b)

puts "#{name}, your results: D = #{d}, E = #{e}, F = #{f}"