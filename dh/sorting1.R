## sorting##
set.seed(1123)
marks=ceiling(runif(11,5,10))
marks

#sort
sort(marks)

sort(marks,decreasing = TRUE)
sort(-marks)
rev(sort(marks))

#NA values and sort later

#order
order(marks) #indices value
marks
marks[order(marks)] # similar to sort(x)
order(-marks)



length(marks)
marks2=marks
marks[5]=NA #chk with na values
marks
order(marks2)
?order
order(marks2,na.last=NA)
length(marks2)
length(marks2)
anyNA(marks2)
order(marks2,na.last=FALSE)
mean(marks)
length(order(marks2,na.last=NA)),,

#ranks
marks
sort(marks)
table(marks)
rank(marks,ties.method='first')
rank(marks,ties.method='average')
rank(marks,ties.method='max')
