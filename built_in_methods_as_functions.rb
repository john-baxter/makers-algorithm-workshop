def built_in_shuffle(array)
  array.shuffle
end

def built_in_reverse(array)
  array.reverse
end

def built_in_sort(array)
  array.sort
end

def test_access_element_neg_two(array)
  return array[-2]
end

def test_addition(int)
  1000000.times do
    int + int
  end
end

def return_integer(counter, test_array_increment)
  counter
end

def test_flatten(array)
  ((array.length * 0.1).to_i).times do  
    array.flatten
  end
end
