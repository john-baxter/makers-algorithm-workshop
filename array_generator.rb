class ArrayGenerator #< Array

  attr_reader :array
  # attr_reader :COUNTER_MAX
  
  TEST_ARRAY_FIRST = 1
  TEST_ARRAY_LIMIT = 25
  # TEST_ARRAY_LIMIT = 100000
  TEST_ARRAY_INCREMENT = 5
  # TEST_ARRAY_INCREMENT = 5000
  COUNTER_MAX = TEST_ARRAY_LIMIT/TEST_ARRAY_INCREMENT
  
  def initialize(counter, array_to_use)
    # @counter = counter
    # @test_array = self.send(array_to_use, counter)
    # @array = method(array_to_use).call(counter)
    @array = self.send(array_to_use, counter)
  end

  def int_array_sequential(counter)
    # test_array = *TEST_ARRAY_FIRST..(TEST_ARRAY_INCREMENT)
    # p counter
    Array.new(counter * TEST_ARRAY_INCREMENT) { |i| i.to_i }
    # @test_array = Array.new(counter * TEST_ARRAY_INCREMENT) { |i| i.to_i }
    # print test_array
    # test_array = *TEST_ARRAY_FIRST..(TEST_ARRAY_INCREMENT * counter)
  end
  
  def int_array_shuffle(counter)
    test_array = *TEST_ARRAY_FIRST..(TEST_ARRAY_INCREMENT * counter)
    test_array.shuffle!
  end

  def test_method(placeholder)
    Array.new(5) { |i| i.to_i }
  end

end

# trial_array = ArrayToUse.new(5, int_array_sequential)