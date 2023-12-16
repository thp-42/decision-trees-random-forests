#install.packages('rpart')
#install.packages('rpart.plot')

library(rpart)
library(rpart.plot)

str(kyphosis)
head(kyphosis)

tree <- rpart(Kyphosis ~ ., method = 'class', data = kyphosis)
plot(tree, uniform = TRUE, main = 'Kyphosis Tree')
printcp(tree)
text(tree, use.n = TRUE, all=TRUE)
prp(tree)
