library(googleVis)
quote <- read.csv("F:/Dataset Vari Fattore/mba/finanza_quote_mba.csv", sep=";")

quote.freq9<-table(subset(quote, ANNO==2009)$count_mezzi)

#barplot(quote.freq9)

asd<-as.data.frame(quote.freq9)

#count9<-gvisBarChart(asd, xvar = "Var1",yvar = "Freq",options = list(title="Numero di Investitimenti nel 2009"))
#plot(count9)

#############################################
#numero di mezzi in cui le aziende investono
################################################

quote.freq0<-table(subset(quote, ANNO==2010)$count_mezzi)
asd0<-as.data.frame(quote.freq0)
quote.freq1<-table(subset(quote, ANNO==2011)$count_mezzi)
asd1<-as.data.frame(quote.freq1)

quote.2<-merge(asd,asd0, by="Var1", all=TRUE)
quote.all<-merge(quote.2,asd1, by="Var1", all=TRUE)

#rinomino le variabili
names(quote.all)[names(quote.all) == 'Freq.x'] <- 'Count09'
names(quote.all)[names(quote.all) == 'Freq.y'] <- 'Count10'
names(quote.all)[names(quote.all) == 'Freq'] <- 'Count11'
names(quote.all)[names(quote.all) == 'Var1'] <- 'NumMEZZIInv'

count.all<-gvisColumnChart(quote.all, xvar = "NumMEZZIInv",yvar =c("Count09","Count10","Count11"),options = list(title="Numero di Mezzi Investiti dal 2009 al 2011"))
plot(count.all)


#############################################
#numero di settori in cui le aziende investono
################################################
oss.freq9<-table(subset(quote, ANNO==2009)$n_oss)
lol9<-as.data.frame(oss.freq9)
oss.freq0<-table(subset(quote, ANNO==2010)$n_oss)
lol0<-as.data.frame(oss.freq0)
oss.freq1<-table(subset(quote, ANNO==2011)$n_oss)
lol1<-as.data.frame(oss.freq1)

oss.2<-merge(lol9,lol0, by="Var1", all=TRUE)
oss.all<-merge(oss.2,lol1, by="Var1", all=TRUE)
names(oss.all)[names(oss.all) == 'Freq.x'] <- 'Count09'
names(oss.all)[names(oss.all) == 'Freq.y'] <- 'Count10'
names(oss.all)[names(oss.all) == 'Freq'] <- 'Count11'
names(oss.all)[names(oss.all) == 'Var1'] <- 'NumSETInv'

oss.grafico<-gvisColumnChart(oss.all, xvar = "NumSETInv",yvar =c("Count09","Count10","Count11"),options = list(title="Numero di Settori Investiti dal 2009 al 2011"))
plot(oss.grafico)


############################################
#numero aziende in finanza + tot investito (grafico2)
################################################


punto2 <- read.csv("F:/Dataset Vari Fattore/finanza/num_az-tot_inv.csv", sep=";")

grafico2<- gvisComboChart(punto2, xvar = "ANNO", yvar = c("NUM_AZIENDE","TOT_INV_EUR"),options = list(gvis.editor=1,series='{0: {type:"bars",targetAxisIndex:1}}',vAxes="[{minValue:0}, {minValue:0}]"))

plot(grafico2)

#grafico stacked

ppp <- read.csv("F:/Dataset Vari Fattore/finanza/num_az-tot_inv2.csv", sep=";")

prova<- gvisColumnChart(ppp, xvar = "ANNO", yvar = c("AZIENDE_3a","AZIENDE_1a","AZIENDE_2a"),options = list(isStacked=TRUE))
plot(prova)


############################################
#soldi investiti nei vari mezzi nel 2009,2010 e 2011
################################################

punto1b <- read.csv("E:/Dataset Vari Fattore/finanza/soldi inv mezzi.csv", sep=";")

grafico1b<-gvisColumnChart(punto1b, xvar="MEZZI", yvar=c("X2009", "X2010","X2011"))

plot(grafico1b)


############################################
#media mezzi per aziende 3a e 1a, anni 2009,2010 e 2011
################################################

mmezzi<-read.csv("F:/Dataset Vari Fattore/finanza/media_mezzi.csv", sep=";")

grafico_mm<-gvisColumnChart(mmezzi, xvar="Anno", yvar=c("m_Mezzi1a", "m_Mezzi3a"), options=list(vAxis="{ticks: [0,1,2]}"))

plot(grafico_mm)

#############################################
#numero di settori + media in cui le aziende investono NEW
################################################

#aziende presenti 3ANNI E 1ANNO

mezzi_3a <- read.csv("E:/Dataset Vari Fattore/finanza/mezzi_settori_3a.csv", sep=";")

grafico_s3a<- gvisCo mboChart(mezzi_3a, xvar = "ANNO", yvar = c("s1","s2","s3","s4.s5","s6.s8","avg_settori_3a","avg_settori_1a"),options = list(seriesType="bars",series='{5: {type:"line",targetAxisIndex:1},6: {type:"line",targetAxisIndex:1}}', vAxis.gridlines.count=6,vAxes="[{minValue:0, maxValue:260}, {minValue:0, maxValue:2.6}]"))                                                          

plot(grafico_s3a)


#############################################
#numero di mezzi + media in cui le aziende investono NEW
################################################

#aziende presenti 3ANNI

mezzi_3a <- read.csv("E:/Dataset Vari Fattore/finanza/mezzi_settori_3a.csv", sep=";")

grafico_m3a<- gvisComboChart(mezzi_3a, xvar = "ANNO", yvar = c("m1","m2","m3","m4.m5","m6.m9","avg_mezzi_3a","avg_mezzi_1a"),options = list(seriesType="bars",series='{5: {type:"line",targetAxisIndex:1},6: {type:"line",targetAxisIndex:1}}', vAxis.gridlines.count=6,vAxes="[{minValue:0, maxValue:260}, {minValue:0, maxValue:2.6}]"))                                                          

plot(grafico_m3a)


########################
#Tree Chart
########################

#aziende 3 anni
dtree_3a <- read.csv("E:/Dataset Vari Fattore/finanza/treechart_3a.csv", sep=";")

Tree_3a <- gvisTreeMap(dtree_3a,  idvar="global", parentvar="parent",sizevar="size", colorvar="fac", options=list(minColor='#0013E5',midColor='#00E9D0',maxColor='#7BE500',headerHeight=20,fontColor='black',showScale=TRUE,maxPostDepth=1,minColorValue=120087,maxColorValue=70000000))
plot(Tree_3a)


#aziende 1 anno
dtree_1a <- read.csv("E:/Dataset Vari Fattore/finanza/treechart_1a.csv", sep=";")

Tree_1a <- gvisTreeMap(dtree_1a,  idvar="global", parentvar="parent",sizevar="size", colorvar="fac", options=list(minColor='#0013E5',midColor='#00E9D0',maxColor='#7BE500',headerHeight=20,fontColor='black',showScale=TRUE,maxPostDepth=1,minColorValue=10000,maxColorValue=5000000))
plot(Tree_1a)


mergedtree<-gvisMerge(Tree_3a, Tree_1a, horizontal=TRUE)
plot(mergedtree)

