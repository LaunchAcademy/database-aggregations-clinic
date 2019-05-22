Setup
```
yarn install
createdb lornch-ablademy
psql lornch-ablademy

lornch-ablademy=# \i schema.sql
```

# Instructions

The students of Launch Academy have received their grades, but the higher ups are having trouble making sense of the all of the information! Help em out with your knowledge of SQL Aggregate Queries for us won't you?

The primary things we need to know are metrics regarding student demerits and grades. (demerits are marks against the student for being naughty or misbehaving, and if you see the names of the students, you may have an inkling as how they have been troublesome...)

## Core
Eventually your information displayed via your Express application, but you may wish to create the queries needed to display your metrics first by entering `psql` or adding them to `queries.sql`.

## Non-Core

Once you have your queries, you can run them in your express app, gather the data into variables, and pass those to your view templates.

### Student Data
* Total Students: count the number of students in Lornch Ablademy.
* Total Demerits: how naughty have these students been in total? Find the total amount of demerits for all students.
* Best Student: find the student with the lowest amount of demerits (either by sort or keyword)
* Naughtiest Student: find students with the most demerits (either by sort or keyword)
* Average Naughtiness: find average demerit count

### Grade Data (tougher)

* Average Grade for Class: What's the average grade for all of the students?
* Average Grade for Each Student: Find the average grade for each student across all subjects (visualize last)
* Average Grade in Science: Find the average grade for science
* Most Struggling Student: Find the student with the worst average grade across all subjects
* Best Student: Find the student with the best average grade across all subjects
* Struggling Students: Find all students who have an average grade lower than 70

**Aggregates**

COUNT, SUM, MIN, MAX, and AVG

**Useful Resources**
https://docs.microsoft.com/en-us/sql/t-sql/functions/aggregate-functions-transact-sql?view=sql-server-2017
https://ryanwingate.com/tools/sql/aggregations/
https://www.tinahang.com/2018/08/07/sql-aggregations/
