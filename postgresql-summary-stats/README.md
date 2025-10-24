# ChickWeight Summary Statistics in PostgreSQL

This repository contains SQL queries designed to perform aggregate functions and summary statistics on the `public.chickweight` table using PostgreSQL. The dataset tracks the weight of chicks over time under different diets.

## Dataset Overview

The `public.chickweight` table includes the following columns:
- `weight`: Chick's weight
- `time`: Time in days
- `chick`: Chick identifier
- `diet`: Diet type

## Summary Statistics

The main query block calculates various statistical measures across all columns:

### Aggregates Included:
- **Total**: Sum of each column
- **Mean**: Average values (rounded to 2 decimal places)
- **Minimum**: Lowest values
- **Maximum**: Highest values
- **Count**: Number of non-null entries

### Percentile-Based Statistics:
- **Q1 (First Quartile)**: 25th percentile
- **Median**: 50th percentile
- **Q3 (Third Quartile)**: 75th percentile

These are computed using `PERCENTILE_CONT()` for each column, ordered appropriately.

## SQL Techniques Used
- `UNION` to combine multiple result sets into a single output
- Aggregate functions: `SUM()`, `AVG()`, `MIN()`, `MAX()`, `COUNT()`
- Percentile functions: `PERCENTILE_CONT()` with `WITHIN GROUP (ORDER BY ...)`
- `ROUND()` for formatting averages

## Usage

To run these queries:
1. Ensure your PostgreSQL database includes the `public.chickweight` table.
2. Execute the SQL script in your preferred SQL client or psql terminal.
3. Review the output for a comprehensive statistical summary of the dataset.

## License

This project is open-source and available under the [MIT License](LICENSE).
