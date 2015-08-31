gem 'minitest', '~> 5.2'    # => true
require 'minitest/autorun'  # => true
require 'minitest/pride'    # => true
require './lib/merge_sort'  # ~> LoadError: cannot load such file -- ./lib/merge_sort

class MergeSortTest < Minitest::Test

  def test_it_exists
    assert SortingSuite::MergeSort
  end

  def test_it_can_split_array_into_two_arrays
    merge = SortingSuite::MergeSort
    assert_equal [[3], [2,1]], merge.split([3,2,1])
    assert_equal [[4,5,6], [7,8,9]], merge.split([4,5,6,7,8,9])
  end

  def test_it_can_compare_two_elements_in_list
    merge = SortingSuite::MergeSort
    assert_equal 5, merge.compare(6,5)
    assert_equal 4, merge.compare(4,5), "compares two elements in array and returns smaller element"
  end

  def test_it_can_merge_two_elements_from_seperate_arrays
    merge = SortingSuite::MergeSort
    assert_equal [5,6], merge.merge([[6], [5]])
    assert_equal [3,4], merge.merge([[3], [4]])
    assert_equal [1,2], merge.merge([[1], [2]])
  end

  def test_merge_sort_works
    skip
    merge = SortingSuite::MergeSort
    assert_equal [0, 2, 6, 9, 10, 11, 13, 14, 22, 500], merge.sort([14, 2, 6, 9, 10, 0, 22, 11, 500, 13])
    assert_equal [1,2,3,4,5], merge.sort([1,3,5,2,4])
    assert_equal [0,1,2,3,4], merge.sort([2,3,4,1,7])
  end

end

# ~> LoadError
# ~> cannot load such file -- ./lib/merge_sort
# ~>
# ~> /Users/tylerkomoroske/.rubies/ruby-2.2.2/lib/ruby/2.2.0/rubygems/core_ext/kernel_require.rb:54:in `require'
# ~> /Users/tylerkomoroske/.rubies/ruby-2.2.2/lib/ruby/2.2.0/rubygems/core_ext/kernel_require.rb:54:in `require'
# ~> /Users/tylerkomoroske/code/projects/sorting_suite/test/merge_sort_test.rb:4:in `<main>'
