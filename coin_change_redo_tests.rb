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

	def test_change_for_11
		assert_equal({"Quarters" => 0, "Dimes" => 1, "Nickels" => 0, "Pennies" => 1}, evaluate_change(11))
	end

	def test_change_for_25
		assert_equal({"Quarters" => 1, "Dimes" => 0, "Nickels" => 0, "Pennies" => 0}, evaluate_change(25))
	end

	def test_change_for_26
		assert_equal({"Quarters" => 1, "Dimes" => 0, "Nickels" => 0, "Pennies" => 1}, evaluate_change(26))
	end

	def test_change_for_75
		assert_equal({"Quarters" => 3, "Dimes" => 0, "Nickels" => 0, "Pennies" => 0}, evaluate_change(75))
	end

	def test_change_for_91
		assert_equal({"Quarters" => 3, "Dimes" => 1, "Nickels" => 1, "Pennies" => 1}, evaluate_change(91))
	end


end









