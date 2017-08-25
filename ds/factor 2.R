#factor practice r in action
patientid=c(1,2,3,4,5)
age=c(25,34,28,52)
diabtes=c("Type1", "Type2", "Type1", "Type1")
status <- c("Poor", "Improved", "Excellent", "Poor")
diabtes=factor(diabtes)
summary(diabtes)
summary(status)
status=(factor(status,order=TRUE))
status

