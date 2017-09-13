# assignments 3 graphs 

##Assignment - 3 : 09 Sep 17   : Due Date : 11 Sep 17

qtr = c('Q1','Q2','Q3','Q4')

sales = c(10000,13000,12000,15000)

df1 = data.frame(qtr,sales)
df1
barplot(df1$sales,
       main=" *****coy sales*****",
        xlab="quarter q1 to q4",
        ylab="**sales numbers**",
        names.arg=df1$qtr,
        ylim=c(0,15000),border="purple")
  


## using vectors
sales=c(10000,13000,12000,15000)
(names(sales)=c("q1","q2","q3","q4"))

# A basic barplot
barplot(sales, col=rgb(0.2,0.4,0.6,0.6), xlab="quater",ylab="sales in" )


