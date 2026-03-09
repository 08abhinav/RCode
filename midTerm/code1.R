# Problem Statement 1: Apply basic R programming concepts to develop a program that creates 
# a numeric vector of marks for 10 students, uses conditional statements to classify each student 
# as Distinction, First Division, Second Division, Pass, or Fail, and displays the results using a 
# loop. Further, install and load the ggplot2 package and generate a bar chart to visualize the 
# students’ marks.

marks <- c(85, 72, 64, 58, 91, 47, 39, 76, 69, 82) 
students <- paste("Student", 1:10)

for(i in 1:length(marks)){
    if (marks[i] >= 75) { 
        result <- "Distinction" 
    } else if (marks[i] >= 60) { 
        result <- "First Division" 
    } else if (marks[i] >= 50) { 
        result <- "Second Division" 
    } else if (marks[i] >= 40) { 
        result <- "Pass" 
    } else { 
        result <- "Fail" 
    } 
    cat(student[i], "Marks: ", marks[i], "Result", result)
}

install.package(ggplot2)
library(ggplot2)

stud_data <- data.frame(
    Student = student, 
    marks = marks
)

ggplot(student_data, aes(x = Student, y = Marks)) + 
geom_bar(stat = "identity", fill = "steelblue") + 
labs( 
title = "Marks of Students", 
x = "Students", 
y = "Marks" 
) + 
theme_minimal() 
