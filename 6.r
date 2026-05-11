Problem Statement 7: Apply logistic regression to the Iris dataset, creating a subset with only two species, and interpret the results. 
Objective: The objective of this program is to apply logistic regression on the Iris dataset by creating a subset containing only two species and 
to analyze and interpret the relationship between flower measurements and species classification. 

R Program: 
data(iris)   
str(iris)   
iris_subset <- subset(iris, Species != "virginica")   
iris_subset$Species <- factor(iris_subset$Species)   
head(iris_subset)   
logistic_model <- glm( Species ~ Sepal.Length + Sepal.Width, data = iris_subset, family = binomial ) 
summary(logistic_model)   
predicted_probabilities <- predict(logistic_model, type = "response")   
predicted_class <- ifelse(predicted_probabilities > 0.5, "versicolor", "setosa")   
table(Predicted = predicted_class, Actual = iris_subset$Species)   
