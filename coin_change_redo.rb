def evaluate_change(number)
	coin_values = {"Quarters" => 25, "Dimes" => 10, "Nickels" => 5, "Pennies" => 1}
	change = {"Quarters" => 0, "Dimes" => 0, "Nickels" => 0, "Pennies" => 0}
	coin_values.each do |coin, value|
		while number >= value
			change[coin] = change[coin] + 1
			number = number - value
		end
	end
	change
end

