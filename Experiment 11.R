# Dataset
geo <- data.frame(
  City = c("City A", "City B", "City C"),
  Population = c(500000, 700000, 600000),
  Temperature = c(75, 68, 80),
  Elevation = c(1000, 800, 1200)
)

# Display 2x2 layout
par(mfrow = c(2,2))

#-----------------------------------
# 1. Map Representation (Dummy Map)
#-----------------------------------
plot(c(1,2,3), c(1,3,2),
     pch = 19,
     col = "blue",
     xlim = c(0,4),
     ylim = c(0,4),
     xlab = "Longitude",
     ylab = "Latitude",
     main = "City Map")

text(c(1,2,3), c(1,3,2),
     labels = geo$City,
     pos = 3)

#-----------------------------------
# 2. Scatter Plot
#-----------------------------------
plot(geo$Population,
     geo$Temperature,
     pch = 19,
     col = "red",
     xlab = "Population",
     ylab = "Average Temperature",
     main = "Temperature vs Population")

text(geo$Population,
     geo$Temperature,
     labels = geo$City,
     pos = 3)

#-----------------------------------
# 3. Table
#-----------------------------------
plot.new()
text(0.5,0.95,"Geographic Data Table",font=2)

text(0.15,0.80,"City",font=2)
text(0.45,0.80,"Population",font=2)
text(0.70,0.80,"Temp",font=2)
text(0.90,0.80,"Elevation",font=2)

text(0.15,0.65,"City A")
text(0.45,0.65,"500000")
text(0.70,0.65,"75")
text(0.90,0.65,"1000")

text(0.15,0.50,"City B")
text(0.45,0.50,"700000")
text(0.70,0.50,"68")
text(0.90,0.50,"800")

text(0.15,0.35,"City C")
text(0.45,0.35,"600000")
text(0.70,0.35,"80")
text(0.90,0.35,"1200")

#-----------------------------------
# 4. Population Bar Chart
#-----------------------------------
barplot(geo$Population,
        names.arg = geo$City,
        col = c("skyblue","pink","lightgreen"),
        main = "City Population",
        ylab = "Population")
