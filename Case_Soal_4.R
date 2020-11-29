case_4 = read.csv("dataset_superstore_simple.csv")
library(dplyr)
step1 = case_4%>%group_by(customer_id)%>%
        summarise(total_sales = sum(sales))%>%
        filter(customer_id == "JE-16165")
step2 = case_4%>%group_by(customer_id)%>%
        summarise(total_sales = sum(sales))%>%
        filter(customer_id == "KH-16510")
step3 = case_4%>%group_by(customer_id)%>%
        summarise(total_sales = sum(sales))%>%
        filter(customer_id == "AD-10180")
step4 = bind_rows(step1,step2,step3)       
result_No_4 = filter(step4, customer_id == "AD-10180")    


