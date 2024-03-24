#Student Data - ITE224
student_names<-c("Jim","Tony","William","Mary","Melinda","Bill","John","Steve")
student_sex<-c("M","M","M","F","F","M","M","M")
prerequisites_completed<-c(TRUE,TRUE,TRUE,FALSE,TRUE,TRUE,FALSE,TRUE)
student_GPA<-c(3.6,2.3,3.3,3.0,2.9,2.7,3.1,3.7)
current_mark<-c(95,75,80,83,77,78,87,100)

#check variables with print(),length(),and typeof()
print(student_names)
length(student_names)
typeof(student_names)

print(student_sex)
length(student_sex)
typeof(student_sex)

print(prerequisites_completed)
length(prerequisites_completed)
typeof(prerequisites_completed)

print(student_GPA)
length(student_GPA)
typeof(student_GPA)

print(current_mark)
length(current_mark)
typeof(current_mark)

#Create a list to contain all vectors of student data in a single variable
student_data <-list(student_names,student_sex,prerequisites_completed,student_GPA,current_mark)


#Print the list structure
print(student_data)


#Create script code to check if each vector has the same number of data elements and report problems
#Print the length of each vector in the list
string_1<-"The length of vector"
string_2<-"in the list is"
current_element<-1
while(current_element<=length(student_data)){
  current_length<-length(student_data[[current_element]])
  print(sprintf("%s %d %s %s",string_1,current_element,string_2,current_length))
  current_element=current_element+1
}


#Print the element that has incorrect data
#we can create a correct data variable because we know the correct length should be 8
#while loop method
i<- 1
correct_length <- 8
while ( i <= length(student_data)){
 if(length(student_data[[i]]) != correct_length){
   print(sprintf("%s %d","Correct length is",correct_length))
   print(sprintf("%s %d %s %d","Vector",i,"has incorrect length of",length(student_data[[i]])))
   #Print current elements of the vector which has incorrect length
   print(student_data[[i]])
 }  else {
   print(sprintf("%s %d %s","Vector",i,"has a correct length"))
 }
  i = i+1
} 

#For loop method
i<- 1
correct_length <- 8
for(vector in student_data){
  if(length(vector)!=correct_length){
    print(sprintf("%s %d","Correct length is",correct_length))
    print(sprintf("%s %d %s %d","Vector",i,"has incorrect length of",length(student_data[[i]])))
    #Print current elements of the vector which has incorrect length
    print(student_data[[i]])
  } else {
    print(sprintf("%s %d %s","Vector",i,"has a correct length"))
  }
  i = i+1
}


#Use the results to find and fix an error in data
#Adding correct element to vector 5 of the list
student_data[[5]]<-c(95,75,80,83,77,78,87,100)
#Recheck the data
i<- 1
correct_length <- 8
while ( i <= length(student_data)){
  if(length(student_data[[i]]) != correct_length){
    print(sprintf("%s %d","Correct length is",correct_length))
    print(sprintf("%s %d %s %d","Vector",i,"has incorrect length of",length(student_data[[i]])))
    #Print current elements of the vector which has incorrect length
    print(student_data[[i]])
  }  else {
    print(sprintf("%s %d %s","Vector",i,"has a correct length"))
  }
  i = i+1
} 


#Creating Data Frames
student_data_frame = data.frame(
  student = student_names,
  Sex = student_sex,
  prereqs = prerequisites_completed,
  GPA = student_GPA,
  mark = current_mark)

str(student_data_frame)

print(student_data_frame)

#Indexing technique (filtering)
#filter out male students --> give out TRUE and FALSE value
males_only<-student_data_frame$Sex=='M'

#finds out average GPA od female students
L_GPA<-mean(student_data_frame$GPA[student_data_frame$Sex=='F'])

#What is current mark of student "Bill"?
Bill_mark<-student_data_frame$mark[student_data_frame$student=='Bill']
print(paste("The current mark of student Bill is",Bill_mark))

#What is the average mark of the male students?
Average_mark_males<-mean(student_data_frame$mark[student_data_frame$Sex=='M'])
print(paste("The average mark of the male students is",Average_mark_males))


#what is the Lowest mark in the class?
lowest_mark<-min(student_data_frame$mark)
print(paste("The lowest mark in class is",lowest_mark))

#What percentage of students have completed the course pre-requisites?
complete_req<-(student_data_frame$prereqs[student_data_frame$prereqs==TRUE])
complete_req_numbers<-length(complete_req)
complete_req_percent<-(complete_req_numbers/8)*100
#2nd way
complete_req_percent2<-sum((student_data_frame$prereqs==TRUE)/length(student_data_frame$prereqs))*100
print(paste("The percentage of student who have completed the course pre-requisites is",complete_req_percent2,"%"))

#Compare average class GPA to the average class mark
average_GPA<-mean(student_data_frame$GPA)
average_mark<-mean(student_data_frame$mark)
print(paste("Average GPA is",average_GPA,"and the Average mark is",average_mark))
if(average_GPA>3 && average_mark>80){
  print("The class is easy for students.")
}else {
  print("The class is too hard for students.")
}

#scatter plot in R
#Finding correlation between student GPA and mark
plot(student_data_frame$GPA,student_data_frame$mark)

#Histogram in R
#look at general distribution of the population of current marks
hist(student_data_frame$mark)
