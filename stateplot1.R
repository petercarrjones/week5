#Call history data library
library(historydata)
#pull in us_state_population data
data(us_state_populations)
#change to easy variable
pops <- us_state_populations
#create subset of dataset
ma.data<-c()
ma.data <- subset(pops, subset=(pops$year <= 1850 ))
summary(ma.data)
library(ggplot2)
maplot <- qplot(data = ma.data, x=state, geom=  "histogram" )
last_plot() + theme_bw()

