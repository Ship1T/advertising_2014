library(googleVis)

ssidata <- read.csv("E:/dataset vari fattore/SSIndex/finanza_movingchart.csv", sep=";")

######################
#TV vs INTERNET
TVINTd<- subset(ssidata,CODAZ %in% c(10812,  10081,  120892,	119642,	8032,	82690,	54594,	592,	10151,	106783,	60049,	12059,	76328,	129481,	129504,	67212,	71079,	10503,	129637,	147238,	71166,	76393,	132814,	146189,	133362,	16598,	132767,	106953,	16604,	132566,	76757,	676,	129962,	104606,	3124,	16603,	59940,	3182,	92768,	10318,	121741,	51218,	2999,	59924,	7633,	18462,	3166,	19308,	51106,	91979,	936,	4276,	91117,	110670,	92278,	9382,	91618,	107268,	127731,	43214,	133356,	25020,	4835,	4757,	14030,	127443,	0
))

#aziende 59940 vs 3128
state1a<-'
{"orderedByX":false,"xZoomedDataMin":0,"colorOption":"_UNIQUE_COLOR","playDuration":12555.555555555557,"xZoomedIn":false,"nonSelectedAlpha":0.1,"sizeOption":"2","yZoomedIn":false,"xLambda":1,"showTrails":true,"xZoomedDataMax":100,"iconKeySettings":[{"trailStart":"2009","key":{"dim0":"3182"}},{"trailStart":"2009","key":{"dim0":"59940"}}],"duration":{"multiplier":1,"timeUnit":"Y"},"orderedByY":false,"time":"2009","yZoomedDataMin":0,"dimensions":{"iconDimensions":["dim0"]},"yZoomedDataMax":100,"iconType":"BUBBLE","yAxisOption":"9","xAxisOption":"4","uniColorForNonSelected":false,"yLambda":1}
'

#aziende 147238 vs 71166
state2a<-'
{"yZoomedIn":false,"uniColorForNonSelected":false,"playDuration":12555.555555555555,"yZoomedDataMax":100,"sizeOption":"2","xZoomedDataMax":100,"xLambda":1,"nonSelectedAlpha":0.1,"xZoomedDataMin":0,"iconType":"BUBBLE","orderedByY":false,"dimensions":{"iconDimensions":["dim0"]},"orderedByX":false,"colorOption":"_UNIQUE_COLOR","xZoomedIn":false,"yLambda":1,"iconKeySettings":[{"trailStart":"2009","key":{"dim0":"71166"}},{"trailStart":"2009","key":{"dim0":"147238"}}],"duration":{"timeUnit":"Y","multiplier":1},"yAxisOption":"9","showTrails":true,"yZoomedDataMin":0,"time":"2009","xAxisOption":"4"}
'

#aziende 123566 vs 76757 vs 106953
state3a<-'
{"yZoomedIn":false,"uniColorForNonSelected":false,"playDuration":12555.555555555555,"yZoomedDataMax":100,"sizeOption":"2","xZoomedDataMax":100,"xLambda":1,"nonSelectedAlpha":0.1,"xZoomedDataMin":0,"iconType":"BUBBLE","orderedByY":false,"dimensions":{"iconDimensions":["dim0"]},"orderedByX":false,"colorOption":"_UNIQUE_COLOR","xZoomedIn":false,"yLambda":1,"iconKeySettings":[{"trailStart":"2009","key":{"dim0":"132566"}},{"trailStart":"2009","key":{"dim0":"106953"}},{"trailStart":"2009","key":{"dim0":"76757"}}],"duration":{"timeUnit":"Y","multiplier":1},"yAxisOption":"9","showTrails":true,"yZoomedDataMin":0,"time":"2009","xAxisOption":"4"}
'



TVINTg1<-gvisMotionChart(TVINTd, idvar = "CODAZ", timevar = "ANNO", options = list(state=state1a))
TVINTg2<-gvisMotionChart(TVINTd, idvar = "CODAZ", timevar = "ANNO", options = list(state=state2a))
TVINTg3<-gvisMotionChart(TVINTd, idvar = "CODAZ", timevar = "ANNO", options = list(state=state3a))

plot(TVINTg1)
plot(TVINTg2)
plot(TVINTg3)

######################
#INTERNET VS RADIO

Rad_Int <-subset(ssidata,CODAZ %in% c(43214,  0,  3063,	76393,	26256,	25020,	4276,	110670,	676,	86511,	129962,	936,	14030,	132767,	148461,	2999,	76328,	14583,	3182,	132566,	76757,	107268,	59924,	592,	91979,	92170,	3124,	3166,	10318,	71166,	19308,	147238,	146189,	18462,	104606,	132814,	59940,	12812,	127443,	16598,	106783,	106953,	127731,	60049,	10151,	10081,	24848,	129088))

