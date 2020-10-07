a = c(0,4,8,16)
b = c(0,2,6,12,14,20)

ab = unique(c(a,b))
maxab = max(ab)
diffa = unique(diff(sort(a)))
diffab = unique(diff(sort(ab)))
diffab = sort(unique(c(diffa, diffab)))

out = list()


for(i in min(ab):min(a)){
  out = lapply(diffab, function(x) {
    li = seq(i, maxab, x)
    print(li)
    if (all(a %in% li) & all(li %in% ab)){
      len = length(li)
    } else{
      len = -1
    }
  })

}

max(unlist(out))

