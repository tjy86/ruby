require 'pry'
# array.index('blue')

# google inter-section operator

n = ['t-square','34','28','23','u-square']
l = ['8', '6', 'u-square', '3', '1']
s = ['grand','33','28s','23s','u-square']

def n_train
	puts "what station? t-square, 34, 28, 23, u-square"
	gets.chomp
end

def l_train
	puts "what station? 8, 6, u-square, 3, 1"
	gets.chomp
end

def s_train
	puts "what station? grand, 33, 28s, 23s, u-square"
	gets.chomp
end

puts "which line to start at? (n) train, (l) train, or (s)ix train?"
start_train = gets.chomp
#getting on at
	case start_train
		when 'n'
		start = n_train
		start = n.index(start)
		a = n
		when 'l'
		start = l_train
		start = l.index(start)
		a = l
		when 's'
		start = s_train
		start = s.index(start)
		a = s
	end



puts "which line to end at? (n) train, (l) train, or (s)ix train?"
end_train = gets.chomp
#getting off at
	case end_train
		when 'n'
		stop = n_train
		stop = n.index(stop)
		b = n
		when 'l'
		stop = l_train
		stop = l.index(stop)
		b = l
		when 's'
		stop = s_train
		stop = s.index(stop)
		b = s
	end

if start_train == end_train
	hops = start - stop
	hops = hops.abs
	puts "it will take #{hops} stops."
else
	intersect = a & b
	intersect = intersect.join
	con1 = a.index(intersect)
	con1 = start - con1
	con1 = con1.abs
	con2 = b.index(intersect)
	con2 = stop - con2
	con2 = con2.abs
	hops = con1 + con2
	puts hops
end