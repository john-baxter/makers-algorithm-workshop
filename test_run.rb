require './timing_code.rb'

class TestRun

  TEST_ARRAY_FIRST = 1
  TEST_ARRAY_LIMIT = 100000
  TEST_ARRAY_INCREMENT = 5000
  COUNTER_MAX = TEST_ARRAY_LIMIT/TEST_ARRAY_INCREMENT

  def initialize
    @counter = 0
    @test_run = TimingCode.new
  end
  
  def create_test_array
    test_aray = *TEST_ARRAY_FIRST..(TEST_ARRAY_INCREMENT * @counter)
  end

  def create_test_array_shuffle
    test_aray = *TEST_ARRAY_FIRST..(TEST_ARRAY_INCREMENT * @counter)
    test_aray.shuffle!
  end

  def increment_the_counter
    @counter += 1
  end

  # def one_test_run(method_to_time)
  def one_test_run(function_to_time)
    # @test_run.timing_code_method(create_test_array, method_to_time)
    # @test_run.timing_code_method(create_test_array_shuffle, method_to_time)
    @test_run.timing_code_function(function_to_time, create_test_array)
    increment_the_counter
  end
  
  def full_run_through(method_to_time)
    while @counter <= COUNTER_MAX
      one_test_run(method_to_time)
    end
    @counter = 0
  end
  
end