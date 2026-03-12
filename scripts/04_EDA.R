library(dplyr)

# Summary statistics
summary(data$Total_Spend)
summary(data$Tenure)

# Churn distribution
table(data$Churn)

# Churn by gender
library(dplyr)

churn_gender <- data %>%
  group_by(Gender, Churn) %>%
  summarise(count = n())

# Correlation analysis
cor(data$Tenure, data$Total_Spend)