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

### 17 May 2020
### 20200517
#### Happy constitution day! :)
#### Update

Since the last update I have done some work each day and the project has moved on quite a bit - sorry for not remembering to make time each day to update this document.\
To address the points made above:\
HAVE DONE:\
- I decided not to implement the outputting to a file. I was aware that time was passing; and although this would be an elegant solution, and one which I may still return to later I made a decision not to spend too much time on it now and move on with the generation of data for the various methods
- There is now a new class for looping but it only has one method which outputs "round X" and then the list of data. It is presented in a single long column and needs to be manipulated manually for entering into the spreadsheet
    - I decided that iterating over the increasing array size didn't need to be in the Looping class, but that this was in the TestRun class, justified by the fact that a 'single' test involves 20 (+1 because I'm including a 0 length array) executions of the method/function.

#### Progress beyond last update

Data has been generated and plotted for the following built-in Ruby methods:
- `.shuffle`
- `.reverse`
- `.sort`

My own home-made functions have been prepared as follows:
- `my_reverse`
- `my_shuffle`

and data for these have been entered to the spreadsheet too.\
The spreadsheet is data_spreadsheets.ods and is available inthis repo. The spreadsheet is set up to take the median of the five datapoints per array length and plot these against the array length each time. 

#### Conclusions so far
`.reverse` is linear (~3.5x)\
`my_reverse` is linear (~58x)

`.shuffle` is linear (~21x)\
`my_shuffle` is quadratic (~65x^2)

`.sort` is quadratic (~0.1x^2)

### Next actions
There is another workshop comming up tomorrow; untill then I will see if I can think of any ways to improve `my_shuffle` but for now I've done what I intended.

At present the executing of the code is a little clunky because certain functions are called in certain circumstances (depending on whether I want an input to be an ordered array or pre-shuffled) in future this will become worse because there will be other formats of array required later in other functions. It would be good if I could refactor the code to allow tests to be run by passing extra arguments rather than by having to remember to change the code/which lines to coment out or reinstate.

### 18 May 2020
### 20200518
#### Plan
Today the plan is to try to make improvements to `my_shuffle` and/or the smoothness with which the program runs (in terms of calling the correct functions, using appropriate arrays).
I've identified the `.delete_at` method as being the most time-consuming part of `my_shuffle` so the plan is to implement a new version which doesn't use this. maybe something like:
```
iterate through the array
on each iteration shove the element into a new array at a random spot
```
This is similar to one of the plans I discarded earlier when I started working on `my_shuffle` anyway.

#### Outcome
I've executed the above plan, the new version of `my_shuffle` is better...a little.\
It now has changed from 65x^2 - 58x^2.\
Clearly this is not the change we were looking for. I think the problem with `.delete_at` and `.insert` is the same - that ~half of the elements have to have their indices re-assigned in each iteration of the loop. 

#### New plan
Generate the `result_array` to have the correct number of elements, then change the elements one-by-one, the expectation being that changing the value of an already-existing array element is 'better' than reassigning a bunch of indices. This might make it more difficult to avoid making undesirable duplicates.