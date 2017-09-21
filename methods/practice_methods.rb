puts "Give me a number between 1 and 10: "
guess = gets.chomp.to_i

comp_num = rand(1..10)
# use .. to include ending num; ... to exclude ending num

# see if the number is the same as computer's number
puts guess == comp_num ? "Yay! You got it!" : "Dang! Try again!"

# tell them if they got it right
# unless guess == comp_num
# 	puts "No, sorry.  It was #{comp_num}."
# else
# 	puts "You got it!"
# end


# puts "Which do you prefer, Dog or Cat? "
# animal = gets.chomp.downcase

# puts animal == "dog" ? "Woof!" : "Meow!"

# # if animal == "dog"
# 	puts "Woof!"
# else
# 	puts "Meow!"
# end
		



# puts "What's your favorite number? "
# number = gets.chomp
 
# puts "Hey, I like #{number} too!"

# puts "Ah, you know too..." if number == 42

# if number == "42"
# 	puts "Ah, you know too..."
# end

# enter a string and reverse without using .reverse
# def reverse_string(string)
# 	letters = string.split("")
# 	reverse_letters = []
# 	letters.length.times do	
# 		reverse_letters << letters.pop
# 		# puts reverse_letters
# 	end
# 	reverse_letters.join
# end

# puts "Enter a string: "
# word = gets.chomp

# puts reverse_string(word)


# make a method that converts lbs to kg
# def convert_lbs_to_kg(weight_lbs)
# 	weight_lbs / 2.2
# end
# puts convert_lbs_to_kg(200)

# sack_of_potatoes = 5
# sack_in_kg = convert_lbs_to_kg(sack_of_potatoes)

# puts "The 5 lb sack of potatoes weighs #{sack_in_kg} kg.  Hooray!"

# puts "How much does a sack of potatoes weigh, in lbs? "
# sack_weight = gets.chomp.to_i

# sack_in_kg = convert_lbs_to_kg(sack_weight)

# puts "Dang! That's a big sack of potatoes.  It weighs #{sack_in_kg} kg!"

# def add_it_up(num1, num2)
# 	num1 + num2
# end

# puts add_it_up(2, 5)

# time = 4
# space = 5

# puts add_it_up(time, space)
# puts "Time is #{time} and Space is #{space}.  Time plus space is #{time + space}."

# def two_plus_two
# 	2 + 2
# end

# puts two_plus_two

# def hello
# 	puts "Goodbye World..."
# end

# hello

# def really_hard_math
# 	answer = (-5 + Math.sqrt(5**2 - 4 * (8 * 15)))/(2 * 8)
# 	puts answer
# end

# really_hard_math