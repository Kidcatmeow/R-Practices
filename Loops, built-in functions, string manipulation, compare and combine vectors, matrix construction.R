#if-else in R
a <- 33
if (a<30){
  print("I amlesser than 35")
}else{
  print("I am larger than 35")
}

#repeat and break in R
nay <- 33
repeat{
  print(nay)
  nay=nay+1
  if(nay==39){
    break #stop the repeat loop
  }
}

#while loop in R
i <- 1
while(i<=10){
  print(i*i)
  i = i+1
}

a<-1
while (a <= 16){
  if(a==14){
    break;
    }
  print(a*a)
  a = a+1
}

#for-loop in R 
#printing 0 to 3
for(var in 0:3){
  print(var)
}

#printing 0 to 10
for(var in 0:10){
  print(var)
}

#using for loop with vectors
device<-c('Apple','Samsung','Dell','HP','Compaq','Lenovo')
for (i in device){
  print(i)
}

v<-LETTERS[1:14]
for(i in v){
  print(i)
}

#built-in functions
seq(30,40)
mean(15:25)
sum(44:77)
max(30,40,50)
min(30,40,50)
cumsum(1:6)

#String manipulation
a<-"Hello"
b<-"ITE240"
c<-"Students,how are you?"
print(paste(a,b,c))
#seperate each string with -
print(paste(a,b,c,sep = "-"))
#combine each string without space in between
print(paste(a,b,c,sep ="",collapse =""))

#Sample and sort lower case letters
letters
#random 10 sample size from letters
sample(letters,10)
#random 10 sample size from letters and sort them
sort(sample(letters,10))

#sample and sort lowercase and uppercase letters
low<-sample(letters,5)
upp<-sample(LETTERS,5)
c(low,upp)
sort(c(low,upp))
#or equivalent to
sort(c(sample(letters,5),sample(LETTERS,5)))

#Comparing and combining vectors 
x<-c(1,2,5,9,11)
y<-c(2,5,1,0,23)
#finding common value
intersect(x,y)
#what x has but y doesn't have
setdiff(x,y)
#what y has but x doesn't have
setdiff(y,x)
#including all values of both vectors, excluding the overlapped vlues
union(x,y)
#including all values of both vectors, including the overlapped vlues
c(x,y)

#Construct Matrix
#Construct Matrix with 3 col and 3 row runif must be 3x3=9 or 3
m<-matrix(runif(3),nrow = 3,ncol = 3)
print(m)
#Construct Matrix with 4 col and 4 row runif must be 4x4=16 or 4
m<-matrix(runif(16),nrow = 4,ncol = 4)
print(m)


