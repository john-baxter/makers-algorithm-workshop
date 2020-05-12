class TimingCode

  def timing_code #(array, method) parameters commented out during development
    start = time_now_ms
    sleep(5) # placeholder for real method. this will be updated once I'm happy with the other logic.
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