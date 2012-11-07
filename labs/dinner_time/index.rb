require "pry"

load 'class.rb'
action = nil
action3 = nil
available_menu = {}
plate = []
menu = {}
menu[:mon] = nil
menu[:tues] = nil
menu[:wed] = nil
menu[:thurs] = nil
menu[:fri] = nil

def make_plate(action)
	while action != 'q'
		case action
		when 'c'
			puts "grain type?"
			a = gets.chomp
			puts "calories?"
			b = gets.chomp.to_f
			puts "servings?"
			c = gets.chomp.to_f
			puts "prep time in minutes?"
			d = gets.chomp.to_f

			dinner = Carb.new(a)
			dinner.calories = b
			dinner.servings = c
			dinner.prep_time = d
		when 'p'
			puts "animal type?"
			a = gets.chomp
			puts "calories?"
			b = gets.chomp.to_f
			puts "servings?"
			c = gets.chomp.to_f
			puts "prep time in minutes?"
			d = gets.chomp.to_f

			dinner = Protein.new(a)
			dinner.calories = b
			dinner.servings = c
			dinner.prep_time = d
		end
		action = 'q'
	end
	time = 0
	return dinner
end

while action3 != 'n'
	puts '(c)arb or (p)rotein or (q)uit?'
	action = gets.chomp
	while action != 'q'
		plate << make_plate(action)
		puts '(c)arb or (p)rotein or (q)uit?'
		action = gets.chomp
	end
	puts "what's on your plate: #{plate.join(', ')}"
	puts "(c)hoose existing menu or (n)ew menu?"
	action2 = gets.chomp
	case action2
		when 'c'
			puts "choose from one: #{available_menu.keys.join(', ')}"
			choice = gets.chomp
			puts "which day is it? #{menu.keys.join(', ')}"
			day = gets.chomp.to_sym	
			menu[day] = plate
			available_menu[choice] = menu[day]
			binding.pry
		when 'n'
			puts "name your menu"
			choice = gets.chomp
			puts "which day is it? #{menu.keys.join(', ')}"
			day = gets.chomp.to_sym
			menu[day] = plate
			available_menu[choice] = menu[day]
			plate=[]
	end

	puts "do you want to create another plate? (y/n)"
	action3 = gets.chomp
end