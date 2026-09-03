# ==========================================
# SET 5 : WEBSITE ANALYTICS
# ==========================================

# Website Traffic Data
date <- c("2023-01-01",
          "2023-01-02",
          "2023-01-03",
          "2023-01-04",
          "2023-01-05")

page_views <- c(1500,1600,1400,1650,1800)

click_rate <- c(2.3,2.7,2.0,2.4,2.6)

# User Interaction Data
likes <- c(120,140,100,150,170)
shares <- c(60,70,50,80,90)
comments <- c(30,35,25,40,45)

# Display 4 outputs in one window
par(mfrow = c(2,2))

# ==========================================
# 1. Line Chart
# ==========================================

plot(page_views,
     type="o",
     col="blue",
     pch=16,
     xaxt="n",
     xlab="Date",
     ylab="Page Views",
     main="Daily Page Views")

axis(1,
     at=1:length(date),
     labels=date)

# ==========================================
# 2. Bar Chart
# ==========================================

barplot(click_rate,
        names.arg=date,
        col="orange",
        main="Click Through Rate",
        xlab="Date",
        ylab="CTR (%)")

# ==========================================
# 3. Stacked Area Chart
# ==========================================

interaction <- rbind(likes, shares, comments)

matplot(t(interaction),
        type="l",
        lty=1,
        lwd=2,
        col=c("blue","green","red"),
        xlab="Date",
        ylab="Interactions",
        xaxt="n",
        main="User Interactions")

axis(1,
     at=1:length(date),
     labels=date)

legend("topleft",
       legend=c("Likes","Shares","Comments"),
       col=c("blue","green","red"),
       lty=1,
       lwd=2)

# ==========================================
# 4. Insight
# ==========================================

plot.new()

text(0.5,0.8,"Website Analytics",cex=1.5,font=2)

text(0.5,0.65,
     "Page views increased",
     cex=1)

text(0.5,0.55,
     "during the observed period.",
     cex=1)

text(0.5,0.45,
     "CTR remained between",
     cex=1)

text(0.5,0.35,
     "2% and 3%.",
     cex=1)

text(0.5,0.25,
     "User engagement also increased.",
     cex=1)

# Restore default layout
par(mfrow=c(1,1))
