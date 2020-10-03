"""
You are given an array of integers. 
On each move you are allowed to increase exactly one of its element by one. 
Find the minimal number of moves required 
to obtain a strictly increasing sequence from the input.

Example

For inputArray = [1, 1, 1], the output should be
arrayChange(inputArray) = 3.

https://app.codesignal.com/arcade/intro/level-4/xvkRbxYkdHdHNCKjg/solutions?solutionId=KchdyJELHBS9seP6Y
"""


arrayChange <- function(inputArray) {
  input = as.integer(unlist(inputArray))
  
  for(i in 2:length(input)){
    if (input[i] <= input[i-1]){
      input[i] = input[i-1]+1
    }
  }
  
  sum(input - as.integer(unlist(inputArray)))
}