##margin tables bjp
# Margin Tables

parties1 = c('bjp', 'congress', 'sp', 'aap')
length(parties1)
states1 = c('up', 'delhi','haryana', 'punjab','uk')
length(states1)

(col1 = rep(parties1, each=5))
length(col1)

(col2 = rep(states1, times=4 ))
length(col2)

party = factor(col1)
state = factor(col2)
#xtabs(col1 ~ col2)
(mps = ceiling(runif(20,25,50)))
(df1 = data.frame(party, state, mps))
table(df1) # not relevant here...only used for vector one column
ftable(df1)

tabulate(col1)  # one coln factor type


table(df1)
table(df1$party)
table(df1$state)
table(df1[,c('party', 'state')])
table(df1[,c('party', 'state')], dnn=list('Political Parties', 'States of India'))


xtabs(mps ~ party + state, data=df1)
statesel = c('up', 'delhi')
xtabs(mps ~ party + state, data=df1, subset= state %in% statesel)
xtabs(mps ~ party + state, data=df1, subset= state %in% statesel,
      drop.unused.levels = T)

partysel = c('bjp')
xtabs(mps ~ party + state, data=df1, subset= party %in% partysel)
xtabs(mps ~ party + state, data=df1, subset= party %in% partysel,
      drop.unused.levels = T)


ftable(df1)  # where they fought and won
ftable(df1$state, df1$party, df1$mps)  # change order
ftable(party ~ state, data = df1)  # formula method
ftable(party ~ mps, data = df1)  # formula method
ftable(df1, row.vars = 3, col.vars=1) # specify rows and cols to use
ftable(df1, row.vars = 2, col.vars=1) # specify rows and cols to use


# Margins -----------
matresults = xtabs(mps ~ party + state, data=df1)
matresults   # rows - parties, col- states
str(matresults)
margin.table(matresults, margin=NULL)  # total MPS
margin.table(matresults, margin=1)  # total MPS in party Rows
margin.table(matresults, margin=2)  # total MPS in states Cols

# if matresults was an array : dimension=3
margin.table(matresults, margin=3)  # error here

#Prop Table ------
prop.table(matresults, margin=NULL)  # proportion of total
round(prop.table(matresults, margin=NULL),2)  # proportion of total
sum(round(prop.table(matresults, margin=NULL),2))  # proportion of total
# total to 1

(p1 = round(prop.table(matresults, margin=1),2))  # proportion of total Row
rowSums(p1)  # equal to 1  : rowise sum
colSums(p1) # not equal to 1 

(p2 = round(prop.table(matresults, margin=2),2))  # proportion of total Col
rowSums(p2)  # not equal to 1  
colSums(p2) #  equal to 1  colwise sum
p2

addmargins(p2)
addmargins(p2,1) # 
addmargins(p2,2) # 