'5.2'
x = rep(c(1,7,13),each=3)
y = rep(0:2,3)
x + y

'6.3'
x = sample(1:10,10000,replace=TRUE) 
x1 = x[1:9999]
x2 = x[2:10000]
sum(x1 == 1 & x2 == 2)

'7.2'
length(which(x>5))
