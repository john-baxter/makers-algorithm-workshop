require './looping.rb'
require './home_made_functions.rb'
require './built_in_methods_as_functions.rb'
require './lorem_ipsum.rb'
require './array_generator.rb'

attempt = TestLooping.new
# attempt.times_loop(:built_in_shuffle, :int_array_sequential)
# attempt.times_loop(:built_in_reverse, :int_array_sequential)
# attempt.times_loop(:built_in_sort, :int_array_shuffle)
# attempt.times_loop(:my_reverse, :int_array_sequential)
# attempt.times_loop(:my_shuffle, :int_array_sequential)
# attempt.times_loop(:built_in_sort, :binary_array_shuffle)
# attempt.times_loop(:my_binary_sort, :binary_array_shuffle)
# attempt.times_loop(:my_find_duplicates, :int_array_with_duplicates_shuffle)
# attempt.times_loop(:my_find_most_frequent_words, :lorem_ipsum)
attempt.times_loop(:my_fibonacci_sequence_generator, :fibonacci_start)
# attempt.times_loop(:my_fibonacci_sequence_generator, :fibonacci_start)
# attempt.times_loop(:test_access_element_neg_two, :int_array_with_duplicates_shuffle)
# attempt.times_loop(:test_addition, :return_counter)

# attempt.times_loop(:function, :array_generator)
