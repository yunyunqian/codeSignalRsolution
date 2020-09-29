"""
Ticket numbers usually consist of an even number of digits. 
A ticket number is considered lucky if the sum of the first half of the digits 
is equal to the sum of the second half.

Given a ticket number n, determine if it's lucky or not.

Example

For n = 1230, the output should be
isLucky(n) = true;
For n = 239017, the output should be
isLucky(n) = false.

https://app.codesignal.com/arcade/intro/level-3/3AdBC97QNuhF6RwsQ/solutions
"""

isLucky <- function(n) {
  n = as.integer(unlist(strsplit(as.character(n),"")))
  len = length(n)
  sum(n[1:(len/2)]) == sum(n[(len/2+1):len])
}