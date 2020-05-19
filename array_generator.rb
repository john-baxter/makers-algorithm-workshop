class ArrayGenerator

  attr_reader :array
  # attr_reader :COUNTER_MAX
  # attr_reader :TEST_ARRAY_INCREMENT
  # attr_reader :TEST_ARRAY_LIMIT
  # attr_reader :counter_max
  
  # TEST_ARRAY_INCREMENT = 5000
  # TEST_ARRAY_LIMIT = 100000
  # COUNTER_MAX = TEST_ARRAY_LIMIT/TEST_ARRAY_INCREMENT
  
  def initialize(counter, array_to_use, test_array_increment)#, test_array_limit)
    # @test_array_limit = test_array_limit
    # @test_array_increment = test_array_increment
    @array = self.send(array_to_use, counter, test_array_increment)
    # @counter_max = TEST_ARRAY_LIMIT/TEST_ARRAY_INCREMENT
  end

  def int_array_sequential(counter, test_array_increment)
    Array.new(counter * test_array_increment) { |i| i.to_i }
  end
  
  def int_array_shuffle(counter)
    test_array = *TEST_ARRAY_FIRST..(TEST_ARRAY_INCREMENT * counter)
    test_array.shuffle!
  end

  def test_method(placeholder)
    Array.new(5) { |i| i.to_i }
  end

end
