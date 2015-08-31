module SortingSuite
  class BubbleSort

    attr_reader :index, :iterate, :array  # => nil

    def initialize(array)
      @array = array             # => ["a", "c", "b"]
      @iterate = array.size - 1  # => 2
      @index = 0                 # => 0
    end                          # => :initialize

    def sort
      loop do
        swapped = 0                                                                # => 0, 0
          @iterate.times do |index|                                                # => 2, 2
            if @array[index] > @array[index + 1]                                   # => false, true, false, false
              @array[index], @array[index + 1] = @array[index + 1], @array[index]  # => ["b", "c"]
                swapped = 1                                                        # => 1
              end # if                                                                  # => true, true, true, true, nil, true, true, nil, true, true, nil, nil, nil, nil, nil, nil
            end  #times.do                                                                  # => 4, 4, 4, 4

            if swapped == 0  # => false, true
          break
        end #loop.do

      end #if swapped
      p @array  # => ["a", "b", "c"]

    end  #sort                         # => :sort
  end  # => :sort
end  #class                         # => :sort

bubble = SortingSuite::BubbleSort.new(["a", "c", "b"])  # => #<SortingSuite::BubbleSort:0x007f9a1b9fc240 @array=["a", "c", "b"], @iterate=2, @index=0>
bubble.sort                                             # => ["a", "b", "c"]

# >> ["a", "b", "c"]
