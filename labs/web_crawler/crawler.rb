class Crawler
	attr_accessor :url
	def initialize (u)
		@url = u
	end
	def parse(a)
		response = HTTParty.get(a)
	end
	def words(a)
		response = a.split.count
	end
	def vowels(a)
		z = 'aeiou'
		response = a.downcase.count z
	end
	def consonant(a)
		y = 'abcdefghijklmnopqrstuvwxyz'
		z = 'aeiou'
		y = y.delete z
		response = a.downcase.count y
	end
	def frequency(a)
  	freq = Hash.new(0)
  	a.each { |word| freq[word.downcase] += 1 }
  	Hash[freq.sort_by{|k,v| v}]
	end
end
