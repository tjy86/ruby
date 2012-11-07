require 'httparty'
require 'pry'

load 'crawler.rb'

urls =[]

puts "gimme url"
a = gets.chomp
urls << Crawler.new(a)
c = urls[0].parse(a)
d = urls[0].words(c)
e = urls[0].vowels(c)
f = urls[0].consonant(c)
c = c.split
g = 0
c.each do |x|
	if x.downcase == 'obama'
		g+=1
	end
end
h = 0
c.each do |x|
	if x.downcase == 'romney'
		h+=1
	end
end
i = urls[0].frequency(c)


puts "url #{a}"
puts "word #{d}"
puts "vowels #{e}"
puts "consonant #{f}"
puts "obama count #{g}"
puts "romney count #{h}"
puts "frequency: #{i}"