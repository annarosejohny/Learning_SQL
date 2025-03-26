## Scenario: 

Data Scientist at USDA (United States Department of Agriculture)

Context: 

You are a Data Scientist working at the USDA. Your department has been tracking the production of various agricultural commodities across different states. 

Your datasets include:

`milk_production`, `cheese_production`, `coffee_production`, `honey_production`, `yogurt_production`, and a `state_lookup` table. 

The data spans multiple years and states, with varying levels of production for each commodity.

Your manager has requested that you generate insights from this data to aid in future planning and decision-making. You'll need to use SQL queries to answer the questions that come up in meetings, reports, or strategic discussions.

Objectives:

Assess state-by-state production for each commodity.

Identify trends or anomalies.

Offer data-backed suggestions for areas that may need more attention.


NOTE: All answer entries are numeric and only numbers and periods. The autograder does not accept commas for the final project.

1. Can you find out the total milk production for 2023? Your manager wants this information for the yearly report.

What is the total milk production for 2023?

SELECT SUM(mp.value) <\br>
FROM milk_production mp <\br>
WHERE mp.year = 2023;<\br>

**Answer: 91812000000**

2. Which states had cheese production greater than 100 million in April 2023? The Cheese Department wants to focus their marketing efforts there. 

How many states are there?

SELECT COUNT(sl.state) AS 'Number of states'<\br>
FROM cheese_production cp LEFT JOIN state_lookup sl<\br> 
ON cp.State_ANSI = sl.State_ANSI<\br>
WHERE cp.value>100000000 AND cp.year=2023 AND cp.period='APR';<\br>

**Answer: 13**


