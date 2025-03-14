## Introduction to SQL (Structured Query Language)

### Repository includes SQL fundamentals
- SQL is a computer language for relational database management and data manipulation.
- Used to query, insert, update and modify data.
- Used to communicate with databases
- Statements are made descriptive
- SQL is used to
  - Read/retrieve data
  - Write data - add data to a table
  - Update data - insert new data

- **Tables**
  - structured list of data elements or a specific data type
  - Tables are organized as rows and columns.
  - **Rows** are referred to **records** and **columns** as **fields**.
  - Fields are limited, number of rows are unlimited.
  - Table rows are named as lowercase, no spaces (undescores instead), collective group or plural. Table rows holds data on an individual obdervation.
  - Table columns are named as lowercase, no spaces, singular. Table columns hold one piece of information about all records. Two columns cannot have same name.
  - Uniques identifiers are used to identify records in a table.
- **Data models**
  - **Relational model**
    - Allows for easy querying and data manipulation in an easy, logical and intutive way
    - Shows relationship between data
  - **Transactional model**
    - Operational database
- **Data models building blocks**
  - **Entity**
    - Person, place or event
    - Distinguishable, unique and distinct
  - **Attribute**
    - Characteristics of entity
  - **Relationship**
    - Association among different entities
      - one-to-many: customer to invoices
      - many-to-many: student to classes
      - one-to-one: manager to store
- **ER diagrams**
  - ER model is composed of entity types and specifies the relationships that exists netween the instances of those entities.
![ER_model](https://github.com/user-attachments/assets/c7d11070-2f06-4cc1-ac22-8f64cc72aa29)
  - ER diagrams shows the relationships, business process, show links(primary keys), represented visually
  - **Primary key and foreign key**
    - Primary key: a column(or a set of columns) whose values uniquely identify every row in a table
    - Foreign key: One or more columns that can be used together to identify a single row in another table
  - **ER diagram notation**
    - Chen notation
    - Crow's foot notation
    - UML class diagram notation
  ![ER_diagram_notation](https://github.com/user-attachments/assets/50789f95-5f95-4206-99b2-2d1ecc1b3cd8)
- **Data types**
    - **Strings** - sequence of characters such as letters or punctuation. Eg: names (Anna, Antus). **VARCHAR**
    - **Integers** - Store whole numbers. Eg:1,35. **INT**
    - **Floats** - Stores numbers that include fractional part. Eg: 9.86,7.004. **NUMERIC**
- **SELECT**
  - need to specify two pieces of information to use a SELECT statement: What you want and where you want to select it from.
![SELECT](https://github.com/user-attachments/assets/7a8343bf-b9d1-4e17-be81-ac96ae790942)
  - Add multiple column names, we need to use "comma"
![SELECT_multi](https://github.com/user-attachments/assets/326db962-983b-4e0c-824c-da3f6a054755)
  - Select all columns using "*"
![SELECT_ALL](https://github.com/user-attachments/assets/cfe916f1-a617-418b-9e82-fef4b3da02c5)

- **LIMIT**
  - Eg: SELECT prod_name
        FROM products
        LIMIT 5;

- Creating new tables
  - CREATE TABLE shoes <br>
    (Id char(10) PRIMARY KEY,\\
    Brand char(10) NOT NULL);
  
- **Queries**
    - AND
    - OR
    - IN
    - LIKE
    - HAVING
      ![Having](https://github.com/user-attachments/assets/e1b9b690-d21d-4639-a0fe-e27ff95c0ad9)
- **Relational Queries**
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

