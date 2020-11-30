help(rnorm)
#create vector1
vector1 <- rnorm(12, mean = 0, sd = 1)
vector1

#create vector2
vector2 <- rnorm(12, mean = 2, sd = 1)
vector2

#find indices with elements smaller than 2
indexSmaller2Vector2 <- c(which(vector2 < 2))
indexSmaller2Vector2

#assign these indices 0
vector2[indexSmaller2Vector2] <- 0
vector2

#add vector 1 and 2
vector_sum <- c(vector1 + vector2)
vector_sum

#create matrix with matrix1
mt1 <- matrix(vector1, nrow=3, ncol=4)
mt1

#find the index of minimum element
minIndex <- which(mt1 == min(mt1), arr.ind = TRUE) 
minIndex

#change the value in minimum index with 5
mt1[minIndex] <- 5
mt1

#create data frame
df1 <- data.frame(
        vector1 = vector1,
        vector2 = vector2,
        char = c("el1","el2","el3","el4","el5","el6",
                 "el7","el8","el9","el10","el11","el12")
)
#print df1
df1

#change name of the third column
colnames(df1)[3] <- "char1"
df1

#create list
ls1 = list(mt1, vector1, vector2)


#print second elements
ls1[[2]]


#standard deviation function
sid.dev <- function(x){
  n <- length(x)
  xbar <- sum(x)/n
  diff <- x-xbar
  sum.sq <- sum(diff^2)
  var <- sum.sq / (n-1)
  sqrt(var)
}
#test for function
sid.dev(vector1)

#bonus part - single line standard deviation
my_sd_function <- function(x){
  
  sqrt(sum((x-mean(x))^2/(length(x)-1)))
}

#test for bonus- single line sd
my_sd_function(vector1)

