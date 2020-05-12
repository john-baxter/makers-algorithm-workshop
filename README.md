# Algorithm Workshop

## Timing Code
### 12 May 2020
### 20200512
#### Plan

Make a method that accepts an array and another method as arguments; runs that method on the array and outputs the time it took to execute.

This will currently be for the built-in ruby arrays.

#### Pseudocode

def time_code (array, method)
start = timestamp
execute array.method
fin = timestamp
duration = fin - start
(maybe somehow convert to appropriate units?)
return duration
end
