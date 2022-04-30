##Simulate heights of 500 students of PU with mean=168,sd=3

height<-rnorm(n=500,mean=168,sd=3)
height
hist(height)
quantile(height)
qqnorm(height)
qqline(height,col="green")



library(nortest)
ad.test(height)
shapiro.test(height)

#generating random sample from Binomial distribution

bim<-rbinom(40,10,0.3)
mean(bim)
sd(bim)
dbinom(2,10,0.3)
pbinom(5,10,0.3)
qbinom(.975,10,0.3)

#generating random sample from Poisson distribution

poi<-rpois(40,2)
poi
mean(poi)
sd(poi)
dpois(2,2)
ppois(3,2)
qpois(.975,2)



#Hypothesis & testing problem

#single sample t-test

x<-c(12,23,24,25,63,44,35,87,77,88,90)
t.test(x,mu=30)

#two sampe t-test

x<-c(32,13,44,75,16,47,68,119,58,91,113)
y<-c(21,39,54,65,76,87,104,106,45,140,132)
t.test(x,y,var.equal=TRUE)
t.test(x,y)

#paired t-test
t.test(x,y,paired=TRUE)

#to compute Covariance between (x,y) and testing variance
var(x,y)
var.test(x,y)

#All standard distributions are available in R

#For Normal distribution N(0,1)

#dnorm stands for value of pdf/pmf, pnorm for cdf, qnorm for quantile and #rnorm for random numbers.
dnorm(0,mean=0,sd=1)   #f(0),pdf
pnorm(1.96,mean=0,sd=1) #F(1.96), cdf
qnorm(.975,mean=0,sd=1) #invcdf(0.975),calculating critical point

##Simulate heights of 500 students of PU with mean=168,sd=3

height<-rnorm(n=500,mean=168,sd=3)
height
mean(height)
sd(height)
quantile(height)

#generating random sample from Binomial distribution

bim<-rbinom(40,10,0.3)
mean(bim)
sd(bim)
dbinom(2,10,0.3)
pbinom(5,10,0.3)
qbinom(.975,10,0.3)

#generating random sample from Binomial distribution

poi<-rpois(40,2)
mean(poi)
sd(poi)
dpois(2,2)
ppois(3,2)
qpois(.975,2)

#generating random sample from Chisquare distribution

chi<-rchisq(40,10)
chi

mean(chi)
sd(chi)
dchisq(2,2)
pchisq(3,2)
qchisq(.925,20)
#F(X>3)=1-F(X<3), with 4 d.f; First Compute: pchisq(2,4) 
pchisq(3,4) 
1-pchisq(3,4)

#generating random sample from t-distribution

t<-rt(40,15)
t
mean(t)
sd(t)
dt(3,12)
pt(1.5,15)
qt(.475,12)

##generating random sample from F-distribution

f<-rt(40,8,7)
f
mean(f)
sd(f)
df(3,8,7)
pf(2.5,15,10)
qf(.975,12,8)


# Generating integers with replacement
x<-sample(1:10, 100, replace=TRUE)
x
table(x)

