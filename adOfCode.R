#advent of code 2020 - question 1
#find the two numbers that add up to 2020

team_A <- x # Number of goals scored by Team A
team_B <- 1 # Number of goals scored by Team B


a = x;
b = x;
c = x;

count = x[1,]
count2 = x[2,]
for (j in 1:200) {
  for (i in j:200) {
    for (k in i:200) {
  if (count + x[j,] + count2 == 2020){
    number_1 = x[i,]
    number_2 = x[k,]
    number_3 = x[j,]
    #print(x[i,])
    #print(x[j+1,])
    #print(x[i,]*x[j+1,])
  else
  count = x[i,]
  if (count + x[j,] + count2 == 2020){
    number_1 = x[i,]
    number_2 = x[k,]
    number_3 = x[j,]
    #print(x[i,])
    #print(x[j+1,])
    #print(x[i,]*x[j+1,])
  }
  else
  count2 = x[k,]
if (count + x[j,] + count2 == 2020){
  number_1 = x[i,]
  number_2 = x[k,]
  number_3 = x[j,]
  #print(x[i,])
  #print(x[j+1,])
  #print(x[i,]*x[j+1,])
}
}
}
  }
}

#function to check all combinations of numbers
number_1 * number_2 * number_3


#advent of code 2020 - question 2

data2 <- read.table("~/Desktop/AdventofCode2019/ad_2020_2.0", quote="\"", comment.char="")
names(data2)[1] <- "Number_limit"
names(data2)[2] <- "Letter_required"
names(data2)[3] <- "Password"


pattern <- "\\d[[:punct:]]\\d"


x <- data2[1,1]
substring(x, 1,1)
substring(x, 1,1)

pattern <- "(\\d+)"

for (j in 1:1000) {
  string <- data2$Number_limit[j]
  string2 <- data2$Letter_required[j]
  
  numbers <- stringr::str_extract_all(string, pattern, simplify = TRUE)
  letters <- stringr::str_extract_all(string2,"[[:alpha:]]", simplify = TRUE)
  
  data2$Min_Required[j] <- as.integer(as.character(numbers[1]))
  data2$Max_Required[j] <- as.integer(as.character(numbers[2]))
  data2$Letter[j] <- letters
}
 
for (j in 1:1000) {
  string <- data2$Password[j]
  pattern <- data2$Letter[j]
  t <- regmatches(string, gregexpr(pattern, string))
  t <- as.integer(unlist(t))
  data2$Position[j] <- (t[[1]])
}

count = 0
for (j in 1:1000) {
  if (data2$Length[j] >= data2$Min_Required[j] & data2$Length[j] <= data2$Max_Required[j]) {
    count = count + 1
    print("right!") 
    }
  else
    print("wrong!")
}
