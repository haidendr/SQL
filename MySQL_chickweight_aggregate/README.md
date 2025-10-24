# ChickWeight SQL Analysis

**Author:** D. Haiden  
**Database:** MySQL  
**Topic:** Aggregate Functions & Window Functions in SQL

## Overview

This project demonstrates the use of **aggregate functions** and **window functions** in MySQL using a dataset named `chickweight`. The dataset appears to track the weight of chicks over time under different diets.

## Features

The SQL script includes the following operations:

### 1. Previewing the Dataset
```sql
SELECT * FROM test.chickweight LIMIT 6;
```
Displays the first 6 rows of the `chickweight` table for a quick overview.

### 2. Aggregate Statistics
Performs a series of aggregate calculations using `UNION` to combine results:
- **Total**: `SUM()` of `weight`, `time`, `Chick`, and `diet`
- **Mean**: `AVG()` of the same columns
- **Minimum**: `MIN()` values
- **Maximum**: `MAX()` values
- **Count**: `COUNT()` of non-null entries

### 3. Window Function Example
```sql
SELECT ROW_NUMBER() OVER(ORDER BY weight) AS row_num, weight
FROM test.chickweight
ORDER BY weight;
```
Generates a row number for each record ordered by `weight`, showcasing the use of the `ROW_NUMBER()` window function.

> *Note:* The script includes a commented-out section for PostgreSQL's `width_bucket()` and `ntile()` functions, which are not available in MySQL.


## Learning Objectives

- Practice using SQL aggregate functions (`SUM`, `AVG`, `MIN`, `MAX`, `COUNT`)
- Understand how to combine multiple result sets using `UNION`
- Explore basic window functions like `ROW_NUMBER()`

## Requirements

- MySQL 8.0+
- Access to a database with a `test.chickweight` table

## Notes

- Ensure your MySQL version supports window functions (MySQL 8.0+).
- The dataset structure should include at least the following columns: `weight`, `time`, `Chick`, `diet`.

## Feedback

Feel free to fork this repo, open issues, or submit pull requests for improvements or suggestions!
