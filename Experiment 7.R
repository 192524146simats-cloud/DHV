# ==========================================
# SET 7 : CUSTOMER DEMOGRAPHICS ANALYSIS
# ==========================================

# Customer Data
customer_id <- c(1, 2, 3)
age <- c(28, 35, 42)
gender <- c("Female", "Male", "Female")
income <- c(50000, 60000, 75000)

# Display all outputs in one window
par(mfrow = c(2,2))

# ==========================================
# 1. Bar Chart - Customer Ages
# ==========================================

barplot(age,
        names.arg = customer_id,
        col = c("skyblue", "lightgreen", "pink"),
        main = "Customer Age Distribution",
        xlab = "Customer ID",
        ylab = "Age (Years)")

# ==========================================
# 2. Pie Chart - Gender Distribution
# ==========================================

gender_count <- table(gender)

pie(gender_count,
    labels = names(gender_count),
    col = c("pink", "lightblue"),
    main = "Gender Distribution")

# ==========================================
# 3. Customer Demographics Table
# ==========================================

plot.new()

text(0.5,0.95,"Customer Demographics",cex=1.3,font=2)

text(0.10,0.80,"ID",font=2)
text(0.30,0.80,"Age",font=2)
text(0.55,0.80,"Gender",font=2)
text(0.85,0.80,"Income",font=2)

text(0.10,0.65,"1")
text(0.30,0.65,"28")
text(0.55,0.65,"Female")
text(0.85,0.65,"50000")

text(0.10,0.50,"2")
text(0.30,0.50,"35")
text(0.55,0.50,"Male")
text(0.85,0.50,"60000")

text(0.10,0.35,"3")
text(0.30,0.35,"42")
text(0.55,0.35,"Female")
text(0.85,0.35,"75000")

# ==========================================
# 4. Tableau Dashboard Note
# ==========================================

plot.new()

text(0.5,0.80,"Task 4",cex=1.5,font=2)

text(0.5,0.60,
     "Create the dashboard",
     cex=1)

text(0.5,0.50,
     "using Tableau Public",
     cex=1)

text(0.5,0.40,
     "by combining",
     cex=1)

text(0.5,0.30,
     "the Bar Chart,",
     cex=1)

text(0.5,0.20,
     "Pie Chart and Table.",
     cex=1)

# Restore normal plotting
par(mfrow = c(1,1))
