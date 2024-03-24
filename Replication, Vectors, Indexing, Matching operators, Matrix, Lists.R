
#Rep() ,repeat 244 for 5 times
x<-rep(244,times=5)
print(x)

#replicate value from 1 to 3, repeat 5 times for each value
x<-1:3
y<-rep(x,each=5)
print(y)

#replicate value from 1 to 10, repeat 3 times for each value
x<-1:10
y<-rep(x,each=3)
print(y)

#Naming a vector
courses<-c('ITE224','ITE131','ITE475')
names(courses)<-c('Dr.Nay','Dr.Lanka','A.Atikom')
print(courses)

ID<-c(2010160002,2009710008,2010160003)
names(ID)<-c("Kidcat","Khing","Pear")
print(ID)

#Vector Indexing

#Positional Indexing
test<-c('ITE224','Data','Science')
test[1]
test[2]
test[3]

#Logical Indexing
#shows only the vector that is TRUE
x<-c(11,22,33,44,55,66,77,88)
y<-c(TRUE,FALSE,TRUE,FALSE,TRUE,FALSE,TRUE,FALSE)
x[y]

#Named Indexing
b<-c(N=30,a=45,y=20)
print(b)

#Blank Indexing
e<-1:20
e[]

#Matching operator
x<-c(11,22,33,44,55,66,77,88)
#Search for 35 in x
35%in%x
#Search for 22 in x
22%in%x

#Matrix
m<-matrix(nrow=2,ncol=3)
print(m)

#generate random numbers into matrix 
#can only in put 2,3,6 in the runif
m<-matrix(runif(6),nrow=2,ncol=3)
print(m)

#Lists
list<-list(1,2,3)
print(list)

#List mixed of datatypes
mix<-list(1,"abc",1.23,TRUE)
print(mix)