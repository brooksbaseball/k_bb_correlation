#mainly for Russell, to replicate some things in R

#Basic data read into R command
data.in <- read.csv("k_bb_data.csv")

#create a multiple window plot
par(mfrow=c(1,2))

#Strikeouts
cor_v <- sapply(data.in[,4:10],function(x,y) cor(x,y)^2 ,y=data.in[,3])
plot(cor_v,xlab="Successive Samples",ylab="R Squared",ylim=c(0,1),pch=19,main="Strikeouts")

#Walks
cor_v <- sapply(data.in[,12:18],function(x,y) cor(x,y)^2 ,y=data.in[,11])
plot(cor_v,xlab="Successive Samples",ylab="R Squared",ylim=c(0,1),pch=19,main="Walks")
