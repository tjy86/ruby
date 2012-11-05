
require 'pry'

ask = nil
p = nil
r = nil
n = nil
pmt = nil

puts "do you want to calculate your mortgage? (y/n)?"
ask = gets.chomp

def calculate (p,r,n)
	a = (p*r*(1+r)**n)/((1+r)**n-1)
	"%0.02f" % a
end

if ask == 'y'
	puts "principal"
	p = gets.to_f	
	puts "rate (whole #)"
	r = gets.to_f
	puts "term (yearly)"
	n = gets.to_f
	n = n*12
	r = r/100/12
	pmt = calculate(p,r,n)
	puts "your monthly payment is $#{pmt}"
else
	puts "quitting"
end
