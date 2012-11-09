class Play
	def walk
		puts "i am walking"
	end
	def self.run
		puts "i am running"
	end
end

Play.run
a = Play.new
a.walk