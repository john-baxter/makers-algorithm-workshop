require './timing_code.rb'
require './array_generator.rb'

class TestRun

  attr_reader :counter

  TEST_ARRAY_INCREMENT = 5000
  TEST_ARRAY_LIMIT = 100000
  COUNTER_MAX = TEST_ARRAY_LIMIT/TEST_ARRAY_INCREMENT

  def initialize
    @counter = 0
    # @counter_max = ArrayGenerator.COUNTER_MAX
    @test_run = TimingCode.new
  end
  
  def increment_the_counter
    @counter += 1
  end

  def one_test_run(function_to_time, array_to_use)
    @array_to_use = ArrayGenerator.new(@counter, array_to_use, TEST_ARRAY_INCREMENT)
    @test_run.timing_code(function_to_time, @array_to_use.array)
    increment_the_counter
  end
  
  def full_run_through(function_to_time, array_to_use)
    # while @counter <= @array_to_use.counter_max
    while @counter <= COUNTER_MAX
      one_test_run(function_to_time, array_to_use)
    end
    @counter = 0
  end
  
end