#mainly for Russell, to replicate some things in R

#Basic data read into R command
data.in <- read.csv("k_bb_data.csv")

#print the start of the file
head(data.in)

#print some data summary information
summary(data.in)


#create a multiple window plot
par(mfrow=c(1,2))

#initialize a numeric vector of length 0
cor_v <- numeric(0)

#basic for loop structure: define i each loop as being in the vector 1 to 7. 
for(i in 1:7){
  #columns in a dataframe can be accessed with [row,column]
  #you can leave the row or column selector empty to select everything in that row or column
  rsq <- cor(data.in[,3],data.in[,3+i])^2
  #the c function appends one variable to another variable
  cor_v <- c(cor_v,rsq)
}
plot(cor_v,xlab="Successive Samples",ylab="R Squared",ylim=c(0,1),pch=19,main="Strikeouts")


#initialize a numeric vector of length 0
cor_v <- numeric(0)

#basic for loop structure: define i each loop as being in the vector 1 to 7. 
for(i in 1:7){
  #columns in a dataframe can be accessed with [row,column]
  #you can leave the row or column selector empty to select everything in that row or column
  rsq <- cor(data.in[,11],data.in[,11+i])^2
  #the c function appends one variable to another variable
  cor_v <- c(cor_v,rsq)
}
plot(cor_v,xlab="Successive Samples",ylab="R Squared",ylim=c(0,1),pch=19,main="Walks")
