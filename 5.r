Problem Statement 6: Perform a linear regression on the following mice dataset: 
  Height: 140, 142, 150, 147, 139, 152, 154, 135, 148, 147 
  Weight: 59, 61, 66, 62, 57, 68, 69, 58, 63, 62 
Derive the relationship coefficients and summarize the regression results. 
Objective: The objective of this program is to perform linear regression on the given mice dataset to determine the relationship between height and weight, 
derive the regression coefficients, and summarize the regression results using appropriate R functions.

R Program:  
height <- c(140, 142, 150, 147, 139, 152, 154, 135, 148, 147)   
weight <- c(59, 61, 66, 62, 57, 68, 69, 58, 63, 62)   
mice_data <- data.frame ( Height = height, Weight = weight )   
print(mice_data)   
reg_model <- lm(Weight ~ Height, data = mice_data)   
coefficients(reg_model)   summary(reg_model)   
