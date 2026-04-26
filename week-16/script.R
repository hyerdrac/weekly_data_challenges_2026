library(rstatix)
library(tidyverse)
library(ggpubr)

data <- read.csv("Golf.csv", sep = ",")


# H0: mean_Current = mean_New
# H1: mean_Current =< mean_New

# We apply Paired T-Test to check new version of ball is better than old version


# Normality check

data %>% apply(2, shapiro_test)

# p-value of Current = 0.379, p-value of New = 0.306
# Both Current and New (woCoaitng, wCoating) are normally distributed

stat.test <- data %>%
  pivot_longer(cols = c(Current, New), 
               names_to = "Status", 
               values_to = "Distance") %>% t_test(Distance ~ Status, paired = TRUE, alternative = "greater")
stat.test


# p-value = 0.105 > 0.05 so we can't reject H0. There is no significant difference between Current version of ball and New version

data %>% pivot_longer(cols = c(Current, New), 
                      names_to = "Status", 
                      values_to = "Distance") %>%
  ggpaired(
  data, x = "Status", y = "Distance", color = "Status", palette = "jco",
  line.color = "gray", line.size = 0.4,ylab = "Distance", xlab = "Test")+
  stat_pvalue_manual(stat.test, label = "p value = {p}", y.position = 65)