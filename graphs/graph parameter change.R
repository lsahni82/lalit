#

Opar=par(no.readonly=T)
# some parameters can be changed , so this command 
#is for changing the parameters on which we have worked
list(Opar)
par()
par(pin=c(3,3))
# for width and height
par(col.lab='orange')
# for color
hist(mtcars$mpg)
par(Opar) # reset to defaults parameters of graph
hist(mtcars$mpg)
## for margins in plot area
par('mar')#finding default value of graph peramiters
par('mai')

hist(mtcars$mpg)
par(mar=c(1,1,1,1))
par('mar')
hist(mtcars$mpg)

attach(mtcars)
# for multiples graps in one region / margin
par(mfrow=c(2,2))#multiple frmaes per row
hist(mpg,main='1')

hist(cyl,main='2')
hist(wt,main='3')
hist(hp,main='4')
par(mfcol=c(2,2))#multiple frames per column

####
layout(matrix(c(1,1,2,3),byrow=T,nrow=2))
hist(mpg,main='1')

hist(cyl,main='2')
hist(wt,main='3')
hist(hp,main='4')
layout(matrix(c(1,2,3,3,4,5),byrow=T,nrow=2))
hist(mpg,main='1')

hist(cyl,main='2')
hist(wt,main='3')
hist(hp,main='4')
layout(matrix(c(1,1,2,3),byrow=T,nrow=2),width=c(3,1),height=c(1,2))
hist(cyl,main='2')
hist(wt,main='3')
hist(hp,main='4')
par(Opar)
plot.new()
# clen the area of plot
par(fig=c(0,0.8,0,0.8),new=T)
# in proportion to screen size
plot(wt,mpg)
par(Opar)
par(fig=c(0.65,1,0,0.8),new=T)
boxplot(mpg,horizontal=T,axis=FALSE)
par(fig=c(0.80,1,0,0.65),new=T)
boxplot(mpg,axis=FALSE)
