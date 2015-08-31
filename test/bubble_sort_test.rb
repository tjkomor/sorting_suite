gem 'minitest', '~> 5.2'     # => true
require 'minitest/autorun'   # => true
require 'minitest/pride'     # => true
require './lib/bubble_sort'  # ~> LoadError: cannot load such file -- ./lib/bubble_sort


class BubbleSortTest < Minitest::Test

  def test_file_exists
    assert SortingSuite::BubbleSort
  end

  def test_it_can_accept_array
    bubble = SortingSuite::BubbleSort.new([1,2,4])
    assert_equal [1,2,4], bubble.array
  end

  def test_it_can_accept_array_of_strings
    bubble = SortingSuite::BubbleSort.new(["a", "c", "b"])
    assert_equal ["a", "c", "b"], bubble.array
  end

  def test_iterate_holds_correct_value
    bubble = SortingSuite::BubbleSort.new([2,3,1])
    assert_equal 2, bubble.iterate
  end

  def test_index_begins_at_zero
    bubble = SortingSuite::BubbleSort.new([2,3,4,1])
    assert_equal 0, bubble.index
  end

  def test_bubble_sort_works_on_numbers
    bubble = SortingSuite::BubbleSort.new([3,4,5,6,1,45,30,8,2])
    assert_equal [1,2,3,4,5,6,8,30,45], bubble.sort
  end

  def test_bubble_sort_works_on_string
    bubble = SortingSuite::BubbleSort.new(["b", "c", "a"])
    assert_equal ["a", "b", "c"], bubble.sort
  end

end

# ~> LoadError
# ~> cannot load such file -- ./lib/bubble_sort
# ~>
# ~> /Users/tylerkomoroske/.rubies/ruby-2.2.2/lib/ruby/2.2.0/rubygems/core_ext/kernel_require.rb:54:in `require'
# ~> /Users/tylerkomoroske/.rubies/ruby-2.2.2/lib/ruby/2.2.0/rubygems/core_ext/kernel_require.rb:54:in `require'
# ~> /Users/tylerkomoroske/code/projects/sorting_suite/test/bubble_sort_test.rb:4:in `<main>'
