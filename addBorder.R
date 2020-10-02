"""
Given a rectangular matrix of characters, add a border of asterisks(*) to it.

Example

For

picture = [\"abc\",
           \"ded\"]
the output should be

addBorder(picture) = [\"*****\",
                      \"*abc*\",
                      \"*ded*\",
                      \"*****\"]
https://app.codesignal.com/arcade/intro/level-4/ZCD7NQnED724bJtjN/solutions
"""

addBorder <- function(picture) {
  collen = length(picture)
  out = list()
  rowlen = nchar(picture[[1]])
  for(i in 1:(collen+2)){
    if(i == 1 | i == (collen+2)){
      out[[i]] = strrep("*", (rowlen+2))
    } else {
      out[[i]] = paste("*", picture[[i-1]], "*", sep = "")
    }
  }
  return (out)
}