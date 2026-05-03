library(dplyr)
library(ggplot2)
library(ggpubr)
library(rstatix)

data <- read.csv("Sales_without_NaNs_v1.3.csv")

head(data)
str(data)
data %>% get_summary_stats(type="common")

data$Group <- as.factor(data$Group)
data$Customer_Segment <- as.factor(data$Customer_Segment)
data$Purchase_Made <- as.factor(data$Purchase_Made)


test <- data %>% select(Customer_Segment, Sales_After)

test %>% group_by(Customer_Segment) %>% shapiro_test(Sales_After)
test %>% levene_test(Sales_After~Customer_Segment)


# Variables not distributed normally and variances are not equal. Kruskall-Wallis test should be applied.

test %>% kruskal_test(Sales_After~Customer_Segment)
dunn <- test %>% dunn_test(Sales_After~Customer_Segment)


# Boxplot

ggboxplot(test, x = "Customer_Segment", y = "Sales_After",ylim = c(0,800))+
  stat_pvalue_manual(
    dunn, label = "p.adj",
    y.position = c(650, 750, 680)
  )