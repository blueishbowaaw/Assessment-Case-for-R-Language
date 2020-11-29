#Answered by Sulaiman Hawibowo
#From Dataset Superstore Simple

case_5 = read.csv("dataset_superstore_simple.csv")
library(dplyr)

case_5$order_date = as.Date(case_5$order_date)
case_5$order_year = as.Date(cut(case_5$order_date, breaks = "year"))
NROW(case_5)
yearly_sales = case_5%>%group_by(order_year)%>%summarise(total_sales = sum(sales),
                                                      total_profit = sum(profit),
                                                      jumlah_customers = n())
desc_profit = yearly_sales[order(-yearly_sales$total_profit),]
result_No_5 = head(desc_profit, 1)



