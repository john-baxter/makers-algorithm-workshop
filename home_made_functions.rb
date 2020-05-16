def my_reverse(array)
  result_array = []
  while array.length != 0
    result_array << array.pop
  end
  result_array
end

def my_shuffle(array)
  result_array = []

=begin
  take a random element
  place it into the new array
  remove it from the original array
  repeat

  OR

  take the first OR last element (I think it wouldn't matter which)
  randomly shove it into the new array
  remove it from the original array
  repeat

  OR

  take a random element
  randomly shove it into the new array
  remove it from the original array
  repeat

=end