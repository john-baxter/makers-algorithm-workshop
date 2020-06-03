require 'set'

def my_reverse(array)
  return_array = []
  while array.length != 0
    return_array << array.pop
  end
  return_array
end

# my_shuffle_1
def my_shuffle_1(array)
  return_array = []
  while array.length != 0
    return_array << array.delete_at(rand(array.length))
  end
  return_array
end

# my_shuffle_2
def my_shuffle_2(array)
  return_array = []
  array.each do |element|
    return_array.insert(rand(return_array.length), element)
  end
  return_array
end

# my_shuffle_3
def my_shuffle_3(array)
  return_array = Array.new(array.length) { |i| nil }
  array.each do |element|
    loop do
      rand_idx = rand(array.length)
      if return_array[rand_idx] == nil
        return_array[rand_idx] = element
        break
      end
    end
  end
  return_array
end

# my_shuffle_4
def my_shuffle(array)
  return_array = []
  while array.length != 0
    rand_index = rand(array.length)
    array[rand_index], array[-1] = array[rand_index]
    return_array << array.pop
  end
end

def my_binary_sort(array)
  return_array_zero = []
  return_array_one = []
  array.each do |bit|
    if bit == 0
      return_array_zero << bit
    elsif bit == 1
      return_array_one << bit
    end
  end
  [return_array_zero, return_array_one].flatten
end

# my_find_duplicates_1
def my_find_duplicates_1(array)
  return_array = []
  counter = 0
  array.length.times do
    duplicate_found = false
    duplicate_already_seen = false
    array[counter+1..-1].each do |element|
      if element == array[counter]
        duplicate_found = true
        # break
      end
    end
    if duplicate_found == true
      return_array.each do |duplicate|
        if duplicate == array[counter]
          duplicate_already_seen = true
        end
      end
      if duplicate_already_seen == false && duplicate_found == true
        return_array << array[counter]
      end
    end
    counter += 1
  end
  return_array
end

# my_find_duplicates_2
def my_find_duplicates(array)
  return_array = []
  seen_hash = {}
  array.each do |element|
    if seen_hash.has_key?(element) == 1
      seen_hash[element] = true
    elsif seen_hash.has_key?(element) == 1
      if seen_hash[element] = 1
        return_array << element
        seen_hash[element] =+ 1
      end
    end
  end
  return_array
end

# my_find_duplicates_3
def my_find_duplicates_3(array)
  return_array = []
  seen = Set.new
  duplicates = Set.new
  array.each do |element|
    if !seen.include?(element)
      seen << element
    else
      duplicates << element
    end
  end
  return duplicates.to_a
end

# my_find_most_frequent_words_1
def my_find_most_frequent_words_1(array)
  return nil if array.length == 0
  return array if array.length < 3
  count_hash = {}
  result_array = []
  array.each do |element|
    if count_hash.has_key?(element) == true
      count_hash[element] += 1
    elsif count_hash.has_key?(element) == false
      count_hash[element] = 1
    end
  end
  result_array << count_hash.max_by { |k, v| v }
  count_hash.delete_if { |k, v| k == result_array[0][0] }
  result_array << count_hash.max_by { |k, v| v }
  [result_array[0][0], result_array[1][0]]
end

# my_find_most_frequent_words_2
def my_find_most_frequent_words(array)
  return nil if array.length == 0
  return array if array.length < 3
  count_hash = {}
  frequency_hash = {}
  result_array = []
  
  array.each do |element|
    if count_hash.has_key?(element) == true
      count_hash[element] += 1
    elsif count_hash.has_key?(element) == false
      count_hash[element] = 1
    end
  end

  count_hash.each do |word, count|
    if frequency_hash.has_key?(count) == false
      frequency_hash[count] = []
    end
    frequency_hash[count] << word
  end

  result_array << frequency_hash[frequency_hash.keys.max]
  if result_array.length >= 2
    return result_array
  else
    return result_array.push(frequency_hash[frequency_hash.keys.sort[-2]]).flatten
  end
end

# my_fibonacci_sequence_generator_1
def my_fibonacci_sequence_generator_1(hash)
  increment = hash[:test_array_increment]
  counter = hash[:counter]
  array = hash[:array]
  n_equals = (counter * increment)
  while array.length < n_equals do 
    array.push(array[-2] + array[-1])
  end
  return array
end

# my_fibonacci_sequence_generator_2
def my_fibonacci_sequence_generator_2(hash)
  array = hash[:array]
  n_equals = (hash[:counter] * hash[:test_array_increment])
  while array.length <= n_equals
    last = array.pop(2)
    last << last.sum
    array = array.push(last).flatten!
  end
  return array
end

# my_fibonacci_sequence_generator_3
def my_fibonacci_sequence_generator(array)
  incrementor = 2
  (array.length-2).times do
    array[incrementor] = (array[incrementor - 1] + array[incrementor - 2])
      incrementor += 1
    end
  return array
end

def my_selection_sort(array)
  return_array = []
  (array.length).times do
    return_array.push(array.min)
    array = array.difference(return_array)
  end
  return_array
end

def my_insertion_sort(array)
  return_array = [array.pop]
  while array.length != 0
    if array.last > return_array.last
      return_array << array.pop
    else
      idx_counter = 0
      while return_array[idx_counter] < array.last
        idx_counter += 1
      end
      return_array.insert(idx_counter, array.pop)
    end
  end
  return_array
end

def my_merge_sort(array)
  # TO DO
  # early return IF statement
  # make function (below) to split the array into two parts - left and right halves
  # recursively call this function on both halves
  # make function (below) to combine two arrays together using 'stacks of cards' analogy.
end

def my_quick_sort(array)
  # TO DO
  # early return IF statement
  # make function (below) to split array into two 'halves' - lower and higher than array.first
  # recursively call this function on both halves
  # make function (below) to combine these two arrays together using 'low+pivot+high' analogy
end

def my_early_return_for_sorting(array)
  if array.length < 2
    return array
  end
end

def my_split_array_left_and_right(array)
  return array if array.length < 2
  array_left_half = array[0...array.length/2]
  array_right_half = array[array.length/2..-1]
  return array_left_half, array_right_half
end
