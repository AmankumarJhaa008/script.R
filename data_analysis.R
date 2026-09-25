# =====================================================================
# Project: R Data Analysis & Statistical Suite
# Description: Exploratory data analysis on the classic mtcars dataset,
#              featuring summary statistics, grouping, and custom metrics.
# =====================================================================

# Source helper functions if available
if (file.exists("utils.R")) {
  source("utils.R")
}

run_analysis <- function() {
  cat("\n========================================\n")
  cat("     R DATA ANALYSIS & STATISTICAL SUITE\n")
  cat("========================================\n\n")
  
  # 1. Load built-in dataset
  data(mtcars)
  cat("[i] Successfully loaded 'mtcars' dataset.\n")
  cat(sprintf("[i] Total records/cars: %d\n", nrow(mtcars)))
  cat(sprintf("[i] Total variables/features: %d\n\n", ncol(mtcars)))
  
  # 2. Display Statistical Summary
  cat("--- 1. Statistical Summary (Summary Statistics) ---\n")
  print(summary(mtcars[, c("mpg", "hp", "wt", "qsec")]))
  cat("\n--------------------------------------------------\n\n")
  
  # 3. Custom Calculations & Insights
  cat("--- 2. Key Analytical Insights ---\n")
  avg_mpg <- mean(mtcars$mpg)
  max_hp_car <- rownames(mtcars)[which.max(mtcars$hp)]
  max_hp_val <- max(mtcars$hp)
  
  cat(sprintf("-> Average Miles Per Gallon (mpg): %.2f\n", avg_mpg))
  cat(sprintf("-> Most Powerful Car: %s (%d HP)\n", max_hp_car, max_hp_val))
  
  # 4. Groupwise Analysis (Base R aggregate)
  cat("\n--- 3. Average MPG by Cylinder Count ---\n")
  avg_mpg_by_cyl <- aggregate(mpg ~ cyl, data = mtcars, FUN = mean)
  print(avg_mpg_by_cyl)
  
  cat("\n========================================\n")
  cat("       Analysis Completed Successfully!    \n")
  cat("========================================\n")
}

# Execute the analysis function
run_analysis()
