test <- read.csv(file="C:/Users/Ale/Dropbox/IBM/postulaciones.csv", header=TRUE, sep=",")
test1 <- read.csv(file="C:/Users/Ale/Dropbox/IBM/post 1 .csv", header=TRUE, sep=",")

enterprise <-test$salary
enterprise <- unique(enterprise)

seqNEw <- seq(1, length(unique(enterprise)), 1)

iname <- iter(enterprise)

for (i in 1:length(unique(enterprise)))
    {
    test$salary<- as.character(test$salary)
    c = enterprise[i]
    chnge <- as.character(c)
    test$salary[test$salary== chnge] <- seqNEw[i]
}

enterprise <-test$salary
enterprise <- unique(enterprise)
enterprise

#################################################################################33

enterprise_s <-test$salary
enterprise_s <- unique(enterprise_s)
enterprise

val <-test$salary
temp1<- as.character(test$salary)
i=0
for (i in 1:length(val))
{
  temp2 <- temp1[i]
  tempTuple <- strsplit(temp2, " a ")
  test$salary[i] <- tempTuple[[1]][1]
  max_salary = append(max_salary, tempTuple[[1]][2], after = length(max_salary))
}

strsplit(val, " a ")