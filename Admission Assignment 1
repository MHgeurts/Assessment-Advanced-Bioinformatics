# assessment prior to the course Advanced Bioinformatics, Data mining and data integration for biomedical research
# name: Maarten Geurts
# Studentnr: 3823067


# assignment 1 

library(ggplot2)   # there are more plotting options but I prefer ggplot
formula <- data.frame(x=c(-10:10),y=2*cos(c(-10:10))) #creates a dataframe with of X which increments from -10 to 10 and Y=(2*cos(X))
ggplot(formula, aes(x,y)) + 
  stat_function(fun=function(X)2*cos(X), size=.5, col="red") + # this line plots the actual 2*cos(x) function
  geom_point(size=3, col="blue")+ # plots the points for the incrementing X from -10 to 10
  geom_line(col="blue", size=1, linetype=2) + # this line connects the dots of the incrementing x 
  scale_x_continuous(breaks=c(-10:10)) # set the interval of ticks on the x-axis 
