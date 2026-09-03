# ==========================================
# SET 8 - ALL OUTPUTS IN ONE VIEW
# ==========================================

# Create Dataset
data <- data.frame(
  Student_ID = c("L01","L02","L03","L04","L05","L06"),
  Gender = c("Male","Female","Male","Female","Male","Female"),
  Age = c(20,22,19,21,23,20),
  Course = c("R","R","SQL","R","R","SQL"),
  Study_Time = c(3.5,4.2,2.0,5.0,2.5,4.0),
  Videos_Watched = c(12,15,8,18,9,14),
  Quiz_Score = c(78,85,65,92,70,88),
  Login_Date = c("2025-01-05","2025-01-05","2025-02-08","2025-02-08","2025-03-12","2025-03-12")
)

# Convert Date
data$Login_Date <- as.Date(data$Login_Date)

# Display 4 plots in one window
par(mfrow = c(2,2))

# -----------------------------
# 1. Histogram
# -----------------------------
hist(data$Quiz_Score,
     col="skyblue",
     main="Quiz Score Distribution",
     xlab="Quiz Score",
     ylab="Frequency")

# -----------------------------
# 2. Box Plot
# -----------------------------
boxplot(Quiz_Score ~ Course,
        data=data,
        col=c("orange","green"),
        main="Quiz Score by Course",
        xlab="Course",
        ylab="Quiz Score")

# -----------------------------
# 3. Bubble Scatter Plot
# -----------------------------
plot(data$Study_Time,
     data$Quiz_Score,
     cex=data$Videos_Watched/5,
     pch=16,
     col="blue",
     xlab="Study Time",
     ylab="Quiz Score",
     main="Study Time vs Quiz Score")

# -----------------------------
# 4. Line Chart
# -----------------------------
avg <- c(81.5,78.5,79)

plot(avg,
     type="o",
     pch=16,
     col="red",
     xaxt="n",
     xlab="Month",
     ylab="Average Quiz Score",
     main="Monthly Average Quiz Score")

axis(1,
     at=1:3,
     labels=c("Jan","Feb","Mar"))

lines(stats::filter(avg, rep(1/2,2), sides=1),
      col="blue",
      lwd=2)

legend("bottomright",
       legend=c("Average","Moving Average"),
       col=c("red","blue"),
       lty=1)

# Restore normal layout
par(mfrow=c(1,1))
