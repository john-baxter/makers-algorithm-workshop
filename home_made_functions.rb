def my_reverse(array)
  return_array = []
  while array.length != 0
    return_array << array.pop
  end
  return_array
end

def my_shuffle_1(array)
  return_array = []
  while array.length != 0
    return_array << array.delete_at(rand(array.length))
  end
  return_array
end

def my_shuffle_2(array)
  return_array = []
  array.each do |element|
    return_array.insert(rand(return_array.length), element)
  end
  return_array
end

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

def my_find_duplicates(array)
  return_array = []
  counter = 0
  array.length.times do
    duplicate_found = false
    duplicate_already_seen = false
    array[counter+1..-1].each do |element|
      if element == array[counter]
        duplicate_found = true
        break
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
