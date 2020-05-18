class TimingCode

  def timing_code_method(array, method_to_time)
    start = process_clock_gettime_micro_s
    array.send(method_to_time)
    fin = process_clock_gettime_micro_s
    time_calc(start, fin)
  end
  
  def timing_code_function(function_to_time, array)
    start = process_clock_gettime_micro_s
    method(function_to_time).call(array)
    fin = process_clock_gettime_micro_s
    time_calc(start, fin)
  end

  def process_clock_gettime_ms
    (Process.clock_gettime(Process::CLOCK_MONOTONIC).to_f * 1000).to_i
  end

  def process_clock_gettime_micro_s
    (Process.clock_gettime(Process::CLOCK_MONOTONIC).to_f * 1000000).to_i
  end
  
    def time_calc(t_one, t_two)
    puts t_two - t_one
  end

end
