# require 'lorem_ipsum.rb' has been moved to inside any method where it is needed

class ArrayGenerator

  attr_reader :array
  
  def initialize(array_to_use, counter, test_array_increment)
    @array = self.send(array_to_use, counter, test_array_increment)
  end

  def int_array_sequential(counter, test_array_increment)
    Array.new(counter * test_array_increment) { |i| i.to_i }
  end
  
  def int_array_shuffle(counter, test_array_increment)
    (Array.new(counter * test_array_increment) { |i| i.to_i }.shuffle)
  end

  def binary_array_shuffle(counter, test_array_increment)
    Array.new(counter * test_array_increment) { |i| i = rand(2) }
  end

  def int_array_with_duplicates_shuffle(counter, test_array_increment)
    Array.new(counter * test_array_increment) { |i| i = rand(counter * test_array_increment * 0.75) }
  end

  def lorem_ipsum(counter, test_array_increment)
    require './lorem_ipsum.rb'
    Array.new(counter * test_array_increment) { |i|
    i = $lorem_ipsum_array[rand($lorem_ipsum_array.length)] }
  end

  # fibonacci_start_1
  def fibonacci_start_1(counter, test_array_increment)
    {array: [0, 1],
    counter: counter,
    test_array_increment: test_array_increment}
  end

  # fibonacci_start_2
  def fibonacci_start_2(counter, test_array_increment)
    array = Array.new(counter * test_array_increment)
    array[0] = 0
    array[1] = 1
    return array
  end

  def nested_array_to_flatten(counter, test_array_increment)
    array = Array.new(counter * test_array_increment)
    array.push(Array.new(3) { |i| i = rand(100) })
  end

end