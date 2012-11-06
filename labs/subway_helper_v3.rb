require 'pry'

n = ['ts','34','28','23','us']
l = ['8', '6', 'us', '3', '1']
s = ['g','33','28s','23s','us']

mta = {}

mta[:n] = n
mta[:l] = l
mta[:s] = s

puts "which line to start at? #{mta.keys.join(', ')}?"
start_train = gets.chomp.to_sym
puts "which stop: #{mta[start_train].join(', ')}?"
stop_a = gets.chomp

puts "which line to get off at? #{mta.keys.join(', ')}?"
stop_train = gets.chomp.to_sym
puts "which stop: #{mta[start_train].join(', ')}?"
stop_b = gets.chomp



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