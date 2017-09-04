#
x=scan()
x=1:12
x=c(1:12,1,5,5)
x
table(x)
names(table(x))
observations(table(x))
sort(table(x))
sort(table(x),dec =T)
names (table(x))[1]
names(sort(table(x),dec=T))[1]
set.seed(1234)
marks=ceiling(rnorm(100,60,15))
marks
mean(marks)
table(marks)
range(marks)
marks[c(1,2,3,4,5)]=c(0,10,11,99,100)
(bks=seq(0,100,10))

# slabs now 0-10,10-20
classint1=cut(marks,breaks=bks)
head(classint1,n=5)
head(marks)
table(classint1)
(classint2=cut(marks,breaks=bks,right=F))
head(classint2,n=5)
# table(classint2,useNA='ifany)

LETTERS[1:5]
month.abb[1:5]

classint1b=cut(marks,breaks=bks,include.lowest=T,labels=LETTERS[1:length(bks)-1])
as.character(head(classint1b,n=5))




