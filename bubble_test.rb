require 'minitest/autorun'
require 'minitest/pride'
require './bubble_class'

class BubbleTest < Minitest::Test 

	def setup
		@bubble = BubbleSort.new([4,3,5,0,1])
	end

	def test_it_initializes_a_sequence
		result = @bubble.sequence 

		assert_equal [4,3,5,0,1],result
	end

	def test_it_sorts_correctly
		@bubble.bubble_sort
		result = @bubble.sequence

		assert_equal [0,1,3,4,5],result 
	end
end
