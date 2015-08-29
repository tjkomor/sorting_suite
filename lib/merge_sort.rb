class MergeSort

  def self.mergesort(list)
    return list if list.size <= 1  # => false, false, true, true, false, true, true

    mid = list.size / 2                                 # => 2, 1, 1
    left = list[0, mid]                                 # => [5, 4], [5], [3]
    right = list[mid, list.size]                        # => [3, 2], [4], [2]
    self.do_merge( mergesort(left), mergesort(right) )  # => [4], [2], [2]
  end                                                   # => :mergesort

  def self.do_merge(left, right)
    p left                        # => [5], [3], [4]
    p right                       # => [4], [2], [2]
  end                             # => :do_merge

end  # => :do_merge

MergeSort.mergesort([5,4,3,2])  # => [2]
#merge = MergeSort.new([4,3,2,1])  # => #<MergeSort:0x007fd47c140250 @array=[4, 3, 2, 1], @first_array=[], @second_array=[], @third_array=[]>
#merge.first_array                 # => [4, 3]
#merge.second_array                # => [2, 1]
#p merge                           # => #<MergeSort:0x007fd47c140250 @array=[4, 3, 2, 1], @first_array=[4, 3], @second_array=[2, 1], @third_array=[]>

# >> [5]
# >> [4]
# >> [3]
# >> [2]
# >> [4]
# >> [2]
