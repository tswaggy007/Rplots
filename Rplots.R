#Q1
#set my wkdir
> setwd("~/Documents/BIOMETRY/week3")
#check my wkdir
> getwd()
#call out mtcars data (checksum)
> mtcars
#plot a histogram without a title (Checksum)
> hist(mtcars$mpg, main = "", xlab = "mpg", col = "gold")
#Q2
#load package readr
library(readr)
#read ps3 file
ps3 <- read_csv("Prob Set 3 Q2.csv")
#summarize ps3
>summary(ps3)
#take a look at ps3 data
>ps3
#call out package plyr (used to get a frequency table)
> library(plyr)
#generate frequency table
> count(ps3, 'Group')
#Sample output of frequency table without relative frequency
Group freq
1     A   22
2     B   10
3     C   11
4     D   41
#call out package gmodels to get relative frequency without calculating
> library(gmodels)
#cross tabulate data and get a sample output with relative frequency
> ps_tally <- CrossTable(ps3$Observation, ps3$Group)
#sample output with relative frequency (data is long so only last row provided)
Column Total |        22 |        10 |        11 |        41 |        84 | 
  |     0.262 |     0.119 |     0.131 |     0.488 |           | 
  ----------------|-----------|-----------|-----------|-----------|-----------|
#generate vector for relative frequencies
>ps3b_vector=c(0.262,0.119,0.131,0.488)
#allocate names to each vector created above
>names(ps3b_vector)=c("A","B","C","D")
#generate a general color barplot for relative frequencies
>barplot(ps3b_vector)
#Finetune my barplot (color code each bar)
>barplot(ps3b_vector, ylab = "Frequency", xlab = "Groups", ylim=c(0,0.5), col=c(1,2,3,4) )
#Q3
> q3 = rbeta(10000,5,2)
>hist(q3, main = "", col = "blue", ylim=c(0,1500))
#Q5
#plot a scatter plot of mpg (y) vs wt (x)
> plot(mtcars$mpg ~ mtcars$wt, xlab="Car Weight", ylab="Miles Per Gallon", pch=21, bg="black", ylim=c(10,35))

                                                                                                                
                                                                                                                      
                                                                                              
                                                                                                                                              
                                                                                                                                                                                                                                                                                                                                                                                                   
                                                                                                                                                                                                                                                                                                        
                                                                                                                                                                                                                                                                                                                          
                                                                                                                                                                                                                                                                                                                                                                                                
                                                   
    
  