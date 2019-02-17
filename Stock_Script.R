# Get quantmod
if (!require(c("quantmod","TTR"))) {
  install.packages("quantmod","TTR")
  library(quantmod)
}


tickers <- TTR::stockSymbols()

start <- as.Date("2018-01-01")
end <- as.Date("2018-01-29")

# Let's get Apple stock data; Apple's ticker symbol is AAPL. We use the
# quantmod function getSymbols, and pass a string as a first argument to
# identify the desired ticker symbol, pass 'yahoo' to src for Yahoo!
# Finance, and from and to specify date ranges

# The default behavior for getSymbols is to load data directly into the
# global environment, with the object being named after the loaded ticker
# symbol. This feature may become deprecated in the future, but we exploit
# it now.

a <- getSymbols("AAPL", src = "yahoo", from = start, to = end)
a <- data.frame(AAPL)

data <- getSymbols(tickers[1,"Symbol"], src ="yahoo", from=start, to=end)
data <- data.frame(data)


for(i in 2:nrow(tickers)){
  
  
}




write.csv(a,"AAPL.csv",row.names = T)














