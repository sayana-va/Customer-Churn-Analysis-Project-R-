# Logistic regression model
model <- glm(Churn ~ Tenure + Total_Spend + Support_Calls,
             data = data,
             family = "binomial")

summary(model)

# Predict churn probability
data$churn_probability <- predict(model, type = "response")

head(data)