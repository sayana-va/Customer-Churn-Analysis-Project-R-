library(dplyr)

# Create new variable


data <- data %>%
  mutate(
    avg_monthly_spend = Total_Spend / Tenure
  )

# Churn rate by contract type
data <- data %>%
  mutate(
    avg_monthly_spend = ifelse(Tenure == 0, NA, Total_Spend / Tenure)
  )

names(data)
