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
Generate the `return_array` to have the correct number of elements, then change the elements one-by-one, the expectation being that changing the value of an already-existing array element is 'better' than reassigning a bunch of indices. This might make it more difficult to avoid making undesirable duplicates.

### 21 May 2020
### 20200521
#### Update
Since the last update there have been some more updates and a few more functions added - and significant refactoring of the code. 

I now have a neat way to generate whatever array is needed for a given test, by using the `class ArrayGenerator` and the method fro this class can be passed as an argument when calling the test run through the controller. Each time I need a different type of array I am adding more methods there; I now have sequential and shuffled numerical lists, a random selection of binary bits, and an unordered selection of digits which will have duplication of some elements. Later I expecxt to need some arrays of strings; so I will probably import some Lorem Ipsum text from somewhere and use this.

#### Plan
The current plan is to implement a simple (brute-force) duplication check method - which is not expected to be linear, then to try to improve the efficiency of this by using a hash to record "seen" indicies and futher to improve by using a `Set`. Use of a set will require some learning because I've never used this data structure type before.

#### Pseudocode for brute force duplicate search
```
take the first element
look at all the other elements in turn
if any other element == first element
then check each element in the return array

    if any return element == this element
    then it's already dealt with, no action required
    else include this element in the return array

else move to the second element
repeat process for each element*
return the return array

*(possibly except the last one?)
```

### 23 May 2020
### 20200523

#### Update

The 'brute force' duplicate search worked as expected, and was very time-consuming to run the tests with - againb as expected.\
Two more versions have been made; one using a hash and the other implementing a Set as discussed above. Interestingly the hash method appears to be more efficient than the set method so this should be investigated further. As this is the first time I have worked with the set datatype is is conceivable that there is a small adjustment that could change this.

#### Further update
There is now a function for finding the most commonly occuring words in an array of words. This is the first version; further updates to attempt will be to see if therer is a way to avoid iterating through the hash by value. The pseudocode plan for this is (roughly) to 'flip' the hash around so that the numbers become the keys and the values become the words (array of words in the event that multiple words have the same frequency.):
```
IF key does not exist
THEN make key: [empty array]

push value into array

return value corresponding to highest value key
```
This method seems to be easily compatible with an additional functionality to return more than two words in the event there is a tie in frequencies.\
Dealing with the ties will be implemented as an extra and thimed as a separate test run.


### 29 May 2020
### 20200529
#### Update

The new most frequent words search has worked and seems to be better than the previous version - in terms of the gradient; the order is still linear. 

The next function worked on was generate a fibonacci sequence. There are a few versions of this (not updated for a few days while working on this function) and a few versions of the array generator function that goes with fibonacci. There is still uncertainty around why creating a fibonacci sequence should be quadratic. the process is as follows:
```
GENERATE array = [0, 1, nil,..., nil]
```
Where the number of `nil`s is sufficient to create the desired length of array required by that particular test. This does create an anomolous case for the first test of each run where the array is expected to be empty, so the function has an extra `if` to account for this.\
0, 1 is the standard beginning for the fibonacci sequence so it is hard coded.
```
SET the in-function counter to 2
LOOP:
ACCESS the array to get the value at index[counter-1]
ACCESS the array to get the value at index[counter-2]
ADD these two numbers together
ASSIGN this value to the `nil` at index[counter]
INCREMENT the in-function counter
REPEAT until final element has been assigned
```
Which appears to consist of a series of steps which are the same for each repitition and only increase with the length of the array - which is expected to be a linear relationship, but the data are showing a quadratic relationship.\
Some of the component parts of the function have been broken down and tested independently:
- addition
- accessing an element at a known index
- flatten

Flatten was seen to be creating a large reduction in the efficiency of the function (and shows a quadratic relationship) so was eliminated and the function redesigned. It is still not clear exactly why flatten is quadratic.

### Conclusion (fibonacci)
The only conclusion at present is that more work will be rewquired to understand why the relationship is like it is. 

### Next Steps

The next task is to prepare versions of sorting algorithms:
- selection sort
- insertion sort
- merge sort 
- quick sort

Which were covered in the recent workshop. The expectation is to do them in the orded listed above and show the increasing efficiency* of each one. 

*it has been pointed out that quicksort is highly inefficient when the array starts out alrerady sorted. This situation will be included for comparison at each stage.
