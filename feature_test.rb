require './timing_code.rb'

test_array_first = 1
test_array_last = 5000

test_array = *test_array_first..test_array_last

attempt = TimingCode.new
attempt.timing_code(test_array, :shuffle)
