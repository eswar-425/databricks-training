# Day 2 – SQL Practice

## Overview

This repository contains my Day 2 SQL practice work.

The objective of this session was to strengthen SQL fundamentals by solving practical query-based problems involving data retrieval, filtering, grouping, aggregation, logical operators, and pattern matching.

---

## Learning Objectives

During this practice session, I focused on:

- Writing structured SQL queries
- Retrieving required data from tables
- Applying conditions to filter records
- Performing aggregation and grouped analysis
- Using comparison and logical operators
- Practicing range-based and pattern-based filtering

---

## Topics Covered

### SELECT

Practiced retrieving:

- all employee details
- employee names and salaries
- employee names and departments
- employees from a specific department
- employee names with experience

---

### WHERE

Practiced filtering records based on:

- salary conditions
- city
- department
- experience
- exact value matching

---

### GROUP BY

Learned how to group records and calculate:

- total salary department-wise
- average salary in each department
- employee count city-wise
- maximum salary department-wise
- minimum experience department-wise

---

### HAVING

Applied conditions on grouped results:

- departments having more than 3 employees
- departments with average salary greater than a threshold
- cities having more than 2 employees
- departments with total salary greater than a limit
- departments where maximum salary exceeds a value

---

### TOP

Practiced retrieving top records such as:

- top 5 highest paid employees
- top 3 employees with highest experience
- top 2 salaries from Finance department
- top 4 employees from Hyderabad
- top 1 highest salary employee

---

### DISTINCT

Learned how to retrieve unique values from:

- department names
- city names
- salary values
- department and city combinations
- experience values

---

### Comparison Operators

Practiced using:

- `>=`
- `<=`
- `<>`
- `<`
- `>`

to compare salary and experience values.

---

### Logical Operators

Worked with:

- `AND`
- `OR`
- `NOT`

to combine multiple filtering conditions.

---

### IN and NOT IN

Used `IN` and `NOT IN` to filter:

- multiple cities
- multiple departments
- salary values
- excluded departments and cities

---

### BETWEEN

Practiced retrieving records within a range for:

- salary
- experience
- employee IDs

Also used `NOT BETWEEN`.

---

### LIKE Operator

Learned pattern matching using:

- names starting with a letter
- names ending with a letter
- names containing a character
- cities starting with a letter
- departments ending with a specific character

---

## What I Learned

By completing these SQL exercises, I learned:

- how SQL clauses work together in a query
- how to retrieve meaningful information from structured data
- how filtering conditions affect output
- how grouping and aggregation help analyze datasets
- how pattern matching can be used for text searches

---

## Key Takeaways

- SQL helps transform raw data into useful information.
- Query-writing becomes more efficient with practice.
- Small changes in conditions can produce very different results.
- Grouping and filtering are important for data analysis.

---

## Repository Structure

```text
databricks-training/
└── Week-1/
    └── Day-2/
        ├── README.md
        └── answers.sql