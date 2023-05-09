capital_inicial <- 10000
taxa_juros <- 0.1
duracao_investimento <- 5

retorno_aleatorio <- rnorm(n = duracao_investimento, mean = taxa_juros, sd = 0.05)

retorno_periodo <- rep(NA, duracao_investimento)
retorno_periodo[1] <- capital_inicial * (1 + retorno_aleatorio[1])
for (i in 2:duracao_investimento) {
  retorno_periodo[i] <- retorno_periodo[i-1] * (1 + retorno_aleatorio[i])
}

retorno_total <- retorno_periodo[duracao_investimento] - capital_inicial
volatilidade <- sd(retorno_aleatorio)
desvio_padrao <- sd(retorno_periodo)
sharpe_ratio <- (retorno_total - taxa_juros) / desvio_padrao

plot(retorno_periodo, type = "l", xlab = "Período", ylab = "Retorno", main = "Simulador Financeiro")