#curso de R para Finanças quantitativas

library(quantmod)
getSymbols("GOOG", src = "yahoo")


#Perido de analise
startdata = as.Date("2023-01-01")
enddate = as.Date("2023-05-05")

#Seleção dos ativos para analise
tickers = c("^BVSP","BTCUSD=X","PETR4.SA")

#captura dos dados
getSymbols(tickers, src = "yahoo", from = startdata, to = enddate)

#grafico
chartSeries(BVSP, multi.col = T, theme = "white")


chartSeries(to.monthly(BVSP),up.col = "green", dn.col = "white")


library(TTR)
chartSeries(PETR4.SA, TA=NULL)

addMACD()
