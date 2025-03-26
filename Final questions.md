## Scenario: 

Data Scientist at USDA (United States Department of Agriculture)

Context: 

You are a Data Scientist working at the USDA. Your department has been tracking the production of various agricultural commodities across different states. 

Your datasets include:

`milk_production`, `cheese_production`, `coffee_production`, `honey_production`, `yogurt_production`, and a `state_lookup` table. 

[yogurt_production.csv](https://github.com/user-attachments/files/19464709/yogurt_production.csv)</br>
[egg_production.csv](https://github.com/user-attachments/files/19464752/egg_production.csv)</br>
[cheese_production.csv](https://github.com/user-attachments/files/19464758/cheese_production.csv)</br>
[honey_production.csv](https://github.com/user-attachments/files/19464757/honey_production.csv)</br>
[milk_production.csv](https://github.com/user-attachments/files/19464755/milk_production.csv)</br>
[coffee_production.csv](https://github.com/user-attachments/files/19464754/coffee_production.csv)</br>
[state_lookup.csv](https://github.com/user-attachments/files/19464751/state_lookup.csv)</br>


The data spans multiple years and states, with varying levels of production for each commodity.

Your manager has requested that you generate insights from this data to aid in future planning and decision-making. You'll need to use SQL queries to answer the questions that come up in meetings, reports, or strategic discussions.

Objectives:

Assess state-by-state production for each commodity.

Identify trends or anomalies.

Offer data-backed suggestions for areas that may need more attention.


NOTE: All answer entries are numeric and only numbers and periods. The autograder does not accept commas for the final project.

1. Can you find out the total milk production for 2023? Your manager wants this information for the yearly report.

What is the total milk production for 2023?

**SELECT SUM(mp.value) </br>
FROM milk_production mp </br>
WHERE mp.year = 2023;</br>**

**Answer: 91812000000**

2. Which states had cheese production greater than 100 million in April 2023? The Cheese Department wants to focus their marketing efforts there. 

How many states are there?

**SELECT COUNT(sl.state) AS 'Number of states'</br>
FROM cheese_production cp LEFT JOIN state_lookup sl</br> 
ON cp.State_ANSI = sl.State_ANSI</br>
WHERE cp.value>100000000 AND cp.year=2023 AND cp.period='APR';</br>**

**Answer: 13**

3. Your manager wants to know how coffee production has changed over the years. 

What is the total value of coffee production for 2011?

**SELECT cp.year,</br>
SUM(cp.value)</br>
FROM coffee_production cp </br>
WHERE year=2011;</br>**

**Answer: 7600000**

4. There's a meeting with the Honey Council next week. Find the average honey production for 2022 so you're prepared.

**SELECT AVG(hp.value)</br>
FROM honey_production hp </br
WHERE hp.year=2022;</br>**

**Answer: 3133275**

5. The State Relations team wants a list of all states names with their corresponding ANSI codes. Can you generate that list?

What is the State_ANSI code for Florida?

**SELECT sl.state,</br>
sl.state_ansi</br>
FROM state_lookup sl;</br>**

**Answer: 12**

6. For a cross-commodity report, can you list all states with their cheese production values, even if they didn't produce any cheese in April of 2023?

What is the total for NEW JERSEY?

**SELECT sl.state,</br>
cp.value</br>
FROM state_lookup sl  LEFT JOIN cheese_production cp</br>
ON sl.State_ANSI = cp.State_ANSI</br>
WHERE cp.year=2023 AND cp.period = 'APR';</br>**

**Answer: 4889000**

7. Can you find the total yogurt production for states in the year 2022 which also have cheese production data from 2023? This will help the Dairy Division in their planning.

**SELECT SUM(yp.Value)</br>
FROM yogurt_production yp</br> 
WHERE yp.year=2022 AND</br>
yp.State_ANSI  IN (</br>
SELECT DISTINCT cp.state_ANSI</br>
FROM cheese_production cp</br>
WHERE cp.year=2023);</br>**

**Answer: 2342190000**

 8. List all states from state_lookup that are missing from milk_production in 2023.

How many states are there?

**SELECT COUNT(sl.state)</br>
FROM state_lookup sl</br>
LEFT JOIN </br>
(</br>
SELECT DISTINCT mp.State_ANSI</br>
FROM milk_production mp</br>
WHERE mp.year=2023</br>
)mp_2023</br>
ON sl.State_ANSI = mp_2023.State_ANSI</br>
WHERE mp_2023.State_ANSI IS NULL;</br>**

**Answer: 26**

9. List all states with their cheese production values, including states that didn't produce any cheese in April 2023.

Did Delaware produce any cheese in April 2023?

**SELECT s.State, </br>
c.Value</br>
FROM state_lookup s</br>
LEFT JOIN cheese_production c </br>
ON s.State_ANSI = c.State_ANSI </br>
AND c.Year = 2023 AND c.Period = 'APR';</br>**

**Answer: No**

10. Find the average coffee production for all years where the honey production exceeded 1 million.

**SELECT AVG(cp.value)</br>
FROM coffee_production cp</br>
WHERE cp.year IN (</br>
SELECT hp.year </br>
FROM honey_production hp </br>
WHERE hp.value >100000000);</br>**

**Answer: 6426666.666666667**

11. Find the total milk production for the year 2023.

**SELECT SUM(Value) </br>
FROM milk_production </br>
WHERE Year = 2023;</br>**

**Answer: 91812000000**

12. Show coffee production data for the year 2015.

What is the total value?

**SELECT SUM(value) AS 'Total coffee production' </br>
FROM coffee_production</br>
WHERE year= 2015;</br>**

**Answer: 6600000**

13. Find the average honey production for the year 2022.

**SELECT AVG(value)</br>
FROM honey_production</br>
WHERE year=2022;** </br>
**Answer:3133275**

14. Get the state names with their corresponding ANSI codes from the state_lookup table.

What number is Iowa?

**SELECT state, state_ANSI</br>
FROM state_lookup</br>
WHERE state LIKE "IOWA";</br>**

**Answer: 19**

15. Find the highest yogurt production value for the year 2022

**SELECT MAX(VALUE) </br>
FROM yogurt_production</br>
WHERE year=2022;** </br>

**Answer: 793256000**

16. Find states where both honey and milk were produced in 2022.

Did State_ANSI "35" produce both honey and milk in 2022?

**SELECT DISTINCT hp.State_ANSI </br>
FROM honey_production hp</br>
JOIN milk_production mp </br>
ON hp.State_ANSI = mp.State_ANSI</br>
WHERE hp.Year = 2022 AND mp.Year = 2022;</br>**

**Answer: NO**

17. Find the total yogurt production for states that also produced cheese in 2022

**SELECT SUM(yp.Value)</br>
FROM yogurt_production yp</br>
WHERE yp.Year = 2022 AND yp.State_ANSI </br>
IN (</br>
SELECT DISTINCT cp.State_ANSI </br>
FROM cheese_production cp </br>
WHERE cp.Year = 2022</br>
);</br>**

**Answer: 2342190000**






