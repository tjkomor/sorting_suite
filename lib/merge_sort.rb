module SortingSuite
  class MergeSort

    def self.split(array)
      left_array = []
      right_array = []
      mid = array.size / 2
      left_array << array[0..mid - 1]
      right_array << array[mid..-1]
      return left_array.flatten, right_array.flatten
    end

    def self.compare(number_1, number_2)
        if (number_1 <=> number_2) == -1
          number_1
        else
          number_2
        end
    end

    def self.merge(array)
      merged_array = []
        array.size.times do |times|
          array.size.times do |index|
            array.flatten!
            if array[1]
              lowest_value = compare(array[0], array[1])
              array.delete(lowest_value)
              merged_array << lowest_value
            elsif times == 0
              merged_array << array[0]
            else
              break
            end
          end
          merged_array
        end
        merged_array
      end

    def self.sort(array)
      split_arrays = split(array)
      until split_arrays.size == array.count
        new_splits = []
        split_arrays.map do |array|
          if array.count > 1
            new_splits << split(array)[0]
            new_splits << split(array)[1]
          else
            new_splits << array
          end
        end
        split_arrays = new_splits
      end
      merge(split_arrays)
    end


  end
end

# def self.mergesort(list)
#       return list if list.size <= 1
#       new_array = []
#       mid = list.size / 2
#       left = list[0, mid]
#       right = list[mid, list.size]
#       self.do_merge( mergesort(left), mergesort(right) )
#     end
# # [2, 4, 4], [8, 8, 8]
# # [2], [4], [4], 8, 8, 8]
#     def self.do_merge(left, right)
#       p left
#       p right
#     end
#
#     def self.sort(left, right)
#       new_array = []
#       # compare first element in left side to second element in left side,
#       # shovel lower number into new array
#       array[0] <=> array[1]
#       array[0][0]
#
#     end


# MergeSort.mergesort([5,9,4,3,2,6,8])  # => [8]
