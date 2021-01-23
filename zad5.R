data(state)
dataFrame = as.data.frame(state.x77)
colnames(dataFrame)[4] = "Life.Exp"
colnames(dataFrame)[6] = "HS.Grad"

cor(dataFrame)
pairs(~ Life.Exp + HS.Grad + Murder + Frost, data = dataFrame)
dataModel = lm(Life.Exp ~ HS.Grad + Murder, data = dataFrame)
summary(dataModel)