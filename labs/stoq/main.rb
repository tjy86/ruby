require 'pry'
require 'yahoofinance'

class Accounts
	attr_accessor :user, :pw, :cash, :p
	def initialize (a,b,c)
		@user = a
		@pw = b
		@cash = c
		@p = {}
	end
	def self.create(user)
		puts "password?"
		pw = gets.chomp

		puts "cash?"
		cash = gets.chomp.to_f

		i = Accounts.new(user,pw,cash)
	end
	def login (a,b,c)
		if b == c
			puts "welcome #{a}!"
			return 1
		else
			puts "wrong credentials"
			return 0
		end
	end
end

# port = {name = price}
# users = {user = obj (user, pw, balance, porfolio ( stock = price ))}
@users = {}
i = nil
quote_type = YahooFinance::StandardQuote

puts "create user name or (q)uit?"
i = gets.chomp
while i != 'q'
	@users[i] = Accounts.create(i)
	puts "create user name or (q)uit?"
	i = gets.chomp
end

i = nil

while (i != 1)
	puts "whats your username or quit: #{@users.keys.join(', ')}"
	j = gets.chomp
	puts "password?"
	k = gets.chomp
	i = @users[j].login(@users[j].user, @users[j].pw, k)	
end

s=nil
sum = Hash.new(0)
last = Hash.new(0)
count = 0
a=1
b=2
tmv = 0
while s != 'q'
	puts "what stock would you like to buy, (d)ashboard or (q)uit?"	
	quote_symbols = gets.chomp.upcase
	if quote_symbols == 'D'
		puts `clear`
		while a != b
			@users[j].p.each do |k,v|
				count += 1
				quote_symbols = k.dup
				a = YahooFinance::get_quotes( quote_type, quote_symbols )[quote_symbols].lastTrade
				
				sum[k] = sum[k] + a
				average = sum[k]/count
				puts "Symbol: #{k} Shares: #{v} Price: $#{YahooFinance::get_quotes( quote_type, quote_symbols )[quote_symbols].lastTrade} Average: $#{average}	Last: #{last[k]} Market Value: #{YahooFinance::get_quotes( quote_type, quote_symbols )[quote_symbols].lastTrade*v}"

				last[k] = YahooFinance::get_quotes( quote_type, quote_symbols )[quote_symbols].lastTrade
				tmv = tmv + YahooFinance::get_quotes( quote_type, quote_symbols )[quote_symbols].lastTrade*v

			end
			sleep 2
			puts `clear`
			puts "Total Market Value of Portfolio of #{j}: $#{tmv}"
			tmv = 0
		end


		#dashboard here
		puts "you will see dash"
	elsif quote_symbols == 'Q'
		s = 'q'
	else
		puts "shares are trading at $#{YahooFinance::get_quotes( quote_type, quote_symbols )[quote_symbols].lastTrade}, how many shares would you like?"
		puts "you have $#{@users[j].cash} left."
		num = gets.chomp.to_i


		price = num * YahooFinance::get_quotes( quote_type, quote_symbols )[quote_symbols].lastTrade
		if @users[j].cash >= price
			@users[j].cash = @users[j].cash - price 
			puts "You bought #{num} shares of #{quote_symbols} for #{price}."
			puts "You have $#{@users[j].cash} left in your account."

		
			@users[j].p[quote_symbols] = num
			last[quote_symbols] = YahooFinance::get_quotes( quote_type, quote_symbols )[quote_symbols].lastTrade


		else
			puts "You can't afford it"
		end
	end

end


puts "successs"
binding.pry



# puts "login as: #{logins}"
# login = gets.chomp

# purchase stock
