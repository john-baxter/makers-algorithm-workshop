def my_reverse(array)
  result_array = []
  while array.length != 0
    result_array << array.pop
  end
  result_array
end

def my_shuffle_1(array)
  result_array = []
  while array.length != 0
    result_array << array.delete_at(rand(array.length))
  end
  result_array
end

def my_shuffle_2(array)
  result_array = []
  array.each do |element|
    result_array.insert(rand(result_array.length), element)
  end
  result_array
end

def my_shuffle_3(array)
  result_array = Array.new(array.length) { |i| nil }
  array.each do |element|
    loop do
      rand_idx = rand(array.length)
      if result_array[rand_idx] == nil
        result_array[rand_idx] = element
        break
      end
    end
  end
  result_array
end

# my_shuffle_4
def my_shuffle(array)
  result_array = []
  while array.length != 0
    rand_index = rand(array.length)
    array[rand_index], array[-1] = array[rand_index]
    result_array << array.pop
  end
end

def my_binary_sort(array)
  result_array_zero = []
  result_array_one = []
  array.each do |bit|
    if bit == 0
      result_array_zero << bit
    elsif bit == 1
      result_array_one << bit
    end
  end
  [result_array_zero, result_array_one].flatten
end
