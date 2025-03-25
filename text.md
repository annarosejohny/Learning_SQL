## Strings

- Retrieve the data in the format you need client vs server formating
- Support joins
- String functions
  - Concatenate
    - Link together; unite in a series or chain
    ![concat1](https://github.com/user-attachments/assets/0b477582-362a-42cf-bbb5-364b02497192)

    ![concat2](https://github.com/user-attachments/assets/ec63933e-16b6-436b-ae91-174967acfa64)

  - Substring
    - Returns the specified number of characters from a particular position of a given string

    ![substring1](https://github.com/user-attachments/assets/7ceca556-c399-4313-af19-7ca0c36cb229)

    ![substring2](https://github.com/user-attachments/assets/f36a1143-ae14-4575-99ea-140ba91b0c4f)

  - Trim
    - Trims the leading or trailing space from a string
    - TRIM operations
      - TRIM
      - RTRIM
      - LTRIM

        ![trim](https://github.com/user-attachments/assets/ebefbf16-bc06-4c76-9f2b-30d9523f65f1)

  - Upper & Lower

    ![upper_lower](https://github.com/user-attachments/assets/1ab1893c-dbdb-4751-b693-580eb65d37d0)


- **Date variables**
  - Dates are stored as datetypes

    ![Date_time](https://github.com/user-attachments/assets/39627044-36a2-42e6-aba3-e9e05a92be44)

      ![Date](https://github.com/user-attachments/assets/0b5d7274-f9d3-46d5-8501-d3cb159a066c)

  - **STRFTIME**
    - To extract certain parts of a date and time string.

      ![strftime](https://github.com/user-attachments/assets/f3cbcd8e-073c-4973-8b72-5ca4b2f0a446)

    - Compute **current date**
      - **SELECT DATE('now')**
      - Compute year, month, day for the current date
        - **SELECT STRFTIME ('%Y %m %d', 'now')** 
      - Computer hour, minute, second and milliseconds from current datetime
        - **SELECT STRFTIME('%H %M %S %s', 'now')**
    

- Modifiers

  ![modifiers](https://github.com/user-attachments/assets/ce11e44d-501d-4da3-b425-a05f2d9900fb)









