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
      
      - **Inner join**
        - Join only rows and columns that are same.
        - Inner join keyword selects records that have matching values in both tables.
        - Creates only tables of matching rows/columns.
        - Joining more tables together affects overall database performance
        - You can join multiple tables, no limit
        - List all the tables, then define conditions.
          
        ![inner_join](https://github.com/user-attachments/assets/d8e3cce1-ac63-4898-888e-4efa6257cbcb)
        
        ![inner_join1](https://github.com/user-attachments/assets/abee5740-79fd-490b-85e3-caf1361f54d5)

        - Inner join with multiple tables
        
        ![inner_join2](https://github.com/user-attachments/assets/374d5f21-e382-4cb6-86ba-eb367d17315f)

      - **Self join**
        - Join original table to itself
          
        ![self_join](https://github.com/user-attachments/assets/6c35ddd8-1df7-4903-9c5d-b7e20612e811)

        - Aliases
          - Aliases gives a table or a column a temporary name
          - Make column names more readable
          - An alias only exists for the duration of query
        
        ![aliases](https://github.com/user-attachments/assets/e254bcfe-e772-4f68-a80c-478790520a10)


      - **Left join**
        
        ![left_join](https://github.com/user-attachments/assets/4c0431c9-2dec-4652-8cc5-edf24e872324) ![left_join1](https://github.com/user-attachments/assets/a0cd99f2-c24b-43bc-a1c3-0335ec3c648c)

      - **Right join**
      
      ![right_join](https://github.com/user-attachments/assets/7a4493b9-a8b1-4b33-8585-51bdb5dddd39) ![right_join1](https://github.com/user-attachments/assets/bc8ab7ae-7743-4ec2-9eb8-283a1c91fca4)

      - **Full outer join**
      
      ![full_outer_join](https://github.com/user-attachments/assets/bab5ad5e-64a6-4879-9f25-61ea34c1727b) ![full_outer_join1](https://github.com/user-attachments/assets/eff88aca-f4d8-4aa1-bd01-4956ae29531a)
          
      - **Combining multiple joins**
            - Eg: _SELECT a.title, b.title FROM project_pairs JOIN student_projects a ON project_pairs.project1_id = a.id JOIN student_projects b ON project_pairs.project2_id = b.id;_

![SQL_JOINS](https://github.com/user-attachments/assets/803f99eb-f4bc-4256-8ca8-63ec17c19fb9)



- **Union**
  - Union is used to combine the result-set of tqo or more SELECT statements
  - Each SELECT statement within UNION must have same number of columns
  - Columns must have similar data types
  - The columns in each SELECT statement must ne in the same order

    ![union](https://github.com/user-attachments/assets/84dacbf0-076b-4a0b-9901-1896adffbb1c)
