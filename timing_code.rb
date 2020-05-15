class TimingCode

  def timing_code (array, method_to_time)
    # start = time_now_ms
    start = time_now_micro_s
    array.send(method_to_time)
    # fin = time_now_ms
    fin = time_now_micro_s
    time_calc(start, fin)
  end

  def time_now_ms
    (Time.now.to_f * 1000).to_i
  end
  
  def time_now_micro_s
    (Time.now.to_f * 1000000).to_i
  end

  def time_calc(t_one, t_two)
    puts t_two - t_one
  end

end
