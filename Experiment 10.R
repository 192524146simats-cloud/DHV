# Dataset
category <- data.frame(
  Category = c("Electronics", "Clothing", "Appliances"),
  Sales = c(50000, 35000, 40000)
)

# Display 2 rows × 2 columns
par(mfrow = c(2,2))

# 1. Funnel Representation (Horizontal Bar Chart)
barplot(category$Sales,
        names.arg = category$Category,
        horiz = TRUE,
        col = "skyblue",
        main = "Funnel Chart",
        xlab = "Sales ($)")

# 2. Table
plot.new()
text(0.5,0.9,"Product Sales Table",font=2)

text(0.2,0.75,"Category",font=2)
text(0.8,0.75,"Sales",font=2)

text(0.2,0.60,"Electronics")
text(0.8,0.60,"50000")

text(0.2,0.45,"Clothing")
text(0.8,0.45,"35000")

text(0.2,0.30,"Appliances")
text(0.8,0.30,"40000")

# 3. Pie Chart
pie(category$Sales,
    labels = category$Category,
    col = c("skyblue","pink","lightgreen"),
    main = "Sales Distribution")

# 4. Bar Chart
barplot(category$Sales,
        names.arg = category$Category,
        col = c("blue","red","green"),
        main = "Category Sales",
        ylab = "Sales ($)")
