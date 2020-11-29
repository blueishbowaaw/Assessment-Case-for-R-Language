tugas_5 = read.csv("dataset_superstore_simple.csv")
library(dplyr)

tugas_5$order_date = as.Date(tugas_5$order_date)
tugas_5$order_year = as.Date(cut(tugas_5$order_date, breaks = "year"))
NROW(tugas_5)
yearly_sales = tugas_5%>%group_by(order_year)%>%summarise(total_sales = sum(sales),
                                                      total_profit = sum(profit),
                                                      jumlah_customers = n())
urutan_profit_terbesar = yearly_sales[order(-yearly_sales$total_profit),]
jawaban_nomor_5 = head(urutan_profit_terbesar, 1)



