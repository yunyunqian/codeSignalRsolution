# An IP address is a numerical label assigned to each device (e.g., computer, printer) 
# participating in a computer network that uses the Internet Protocol for communication.
# There are two versions of the Internet protocol, and thus two versions of addresses. 
# One of them is the IPv4 address.
# 
# Given a string, find out if it satisfies the IPv4 address naming rules.
# 
# Example
# 
# For inputString = "172.16.254.1", the output should be
# isIPv4Address(inputString) = true;
# 
# For inputString = "172.316.254.1", the output should be
# isIPv4Address(inputString) = false.
# 
# 316 is not in range [0, 255].
# 
# For inputString = ".254.255.0", the output should be
# isIPv4Address(inputString) = false.
# 
# There is no first number.
# 
# https://app.codesignal.com/arcade/intro/level-5/veW5xJednTy4qcjso/drafts

isIPv4Address <- function(inputString) {
  inputString = unlist(strsplit(inputString, "\\."))
  
  if(length(inputString) == 4 & all(!is.na(as.integer(inputString)))){
    return(
      all(as.integer(inputString) >= 0) & all(as.integer(inputString) <= 255) & all(nchar(inputString) == nchar(as.integer(inputString)))
    )
  } else (
    return (FALSE)
  )
  
  
}
