#Import and Labeling
rt_df <- read.csv("~/Project2/data/week2.csv", header = TRUE)
rt_df$condition <- factor(rt_df$condition, levels = c("A", "B"), labels = c("Control", "Experimental"))
rt_df$gender <- factor(rt_df$gender, levels = c("F", "M", "T"), labels = c("Male", "Female", "Transgender"))

#Analysis
mean(rt_df$rt)
rt_f_df <- subset(rt_df, gender == "Female")
summary(rt_f_df)
hist(rt_f_df$rt)
datasets <- list(rt_df, rt_f_df)
datasets[[1]][,2]