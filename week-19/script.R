library(ggplot2)
library(dplyr)

data <- read.csv("Teen_Mental_Health_Dataset.csv")

head(data)
str(data)

data <- data %>% mutate(
  gender = as.factor(gender),
  platform_usage = as.factor(platform_usage),
  social_interaction_level = as.factor(social_interaction_level),
  stress_level = as.factor(stress_level),
  anxiety_level = as.factor(anxiety_level),
  addiction_level = as.factor(addiction_level),
  depression_label = factor(depression_label, levels = c(0,1), labels = c("no","yes"))
)

str(data)

# ==================================================================================
# Daily Social Media Usage Among Two Platforms
# ==================================================================================

data %>% select(daily_social_media_hours, platform_usage) %>% filter(platform_usage != "Both") %>% group_by(platform_usage) %>% 
  summarise(mean = mean(daily_social_media_hours)) %>% ggplot() +
  geom_col(aes(x = platform_usage, y = mean), fill = "yellow" , color = "orange") +
  xlab("Platform") + 
  ylab("Average usage by hours") + 
  theme_dark()

# ==================================================================================
# Daily Social Media Usage Among Genders
# ==================================================================================

data %>% select(gender, daily_social_media_hours) %>% group_by(gender) %>% 
  summarise(mean = mean(daily_social_media_hours)) %>% ggplot() +
  geom_col(aes(x = gender, y = mean), fill = "blue", color = "navy") +
  xlab("Gender") + 
  ylab("Average usage by hours") + 
  theme_minimal()

# ==================================================================================
# Stress Level Distribution
# ==================================================================================

data %>% ggplot() + geom_bar(aes(x=stress_level, fill = )) +
  xlab("Stress Level") + 
  ylab("Count") +
  theme_minimal()

# ==================================================================================
# Relation Between Daily Usage and Academic Performance
# ==================================================================================

data %>% ggplot() + geom_point(aes(x = daily_social_media_hours, y = academic_performance))

                               