puts "What number grade did you get in the class? "
grade = gets.chomp.to_i

if grade >= 60
	puts "You passed!  Have a cool summer."
else
	puts "Oh dang.  You're gonna have to take that class again.  That's a bummer."
end