require 'pry'     # => true
class BubbleSort

  attr_reader :index  # => nil

  def initialize(array)
    @array = array             # => [1, 2, 4, 1, 2, 3, 6, 7, 4, 23, 1]
    @iterate = array.size - 1  # => 10
    @index = 0                 # => 0
    @new_array = []            # => []
  end                          # => :initialize

  def sort
    loop do
      swapped = 0                                                                # => 0, 0, 0, 0, 0, 0, 0, 0, 0
        @iterate.times do |index|                                                # => 10, 10, 10, 10, 10, 10, 10, 10, 10
          if @array[index] > @array[index + 1]                                   # => false, false, true, true, true, false, false, true, false, true, false, true, false, false, false, false, true, false, true, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false
            @array[index], @array[index + 1] = @array[index + 1], @array[index]  # => [1, 4], [2, 4], [3, 4], [4, 7], [1, 23], [1, 2], [4, 6], [1, 7], [1, 6], [1, 4], [1, 4], [1, 3], [1, 2], [1, 2]
              swapped = 1                                                        # => 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1
            end # if                                                                  # => true, true, true, true, nil, true, true, nil, true, true, nil, nil, nil, nil, nil, nil
          end  #times.do                                                                  # => 4, 4, 4, 4

          if swapped == 0  # => false, false, false, false, false, false, false, false, true
        break
      end #loop.do

    end #if swapped
    @array  # => [1, 1, 1, 2, 2, 3, 4, 4, 6, 7, 23]

  end  #sort                         # => :sort
end   #class                         # => :sort

bubble = BubbleSort.new([1,2,4,1,2,3,6,7,4,23,1])  # => #<BubbleSort:0x007ff6999d0f48 @array=[1, 2, 4, 1, 2, 3, 6, 7, 4, 23, 1], @iterate=10, @index=0, @new_array=[]>
puts bubble.sort                                   # => nil

# >> 1
# >> 1
# >> 1
# >> 2
# >> 2
# >> 3
# >> 4
# >> 4
# >> 6
# >> 7
# >> 23
