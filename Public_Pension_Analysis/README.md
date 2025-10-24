# Public Pension Plan Analysis with SQL

This project demonstrates how to use SQL and Python to analyze public pension plan data from the **Public Plans Database (PPD)**. The analysis focuses on data validation, funding trends, and investment performance across U.S. public retirement systems between 2001 and 2017.

## Overview

The notebook uses **pandas** and **SQLAlchemy** to load, query, and analyze pension plan data stored in a local SQLite database.
It showcases SQL proficiency through practical examples of auditing, trend analysis, and performance evaluation.

Dataset source: [Kaggle – US Public Pensions Data (2001–2016)](https://www.kaggle.com/datasets/meepbobeep/us-public-pensions-data-fiscal-years-20012016)

## Objectives

* Demonstrate SQL querying and data analysis skills
* Assess data completeness and consistency across plans
* Compare funding health across states
* Identify contribution shortfalls
* Evaluate long-term investment performance

## Steps Performed

1. **Setup and Data Loading**

   * Installed dependencies and imported required libraries
   * Loaded the `PPD_PlanLevel.csv` dataset into a pandas DataFrame
   * Created a SQLite database and stored the dataset using SQLAlchemy

2. **Dataset Exploration**

   * Previewed the first few rows of data using SQL queries
   * Identified key fields for analysis (funding ratios, contributions, returns)

3. **Data Quality Audit**

   * Counted fiscal years reported per plan
   * Highlighted plans with incomplete or missing data

4. **Funding Ratio Trends by State**

   * Calculated the average actuarial funded ratio (GASB) from 2010–2017
   * Ranked states by funding ratio to compare performance

5. **Contribution Compliance**

   * Found plans that paid less than 100% of their required contributions
   * Focused on plans with at least three underpaid years

6. **Investment Performance Analysis**

   * Compared 5-year, 10-year, and 20-year investment returns for 2017
   * Assessed long-term investment sustainability across plans

## Key Insights

* Data coverage varies across plans and years, highlighting reporting inconsistencies
* Funding ratios differ widely between states, revealing uneven fiscal health
* Some plans show persistent contribution shortfalls, signaling potential stress
* Investment return data provides insight into long-term plan sustainability

## Skills Demonstrated

* SQL querying and aggregation
* Data validation and auditing
* Time-series and comparative analysis
* Pension funding and performance metrics
* Python integration with SQL (pandas + SQLAlchemy)

## How to Run

1. Clone this repository
2. Place the `PPD_PlanLevel.csv` file in the same directory
3. Open the Jupyter Notebook in VS Code or JupyterLab
4. Run each cell to reproduce the analysis
