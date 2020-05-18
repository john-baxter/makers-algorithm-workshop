require './looping.rb'
require './home_made_functions.rb'

# attempt = TestLooping.new
# # attempt.times_loop(:shuffle)
# # attempt.times_loop(:reverse)
# # attempt.times_loop(:sort)
# # attempt.times_loop(:my_reverse)
# attempt.times_loop(:my_shuffle)

array = *1..100
puts my_shuffle(array)
