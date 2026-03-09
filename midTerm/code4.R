# Problem Statement 4: Analyze a given CSV dataset to identify missing and inconsistent 
# values and perform data cleaning using suitable R functions.

setwd("C:/Users/viplaw/Documents") 
data <- read.csv("employee.csv", stringsAsFactors = FALSE) 
str(data) 
summary(data) 
colSums(is.na(data)) 
data[!complete.cases(data), ] 
data$Salary[is.na(data$Salary)] <- mean(data$Salary, na.rm = TRUE) 
data$Department[data$Department == "" | is.na(data$Department)] <- "Unknown" 
data$Age[data$Age <= 0] <- NA 
data$Age[is.na(data$Age)] <- mean(data$Age, na.rm = TRUE) 
data <- unique(data) 
print(data) 
summary(data) 
Sample CSV File Format (employee.csv) 