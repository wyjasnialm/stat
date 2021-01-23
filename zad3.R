setwd("C:/Users/Admin/RStudio")

mothsData = read.csv("data/moth-trap-experiment.csv")
logMothsData = mothsData
i = 1

for (column in logMothsData$number.of.moths) {
  logMothsData$number.of.moths[i] = log(column) / log(10)
  i = i + 1
}

shapiro.test(logMothsData$number.of.moths)
with(logMothsData, by(number.of.moths, location, shapiro.test))
with(logMothsData, by(number.of.moths, type.of.lure, shapiro.test))
var.test(mothsData$number.of.moths, logMothsData$number.of.moths)
logMothsDataModel = lm(number.of.moths ~ location + type.of.lure, data = logMothsData)
summary(logMothsDataModel)