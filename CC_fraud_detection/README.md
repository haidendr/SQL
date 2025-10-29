# Credit Card Fraud Detection with SQL

This project explores **credit card transaction data** to detect fraudulent activity using **SQL and Python** within a Jupyter Notebook environment.  

By integrating SQL queries, simulation scenarios, and rule-based strategies, we analyze fraud patterns, forecast risk, and evaluate detection effectiveness.

---

## Project Overview

**Goal:**  
Identify and understand patterns of fraudulent transactions, simulate breach scenarios, and test detection strategies.

**Dataset:**  
[Credit Card Fraud Detection on Kaggle](https://www.kaggle.com/datasets/mlg-ulb/creditcardfraud)  
The dataset contains anonymized transaction data from European cardholders in September 2013, with **284,807 transactions** and **492 confirmed frauds (0.17%)**.

---

## Features & Workflow

### 1. Data Setup
- Load the Kaggle dataset into a **Pandas DataFrame**.
- Create a **SQLite database** (`fraud_detection.db`) for SQL exploration.
- Store all transactions in a table called `transactions`.

### 2. Exploratory SQL Analysis
Run SQL queries to understand data distribution and fraud trends:
- **Total transactions and fraud rate**
- **Top fraudulent transaction amounts**
- **Average transaction value by class**
- **Fraud frequency by hour**

### 3. Forecasting & Strategy

#### Scenario 1: Spike in High-Value Fraud Transactions
Simulates a potential **breach event** where fraud involving amounts > \$1,000 doubles.  
Results showed a **12% relative increase** in fraud rate (from 0.17% → 0.19%), indicating the high sensitivity of fraud exposure to small behavioral shifts.

#### Scenario 2: Rule-Based Detection
Implements a simple detection rule that **flags all transactions > \$2,000**.  
- Flagged: 676 transactions  
- Correctly flagged frauds: 1  
- Precision: **0.15%**  
- Recall: **0.2%**  
The rule generates many false positives and misses most frauds, showing the need for more adaptive, data-driven models.

---

## Key Insights

- **Fraud is rare but costly** — small percentage changes represent significant financial exposure.
- **High-value transactions** are a critical risk zone and should be closely monitored.
- **Static rules alone are ineffective** — they must be combined with behavioral and anomaly-based detection methods.
- Integrating **machine learning models** (e.g., Logistic Regression, Isolation Forest) alongside SQL logic can significantly enhance fraud detection precision.

---

## Conclusion

This project demonstrates how SQL and Python can be combined for **data-driven fraud analysis**, scenario forecasting, and risk strategy testing.  
By evolving from static thresholds to adaptive models, financial institutions can improve **fraud detection accuracy**, **reduce false positives**, and **minimize losses**.

---

## Tech Stack

- **Python** (pandas, sqlite3, matplotlib, seaborn)  
- **SQLite** (for SQL query analysis)  
- **Jupyter Notebook**  
- **Kaggle dataset**  
