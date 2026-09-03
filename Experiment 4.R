# ==========================================
# SET 4 : PRODUCT INVENTORY MANAGEMENT
# ==========================================

# Product Data
product_id <- c(1,2,3,4,5)
product_name <- c("Product A","Product B","Product C","Product D","Product E")
quantity <- c(250,175,300,200,220)

# Product Categories
category <- c("Electronics","Electronics","Furniture","Furniture","Accessories")

# Product Prices
price <- c(500,350,700,450,600)

# Display all outputs in one window
par(mfrow=c(2,2))

# ==========================================
# 1. Bar Chart
# ==========================================

barplot(quantity,
        names.arg=product_name,
        col="skyblue",
        main="Product Inventory",
        xlab="Products",
        ylab="Quantity Available")

# ==========================================
# 2. Stacked Bar Chart
# ==========================================

inventory_data <- table(category, product_name)

inventory_data[1,"Product A"] <- 250
inventory_data[1,"Product B"] <- 175
inventory_data[2,"Product C"] <- 300
inventory_data[2,"Product D"] <- 200
inventory_data[3,"Product E"] <- 220

barplot(inventory_data,
        beside=FALSE,
        col=c("red","green","blue"),
        legend=rownames(inventory_data),
        main="Inventory by Category",
        xlab="Products",
        ylab="Quantity")

# ==========================================
# 3. Scatter Plot
# ==========================================

plot(price,
     quantity,
     pch=19,
     col="purple",
     xlab="Product Price",
     ylab="Quantity Available",
     main="Price vs Quantity")

model <- lm(quantity ~ price)
abline(model,col="red",lwd=2)

# ==========================================
# 4. Findings
# ==========================================

plot.new()

text(0.5,0.8,"Findings",cex=1.5,font=2)

text(0.5,0.65,
     "Scatter plot shows the",
     cex=1)

text(0.5,0.55,
     "relationship between",
     cex=1)

text(0.5,0.45,
     "price and quantity.",
     cex=1)

text(0.5,0.35,
     "Higher price does not",
     cex=1)

text(0.5,0.25,
     "always mean higher quantity.",
     cex=1)

# Restore normal plotting
par(mfrow=c(1,1))
