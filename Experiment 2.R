# ==========================================
# SET 2 : Customer Feedback Analysis
# All Outputs in One View
# ==========================================

library(wordcloud)

# Customer Data
customer_id <- c(1,2,3,4,5)
age <- c(25,30,35,28,40)
satisfaction <- c(4,5,3,4,5)

# Display 4 graphs in one screen
par(mfrow = c(2,2))

# -----------------------------------------
# 1. Histogram
# -----------------------------------------

hist(age,
     col="skyblue",
     main="Customer Age Distribution",
     xlab="Age",
     ylab="Frequency")

# -----------------------------------------
# 2. Pie Chart
# -----------------------------------------

score_count <- table(satisfaction)

pie(score_count,
    labels=paste(names(score_count),"Stars"),
    col=rainbow(length(score_count)),
    main="Satisfaction Scores")

# -----------------------------------------
# 3. Stacked Bar Chart
# -----------------------------------------

age_group <- cut(age,
                 breaks=c(20,30,40,50),
                 labels=c("21-30","31-40","41-50"))

table_data <- table(age_group, satisfaction)

barplot(table_data,
        col=rainbow(ncol(table_data)),
        main="Scores by Age Group",
        xlab="Age Group",
        ylab="Customers")

legend("topright",
       legend=colnames(table_data),
       fill=rainbow(ncol(table_data)),
       cex=0.6)

# -----------------------------------------
# 4. Word Cloud
# -----------------------------------------

feedback <- c(
  "Excellent service",
  "Very satisfied",
  "Friendly staff",
  "Fast delivery",
  "Excellent quality",
  "Good support",
  "Happy customer",
  "Excellent experience",
  "Very good service",
  "Satisfied with service"
)

wordcloud(
  words = feedback,
  random.order = FALSE,
  colors = rainbow(10),
  scale = c(2,0.7)
)

# Restore default layout
par(mfrow = c(1,1))
