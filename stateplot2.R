#Call history data library
library(historydata)
#pull in us_state_population data
data(us_state_populations)
#change to easy variable
pops <- us_state_populations
#create subset of dataset
ma.data<-c()
ma.data <- subset(pops, subset=(pops$year <= 1840 ))
summary(ma.data)
library(ggplot2)
maplot <- ggplot(data = ma.data, aes(state, population)) + geom_point()
last_plot() + facet_grid(. ~ year)
