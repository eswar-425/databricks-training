# Day 3 – SQL Joins

## Overview

This repository contains my Day 3 SQL practice work.

The objective of this session was to strengthen my understanding of SQL joins by working with relational datasets and identifying both matched and unmatched records across multiple tables.

The assignment focused mainly on `LEFT JOIN`, `RIGHT JOIN`, and `FULL OUTER JOIN`.

---

## Dataset Used

The practice exercises were based on a simple online learning platform consisting of four related tables.

### Tables

- `students`
- `courses`
- `enrollments`
- `instructors`

---

## Table Relationships

- A student may enroll in one or more courses.
- A course may have many students.
- A course may or may not have an assigned instructor.
- Some students may not have enrollments.
- Some courses may not have enrollments.
- Some instructors may not be assigned to any course.

---

## Topics Covered

### LEFT JOIN

Used to:

- display all students and their enrolled courses
- include students who are not enrolled in any course
- identify courses with no enrollments
- find students without course registrations

---

### RIGHT JOIN

Used to:

- display all students and enrollment information
- include unmatched records from the enrollments table

---

### FULL OUTER JOIN

Used to:

- display all students and enrollments including unmatched rows
- display all instructors and courses including unmatched rows
- identify missing relationships between related tables

---

## Practical Problems Solved

During this session, I practiced solving queries such as:

- all students and their enrolled courses
- courses with no students enrolled
- instructors and the courses they teach
- courses without instructors
- students not enrolled in any course
- courses never appearing in enrollments
- complete reporting with student, course, and instructor information
- listing all students and all courses even when no enrollment exists

---

## What I Learned

By completing this assignment, I learned:

- how joins combine data from multiple related tables
- how to preserve unmatched rows during joins
- how to identify missing relationships in relational datasets
- how nullable relationships affect query results
- how to build reporting-style SQL queries using multiple joins

---

## Key Takeaways

- `LEFT JOIN` helps preserve all records from the left table.
- `RIGHT JOIN` helps preserve all records from the right table.
- `FULL OUTER JOIN` helps identify both matched and unmatched rows.
- Understanding table relationships is important for writing effective SQL queries.

---

## Repository Structure

```text
databricks-training/
└── Week-1/
    └── Day-3/
        ├── README.md
        └── answers.sql