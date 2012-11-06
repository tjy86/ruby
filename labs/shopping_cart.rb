require 'pry'

shoes = 80.33;
shirts = 25.67;
socks = 7.99;
tax_rate = 0.0931;
s = 0
h = 0
o = 0
action = nil

while action != 'c'
	puts "(s)hoes, s(h)irts, s(o)cks or (c)heckout?"
	action = gets.chomp
	case action
	when 's'
		puts "how many?"
		n = gets.to_i
		s = s + n
	when 'h'
		puts "how many?"
		n = gets.to_i
		h = h + n
	when 'o'
		puts "how many?"
		n = gets.to_i
		o = o + n
	when 'c'		
		puts "receipt:"	
		puts "#{s} pairs of shoes = $#{s*shoes}"
		puts "#{h} shirts = $#{h*shirts}"
		puts "#{o} pairs of socks = $#{o*socks}"
		subtotal = s*shoes+h*shirts+o*socks
		puts "subtotal = $#{"%0.02f" % subtotal}"
		puts "tax = $#{"%0.02f" % (subtotal*tax_rate)}"
		puts "total = $#{"%0.02f" % (subtotal*(1+tax_rate))}"
	end
end

