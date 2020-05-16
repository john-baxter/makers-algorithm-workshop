require './test_run.rb'

class TestLooping

  # TIMES_TO_LOOP = 1
  # TIMES_TO_LOOP = 3
  TIMES_TO_LOOP = 5

  def initialize
    @test_to_loop = TestRun.new
  end
  
  def times_loop(method_to_time)
    TIMES_TO_LOOP.times do |iteration|
      puts "round #{iteration + 1}"
      @test_to_loop.full_run_through(method_to_time)
    end
  end

end