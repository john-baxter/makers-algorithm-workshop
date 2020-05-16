def my_reverse(array)
  result_array = []
  while array.length != 0
    result_array << array.pop
  end
  result_array
end

# test_array = *1..20
# puts my_reverse(test_array)