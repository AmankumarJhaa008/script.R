# 📊 R Data Analysis & Statistical Suite

A clean, modular exploratory data analysis (EDA) project built using R. This project demonstrates core statistical summaries, dataset exploration, group-wise aggregations, and insights extraction using standard R libraries.

---

## 🚀 Features

* **Statistical Overview:** Computes foundational metrics (mean, median, quartile ranges, min/max) across major vehicle features (`mpg`, `hp`, `wt`, `qsec`).
* **Insight Extraction:** Automatically identifies top-performing metrics, such as the highest horsepower vehicle and fleet efficiency averages.
* **Group-Wise Aggregation:** Utilizes base R aggregation (`aggregate()`) to analyze performance trends segmented by cylinder count (`cyl`).
* **Modular Architecture:** Separates execution logic (`data_analysis.R`) from utility functions (`utils.R`) for clean, production-style script organization.

---

## 🛠️ Tech Stack
* **Language:** R (Base R)
* **Dataset Used:** `mtcars` (Motor Trend Car Road Tests)

---

## 📂 Project Structure
```text
r-data-analysis-suite/
│
├── data_analysis.R      # Main analytics script and execution flow
├── utils.R              # Helper formatting and utility functions
└── README.md            # Comprehensive project documentation
