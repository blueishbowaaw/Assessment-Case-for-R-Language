tugas_7 = read.csv("dataset_superstore_simple.csv")
library(dplyr)
library(ggplot2)

tugas_7$order_date = as.Date(tugas_7$order_date)
tugas_7$year = as.Date(cut(tugas_7$order_date, breaks = "year"))
Nomor_7a = tugas_7%>%group_by(year,customer_id)%>%
  summarise(total_sales = sum(sales),
            total_profit = sum(profit))
Nomor_7b = filter(Nomor_7a,year == "2015-01-01")
urutan_sales_terbesar = Nomor_7b[order(-Nomor_7b$total_sales),]
Hasil_7 = head(urutan_sales_terbesar, 10)
jawaban_nomor_7 = ggplot(Hasil_7, aes(x = customer_id, y = total_sales)) + 
  geom_bar(stat = "identity", fill = "Brown", width = 0.5)
jawaban_nomor_7
