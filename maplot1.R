#Call history data library
library(historydata)
#pull in us_state_population data
data(us_state_populations)
#change to easy variable
pops <- us_state_populations
#create subset of dataset
ma.data<-c()
del.data<-c()
ma.data <- subset(pops, subset=(pops$state=="Massachusetts" ))
del.data <- subset(pops, subset=(pops$state=="Delaware" ))
summary(ma.data)
library(ggplot2)
maplot <- ggplot(data=ma.data, aes(x=year, y=population))
#last_plot()+ theme_bw() + labs(xlab="Year", ylab= "Massachusetts Population(in 1,000s)")

summary(del.data)
delplot <- ggplot(data=del.data, aes(x=year, y=population))
                  delplot + maplot + geom_smooth()
print(c(delplot, maplot))
