require './timing_code.rb'
require './array_generator.rb'

class TestRun

  attr_reader :counter

  TEST_ARRAY_FIRST = 1
  TEST_ARRAY_LIMIT = 100000
  TEST_ARRAY_INCREMENT = 5000
  COUNTER_MAX = TEST_ARRAY_LIMIT/TEST_ARRAY_INCREMENT

  def initialize
    @counter = 0
    @test_run = TimingCode.new
    # @array = ArrayToUse.new(@counter)
  end
  
  # def int_array_sequential
  #   test_aray = *TEST_ARRAY_FIRST..(TEST_ARRAY_INCREMENT * @counter)
  # end

  # def int_array_shuffle
  #   test_aray = *TEST_ARRAY_FIRST..(TEST_ARRAY_INCREMENT * @counter)
  #   test_aray.shuffle!
  # end

  def increment_the_counter
    @counter += 1
  end

  def one_test_run(function_to_time, array_to_use)
    array_to_use = ArrayGenerator.new(@counter, array_to_use)
    @test_run.timing_code(function_to_time, array_to_use.array)
    # @test_run.timing_code(function_to_time, ArrayToUse.new(@counter, array_to_use))
    # @test_run.timing_code(function_to_time, @array.method(array_to_use).call)
    # @test_run.timing_code_function(function_to_time, create_test_array)
    increment_the_counter
  end
  
  def full_run_through(function_to_time, array_to_use)
    while @counter <= COUNTER_MAX
      one_test_run(function_to_time, array_to_use)
    end
    @counter = 0
  end
  
end