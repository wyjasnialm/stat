drills = data.frame(
  diameter = c("29,5 - 30,5", "30,5 - 31,5", "31,5 - 32,5", "32,5 - 33,5",
               "33,5 - 34,5", "34,5 - 35,5", "35,5 - 36,5"),
  quantity = c(12, 23, 35, 62, 44, 18, 6)
  )

library(nortest)

shapiro.test(drills$quantity)
lillie.test(drills$quantity)
pearson.test(drills$quantity)
sf.test(drills$quantity)

qqnorm(drills$quantity)
qqline(drills$quantity)