tugas_3 = read.csv("dataset_superstore_simple.csv")
library(dplyr)
Nomor_3a = tugas_3%>%filter(profit<0)%>%select(c(order_id, profit))
jawaban_nomor_3 = NROW(Nomor_3a)
