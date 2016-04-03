require "minitest/autorun"
require_relative "coin_change_redo.rb"

class TestCoinChange < Minitest::Test

	def test_change_for_1
		assert_equal({"Quarters" => 0, "Dimes" => 0, "Nickels" => 0, "Pennies" => 1}, evaluate_change(1))
	end

	def test_change_for_5
		assert_equal({"Quarters" => 0, "Dimes" => 0, "Nickels" => 1, "Pennies" => 0}, evaluate_change(5))
	end

	def test_change_for_6
		assert_equal({"Quarters" => 0, "Dimes" => 0, "Nickels" => 1, "Pennies" => 1}, evaluate_change(6))
	end

	def test_change_for_10
		assert_equal({"Quarters" => 0, "Dimes" => 1, "Nickels" => 0, "Pennies" => 0}, evaluate_change(10))
	end

end