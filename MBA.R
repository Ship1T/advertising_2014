library(arules)
library(arulesViz)
library(datasets)


txn=read.transactions(file="F:/Dataset Vari Fattore/mba/finanza.txt",rm.duplicates=FALSE,sep=",")


rules <- apriori(txn, parameter = list(supp = 0.01, conf = 0.5, target="rules"))#, appearance= list(default="lhs",rhs="RAD")) maxlen=3,


# Show the top 5 rules, but only 2 digits
options(digits=2)
rules<-sort(rules, decreasing=TRUE,by="support")
inspect(rules[1:10])


itemFrequencyPlot(txn)#,type="absolute")

summary(rules)

#elimino ridondanze
subset.matrix <- is.subset(rules, rules)
subset.matrix[lower.tri(subset.matrix, diag=T)] <- NA
redundant <- colSums(subset.matrix, na.rm=T) >= 1
rules.pruned <- rules[!redundant]
rules<-rules.pruned

inspect(rules)

library(arulesViz)
plot(rules,method="graph",interactive=TRUE,shading="confidence")#,control=list(measureLabels=TRUE))
