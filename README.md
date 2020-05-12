# Algorithm Workshop

## Timing Code
### 12 May 2020
### 20200512
#### Plan

Make a method that accepts an array and another method as arguments; runs that method on the array and outputs the time it took to execute.

This will currently be for the built-in ruby arrays.

#### Pseudocode

```
def time_code (array, method)
  start = timestamp
  execute array.method
  fin = timestamp
  duration = fin - start
  (maybe somehow convert to appropriate units?)
  return duration
end
```
 #### Update
 The above pseudocode has been executed in ruby; subject to a bit of testing to make sure it is functioning correctly.\
 Next actions will be to build a loop to execute with the correct range of array lengths. Remember that Alice reccomended to buld in a "returns the time each loop" in order to prevent losing all data when the loop runs for too long.

 