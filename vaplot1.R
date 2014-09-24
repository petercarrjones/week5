library(historydata)
data(us_state_populations)
pops <- us_state_populations
pops$year <- as.Date(pops$year, "%Y")
as.character(pops$year)
va.data<-c()
va.data <- subset(pops, subset=(pops$state=="Virginia" ))
summary(va.data)
library(ggplot2)
vaplot <- ggplot(data=va.data, aes(year, y=population))
summary(vaplot)
vaplot + geom_line()

