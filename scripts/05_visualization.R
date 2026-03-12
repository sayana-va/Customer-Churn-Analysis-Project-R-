library(ggplot2)

# Bar chart - churn count
ggplot(data, aes(x = Churn)) +
  geom_bar(fill = "red") +
  labs(title = "Customer Churn Count")


# Scatter plot
ggplot(data, aes(x = Tenure, y = Total_Spend)) +
  geom_point(alpha = 0.5, color = "blue") +
  labs(title = "Tenure vs Total Spend")


# Box plot
ggplot(data, aes(x = Churn, y = Total_Spend)) +
  geom_boxplot(fill = "orange") +
  labs(title = "Total Spend vs Churn")