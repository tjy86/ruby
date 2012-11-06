
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
if start_train == end_train
	case train
		when 'n'
		start = n_train
		start = n.index(start)
		when 'l'
		start = l_train
		start = l.index(start)
		when 's'
		start = s_train
		start = s.index(start)
	end
end



puts "which line to end at? (n) train, (l) train, or (s)ix train?"
end_train = gets.chomp



#getting on at
if start_train == end_train
	case train
		when 'n'
		start = n_train
		stop = n_train

		hops = n.index(start) - n.index(stop)
		hops = hops.abs

		puts "it will take #{hops} stops."

		when 'l'
		start = l_train
		stop = l_train

		hops = l.index(start) - l.index(stop)
		hops = hops.abs

		puts "it will take #{hops} stops."

		when 's'
		start = s_train
		stop = s_train

		hops = s.index(start) - s.index(stop)
		hops = hops.abs

		puts "it will take #{hops} stops."
	end
end