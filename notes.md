Aggregates

- Count all column values of table
- use `count(DISTINCT genre_id)` to not count repeated data

- avg gets average of all values for a column type
- inner join preferred over outer join to avoid null values

- GROUP_BY does our aggregate operation and returns a table with aggregates by a specific value
- e.g. find the average grade for folks in math, english, history, all at once
https://www.w3schools.com/sql/sql_groupby.asp
HAVING limits the group by either further
https://www.w3schools.com/sql/sql_having.asp
you cannot use an aggregate query within a where clause.

- SELECT you cannot grab column values that you are not aggregating by
- Solved with nested joins (might need this for the grade thang) probably too much for me in the clinic 
