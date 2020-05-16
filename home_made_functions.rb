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

  The last one seems less favourable since we need to generate a random number twice per iteration, and it's unlikely this would help create "more randomness"
  The first two seem probably pretty similar and since .push exists and seems easier to implement than 'shoving' elements into a random spot; I'll go for the first one.

=end