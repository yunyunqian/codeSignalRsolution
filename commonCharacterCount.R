"""
Given two strings, find the number of common characters between them.

Example

For s1 = "aabcc" and s2 = "adcaa", the output should be
commonCharacterCount(s1, s2) = 3.

Strings have 3 common characters - 2 "a"s and 1 "c".

https://app.codesignal.com/arcade/intro/level-3/JKKuHJknZNj4YGL32
"""


commonCharacterCount <- function(s1, s2) {
  s1 = unlist(strsplit(s1, ""))
  s2 = unlist(strsplit(s2, ""))
  s1uni = sort(unique(s1))
  s2uni = sort(unique(s2))
  shared = s1uni[s1uni %in% s2uni]
  
  ifelse(length(shared) < 1, 0,
         sum(sapply(shared, function(x) min(sum(s1 %in% x), sum(s2 %in% x)))))
}