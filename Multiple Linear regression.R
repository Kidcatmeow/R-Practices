#Multiple Linear regression
Youtube<-c(276.1,53.4,20.6,181.8)
Facebook<-c(45.4,47.2,55.1,49.6)
Newspaper<-c(83.0,54.1,83.2,70.2)
Sales<-c(26.5,12.5,11.2,22.2) #dependent variable
df<-data.frame(Youtube,Facebook,Newspaper,Sales)
model<-lm(Sales~.,data=df)
summary(model)

#Multiple Logistic Regression
Donate<-c(0,0,0,0,0,0,1,1,0,0,0,0,1,0,1,0,0,0,0,0,1)#depedent variable
income <- c(
  83.4, 84.3, 87.2, 86.6, 92, 90.4,
  138.3, 140.8, 90.5, 66.6, 91.2, 95.7, 76.3, 103.2,
  102.6, 104, 91.3, 84.5, 111.5, 110.7, 89.7
)
member <- c(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 2, 1, 1, 1, 2, 2, 1, 1, 2)
age <- c(53, 53, 50, 52, 45, 50, 51, 46, 54, 55, 55, 58, 52, 57, 58, 56, 47, 57, 56, 59, 60)
df<-data.frame(Donate,income,member,age)
model<-glm(Donate~.,family=binomial,data=df)
summary(model)