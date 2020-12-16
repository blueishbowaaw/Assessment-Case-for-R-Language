#Answered by Sulaiman Hawibowo
#From Dataset Superstore Simple

#Case2 = Sub-category apa saja yang ada di dalam category ‘Office Supplies’, dan masing-masing berapa banyak total profitnya?

case_2 = read.csv("dataset_superstore_simple.csv")
library(dplyr)
result_no_2 = case_2%>%
                  group_by(category,sub_category)%>%
                  summarise(total_profit = sum(profit))%>%
                  filter(category == ("Office Supplies"))

