class Person

	attr_accessor :name, :age

	def initialize(name, age)
		@name = name
		@age = age
	end

	# def name
	# 	@name
	# end

	# def age
	# 	@age
	# end

	def birthday
		@age += 1
	end

	def change_name(new_name)
		@name = new_name
	end

	def jump
		puts "#{self.name} just jumped."
	end

end

class Product

	attr_accessor :name, :price, :quantity, :brand
	# attr_accessor(:name, :price, :quantity, :brand)

	def initialize(name, price, quantity, brand)
		@name = name
		@price = price
		@quantity = quantity
		@brand = brand
	end

	def method_name
		
	end

end

class Pet

	def initialize(name, age, species)
		@name = name
		@age = age
		@species = species
	end

	def sound
		case @species
			when "cat" then puts "Meow!"
			when "dog" then puts "Woof!"
			when "snake" then puts "Hiss!"
			when "fish" then puts "[bubbling sounds]"
			else puts "Rawr?"
		end
	end
end

# my_profile = Person.new("Ryan", 41)

# puts "Hi, I'm #{my_profile.name} and I am #{my_profile.age} years old."

# my_profile.birthday
# puts "I just had a birthday and now I'm #{my_profile.age} years old."

# my_profile.change_name("Geppetto")
# puts "I just changed my name.  Henceforth, I shall be known as #{my_profile.name}!"

# tom = Person.new("Tom", 4)

# puts "I'm #{tom.name}.  I'm not that other person.  I'm #{tom.age} years old."

# tom.birthday

# puts "Hey everyone, #{tom.name} had a birthday and he's #{tom.age} years old which is different than me.  I'm still #{my_profile.age} years old."

cat = Pet.new("Hank", 6, "cat")
dog = Pet.new("Tom", 4, "dog")
snake = Pet.new("Fancy", 347, "snake")
fish = Pet.new("Thirsty", 5, "fish")
elephant = Pet.new("Tiny", 84, "elephant")
herby = Pet.new("Herby", 34, "cat")

puts "The cat says #{cat.sound}"
puts "The dog says #{dog.sound}"
puts "The elephant says #{elephant.sound}"
puts "Herby says #{herby.sound}"

herby = "I'm not herby anymore."

puts "This is now herby #{herby}"
puts "Herby's sound is #{herby.sound}"

