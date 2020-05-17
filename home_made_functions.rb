def my_reverse(array)
  result_array = []
  while array.length != 0
    result_array << array.pop
  end
  result_array
end

def my_shuffle(array)
  result_array = []
  while array.length != 0
    result_array << array.delete_at(rand(array.length))
    # implement some stuff here
    # seems to be working!
  end
  result_array
end
  



=begin
  take a random element
  

  place it into the new array
  
  
  remove it from the original array
  
  
  repeat

  



=end