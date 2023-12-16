#install.packages('rpart')
#install.packages('rpart.plot')
#install.packages('randomForest')

library(rpart)
library(rpart.plot)
library(randomForest)

str(kyphosis)
head(kyphosis)

tree <- rpart(Kyphosis ~ ., method = 'class', data = kyphosis)
plot(tree, uniform = TRUE, main = 'Kyphosis Tree')
printcp(tree)
text(tree, use.n = TRUE, all=TRUE)
prp(tree)

rf.model <- randomForest(Kyphosis ~ ., data = kyphosis)
print(rf.model)
