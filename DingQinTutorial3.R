library(ggplot2)
library(dplyr)

# Bar chart for relationship between waiting time and service satisfaction
ggplot(data=labs, aes(x=WaitTime,fill=SvcSat)) +  geom_bar(colour="black",stat="bin")

#Calculate BMI
labs$BMI <- ( labs$WT / ( labs$HT * labs$HT ) )


# Check correlation between Total Cholesteral and BMI
labs$TC <- as.numeric(labs$TC)
lm <- lm(labs$BMI ~ labs$TC)
summary(lm)
#High R-squared value and small p-value, the model suggests correlation between BMI and TC

# Multiple Linear Regression Example 

group_by(labs, Gender="M", ETHNIC = "C")

fit <- lm(BMI ~ AGE + SBP + TC, data=labs)
summary(fit) # show results
newdata = data.frame(AGE=45, SBP=135, TC=150)
prediction <- predict(fit, newdata)
prediction

