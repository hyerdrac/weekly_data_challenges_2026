# Load required libraries
library(cluster)
library(ggplot2)

# Load the dataset
# Note: Ensure "dataset.csv" is in your working directory
df <- read.csv("dataset.csv")

# It is highly recommended to scale data before K-means
# df_scaled <- scale(df) 

# Set seed for reproducibility
set.seed(0)

# Perform K-means clustering with K=3
# nstart = 25 is used to find the best initial centroids
km_res <- kmeans(df, centers = 3, nstart = 25)

# Prepare data for visualization
df_plot <- as.data.frame(df)
df_plot$cluster <- as.factor(km_res$cluster) # Convert cluster IDs to factors

# Visualize using ggplot2
ggplot(df_plot, aes(x = x, y = y, color = cluster)) +
  geom_point(size = 2, alpha = 0.7) + 
  stat_ellipse() + # Add confidence ellipses for each cluster
  scale_color_brewer(palette = "Set1") + 
  labs(
    title = "K-Means Clustering Results",
    x = "Variable X",
    y = "Variable Y",
    color = "Cluster ID"
  ) +
  theme_minimal()