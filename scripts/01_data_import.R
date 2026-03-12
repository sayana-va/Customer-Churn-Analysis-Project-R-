# Load libraries
library(readr)
library(dplyr)

# Import dataset
data <- read_csv("data/churn_data.csv")

# View dataset
head(data)

# Structure
str(data)

# Summary statistics
summary(data)

# Dimensions
dim(data)

# Column names
names(data)