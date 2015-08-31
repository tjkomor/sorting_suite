module SortingSuite
  class InsertionSort

    attr_reader :array  # => nil

    def initialize(array)
      @array = array
    end                    # => :initialize

    def sort
      while array != array.sort
        array[0..-1].each.with_index do |value, index|
          if index != 0
            if array[index] < array[index-1]
              place_holder = array[index]
              array[index] = array[index-1]
              array[index-1] = place_holder
            end
          end
        end
      end
      p array
    end                                                 # => :sort
  end                                                   # => :sort
end                                                     # => :sort



  # insert = InsertionSort.new([2,11,8,0,4,81,17,1,3,56,22,7])  # => #<InsertionSort:0x007fe6e4041730 @array=[2, 11, 8, 0, 4, 81, 17, 1, 3, 56, 22, 7]>
  # insert.sort                                                 # => [0, 1, 2, 3, 4, 7, 8, 11, 17, 22, 56, 81]



#   def sort
#     # loop do
#       @new_array[0] = @array[0]                              # => 3
#         @array.each do |number|                              # => [3, 2, 1]
#           if @array[@count + 1] < @new_array[@index]         # ~> NoMethodError: undefined method `<' for nil:NilClass
#               @new_array.insert(@index, @array[@count + 1])  # => [2, 3, nil, nil], [1, 2, 3, nil, nil]
#                 @count += 1                                  # => 1, 2
#
#           elsif
#               (@array[@count + 1] > @new_array[@index]) && @new_array[@index + 1] == nil
#                 @new_array[@index + 1] = @array[@count + 1]
#                   @count += 1
#                   @index += 1
#           elsif
#               @array[@count + 1] > @new_array[@index]
#                   @index += 1
#                     @array[@count + 1] > @new_array[@index]
#                       @count += 1
#             end                                                                           # => 1, 2
#           end
#           # break if @count == 0
#
#         # end
#
#
#   end  # => :sort
# end    # => :sort
#
# insert = InsertionSort.new([3,2,1])  # => #<InsertionSort:0x007ff1b8957070 @array=[3, 2, 1], @new_array=[nil, nil, nil], @size=3, @count=0, @index=0>
# insert.sort


    # @size.times do |index|
    #   if @array[index + 1] < @new_array[index]
    #       @counter += 1
    #         @new_array.insert(@counter , @array[index + 1])
    #   numsif @array[index + 1] > @new_array.last
    #           @new_array << @array[index + 1]
    #
    #   end
    # end
#   end
#end
