#Import and Labeling
rt_df <- read.csv("~/Project2/data/week2.csv", header = TRUE)
rt_df$condition <- factor(rt_df$condition, levels = c("A", "B"), labels = c("Control", "Experimental"))
