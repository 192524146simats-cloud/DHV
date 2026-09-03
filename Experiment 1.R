# ==========================================
# MONTHLY SALES DATA VISUALIZATION
# ==========================================

# Monthly Sales Data
month <- c("January", "February", "March", "April", "May")
sales <- c(15000, 18000, 22000, 20000, 23000)

# -------------------------------
# 1. Line Chart
# -------------------------------
plot(sales,
     type = "o",
     col = "blue",
     pch = 16,
     xaxt = "n",
     xlab = "Month",
     ylab = "Sales ($)",
     main = "Monthly Sales")

axis(1,
     at = 1:length(month),
     labels = month)

# -------------------------------
# 2. Bar Chart
# -------------------------------

product <- c("Laptop", "Mobile", "Tablet", "Headphone", "Watch")
product_sales <- c(45000, 38000, 25000, 18000, 15000)

barplot(product_sales,
        names.arg = product,
        col = c("red", "blue", "green", "orange", "purple"),
        xlab = "Products",
        ylab = "Sales ($)",
        main = "Top Selling Products")

# -------------------------------
# 3. Scatter Plot
# -------------------------------

advertising <- c(2000, 2500, 3000, 2800, 3500)

plot(advertising,
     sales,
     pch = 19,
     col = "red",
     xlab = "Advertising Budget ($)",
     ylab = "Monthly Sales ($)",
     main = "Advertising Budget vs Monthly Sales")

# Trend Line
model <- lm(sales ~ advertising)
abline(model, col = "blue", lwd = 2)

# -------------------------------
# 4. Dashboard (4 Charts Together)
# -------------------------------

par(mfrow = c(2,2))

# Line Chart
plot(sales,
     type = "o",
     col = "blue",
     pch = 16,
     xaxt = "n",
     xlab = "Month",
     ylab = "Sales ($)",
     main = "Monthly Sales")
axis(1, at = 1:length(month), labels = month)

# Bar Chart
barplot(product_sales,
        names.arg = product,
        col = "green",
        main = "Top Products",
        xlab = "Products",
        ylab = "Sales")

# Scatter Plot
plot(advertising,
     sales,
     pch = 19,
     col = "red",
     xlab = "Advertising Budget",
     ylab = "Sales",
     main = "Advertising vs Sales")
abline(model, col = "blue", lwd = 2)

# Pie Chart
pie(product_sales,
    labels = product,
    col = rainbow(5),
    main = "Product Sales Distribution")

# Restore Normal Screen
par(mfrow = c(1,1))

# -------------------------------
# Insight
# -------------------------------

cat("Insight:\n")
cat("The scatter plot shows a positive relationship between advertising budget and monthly sales.\n")
cat("As advertising budget increases, sales also increase.\n")
