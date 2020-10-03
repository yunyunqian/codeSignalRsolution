# Given a string, find out if its characters can be rearranged to 
# form a palindrome.
# 
# Example
# 
# For inputString = "aabb", the output should be
# palindromeRearranging(inputString) = true.
# 
# We can rearrange "aabb" to make "abba", which is a palindrome.
# 
# https://app.codesignal.com/arcade/intro/level-4/Xfeo7r9SBSpo3Wico/solutions

palindromeRearranging <- function(inputString) {
  inputString = unlist(strsplit(inputString,""))
  
  result = sort(table(inputString))
  
  if (length(result) < 2){
    return (TRUE)
  } else {
    return(all(result[2:length(result)] %% 2 == 0))
  }
}