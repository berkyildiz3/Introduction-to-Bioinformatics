#Intro 2 R language
#R basics
#R datatypes

#assign true to a
a<-TRUE
#print type of a
print(class(a))

#assign interger to b
b<-23.5
#print type of b
print(class(b))

#assign string to c
c<- "Hello world!"
#print type of c
print(class(c))

#assign a vector to apple
apple <- c("red", "green","yellow")
#print the type of apple vector
print(class(apple))

#assign a vector into c
odd<-c(1,3,5,7,9,11)
#print type of odd vector
print(class(odd))


#assing the numbers from 1 to 12 to my_vector
my_vector=c(1:12)
#print the elements of my_vector
print(my_vector)


#assign the indexes which are smaller than 5 in my_vector to idx
idx<-which(my_vector<5)
#print the elements of idx
print(idx)


#create a matrix with by dividing my_vector to 3 rows
my_matrix<-matrix(my_vector, nrow=3)
print(my_matrix)

#return the dimension of a matrix
dim(my_matrix)

#opens the help window for matrices
help(matrix)

#sorts the elements of matrix according to row
my_matrix_row<-matrix(my_vector, nrow=3, byrow=TRUE)
print(my_matrix_row)


#print just the 2nd row
print(my_matrix[2,])


#print just the 3rd column
print(my_matrix[,3])


#print the element 3rd row 2nd column
print(my_matrix[3,2])


#assign 15 to element on 3rd row 2nd column
my_matrix[3,2]<-15

print(my_matrix)



#generate sequence
evens<-seq(2,12,2)

#generate sequence
odds<-seq(1,11,2)

#concatenate vectors by row
mt2<-rbind(evens, odds)



#concatenate vectors by column
mt3<-cbind(evens, odds)


#create data frame
BMI <- 	data.frame(
  gender = c("Male", "Male","Female","Female", "Male","Female"), 
  height = c(152, 171.5, 165, 173, 182, 163), 
  weight = c(81,93, 78, 57,79,82),
  Age = c(42,38,26, 34,21,46)
)
print(BMI)
print(class(BMI))



print(BMI$Age)

#obtain females from the data frame
ind<-which(BMI$gender=="Female")
print(ind)
#obtain the heights of the female
female_heights<-BMI$height[ind]
print(female_heights)
#find mean of the female heights
mean_heigth<-mean(female_heights)
print(mean_heigth)


mean_heigth2<-mean(BMI$height[which(BMI$gender=="Female")])
print(mean_heigth2)



#find the youngest individual
youngest<-BMI[which(BMI$Age==min(BMI$Age)),]


names(BMI)

names(BMI)[4]<-"age"

n = matrix(c(3,9,5,1,-2,8), nrow = 2)
s =  c("Feb","Mar","Apr")
b = c(TRUE,  FALSE,  TRUE,  FALSE,  FALSE )
x = list( n, s, b)
print (x)

x[[2]]







