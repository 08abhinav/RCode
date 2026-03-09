# Problem Statement 3: Load a dataset from a CSV file in R and generate a bar chart, pie chart, 
# and 3D pie chart to visualize the data. 

setwd("C:/Users/viplaw/Documents") 

data <- read.csv("sales.csv") 

print(data) 

categories <- data[, 1] 
values <- data[, 2] 

barplot( 
    values, 
    names.arg = categories, 
    col = "skyblue", 
    main = "Bar Chart Representation", 
    xlab = "Categories", 
    ylab = "Values" 
) 

pie( 
    values, 
    labels = categories, 
    col = rainbow(length(values)), 
    main = "Pie Chart Representation" 
) 

install.packages("plotrix") 
library(plotrix) 

pie3D( 
    values, 
    labels = categories, 
    explode = 0.1, 
    main = "3D Pie Chart Representation" 
) 
Sample CSV File Format (sales.csv)