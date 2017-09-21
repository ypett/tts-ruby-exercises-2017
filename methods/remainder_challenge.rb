# Welome to the remainder challenge

# Divide 2 numbers and return the number and remainder

# if either number is not an integer, don't accept the number and ask again.
# The number 0 is unacceptable

def get_number
	puts "Enter a number:"
	number = gets.chomp

	if is_float?(number)
		puts "Try again, it needs to be an integer, no decimal."
		get_number
	elsif is_zero?(number)
		puts "Try again, we need a number that's not 0."
		get_number
	else
		number.to_i
	end

end

def is_float?(number)
	number.include?(".") ? true : false
# 	if number.include?(".")
# 		true
# 	else
# 		false
# 	end
end

def is_zero?(number)
	number == 0 ? true : false
	# if number.to_i == 0
	# 	true
	# else
	# 	false
	# end
end

def divide_with_remainder(number1, number2)
	# if number1 === 0 || number2 == 0
	quotient = number1 / number2
	remainder = number1 % number2
	"The answer is #{quotient}.  Remainder is #{remainder}."
end

number1 = get_number
number2 = get_number

puts divide_with_remainder(number1, number2)