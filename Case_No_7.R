#Answered by Sulaiman Hawibowo
#From Dataset Superstore Simple

case_7 = read.csv("dataset_superstore_simple.csv")
library(dplyr)
library(ggplot2)

case_7$order_date = as.Date(case_7$order_date)
case_7$year       = as.Date(cut(case_7$order_date, breaks = "year"))
step1             = case_7%>%group_by(year,customer_id)%>%
                  summarise(total_sales = sum(sales),
                  total_profit = sum(profit))
step2             = filter(step1,year == "2015-01-01")
desc_sales        = step2[order(-step2$total_sales),]
step3             = head(desc_sales, 10)
result_No_7       = ggplot(step3, aes(x = customer_id, y = total_sales)) + 
                  geom_bar(stat = "identity", fill = "Brown", width = 0.5)
result_No_7
