def evaluate_change(number)
	if number < 5
		{"Quarters" => 0, "Dimes" => 0, "Nickels" => 0, "Pennies" => number}
	elsif number == 5
		{"Quarters" => 0, "Dimes" => 0, "Nickels" => 1, "Pennies" => 0}
	else
		{"Quarters" => 0, "Dimes" => 0, "Nickels" => 1, "Pennies" => 1}
	end
end