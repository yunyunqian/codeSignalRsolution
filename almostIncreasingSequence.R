# Given a sequence of integers as an array, 
# determine whether it is possible to obtain a strictly increasing sequence 
# by removing no more than one element from the array.

# https://app.codesignal.com/arcade/intro/level-2/2mxbGwLzvkTCKAJMG/solutions

almostIncreasingSequence <- function(sequence) {
  sequence = as.integer(unlist(sequence))
  first_bad = sum(sequence[1:length(sequence)-1] - sequence[2:length(sequence)] >= 0)
  
  if(first_bad == 0){
    return (TRUE)
  } else if (first_bad > 1){
    return (FALSE)
  } else {
    bad_position = which(sequence[1:length(sequence)-1] - sequence[2:length(sequence)] >= 0)[1]
    leadsequence = sequence[-bad_position]
    lagsequence = sequence[-(bad_position+1)]
    second_bad_lead = sum(leadsequence[1:length(leadsequence)-1] - leadsequence[2:length(leadsequence)] >= 0)
    second_bad_lag = sum(lagsequence[1:length(lagsequence)-1] - lagsequence[2:length(lagsequence)] >= 0)
    
    if(second_bad_lead==0 | second_bad_lag==0){
      return(TRUE)
    } else {
      return(FALSE)
    }
  }
  
  
}