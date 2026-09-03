# ==========================================
# Experiment 9: Survey Responses Analysis
# ==========================================

# Create Survey Dataset
survey <- data.frame(
  Survey_ID = c(1, 2, 3),
  Question1 = c("A", "B", "C"),
  Question2 = c("B", "A", "A"),
  Question3 = c("C", "D", "B"),
  stringsAsFactors = FALSE
)

# Display Dataset in Console
print(survey)

# Display all outputs in one window
par(mfrow = c(2,2), mar = c(4,4,3,1))

# ==========================================
# 1. Grouped Bar Chart (Question 1)
# ==========================================

q1 <- table(survey$Question1)

barplot(
  q1,
  beside = TRUE,
  col = c("skyblue", "lightgreen", "pink"),
  main = "Distribution of Question 1 Responses",
  xlab = "Response Options",
  ylab = "Number of Responses"
)

legend(
  "topright",
  legend = names(q1),
  fill = c("skyblue", "lightgreen", "pink"),
  title = "Question 1"
)

# ==========================================
# 2. Stacked Bar Chart (All Questions)
# ==========================================

levels_all <- c("A","B","C","D")

responses <- rbind(
  table(factor(survey$Question1, levels = levels_all)),
  table(factor(survey$Question2, levels = levels_all)),
  table(factor(survey$Question3, levels = levels_all))
)

rownames(responses) <- c("Question1","Question2","Question3")

barplot(
  t(responses),
  col = c("red","green","blue","orange"),
  main = "Overall Survey Responses",
  xlab = "Questions",
  ylab = "Number of Responses"
)

legend(
  "topright",
  legend = c("A","B","C","D"),
  fill = c("red","green","blue","orange"),
  cex = 0.8
)

# ==========================================
# 3. Survey Response Table
# ==========================================

plot.new()

title("Survey Response Data")

text(0.08,0.90,"Survey ID",font=2,adj=0)
text(0.35,0.90,"Question1",font=2,adj=0)
text(0.60,0.90,"Question2",font=2,adj=0)
text(0.85,0.90,"Question3",font=2,adj=0)

for(i in 1:nrow(survey))
{
  y <- 0.90 - i*0.18
  
  text(0.08,y,survey$Survey_ID[i],adj=0)
  text(0.35,y,survey$Question1[i],adj=0)
  text(0.60,y,survey$Question2[i],adj=0)
  text(0.85,y,survey$Question3[i],adj=0)
}

# ==========================================
# 4. Summary
# ==========================================

plot.new()

title("Survey Summary")

text(0.5,0.90,"Survey Responses Analysis",cex=1.4,font=2)

text(0.5,0.75,paste("Total Surveys :",nrow(survey)))

text(0.5,0.60,paste("Question 1 Responses :",paste(names(q1),collapse=", ")))

text(0.5,0.45,"Charts Created")

text(0.5,0.35,"1. Grouped Bar Chart")

text(0.5,0.25,"2. Stacked Bar Chart")

text(0.5,0.15,"3. Survey Response Table")
