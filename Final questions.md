[yogurt_production.csv](https://github.com/user-attachments/files/19464732/yogurt_production.csv)[yogurt_production.csv](https://github.com/user-attachments/files/19464709/yogurt_production.csv)## Scenario: 

Data Scientist at USDA (United States Department of Agriculture)

Context: 

You are a Data Scientist working at the USDA. Your department has been tracking the production of various agricultural commodities across different states. 

Your datasets include:

`milk_production`, `cheese_production`, `coffee_production`, `honey_production`, `yogurt_production`, and a `state_lookup` table. 

[UploadingYear,Period,Geo_Level,State_ANSI,Commodity_ID,Domain,Value
2022,YEAR,STATE,6,4,TOTAL,"377,839,000"
2022,YEAR,STATE,36,4,TOTAL,"793,256,000"
2021,YEAR,STATE,6,4,TOTAL,"374,637,000"
2021,YEAR,STATE,36,4,TOTAL,"774,881,000"
2020,YEAR,STATE,6,4,TOTAL,"354,906,000"
2020,YEAR,STATE,36,4,TOTAL,"722,922,000"
2019,YEAR,STATE,6,4,TOTAL,"373,760,000"
2019,YEAR,STATE,36,4,TOTAL,"679,190,000"
2019,YEAR,STATE,48,4,TOTAL,"37,769,000"
2018,YEAR,STATE,6,4,TOTAL,"415,150,000"
2018,YEAR,STATE,36,4,TOTAL,"691,044,000"
2018,YEAR,STATE,41,4,TOTAL,"41,753,000"
2018,YEAR,STATE,48,4,TOTAL,"31,569,000"
2017,YEAR,STATE,6,4,TOTAL,"442,423,000"
2017,YEAR,STATE,36,4,TOTAL,"706,923,000"
2017,YEAR,STATE,41,4,TOTAL,"49,157,000"
2017,YEAR,STATE,48,4,TOTAL,"34,323,000"
2016,YEAR,STATE,6,4,TOTAL,"394,899,000"
2016,YEAR,STATE,36,4,TOTAL,"676,792,000"
2016,YEAR,STATE,41,4,TOTAL,"52,438,000"
2016,YEAR,STATE,48,4,TOTAL,"50,792,000"
2015,YEAR,STATE,6,4,TOTAL,"465,665,000"
2015,YEAR,STATE,36,4,TOTAL,"669,254,000"
2015,YEAR,STATE,41,4,TOTAL,"55,346,000"
2015,YEAR,STATE,48,4,TOTAL,"94,126,000"
2014,YEAR,STATE,6,4,TOTAL, (D)
2014,YEAR,STATE,36,4,TOTAL,"663,917,000"
2014,YEAR,STATE,41,4,TOTAL,"59,208,000"
2014,YEAR,STATE,48,4,TOTAL, (D)
2009,YEAR,STATE,6,4,TOTAL,"620,171,000"
2009,YEAR,STATE,36,4,TOTAL,"251,604,000"
2009,YEAR,STATE,47,4,TOTAL,"284,295,000"
2009,YEAR,STATE,49,4,TOTAL,"244,252,000"
2009,YEAR,STATE,55,4,TOTAL,"173,178,000"
2008,YEAR,STATE,6,4,TOTAL,"581,768,000"
2008,YEAR,STATE,36,4,TOTAL,"224,988,000"
2008,YEAR,STATE,47,4,TOTAL,"258,078,000"
2008,YEAR,STATE,49,4,TOTAL,"208,897,000"
2008,YEAR,STATE,55,4,TOTAL,"162,847,000"
2007,YEAR,STATE,6,4,TOTAL,"559,921,000"
2007,YEAR,STATE,19,4,TOTAL,"21,300,000"
2007,YEAR,STATE,36,4,TOTAL,"234,740,000"
2007,YEAR,STATE,47,4,TOTAL,"193,536,000"
2007,YEAR,STATE,49,4,TOTAL,"140,948,000"
2007,YEAR,STATE,55,4,TOTAL,"147,282,000"
2006,YEAR,STATE,6,4,TOTAL,"543,345,000"
2006,YEAR,STATE,19,4,TOTAL,"25,520,000"
2006,YEAR,STATE,36,4,TOTAL,"236,987,000"
2006,YEAR,STATE,47,4,TOTAL,"155,331,000"
2006,YEAR,STATE,49,4,TOTAL,"163,713,000"
2006,YEAR,STATE,55,4,TOTAL,"144,534,000"
2005,YEAR,STATE,6,4,TOTAL,"511,990,000"
2005,YEAR,STATE,19,4,TOTAL,"17,412,000"
2005,YEAR,STATE,36,4,TOTAL,"232,307,000"
2005,YEAR,STATE,42,4,TOTAL,"931,000"
2005,YEAR,STATE,47,4,TOTAL,"99,595,000"
2005,YEAR,STATE,49,4,TOTAL,"171,509,000"
2005,YEAR,STATE,55,4,TOTAL,"124,974,000"
2004,YEAR,STATE,6,4,TOTAL,"454,302,000"
2004,YEAR,STATE,19,4,TOTAL,"13,984,000"
2004,YEAR,STATE,36,4,TOTAL,"227,795,000"
2004,YEAR,STATE,42,4,TOTAL,"807,000"
2004,YEAR,STATE,47,4,TOTAL,"38,949,000"
2004,YEAR,STATE,49,4,TOTAL,"165,503,000"
2004,YEAR,STATE,55,4,TOTAL,"98,012,000"
2003,YEAR,STATE,6,4,TOTAL,"479,226,000"
2003,YEAR,STATE,19,4,TOTAL,"13,847,000"
2003,YEAR,STATE,36,4,TOTAL,"261,740,000"
2003,YEAR,STATE,42,4,TOTAL,"687,000"
2003,YEAR,STATE,49,4,TOTAL,"122,209,000"
2003,YEAR,STATE,55,4,TOTAL,"81,460,000"
2002,YEAR,STATE,6,4,TOTAL,"454,483,000"
2002,YEAR,STATE,17,4,TOTAL,"14,392,000"
2002,YEAR,STATE,19,4,TOTAL,"12,875,000"
2002,YEAR,STATE,36,4,TOTAL,"247,221,000"
2002,YEAR,STATE,55,4,TOTAL,"71,461,000"
2001,YEAR,STATE,6,4,TOTAL,"264,304,000"
2001,YEAR,STATE,17,4,TOTAL,"12,773,000"
2001,YEAR,STATE,36,4,TOTAL,"252,631,000"
2001,YEAR,STATE,55,4,TOTAL,"77,451,000"
2000,YEAR,STATE,6,4,TOTAL,"257,211,000"
2000,YEAR,STATE,17,4,TOTAL,"11,653,000"
2000,YEAR,STATE,36,4,TOTAL,"247,232,000"
2000,YEAR,STATE,55,4,TOTAL,"77,348,000"
1999,YEAR,STATE,6,4,TOTAL,"238,110,000"
1999,YEAR,STATE,17,4,TOTAL,"10,513,000"
1999,YEAR,STATE,36,4,TOTAL,"250,084,000"
1999,YEAR,STATE,55,4,TOTAL,"66,591,000"
1998,YEAR,STATE,6,4,TOTAL,"200,363,000"
1998,YEAR,STATE,17,4,TOTAL,"16,593,000"
1998,YEAR,STATE,36,4,TOTAL,"233,126,000"
1998,YEAR,STATE,38,4,TOTAL,"23,000"
1998,YEAR,STATE,55,4,TOTAL,"63,274,000"
1997,YEAR,STATE,6,4,TOTAL,"189,561,000"
1997,YEAR,STATE,17,4,TOTAL,"13,903,000"
1997,YEAR,STATE,36,4,TOTAL,"203,204,000"
1997,YEAR,STATE,38,4,TOTAL,"28,000"
1997,YEAR,STATE,47,4,TOTAL,"405,000"
1996,YEAR,STATE,6,4,TOTAL,"196,778,000"
1996,YEAR,STATE,17,4,TOTAL,"15,349,000"
1996,YEAR,STATE,36,4,TOTAL,"208,513,000"
1996,YEAR,STATE,38,4,TOTAL,"28,000"
1996,YEAR,STATE,55,4,TOTAL,"31,776,000"
1995,YEAR,STATE,6,4,TOTAL,"251,651,000"
1995,YEAR,STATE,8,4,TOTAL,"25,229,000"
1995,YEAR,STATE,17,4,TOTAL,"18,575,000"
1995,YEAR,STATE,36,4,TOTAL,"231,805,000"
1995,YEAR,STATE,38,4,TOTAL,"26,000"
1995,YEAR,STATE,47,4,TOTAL,"169,000"
1995,YEAR,STATE,55,4,TOTAL,"25,855,000"
1994,YEAR,STATE,6,4,TOTAL,"286,766,000"
1994,YEAR,STATE,8,4,TOTAL,"28,701,000"
1994,YEAR,STATE,17,4,TOTAL,"18,305,000"
1994,YEAR,STATE,36,4,TOTAL,"229,680,000"
1994,YEAR,STATE,37,4,TOTAL,"4,010,000"
1994,YEAR,STATE,38,4,TOTAL,"28,000"
1994,YEAR,STATE,55,4,TOTAL,"21,476,000"
1993,YEAR,STATE,6,4,TOTAL,"284,944,000"
1993,YEAR,STATE,8,4,TOTAL,"27,097,000"
1993,YEAR,STATE,17,4,TOTAL,"15,267,000"
1993,YEAR,STATE,36,4,TOTAL,"207,202,000"
1993,YEAR,STATE,37,4,TOTAL,"4,697,000"
1993,YEAR,STATE,38,4,TOTAL,"25,000"
1993,YEAR,STATE,48,4,TOTAL,"31,071,000"
1993,YEAR,STATE,55,4,TOTAL,"21,246,000"
1992,YEAR,STATE,6,4,TOTAL,"237,695,000"
1992,YEAR,STATE,8,4,TOTAL,"27,572,000"
1992,YEAR,STATE,12,4,TOTAL,"8,349,000"
1992,YEAR,STATE,17,4,TOTAL,"15,899,000"
1992,YEAR,STATE,26,4,TOTAL,"105,402,000"
1992,YEAR,STATE,36,4,TOTAL,"200,787,000"
1992,YEAR,STATE,37,4,TOTAL,"3,969,000"
1992,YEAR,STATE,48,4,TOTAL,"29,239,000"
1991,YEAR,STATE,6,4,TOTAL,"232,764,000"
1991,YEAR,STATE,12,4,TOTAL,"9,500,000"
1991,YEAR,STATE,17,4,TOTAL,"11,520,000"
1991,YEAR,STATE,19,4,TOTAL,"7,753,000"
1991,YEAR,STATE,36,4,TOTAL,"185,518,000"
1991,YEAR,STATE,37,4,TOTAL,"3,176,000"
1991,YEAR,STATE,42,4,TOTAL,"3,859,000"
1991,YEAR,STATE,48,4,TOTAL,"24,829,000"
1991,YEAR,STATE,55,4,TOTAL,"11,821,000"
1990,YEAR,STATE,6,4,TOTAL,"233,748,000"
1990,YEAR,STATE,17,4,TOTAL,"10,900,000"
1990,YEAR,STATE,19,4,TOTAL,"11,058,000"
1990,YEAR,STATE,36,4,TOTAL,"189,012,000"
1990,YEAR,STATE,37,4,TOTAL,"2,545,000"
1990,YEAR,STATE,48,4,TOTAL,"18,988,000"
1990,YEAR,STATE,55,4,TOTAL,"10,868,000"
 yogurt_production.csv…]()</br>


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






