gem 'minitest', '~> 5.2'         # => true
require 'minitest/autorun'       # => true
require 'minitest/pride'         # => true
require './lib/insertion_sort'  # ~> LoadError: cannot load such file -- ../lib/insertion_sort


class InsertionSortTest < Minitest::Test

  def test_it_exists
    assert SortingSuite::InsertionSort
  end

  def test_it_can_accept_array
    insert = SortingSuite::InsertionSort.new([3,2,1])
    assert_equal [3,2,1], insert.array 
  end

  def test_insertion_sort_works
    insert = SortingSuite::InsertionSort.new([4,5,1,3])
    assert_equal [1,3,4,5], insert.sort
  end

end

# ~> LoadError
# ~> cannot load such file -- ../lib/insertion_sort
# ~>
# ~> /Users/tylerkomoroske/.rubies/ruby-2.2.2/lib/ruby/2.2.0/rubygems/core_ext/kernel_require.rb:54:in `require'
# ~> /Users/tylerkomoroske/.rubies/ruby-2.2.2/lib/ruby/2.2.0/rubygems/core_ext/kernel_require.rb:54:in `require'
# ~> /Users/tylerkomoroske/code/projects/sorting_suite/test/insertion_sort_test.rb:4:in `<main>'
