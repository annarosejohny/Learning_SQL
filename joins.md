## **Relational Queries**
  - Associate correct records from each table
  - Allows data retrievel from multiple tables at once
  
  - **JOIN**
    - Cartesian joins or **Cross join**
      - Each row in first table, it creates a row for the second table. For example, if first table contains 2 rows and second table contain 4 rows, the final "Cross Join" return a table with 8 rows(2*4).

        ![cartesian_joins](https://github.com/user-attachments/assets/91736ae9-c04c-4a2a-bedd-594ca49c7b88)

        ![Cross_joins](https://github.com/user-attachments/assets/95c9a0ed-c02e-4ee3-9178-3a7886f1fe73)

        - Disadvantages
          - Computationally taxing
          - Will return products with the incorrect vendor or no vendor at all.
      
      - Inner join or **Implicit Inner join**
        - Join only rows and columns that are same.
        - Inner join keyword selects records that have matching values in both tables.
        - Creates only tables of matching rows/columns.
        ![inner_join](https://github.com/user-attachments/assets/d8e3cce1-ac63-4898-888e-4efa6257cbcb)
        
        ![inner_join1](https://github.com/user-attachments/assets/abee5740-79fd-490b-85e3-caf1361f54d5)

      
      - **Left outer join**
            - Eg: _SELECT students.first_name, students.last_name, student_projects.title FROM students LEFT OUTER JOIN student_projects ON students.id = student_projects.student_id;_
            - Joins all the rows in tables
        - **Self join**
            - Eg: _SELECT students.first_name, students.last_name, buddies.email as buddy_email FROM students JOIN students buddies_
    ON students.buddy_id = buddies.id;
            - A table joined to itself.
        - **Combining multiple joins**
            - Eg: _SELECT a.title, b.title FROM project_pairs JOIN student_projects a ON project_pairs.project1_id = a.id JOIN student_projects b ON project_pairs.project2_id = b.id;_