#aziende 10151 - 127731 - 106953
state2a<-'
{"yZoomedDataMax":100,"iconType":"BUBBLE","orderedByX":false,"playDuration":9072.222222222219,"yAxisOption":"11","xAxisOption":"4","dimensions":{"iconDimensions":["dim0"]},"yZoomedIn":false,"xZoomedDataMax":100,"xZoomedDataMin":0,"xZoomedIn":false,"yLambda":1,"duration":{"multiplier":1,"timeUnit":"Y"},"iconKeySettings":[{"trailStart":"2009","key":{"dim0":"10151"}},{"trailStart":"2009","key":{"dim0":"127731"}},{"trailStart":"2009","key":{"dim0":"106953"}}],"uniColorForNonSelected":false,"time":"2009","showTrails":true,"yZoomedDataMin":0,"sizeOption":"2","nonSelectedAlpha":0.1,"xLambda":1,"colorOption":"_UNIQUE_COLOR","orderedByY":false}
'

#aziende 16598 - 127443
state2b<-'
{"yZoomedDataMax":100,"iconType":"BUBBLE","orderedByX":false,"playDuration":9072.222222222219,"yAxisOption":"11","xAxisOption":"4","dimensions":{"iconDimensions":["dim0"]},"yZoomedIn":false,"xZoomedDataMax":100,"xZoomedDataMin":0,"xZoomedIn":false,"yLambda":1,"duration":{"multiplier":1,"timeUnit":"Y"},"iconKeySettings":[{"trailStart":"2009","key":{"dim0":"16598"}},{"trailStart":"2009","key":{"dim0":"127443"}}],"uniColorForNonSelected":false,"time":"2009","showTrails":true,"yZoomedDataMin":0,"sizeOption":"2","nonSelectedAlpha":0.1,"xLambda":1,"colorOption":"_UNIQUE_COLOR","orderedByY":false}
'


RADINTg1<-gvisMotionChart(Rad_Int, idvar = "CODAZ", timevar = "ANNO",options = list(state=state2a))
RADINTg2<-gvisMotionChart(Rad_Int, idvar = "CODAZ", timevar = "ANNO",options = list(state=state2b))


plot(RADINTg1)
plot(RADINTg2)

###########################
#INTERNET VS PERIODICI

INTPER<-subset(ssidata,CODAZ %in% c(0,  592,  676,	936,	2999,	3063,	3124,	3182,	3529,	3737,	3890,	3891,	4276,	4757,	4835,	4939,	5863,	6051,	6257,	6924,	7562,	7633,	8032,	8712,	9382,	10081,	10151,	10318,	10503,	10812,	12059,	12555,	12812,	14030,	14583,	15214,	16598,	18462,	19308,	23836,	24000,	24848,	25020,	26256,	27680,	28194,	30852,	43076,	43214,	43281,	45173,	45320,	47280,	47394,	51106,	51218,	52761,	53216,	53632,	54594,	57601,	58830,	59050,	59924,	59940,	60049,	60552,	62012,	62631,	67212,	71079,	71166,	76328,	76393,	76757,	76895,	77231,	77952,	78927,	79206,	79420,	82850,	86511,	86717,	88109,	88772,	89553,	89560,	91027,	91117,	91618,	91889,	91979,	92170,	92278,	92768,	92924,	93400,	93439,	93975,	94217,	96914,	98059,	100351,	101023,	101059,	101151,	102451,	102456,	103918,	103964,	104176,	104606,	105029,	106783,	106953,	107268,	110670,	111167,	111804,	111819,	111837,	114086,	114728,	114843,	116464,	116676,	117460,	117915,	118394,	118726,	118914,	120892,	122423,	123280,	123576,	124190,	126412,	127731,	129166,	129457,	129504,	129726,	129871,	129962,	129972,	130823,	132127,	132566,	132767,	132814,	133851,	134029,	134327,	134682,	134893,	137485,	137585,	138051,	139251,	144357,	144397,	144444,	146189,	147238,	147333,	148319,	148461,	149601,	150468,	150479,	150984,	151370,	152271))


#aziende 16598 - 127443
state3a<-'
{"nonSelectedAlpha":0.1,"playDuration":9072.222222222219,"time":"2009","iconKeySettings":[{"trailStart":"2009","key":{"dim0":"106783"}},{"trailStart":"2009","key":{"dim0":"98059"}},{"trailStart":"2009","key":{"dim0":"129166"}}],"xLambda":1,"yZoomedIn":false,"orderedByX":false,"iconType":"BUBBLE","xZoomedIn":false,"showTrails":true,"uniColorForNonSelected":false,"yZoomedDataMin":0,"duration":{"timeUnit":"Y","multiplier":1},"dimensions":{"iconDimensions":["dim0"]},"sizeOption":"2","xAxisOption":"4","orderedByY":false,"yLambda":1,"xZoomedDataMax":100,"yZoomedDataMax":100,"yAxisOption":"6","xZoomedDataMin":0,"colorOption":"_UNIQUE_COLOR"}
'

INTPERg1<-gvisMotionChart(INTPER, idvar = "CODAZ", timevar = "ANNO",options = list(state=state3a))
plot(INTPERg1)





#correlazione size azienda vs spesa in pubblicità
lol <- read.csv("E:/dataset vari fattore/corr_num_totinv.csv", sep=";")

cor(lol$COUNT, lol$TOT_INV)

tbl = table(lol$COUNT, lol$TOT_INV)
chisq.test(tbl) 



