#Answered by Sulaiman Hawibowo
#From Dataset Superstore Simple

#Buatlah scatterplot antara sales dan profit untuk data di tahun 2014-2015 saja, bedakan warnanya antara tahun 2014 dan tahun 2015. Beri judul ‘Sales vs Profit 2014-2015’!
case_6 = read.csv("dataset_superstore_simple.csv")
library(dplyr)
library(ggplot2)

case_6$order_date = as.Date(case_6$order_date)
case_6$order_year = as.Date(cut(case_6$order_date, breaks = "year"))
step1             = case_6%>%filter(order_year == (c("2014-01-01","2015-01-01")))
step2             = select(step1, order_date,order_year,sales,profit)
asc_newly_year    = step2[order(step2$order_date),]
result_No_6       = ggplot(asc_newly_year, aes(x = sales, y = profit)) + 
                  geom_point(aes(color = order_date))+
                  labs(title = 'Scatter Plot Sales Vs Profit 2014-2015')
result_No_6
