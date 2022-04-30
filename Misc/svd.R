library(MASS)
A = matrix(c(3,2,2,2,3,-2),nrow = 2,byrow = T)
A
x = svd(A)
x
