# ask user for a number
# puts "Give me a number between 1 and 10: "
# guess = gets.chomp.to_i

# comp_num = rand(1..10)
# # use .. to include ending num; ... to exclude ending num

# # see if the number is the same as computer's number
# # tell them if they got it right
# if guess == comp_num
# 	puts "You got it!"
# else
# 	puts "No, sorry.  It was #{comp_num}."
# end

# ask user for a number
# puts "Give me a number between 1 and 10: "
# guess = gets.chomp.to_i

# comp_num = rand(1..10)
# # use .. to include ending num; ... to exclude ending num

# # see if the number is the same as computer's number
# # tell them if they got it right
# if guess != comp_num
# 	puts "No, sorry.  It was #{comp_num}."
# else
# 	puts "You got it!"
# end

#ask user for a number
puts "Give me a number between 1 and 10: "
guess = gets.chomp.to_i

comp_num = rand(1..10)
# use .. to include ending num; ... to exclude ending num

# see if the number is the same as computer's number
# tell them if they got it right
unless guess == comp_num
	puts "No, sorry.  It was #{comp_num}."
else
	puts "You got it!"
end
