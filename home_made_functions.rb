def my_reverse(array)
  result_array = []
  while array.length != 0
    result_array << array.pop
  end
  result_array
end

def my_shuffle_(array)
  result_array = []
  while array.length != 0
    result_array << array.delete_at(rand(array.length))
  end
  result_array
end

def my_shuffle(array)
  result_array = []
  array.each do |element|
    result_array.insert(rand(result_array.length), element)
  end
  result_array
end



