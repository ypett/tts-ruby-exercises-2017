# key = model
# value = make
vehicles = {"Prius"=>"Toyota", "CRV"=>"Toyota", "Civic"=>"Honda", "Fusion"=>"Ford", "Veyron"=>"Bugati"}

puts "What car (model) are you looking for today? "
car = gets.chomp
in_stock = false

vehicles.each do |vehicle|
	if vehicle == car
		in_stock = true
	end
end

puts in_stock
if in_stock
	puts "Ah, yes, our selection of #{vehicles[car]} vehicles is right over here!"
else
	puts "Sorry, we’re all out of stock at the moment."
end
