gem 'minitest', '~> 5.2'     # => true
require 'minitest/autorun'   # => true
require 'minitest/pride'     # => true
require './lib/bubble_sort'  # ~> LoadError: cannot load such file -- ./lib/bubble_sort


class BubbleSortTest < Minitest::Test

  def test_file_exists
    assert BubbleSort
  end

  def test_first_two_elements_in_array_are_swapped
    bubble = BubbleSort.new([5,4,3,2,1])
    assert_equal 4, bubble.sort
  end

end

# ~> LoadError
# ~> cannot load such file -- ./lib/bubble_sort
# ~>
# ~> /Users/tylerkomoroske/.rubies/ruby-2.2.2/lib/ruby/2.2.0/rubygems/core_ext/kernel_require.rb:54:in `require'
# ~> /Users/tylerkomoroske/.rubies/ruby-2.2.2/lib/ruby/2.2.0/rubygems/core_ext/kernel_require.rb:54:in `require'
# ~> /Users/tylerkomoroske/code/1508-echo/projects/sorting_suite/test/bubble_sort_test.rb:4:in `<main>'
