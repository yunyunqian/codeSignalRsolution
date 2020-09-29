"""
Some people are standing in a row in a park. 
There are trees between them which cannot be moved. 
Your task is to rearrange the people by their heights in a 
non-descending order without moving the trees. People can be very tall!

Example

For a = [-1, 150, 190, 170, -1, -1, 160, 180], the output should be
sortByHeight(a) = [-1, 150, 160, 170, -1, -1, 180, 190].

https://app.codesignal.com/arcade/intro/level-3/D6qmdBL2NYz49XHwM/solutions

"""

sortByHeight <- function(a) {
  a = as.integer(unlist(a))
  a[a>0] = sort(a[a>0])
  return (I(a))
}