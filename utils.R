# =====================================================================
# Module: R Utilities
# Description: Helper utility functions for the R Data Analysis Suite.
# =====================================================================

# Function to print stylized section dividers in console
print_header <- function(title_text) {
  cat("\n" , strrep("=", 40), "\n")
  cat(" ", title_text, "\n")
  cat(strrep("=", 40), "\n")
}
