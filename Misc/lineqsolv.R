
A = matrix(c(1,1,0,1,0,1,0,1,1),nrow=3)
A
b = matrix(c(0,0,0))
b
solve(A,b)
fractions(solve(A,b))
