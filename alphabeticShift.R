# Given a string, your task is to replace each of its characters by the next one 
# in the English alphabet; i.e. replace a with b, replace b with c, etc 
# (z would be replaced by a).
# 
# Example
# 
# For inputString = "crazy", the output should be alphabeticShift(inputString) = "dsbaz".

# https://app.codesignal.com/arcade/intro/level-6/PWLT8GBrv9xXy4Dui/solutions

alphabeticShift <- function(inputString) {
  chartr(paste(letters, collapse = ""), paste(c(letters[-1], "a"), collapse = ""), inputString)
}
