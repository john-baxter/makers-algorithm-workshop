require './looping.rb'
require './home_made_functions.rb'
require './built_in_methods_as_functions.rb'
# require './preparation_of_arrays.rb'

attempt = TestLooping.new
# attempt.times_loop(:built_in_shuffle, :int_array_sequential)
# attempt.times_loop(:built_in_reverse, :int_array_sequential)
# attempt.times_loop(:built_in_sort, :int_array_shuffle)
# attempt.times_loop(:my_reverse, :int_array_sequential)
attempt.times_loop(:my_shuffle, :int_array_sequential)
# attempt.times_loop(:test_function, :test_method)
