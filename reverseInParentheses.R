"""
Write a function that reverses characters in (possibly nested) parentheses 
in the input string.

Input strings will always be well-formed with matching ()s.

Example

For inputString = \"(bar)\", the output should be
reverseInParentheses(inputString) = \"rab\";
For inputString = \"foo(bar)baz\", the output should be
reverseInParentheses(inputString) = \"foorabbaz\";
For inputString = \"foo(bar)baz(blim)\", the output should be
reverseInParentheses(inputString) = \"foorabbazmilb\";
For inputString = \"foo(bar(baz))blim\", the output should be
reverseInParentheses(inputString) = \"foobazrabblim\".
Because \"foo(bar(baz))blim\" becomes \"foo(barzab)blim\" 
and then \"foobazrabblim\".

https://app.codesignal.com/arcade/intro/level-3/9DgaPsE2a7M6M2Hu6/solutions
"""


reverseInParentheses <- function(inputString) {
  
  input = unlist(strsplit(inputString,""))
  
  left_position = which(input== "(")
  right_position = which(input==")")
  
  if(length(left_position) < 1){
    return (inputString)
  } else {
    for (i in left_position[length(left_position):1]){
      right = min(right_position[right_position>i])
      input[(i+1):(right-1)] = rev(input[(i+1):(right-1)])
      right_position = right_position[-which(right_position==right)]
    }
    input[input == "(" | input== ")"] = ""
    return (paste(input, collapse = ""))
  }
  
}