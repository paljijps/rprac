#Fitting Binomial, Poisson and Normal Distributions
library(grid)
library(MASS)
library(vcd)
#Fitting of Binomial
x<-rbinom(200,10,0.5)
x
table(x)
#goodness of fit method
gf<-goodfit(x,type="binomial", method="MinChisq")
summary(gf)

#Poisson of fitting
y<-rpois(200,5)
y
table(x)
#goodness of fit method
gf<-goodfit(x,type="poisson", method="MinChisq")
summary(gf) # will display chi-square and p-value (check p<.05, then reject Ho)

#Fitting Normal Distribution
library(survival)
library(fitdistrplus)
z<-rnorm(500,mean=10, sd=5)
z
fitdistr(z,"normal")
plotdist(z,hist=T,demp=T)

library(nortest)
#Aderson Darling (ad.test) & Shapiro-wilk test
ad.test(z) 
shapiro.test(z)
qqnorm(z)
qqline(z,col="red")
