require './looping.rb'
require './home_made_functions.rb'
require './built_in_methods_as_functions.rb'
require './lorem_ipsum.rb'
require './array_generator.rb'

# TO DO
# fix issue in shuffle with the digits not swapping correctly.

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
# attempt.times_loop(:my_fibonacci_sequence_generator_2, :fibonacci_start_1)
# attempt.times_loop(:test_access_element_neg_two, :int_array_with_duplicates_shuffle)
# attempt.times_loop(:test_addition, :return_integer)
# attempt.times_loop(:test_flatten, :nested_array_to_flatten)
# attempt.times_loop(:my_fibonacci_sequence_generator_3, :fibonacci_start_2)
# attempt.times_loop(:my_selection_sort, :int_array_shuffle)

attempt.times_loop(:my_merge_sort, :int_array_shuffle)

# attempt.times_loop(:function, :array_generator)
# attempt_ = TestLooping.new
# attempt_.times_loop(:my_insertion_sort, :int_array_shuffle)


# testing_array_of_two_arrays = [[1,4,7,9,10,11],[2,3,5]]
# testing_array = [1,2,3,4,5,6,7,8,9].shuffle
# two_sorted_arrays = [[2,4,6,8],[1,3,5,7]]
# big_testing_array = [*1..100].shuffle
# # p my_early_return_for_sorting(testing_array)
# # p my_split_array_left_and_right(testing_array)
# # p my_split_array_lower_higher_than_first(testing_array)
# # p my_merge_two_ordered_arays(testing_array_of_two_arrays)
# p big_testing_array
# p my_merge_sort(big_testing_array)
# p my_merge_two_ordered_arays(two_sorted_arrays[0], two_sorted_arrays[1])

