#curso de R para Finanças quantitativas

library(quantmod)
getSymbols("GOOG", src = "yahoo")


#Perido de analise
startdata = as.Date("2022-10-01")
enddate = as.Date("2023-05-05")

#Seleção dos ativos para analise
tickers = c("^BVSP","PETR4.SA")

#captura dos dados
getSymbols(tickers, src = "yahoo", from = startdata, to = enddate)

#grafico
chartSeries(BVSP)
chartSeries(PETR4.SA)

chartSeries(to.monthly(BVSP),up.col = "green", dn.col = "white")


library(TTR)
chartSeries(PETR4.SA, TA=NULL)
addMACD()
addBBands()
