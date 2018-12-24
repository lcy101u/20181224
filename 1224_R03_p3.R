library(readxl)
data <- read_excel("Ex08-樞紐分析表(2)-銷售分析.xlsx", sheet=1)

#運費
shipment <- as.Date(data$運費) - as.Date('1900-01-01') + 1
data$運費 <- shipment

#單價
price <- as.Date(data$單價) - as.Date('1900-01-01') + 1
data$單價 <- price 

#View(data)

write.table(data, "salesData.csv", sep = ",", row.names = F, na = "NA")
dir()
sales.data <- read.table("SalesData.csv", sep=",", header=TRUE)
sales.data