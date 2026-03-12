library(dplyr)

# Remove duplicates
data <- distinct(data)

# Check missing values
colSums(is.na(data))

# Remove missing values
data <- na.omit(data)

names(data)

# Convert data types
names(data) <- c(
  "CustomerID",
  "Age",
  "Gender",
  "Tenure",
  "Usage_Frequency",
  "Support_Calls",
  "Payment_Delay",
  "Subscription_Type",
  "Contract_Length",
  "Total_Spend",
  "Last_Interaction",
  "Churn"
)


data$Total_Spend <- as.numeric(data$Total_Spend)
data$Tenure <- as.numeric(data$Tenure)



# Convert churn column to factor
data$Churn <- as.factor(data$Churn)

# Rename columns
library(dplyr)

data$Age <- as.numeric(data$Age)
data$Tenure <- as.numeric(data$Tenure)
data$Usage_Frequency <- as.numeric(data$Usage_Frequency)
data$Support_Calls <- as.numeric(data$Support_Calls)
data$Payment_Delay <- as.numeric(data$Payment_Delay)
data$Total_Spend <- as.numeric(data$Total_Spend)


# Save cleaned data
write.csv(data,"outputs/cleaned_data.csv",row.names=FALSE)