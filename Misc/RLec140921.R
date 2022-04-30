


(A <- matrix(nrow=5, ncol=6))
(B <- matrix(c(1:12),nrow=2))
(C <- matrix(c(1:12),nrow=2,ncol=2))
(D <- matrix(c(1:2),nrow=2,ncol=6))


x <- matrix(20:11, nrow = 2)
rownames(x) <- rownames(x, do.NULL = FALSE, "Sr.No. ")
colnames(x) <- colnames(x, do.NULL = TRUE)
colnames(x) <- c("a", "b", "c", "D", "e")
x



(A<-matrix(c(3,5,2,3),nrow = 2,ncol = 2))
(B<-matrix(c(1,1,0,1),nrow = 2,ncol = 2))
A%*%B
A*B




trac<-function(data)sum(diag(data))
trac(A)


(x<-c(3,7,5,2,1,10)) 
rank(x) # 1(1), 2(2), 3(3), 5(4), 7(5), 10(6)



H <- c(7,12,28,3,41)
png(file = "barchart.png")
barplot(H)
dev.off()




H <- c(7,12,28,3,41)
M <- c("Mar","Apr","May","Jun","Jul")
png(file = "barchart_months_revenue.png")
barplot(H,names.arg = M,xlab = "Month",ylab = "Revenue",col = "blue", main = "Revenue chart",border = "red")
dev.off()



colors <- c("green","orange","brown")
months <- c("Mar","Apr","May","Jun","Jul")
regions <- c("East","West","North")
Values <- matrix(c(2,9,3,11,9,4,8,7,3,12,5,2,8,10,11),nrow = 3,ncol = 5,byrow = TRUE)
png(file = "barchart_stacked.png")
barplot(Values,main = "total revenue",names.arg = months,xlab = "month",ylab = "revenue", col = colors)
legend("topleft", regions, cex = 1.3, fill = colors)
dev.off()



v <- c(9,13,21,8,36,22,12,41,31,33,19)
png(file = "histogram.png")
hist(v,xlab = "Weight",col = "yellow",border = "blue")
dev.off()



v <- c(9,13,21,8,36,22,12,41,31,33,19)
png(file = "histogram_lim_breaks.png")
hist(v,xlab = "Weight",col = "green",border ="red", xlim = c(0,40), ylim = c(0,5), breaks = 5)
dev.off()



x <- c(21, 62, 10, 53)
labels <- c("London", "New York", "Singapore", "Mumbai")
png(file = "city.png")
pie(x,labels)
dev.off()



x <- c(21, 62, 10, 53)
labels <- c("Pune", "Nashik", "Aurangabad", "Mumbai")
png(file = "city_title_colours.png")
pie(x, labels, main = "City pie chart", col = rainbow(length(x)))
dev.off()



x <- c(21, 62, 10,53)
labels <- c("London","New York","Singapore","Mumbai")
piepercent<- round(100*x/sum(x), 1)
png(file = "city_percentage_legends.png")
pie(x, labels = piepercent, main = "City pie chart",col = rainbow(length(x)))
legend("topright", c("Pune","Nashik","Aurangabad","Mumbai"), cex = 0.8, fill = rainbow(length(x)))
dev.off()



library(plotrix)
x <- c(21, 62, 10,53)
lbl <- c("Nashik","Aurangabad","Navi Mumbai","Nagpur")
png(file = "3d_pie_chart.png")
pie3D(x,labels = lbl,explode = 0.1, main = "Pie Chart of Countries ")
dev.off()


input <- mtcars[,c('mpg','cyl')]
print(head(input))


png(file = "boxplot.png")
boxplot(mpg ~ cyl, data = mtcars, xlab = "Number of Cylinders", ylab = "Miles Per Gallon", main = "Mileage Data")
dev.off()




png(file = "boxplot_with_notch.png")
boxplot(mpg ~ cyl, data = mtcars,
        xlab = "Number of Cylinders",
        ylab = "Miles Per Gallon",
        main = "Mileage Data",
        notch = TRUE,
        varwidth = TRUE,
        col = c("green","yellow","purple"),
        names = c("High","Medium","Low")
)
dev.off()




input <- mtcars[,c('wt','mpg')]
print(head(input))



input <- mtcars[,c('wt','mpg')]
png(file = "scatterplot.png")
plot(x = input$wt,y = input$mpg,
     xlab = "Weight",
     ylab = "Milage",
     xlim = c(2.5,5),
     ylim = c(15,30),
     main = "Weight vs Milage"
)
dev.off()



png(file = "scatterplot_matrices.png")
pairs(~wt+mpg+disp+cyl,data = mtcars,main = "Scatterplot Matrix")
dev.off()



qqplot(x, y)
qqnorm(ufc$dbh.cm)
qqline(ufc$dbh.cm)


ggplot(data = ufc, mapping = aes(x = species, y = height.m)) + geom_boxplot()


function1<- function(x){x ** 2}
function2<-function(x){x ** 3}
function3<-function(x){x / 2}
function4<-function(x){2*(x ** 3)+(x ** 2)-(x / 2)}

curve(function1, col = 1)
curve(function2, col = 2, add = TRUE)
curve(function3, col = 3, add = TRUE)
curve(function4, col = 4, add = TRUE)



par(mfrow=c(3,2), mar=c(4,4,1,1), las=1)
plot(ufc$dbh.cm, ufc$height.m)




























