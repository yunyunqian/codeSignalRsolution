"""
Given an array of strings, return another array containing all of its longest strings.

Example

For inputArray = ["aba", "aa", "ad", "vcd", "aba"], the output should be
allLongestStrings(inputArray) = ["aba", "vcd", "aba"].

https://app.codesignal.com/arcade/intro/level-3/fzsCQGYbxaEcTr2bL/solutions
"""

allLongestStrings <- function(inputArray) {
  inputArray[nchar(inputArray) == max(sapply(inputArray, nchar))]
  
}