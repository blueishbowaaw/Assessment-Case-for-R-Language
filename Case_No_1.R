#Answered by Sulaiman Hawibowo
#From Dataset Superstore Simple

#Case1 = Mencari Customer_Id yang memiliki sales paling besar
case_1 <- read.csv('dataset_superstore_simple.csv')
library(dplyr)
step1         <- select(case_1, c(customer_id,sales))
distinct      <- distinct(case_1, customer_id)
step2         <- case_1%>%group_by(customer_id)%>%summarise(max_sales = sum(sales))
desc_data     = step2[order(-step2$max_sales),]
result_case_1 = head(desc_data, 1)
