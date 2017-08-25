#list1
s=c("my first list ")
s
v1=c(25,26,18,39)
v1
m1=matrix(1:10,nrow=2,byrow=T)
m1
vos=c("one","two","three")
vos
formno=c(17010,17045,17012)
formno
name=c("achal","apoorva","goldie")
formno
gender=c("m","f","m")
gender
df=data.frame(formno,name,gender,stringsAsFactors = F)
df
str(df)
mylist=list(s,v1,m1,vos,df)
str(mylist)
mylist=list(title=s,ages=v1,m1,vos,students=df)
mylist
mylist[2]
mylist[3]
mylist$students$gender
mylist[2]
