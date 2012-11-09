class Mathematics
	def self.factorial(z)
		z.times.map {|x| x+1}.inject(:*)
	end
end

puts "enter number to factorial"
puts Mathematics.factorial(gets.chomp.to_i)

