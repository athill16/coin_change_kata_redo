require "minitest/autorun"
require_relative "coin_change_redo.rb"

class TestCoinChange < Minitest::Test

	def test_change_is_one_penny
		assert_equal({"Quarters" => 0, "Dimes" => 0, "Nickels" => 0, "Pennies" => 1}, evaluate_change(1))
	end

	def test_change_is_one_nickel
		assert_equal({"Quarters" => 0, "Dimes" => 0, "Nickels" => 1, "Pennies" => 0}, evaluate_change(5))
	end

end