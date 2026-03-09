# Problem Statement 2: Apply appropriate R functions to compute the mean, mode, variance, 
# and standard deviation of variables in the mtcars dataset and display the results.

data(mtcars)
head(mtcars)

mean_val <- mean(mtcars$mpg)
median_val <- median(mtcars$mpg)
variance <- var(mtcars$mpg)
sd_val <- sd(mtcars$mpg)

get_mode <- function(x){
    unique_val <- unique(x)
    unique_val[which.max(tabulate(match(x, unique_val)))]
}

mode <- get_mode(mtcars$mpg)

cat("mean", mean_val)
cat("median", median_val)
cat("variance", variance)
cat("standard deviation", sd_val)
cat("mode", mode)
