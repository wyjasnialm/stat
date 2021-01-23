createBulbs = function(quantity) {
  tmpVector = rep(1, 100)
  tmpVector[50] = 0
  
  return(sample(tmpVector, replace = TRUE, size = quantity))
}

bulbs = createBulbs(500)
table(bulbs)
mean(bulbs)
var(bulbs)