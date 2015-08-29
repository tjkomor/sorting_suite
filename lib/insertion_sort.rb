class InsertionSort

  def initialize(array)
    @array = array
    @new_array = []
    @size = array.size - 1
    @index = 0
  end

  def sort
    if @new_array.count == 0
      @new_array << @array[0]
    elsif
      
    end
    p @new_array
  end


end
insert = InsertionSort.new([3,2,4,5])
insert.sort
