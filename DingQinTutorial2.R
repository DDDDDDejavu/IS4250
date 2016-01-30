
summary(labs$SvcSat)
summary(labs$WaitTime)


# Pie Chart for Service Satisfaction
mytable <- table(labs$SvcSat)
lbls <- paste(names(mytable), "\n", mytable, sep="")
pie(mytable, labels = lbls, 
    main="Pie Chart of Service Satisfaction\n")


library(ggplot2)
# Histogram for Waiting Time
#hist(labs$WaitTime)
ggplot(data=labs, aes(WaitTime)) + geom_histogram()

# Bar chart for relationship between gender and service satisfaction
ggplot(data=labs, aes(x=Gender,fill=SvcSat)) +  geom_bar(colour="black", stat="count")

# Bar chart for relationship between age and service satisfaction
ggplot(data=labs, aes(x=AGE,fill=SvcSat)) +  geom_bar(colour="black",stat="bin")
