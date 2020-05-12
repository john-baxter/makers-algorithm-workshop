class TimingCode

  def timing_code (array, method_to_time)
    start = time_now_ms
    array.send(method_to_time)
    fin = time_now_ms
    time_calc(start, fin)
  end

  def time_now_ms
    (Time.now.to_f * 1000).to_i
  end

  def time_calc(t_one, t_two)
    puts t_two - t_one
  end

end
