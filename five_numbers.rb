puts "Give me five numbers: " 
numbers = gets.chomp
numbers = numbers.split

numbers.each_with_index do |num, index|
	numbers[index] = num.to_i 

end

sum = 0
product = 1

numbers.each do |num|
	sum += num
	product *= num
end

puts "The sum is #{sum}."
puts "The product is #{product}."
puts "The smallest number is #{numbers.sort.first}."
puts "The largest number is #{numbers.sort.last}."