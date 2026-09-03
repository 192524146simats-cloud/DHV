# ==========================================
# SET 3 : EMPLOYEE PERFORMANCE EVALUATION
# ==========================================

# Employee Data
employee_id <- c(1, 2, 3, 4, 5)
department <- c("Sales", "HR", "Marketing", "Sales", "HR")
years_service <- c(5, 3, 7, 4, 2)
performance_score <- c(85, 92, 78, 90, 76)

# Display 3 charts in one window
par(mfrow = c(2,2))

# ==========================================
# 1. Line Chart
# ==========================================

plot(employee_id,
     performance_score,
     type = "o",
     col = "blue",
     pch = 16,
     lwd = 2,
     xlab = "Employee ID",
     ylab = "Performance Score",
     main = "Employee Performance Trend")

legend("bottomleft",
       legend = "Performance Score",
       col = "blue",
       lty = 1,
       pch = 16)

# ==========================================
# 2. Bar Chart
# ==========================================

dept_count <- table(department)

barplot(dept_count,
        col = c("red", "green", "blue"),
        main = "Employees by Department",
        xlab = "Department",
        ylab = "Number of Employees")

# ==========================================
# 3. Scatter Plot
# ==========================================

plot(years_service,
     performance_score,
     pch = 19,
     col = "purple",
     xlab = "Years of Service",
     ylab = "Performance Score",
     main = "Years of Service vs Performance")

model <- lm(performance_score ~ years_service)
abline(model, col = "red", lwd = 2)

# ==========================================
# 4. Insight (Text)
# ==========================================

plot.new()

text(0.5, 0.8, "Insight", cex = 1.5, font = 2)

text(0.5, 0.6,
     "Employees with more years of service",
     cex = 1)

text(0.5, 0.5,
     "do not always have higher",
     cex = 1)

text(0.5, 0.4,
     "performance scores.",
     cex = 1)

text(0.5, 0.3,
     "Performance depends on multiple factors.",
     cex = 1)

# Restore normal plotting
par(mfrow = c(1,1))
