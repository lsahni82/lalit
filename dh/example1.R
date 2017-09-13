marks= c(1,2,3,4,5)   ## 
marks
saveRDS(marks,file='./data/lalit1.RDS')
marks2=c(6,7,8,9,10)
save.image()
marks2

readRDS(file='./data/lalit1.RDS')#load and prints
ls
