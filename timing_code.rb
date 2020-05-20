class TimingCode

  def timing_code(function_to_time, array_to_use)
    start = process_clock_gettime
    method(function_to_time).call(array_to_use)
    fin = process_clock_gettime
    time_calc_micro_s(start, fin)
  end

  def process_clock_gettime
    Process.clock_gettime(Process::CLOCK_MONOTONIC)
  end

  def time_calc_micro_s(t_one, t_two)
    puts ((t_two - t_one).to_f * 1000000).to_i
  end

end
