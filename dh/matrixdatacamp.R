## matrix data camp 

# Box office Star Wars (in millions!)
new_hope <- c(460.998, 314.4)
empire_strikes <- c(290.475, 247.900)
return_jedi <- c(309.306, 165.8)

# Create box_office
box_office <- c(new_hope, empire_strikes, return_jedi)
box_office
# Construct star_wars_matrix
star_wars_matrix <- matrix(box_office, nrow  = 3,byrow=T) 
star_wars_matrix
table(star_wars_matrix)
region=c("US","non US")
titles=c("A New Hope", "The Empire Strikes Back", "Return of the")
colnames(star_war_matrix)=region
# Name the columns with region
colnames(star_wars_matrix) <- region

# Name the rows with titles
rownames(star_wars_matrix) <- titles

# Print out star_wars_matrix

cells <- c(1,26,24,68)
rnames <- c("R1", "R2")
 cnames <- c("C1", "C2") 
 mymatrix <- matrix(cells, nrow=2, ncol=2, byrow=TRUE,
                     dimnames=list(rnames, cnames))
 mymatrix

 mymatrix <- matrix(cells, nrow=2, ncol=2, byrow=FALSE,
                    dimnames=list(rnames, cnames))




star_wars_matrix

box_office <- c(460.998, 314.4, 290.475, 247.900, 309.306, 165.8)

star_wars_matrix <- matrix(box_office, nrow = 3, byrow = TRUE,
                           dimnames = list(c("A New Hope", "The Empire Strikes Back", "Return of the Jedi"), 
                                           c("US", "non-US")))
star_wars_matrix

worldwide_vector <- rowSums(star_wars_matrix)
worldwide_vector2=colSums(star_wars_matrix)
worldwide_vector2
worldwide_vector
all_wars_matrix <- cbind(star_wars_matrix, worldwide_vector)
#all_wars_matrix2=rbind(star_wars_matrix,worldwide_vector)
all_wars_matrix




a=c(1,2,3,4,5,6,7,8,9)
b_one=matrix(a,nrow=3,byrow=T,dimnames=list(c("a","b","c"),c("lalit","sahni","kumar")))
b
b[,]
mean()
x=c(10,11,12,13,14,15,16,17,18)
y_one=matrix(x,nrow=3,byrow=T,dimnames=list(c("d","e","f"),c("manju","mohan","singh")))
z=rbind(b_one,y_one)
z=cbind(b_one,y_one)
z
z[1:3,2:4]
ab=colSums(b)
xz=rowSums(z)
xz


z=rbind(x,z)
z

sumofrow = rowSums(b)
sumofcol=colSums(b)
b=cbind(b,sumofrow)
b
z=
b
b
