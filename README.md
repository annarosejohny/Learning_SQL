# Introduction to SQL (Structured Query Language)

## Repository includes the notes and data from Khan academy "Introduction to SQL" course

- Tables
    - Tables are organized as rows and columns.
    - Rows are referred to records and columns as fields.
    - Fields are limited, number of rows are unlimited.
    - Table rows are named as lowercase, no spaces (undescores instead), collective group or plural. Table rows holds data on an individual obdervation.
    - Table columns are named as lowercase, no spaces, singular. Table columns hold one piece of information about all records. Two columns cannot have same name.
    - Uniques identifiers are used to identofy records in a table.
- Data types
    - **Strings** - sequence of characters such as letters or punctuation. Eg: names (Anna, Antus). **VARCHAR**
    - **Integers** - Store whole numbers. Eg:1,35. **INT**
    - **Floats** - Stores numbers that include fractional part. Eg: 9.86,7.004. **NUMERIC**
- Queries
    - AND
    - OR
    - IN
    - LIKE
    - HAVING
      ![Having](https://github.com/user-attachments/assets/e1b9b690-d21d-4639-a0fe-e27ff95c0ad9)
- Relational Queries
    - **JOIN**
        - **Cross join**
            - Eg: _SELECT * FROM student_grades, students;_
            - Each row in first table, it creates a row for the second table. For example, if first table contains 2 rows and second table contain 4 rows, the final "Cross Join" return a table with 8 rows(2*4).
        - **Implicit Inner join**
            - Eg: _SELECT * FROM student_grades, students
    WHERE student_grades.student_id = students.id;_
            - Join only rows and columns that are same.
            -_ SELECT students.first_name, students.last_name, students.email, student_grades.test, student_grades.grade FROM students
    JOIN student_grades
    ON students.id = student_grades.student_id;_
            - Results same as implicit join
            - Creates only tables of matching rows/columns.
        - **Left outer join**
            - Eg: _SELECT students.first_name, students.last_name, student_projects.title FROM students LEFT OUTER JOIN student_projects ON students.id = student_projects.student_id;_
            - Joins all the rows in tables
        - **Self join**
            - Eg: _SELECT students.first_name, students.last_name, buddies.email as buddy_email FROM students JOIN students buddies_
    ON students.buddy_id = buddies.id;
            - A table joined to itself.
        - **Combining multiple joins**
            - Eg: _SELECT a.title, b.title FROM project_pairs JOIN student_projects a ON project_pairs.project1_id = a.id JOIN student_projects b ON project_pairs.project2_id = b.id;_
- Aggregate functions
    - SUM
    - MIN
    - MAX
    - AVG -average
    - COUNT
    - ROUND
    - AUTOINCREMENT
- CASE
![CASE](https://github.com/user-attachments/assets/be66d6cd-66fe-45de-9b8b-384cdb61ce1e)
- Gradebook answer
![gradebook](https://github.com/user-attachments/assets/9875864e-7e99-4fac-975a-0df23c2fbc09)

