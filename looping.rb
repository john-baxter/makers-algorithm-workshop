require './test_run.rb'

class TestLooping

  TIMES_TO_LOOP = 5

  def initialize
    @test_to_loop = TestRun.new
  end
  
  def times_loop(function_to_time, array_to_use)
    TIMES_TO_LOOP.times do |iteration|
      puts "round #{iteration + 1}"
      @test_to_loop.full_run_through(function_to_time, array_to_use)
    end
  end

end