class ArrayIterator
  def initialize(array)
    @array = array
  end


  def custom_each
    i = 0
    while i < @array.length  do
      yield(@array[i])
      i+=1
    end
  end
end



iteratable = ArrayIterator.new(['x', 1, 3, 'd'])

iteratable.custom_each do |element|
  puts element
end