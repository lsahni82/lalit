# assignment 2 chart
head(baseball)
library("corrgram")

library("corrgram")
head(baseball)
round(cor(baseball[, 5:14], use="pair"),2)
vars2 <- c("Assists","Atbat","Errors","Hits","Homer","logSal",
           "Putouts","RBI","Runs","Walks","Years")
corrgram(baseball[,vars2], order=TRUE,
         main="Baseball data PC2/PC1 order",
         lower.panel=panel.shade, upper.panel=panel.pie,
         diag.panel=panel.minmax, text.panel=panel.txt)

###second style
corrgram(baseball[,vars2], main="Baseball data (alphabetic order)")

##third style
corrgram(baseball[,vars2], order=TRUE,
        main="Baseball data (PC order)",
        panel=panel.shade, text.panel=panel.txt)
