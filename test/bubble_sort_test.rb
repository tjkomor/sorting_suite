gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/bubble_sort'


class BubbleSortTest < Minitest::Test

  def test_file_exists
    assert SortingSuite::BubbleSort
  end

  def test_it_can_accept_array
    bubble = SortingSuite::BubbleSort.new([1,2,4])
    assert_equal [1,2,4], bubble.array
  end

  def test_iterate_holds_correct_value
    bubble = SortingSuite::BubbleSort.new([2,3,1])
    assert_equal 2, bubble.iterate
  end

  def test_index_begins_at_zero
    bubble = SortingSuite::BubbleSort.new([2,3,4,1])
    assert_equal 0, bubble.index
  end

  def test_bubble_sort_works
    bubble = SortingSuite::BubbleSort.new([3,4,5,6,1,45,30,8,2])
    assert_equal [1,2,3,4,5,6,8,30,45], bubble.sort
  end

end
