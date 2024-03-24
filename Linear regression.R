#Creating input vector for lm() function
x<-c(141,134,178,156,108,116,119,143,162,130)
y<-c(62,85,56,21,47,17,76,92,62,58)
relationship_model<-lm(y~x)
View(relationship_model)

#Printing the coefficient
print(relationship_model)

#Get summary of the model
summary(relationship_model)

# Find the weight of a person with height 160
z<-data.frame(x=160)
predict_weight<-predict(relationship_model,z)
print(predict_weight)

b <- data.frame(x = 120)
predict_result<- predict(relationship_model, b)
print(predict_result)

#Creating input vector for lm() function
x <- c(141, 134, 178, 156, 108, 116, 119, 143, 162, 130)
y <- c(62, 85, 56, 21, 47, 17, 76, 92, 62, 58)
relationship_model<- lm(y~x)
# Giving a name to the chart file.
png(file = "linear_regression.png")
# Plotting the chart.
#main=title  cex=size of datapoints pch=shape of datapoints xlab=x axis label ylab=y axis label
plot(y,x,col = "red",main = "Height and Weight Regression",abline(lm(x~y)),cex = 1.3,
     pch = 16,xlab = "Weight in Kg",ylab = "Height in cm")
# Saving the file.
dev.off()


#Logistic Regression
#predict pass/fail using learning hours
Hours <- c(0.50, 0.75, 1.00, 1.25, 1.50, 1.75, 1.75, 2.00, 2.25, 2.50, 2.75, 3.00,
           3.25, 3.50, 4.00, 4.25, 4.50, 4.75, 5.00, 5.50)
Pass <- c(0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 1, 1, 1, 1, 1)
HrsStudying <- data.frame(Hours, Pass)
model <- glm(Pass ~.,family=binomial,data=HrsStudying)
summary(model)

#Predict passing percentage for each study hours
studyhours<-2
#insert intercept value and its coefificient from the summary report than multiply by study hours
ProbabilityofPassingExam<-1/(1+exp(-(-4.0777+ 1.5046*studyhours)))
print(ProbabilityofPassingExam)

studyhours<-4
ProbabilityofPassingExam<-1/(1+exp(-(-4.0777+ 1.5046*studyhours)))
print(ProbabilityofPassingExam)

ExamPassTable <- data.frame(column1=c(1, 2, 3, 4, 5), 
                            column2=c(1/(1+exp(-(-4.0777+1.5046*1))), 
                                      1/(1+exp(-(-4.0777+1.5046*2))), 
                                      1/(1+exp(-(-4.0777+1.5046*3))), 
                                      1/(1+exp(-(-4.0777+1.5046*4))), 
                                      1/(1+exp(-(-4.0777+1.5046*5))))) 
names(ExamPassTable) <- c("Hours of study", "Probability of passing exam") 
ExamPassTable


#Multiple Linear regression
Income <- c(26315, 39493, 37209, 24380, 25751, 44629, 38616, 33305, 36848,
            42551, 25700, 37303, 24659, 32617, 35771)
Age <- c(18, 20, 22, 23, 23, 25, 2, 28, 29, 32, 37, 41, 46, 49, 53)
Experience <- c(5, 7, 8, 6, 7, 5, 8, 6, 5, 7, 9, 6, 7, 8, 6)
df <- data.frame(Income, Age, Experience)
# ~ depends on 
# . means all other variables
# if we want to compare income with age only then we use income~Age isnetad of .
model <- lm(Income~.,data=df)
summary(model)
#Use the coefficient of intercept value to make prediction

# Finding the income with Age is 58 and Experience is 2 years
z <- data.frame(Age = 58, Experience = 2)
predict_income<- predict(model, z)
print(predict_income)

# Finding the income with Age is 60 and Experience is 5 years
z <- data.frame(Age = 60, Experience = 5)
predict_income<- predict(model, z)
print(predict_income)

#Multiple Logistic Regression
# 1 - Yes 0 - No
admit <- c(0,1,1,1,0,1,1,0,1,0) #dependent variable
gre <- c(380, 660, 800, 640, 520, 760, 560, 400, 540, 700)
gpa <- c(3.61, 3.67, 4, 3.19, 2.93, 3, 2.98, 3.08, 3.39, 3.92)
rank <- c(3, 3, 1, 4, 4, 2, 1, 2, 3, 2)
df <- data.frame(admit, gre, gpa, rank)
model<-glm(admit~.,family = binomial,data=df)
summary(model)
gre <- 790
gpa <- 3.8
rank <- 1
#probability of admit formula y=b0+b1x1 + b2x2 +b3x3 
ProbabilityOfAdmit <- 1/(1+exp(-(2.79052+(0.01999*gre)+(-3.92126*gpa)+(-0.34496*rank))))
print(ProbabilityOfAdmit)
#2nd way
prob_admit <- 1 / (1 + exp(-(model$coefficients[1] + model$coefficients[2] * gre + model$coefficients[3] * gpa + model$coefficients[4] * rank)))
print(prob_admit)