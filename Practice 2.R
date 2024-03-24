#3.	Create two vectors x<-30 and y<-50. Calculate the product of x and y. 
#Store the result in z. Make another vector (myvec) for x,y, and z and then find minimum, maximum, length, variance of myvec. 

x<-30
y<-50
x*y
z<-x*y
myvec<-c(x,y,z)
min(myvec)
max(myvec)
length(myvec)
var(myvec)

#4
rainfall<-c(0.3,0.5,0.7,0.8,0.4,0.2)
mean(rainfall)
sd(rainfall)
cumsum(rainfall)
which.max(rainfall)
which.min(rainfall)

#5 
v1<-c(2,3,4,5,6,7)
v2<-c(4,5,6,7,8,9)
intersect(v1,v2)
union(v1,v2)
v3<-c(v1,v2)
print(v3)
