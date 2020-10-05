"""
In the popular Minesweeper game you have a board with some mines and 
those cells that don't contain a mine have a number in it 
that indicates the total number of mines in the neighboring cells. 
Starting off with some arrangement of mines we want to create a Minesweeper game setup.

Example

For

matrix = [[true, false, false],
          [false, true, false],
          [false, false, false]]
the output should be

minesweeper(matrix) = [[1, 2, 1],
                       [2, 1, 1],
                       [1, 1, 1]]

https://app.codesignal.com/arcade/intro/level-5/ZMR5n7vJbexnLrgaM/solutions

"""


minesweeper <- function(matrix) {
  rownum = length(matrix)
  inputmatrix = matrix(as.integer(unlist(matrix)), nrow = rownum, byrow = TRUE)
  colnum = length(inputmatrix[1,])
  out = matrix(NA, nrow = rownum, ncol = colnum)
  
  for(i in 1:rownum){
    for(j in 1:colnum){
      rowseq = (i-1):(i+1)
      colseq = (j-1):(j+1)
      rowseq = rowseq[rowseq>0 & rowseq<=rownum]
      colseq = colseq[colseq>0 & colseq<=colnum]
      out[i,j] = sum(inputmatrix[rowseq, colseq]) - inputmatrix[i,j]
    }
  }
  
  return(out)
}