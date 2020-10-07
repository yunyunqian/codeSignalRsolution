# Given a string, your task is to replace each of its characters by the next one 
# in the English alphabet; i.e. replace a with b, replace b with c, etc 
# (z would be replaced by a).
# 
# Example
# 
# For inputString = "crazy", the output should be alphabeticShift(inputString) = "dsbaz".

# https://app.codesignal.com/arcade/intro/level-6/PWLT8GBrv9xXy4Dui/solutions

alphabeticShift <- function(inputString) {
  inputString = unlist(strsplit(inputString,""))
  inputString = sapply(inputString, function(x) {
    if(x == 'z'){
      x = "a"
    } else {
      x = letters[which(x==letters)+1]
    }
  })
  return(paste(inputString, collapse = ""))
}