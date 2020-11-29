tugas_4 = read.csv("dataset_superstore_simple.csv")
library(dplyr)
Nomor_4a = tugas_4%>%group_by(customer_id)%>%
  summarise(total_sales = sum(sales))%>%
  filter(customer_id == "JE-16165")
Nomor_4b = tugas_4%>%group_by(customer_id)%>%
  summarise(total_sales = sum(sales))%>%
  filter(customer_id == "KH-16510")
Nomor_4c = tugas_4%>%group_by(customer_id)%>%
  summarise(total_sales = sum(sales))%>%
  filter(customer_id == "AD-10180")
Hasil_4 = bind_rows(Nomor_4a,Nomor_4b,Nomor_4c)       
jawaban_nomor_4 = filter(Hasil_4, customer_id == "AD-10180")    


