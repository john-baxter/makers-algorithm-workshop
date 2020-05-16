require './looping.rb'
require './home_made_functions.rb'

# array = *1..5
# puts my_reverse(array)

attempt = TestLooping.new
# # attempt.times_loop(:shuffle)
# attempt.times_loop(:reverse)
# attempt.times_loop(:sort)
attempt.times_loop(:my_reverse)
