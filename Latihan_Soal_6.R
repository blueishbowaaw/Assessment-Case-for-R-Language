tugas_6 = read.csv("dataset_superstore_simple.csv")
library(dplyr)
library(ggplot2)

tugas_6$order_date = as.Date(tugas_6$order_date)
tugas_6$order_year = as.Date(cut(tugas_6$order_date, breaks = "year"))
hasil_6a = tugas_6%>%filter(order_year == (c("2014-01-01","2015-01-01")))
hasil_6b = select(hasil_6a, order_date,order_year,sales,profit)
urutan_tahun_terbaru = hasil_6b[order(hasil_6b$order_date),]
jawaban_nomor_6 = ggplot(urutan_tahun_terbaru, aes(x = sales, y = profit)) + 
  geom_point(aes(color = order_date))+
  labs(title = 'Scatter Plot Sales Vs Profit 2014-2015')
jawaban_nomor_6
