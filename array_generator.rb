class ArrayGenerator

  attr_reader :array
  
  def initialize(array_to_use, counter, test_array_increment)
    @array = self.send(array_to_use, counter, test_array_increment)
  end

  def int_array_sequential(counter, test_array_increment)
    Array.new(counter * test_array_increment) { |i| i.to_i }
  end
  
  def int_array_shuffle(counter, test_array_increment)
    (Array.new(counter * test_array_increment) { |i| i.to_i }.shuffle)
  end

  def binary_array_shuffle(counter, test_array_increment)
    Array.new(counter * test_array_increment) { |i| i = rand(2) }
  end

end
