#Answered by Sulaiman Hawibowo
#From Dataset Superstore Simple

case_3 = read.csv("dataset_superstore_simple.csv")
library(dplyr)
step1 = tugas_3%>%filter(profit<0)%>%select(c(order_id, profit))
result_No_3 = NROW(Step1)
