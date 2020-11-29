tugas_3 = read.csv("dataset_superstore_simple.csv")
library(dplyr)
Step1 = tugas_3%>%filter(profit<0)%>%select(c(order_id, profit))
jawaban_nomor_3 = NROW(Step1)
