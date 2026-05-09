# Day 1 – SQL Practice

## Overview

This repository contains my Day 1 SQL practice work.

The purpose of this session was to understand the fundamentals of SQL and build confidence in writing queries that retrieve, filter, sort, and analyze data from a database.

---

## Learning Objectives

During this practice session, I focused on:

- understanding SQL query structure
- retrieving data from database tables
- applying filtering conditions
- sorting query results
- using aggregate functions
- grouping records for analysis

---

## What I Learned

### Retrieving Data

Learned how to fetch data from tables using `SELECT`.

Practiced:

- retrieving all employee details
- retrieving specific columns such as employee names, salaries, and departments
- selecting employee names with experience details

---

### Filtering Records

Learned how to filter records using `WHERE`.

Practiced filtering based on:

- salary greater than a specific value
- employees from a specific city
- employees from a specific department
- employees with less experience
- exact salary matching

---

### Sorting Data

Learned how to sort results using `ORDER BY`.

Practiced arranging employee records based on salary and other columns.

---

### Aggregate Functions

Learned how to summarize data using aggregate functions such as:

- `COUNT()`
- `SUM()`
- `AVG()`
- `MIN()`
- `MAX()`

These helped in understanding how to calculate totals, averages, and summary values from employee data.

---

### Grouping Data

Learned how to use `GROUP BY` for analysis.

Practiced:

- total salary department-wise
- average salary in each department
- employee count city-wise
- maximum salary in each department
- minimum experience department-wise

---

### Filtering Grouped Results

Learned how to use `HAVING` to apply conditions after grouping.

Practiced finding:

- departments having more than 3 employees
- departments where average salary is above a threshold
- cities having more than 2 employees
- departments with total salary above a limit

---

## Practice Activities

During this session, I practiced:

- writing multiple SQL queries
- executing filtering and sorting operations
- calculating aggregate values
- grouping records for analysis
- understanding how SQL clauses work together

---

## Key Takeaways

By the end of this practice session, I understood that:

- SQL is used to retrieve and analyze structured data
- query clauses can be combined to solve practical problems
- aggregate functions help summarize information
- grouping helps organize raw data into meaningful insights

---

## Repository Structure

```text
databricks-training/
└── Week-1/
    └── Day-1/
        ├── README.md
        └── answers.sql
