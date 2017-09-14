##lalit bjp congress (margin table)

parties1 = c('bjp', 'congress', 'sp', 'aap')
length(parties1)
states1 = c('up', 'delhi','haryana', 'punjab','uk')
length(states1)
(col1 = rep(parties1, each=5))
length(col1)
(col2 = rep(states1, times=4 ))
length(col2)
cbind(col1,col2)
party = factor(col1)
state = factor(col2)
set.seed(1234)
party = factor(col1)
state = factor(col2)
(mps = ceiling(runif(20,25,50)))
(df1 = data.frame(party, state, mps))
##tabulate(col1)
table(df1$state)
table(df1$party)
table(df1$state)
table(df1[,c('party', 'state')])
table(df1[,c('party', 'state')], dnn=list('Political Parties', 'States of India'))

xtabs(mps ~ party + state, data=df1)
statesel = c('up', 'delhi') #create a vector 
xtabs(mps ~ party + state, data=df1, subset= state %in% statesel)
xtabs(mps ~ party + state, data=df1, subset= state %in% statesel,
      drop.unused.levels = T)

party1 = c('bjp', 'aap')
xtabs(mps ~ party + state, data=df1, subset= party %in% party1)
xtabs(mps ~ party + state, data=df1, subset= state %in% states,
      drop.unused.levels = T)


matresults = xtabs(mps ~ party + state, data=df1)
matresults   # rows - parties, col- states
str(matresults)
margin.table(matresults, margin=NULL)  # total MPS
margin.table(matresults, margin=1)  # total MPS in party Rows
margin.table(matresults, margin=2)  # total MPS in states Cols

prop.table(matresults, margin=NULL)  # proportion of total
round(prop.table(matresults, margin=NULL),2)  # proportion of total
sum(round(prop.table(matresults, margin=NULL),2))

(p1 = round(prop.table(matresults, margin=1),2))  # proportion of total Row
rowSums(p1)  # equal to 1  : rowise sum
colSums(p1) # not equal to 1 
addmargins(p1,2,sum)
addmargins(p1,1,sum)
p2=round(prop.table(matresults,margin = 1),2)
addmargins(p2)
addmargins(p2,1) # 
addmargins(p2,2)
