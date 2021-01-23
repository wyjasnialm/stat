printNAStats = function(dataSet) {
  colNames = colnames(dataSet)
  i = 1
  cat("Liczba brakujacych danych dla zmiennej:\n\n")
  
  for (column in dataSet) {
    cat(colNames[i])
    cat(" - ")
    cat(sum(sapply(column, function(value) is.na(value))))
    cat("\n")
    i = i + 1
  }
}

library(MASS)
data(Pima.tr2)

printNAStats(Pima.tr2)