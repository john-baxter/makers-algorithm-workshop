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

### 13 May 2020
### 20200513
I now have two classes:
- TimingCode 
    - which outputs the time (in microseconds) when a method is run
- TestRun 
   - which sets the array and passes this into the timing method

still TO DO:
- probably change the TimingCode.time_calc method so it `returns` the time rather than `puts`es it, so that it will be copmpatible with outputting to a file which I intend to do later.
- make a new class for looping, which is expected to contain at least two methods
    - one which iterates over the array increasing the size each time
    - one which executes the run through three times (necessary for eliminating outliers in the data)
- Some refactoring will be necessary; there are parts of the TestRun class that were included at the start when I still thought I might be working on the loops already

I probably won't do anything beyond writing data to a file; I expect to manually paste these data into a spreadsheet and generate my graphs there rather than go to the effort of integrating any graph generating gems or other automated means.
