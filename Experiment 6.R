# ==========================================
# SET 6 : PRODUCT SALES ANALYSIS
# ==========================================

# Product Data
product <- c("Product A", "Product B", "Product C")

january <- c(2000, 1500, 1200)
february <- c(2200, 1800, 1400)
march <- c(2400, 1600, 1100)

# Sales Matrix
sales <- rbind(january, february, march)
colnames(sales) <- product
rownames(sales) <- c("January", "February", "March")

# Display all outputs in one window
par(mfrow = c(2,2))

# ==========================================
# 1. Grouped Bar Chart
# ==========================================

barplot(sales,
        beside = TRUE,
        col = c("red","green","blue"),
        main = "Monthly Product Sales",
        xlab = "Products",
        ylab = "Sales",
        legend.text = rownames(sales))

# ==========================================
# 2. Stacked Area Chart
# ==========================================

x <- 1:3

plot(x,
     january,
     type = "n",
     ylim = c(0, 6000),
     xaxt = "n",
     xlab = "Month",
     ylab = "Sales",
     main = "Overall Sales Trend")

axis(1,
     at = x,
     labels = c("January","February","March"))

polygon(c(x, rev(x)),
        c(january, rep(0,3)),
        col = "lightblue",
        border = "blue")

polygon(c(x, rev(x)),
        c(january + february, rev(january)),
        col = "lightgreen",
        border = "green")

polygon(c(x, rev(x)),
        c(january + february + march,
          rev(january + february)),
        col = "pink",
        border = "red")

legend("topleft",
       legend = product,
       fill = c("lightblue","lightgreen","pink"))

# ==========================================
# 3. Monthly Sales Table
# ==========================================

plot.new()

text(0.5,0.95,"Monthly Sales Table",cex=1.3,font=2)

text(0.15,0.80,"Product")
text(0.45,0.80,"January")
text(0.65,0.80,"February")
text(0.85,0.80,"March")

text(0.15,0.65,"Product A")
text(0.45,0.65,"2000")
text(0.65,0.65,"2200")
text(0.85,0.65,"2400")

text(0.15,0.50,"Product B")
text(0.45,0.50,"1500")
text(0.65,0.50,"1800")
text(0.85,0.50,"1600")

text(0.15,0.35,"Product C")
text(0.45,0.35,"1200")
text(0.65,0.35,"1400")
text(0.85,0.35,"1100")

# ==========================================
# 4. Tableau Dashboard Note
# ==========================================

plot.new()

text(0.5,0.8,"Task 4",cex=1.5,font=2)

text(0.5,0.6,
     "Create the dashboard",
     cex=1)

text(0.5,0.5,
     "using Tableau Public",
     cex=1)

text(0.5,0.4,
     "by combining the",
     cex=1)

text(0.5,0.3,
     "bar chart, area chart",
     cex=1)

text(0.5,0.2,
     "and sales table.",
     cex=1)

# Restore normal plotting
par(mfrow = c(1,1))
