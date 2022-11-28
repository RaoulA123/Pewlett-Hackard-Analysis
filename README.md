# Pewlett-Hackard-Analysis
# Pewlett-Hackard-Analysis using postgreSQL

## Purpose :
The purpose of this analysis is primarily to determine the number of retiring employees by title and identify all employees eligible for the mentorship program.  In second, we can sue this anlaysis to identify any issue that may affect the succesful implemenation of the mentorship program 

## Overview of the analysis:
This report will help Pewlett-Hackard (PH) prepare for the upcoming wave of retirement aka "silver tsunami" by seeing the big picture with numbers, ratios and tables. PH will be presented with table overview using the ERD to give them overall relation of the table, as well retirement age employees by most recent job titles and mentorship tables with job titles, numbers, ratios and percentages.

## Results:

We understand based on current information provided by PH that employees who were born between January 1, 1952 and December 31, 1955 are retirement-bound employees by title for a total of **72 458**.  See table A. Based on the various tables, some employees have had multiple titles due to promotions. Several employees have also left the company.  In all, the total heacount since PH has been in operation is **300, 024**. (see Salaries.csv file). Of that number only **240 124** are currently still working with PH. (We were told that "to_date" field gives us the information if an employee is still with PH, ie. to_date equal to '9999-01-01' means that the employee is still with the company. Using these information I included only current employees and their most recently held titles in the retirement age table.The below image is the result of the retirement age titles and numbers.

Retiring title table see table A

![image](https://user-images.githubusercontent.com/115424156/204160192-30197659-c346-4951-8816-49b2c3b324e8.png)


![image](https://user-images.githubusercontent.com/115424156/204154510-a8752286-869d-4d7e-80be-37e94b786ac9.png)






## Mentorship program

PH is working on a Mentorship program to alleviate the impact of the upcoming leave due to retirement. PH suggests that **current** employees who are eligible to participate in a mentorship program must be born in **1965**. From this information, the mentorship eligibility table yields only 1549 employees who are eligible to participate as follows: 

See Table B
![image](https://user-images.githubusercontent.com/115424156/204172337-d8539512-b0c6-4db0-86ad-8c16d032a20c.png)




![image](https://user-images.githubusercontent.com/115424156/204172674-9ab2e5e9-2fef-46ee-a11a-e4c637765750.png)




 

## Major points from the analysis:

1.	PH will lose  **74 758** or 30% ( 74,758/240 214)of its overall headcount to retirement. That's a considerable loss that represents a huge brain  drain as the experience accumulated throughout the years will prove difficutl to replace right away. When the data is evaluated in details, the impact is not equally distributed in all departements. Take the engineering area for example. 

2.	Retirement will negatively impact the Engineering area which accounts for 48% of all total titles cuurently employeed ( sr engineers at 25916 or 35% of the total of 85 939 in this area and for assistant engieneers, at 9285 or 12% of  total engineer of 30983 and and assitant-engineer-3588 (1%) for an overall in "engineering of  120 510 over 240 124 active titles. Losing nearly half of the headcount (48%) in this technical area will negatively affect PH both in the short and long term. 
The same observation can be found at the senior staff level as well which represents 34% of the overall employees that will be cut by 30%. 


Overall, the 2 main titles that are senior engineers and senior staff will reflect the most decrease due to retirement. Other groups such as staff, managers, technique leader are relatively affected but not as much relative to the 2 groups indicated above. 
In summary, regardless of how one will look at this, the wave of retirement will will negatively impact PH. It's imperative that a program be implemented to assume the transition. 

 
See table C


![image](https://user-images.githubusercontent.com/115424156/204165309-21e574b1-5b49-4887-89b3-316667092783.png)

 

3.	The mentorship program being implemented by PH allows the **current** employees born between January 1, 1965 and December 31, 1965. to be mentors. Total number of people who are retiring and eventually need to be replaced is 74 758. PH has total of 1940 mentors of which only 1549 are trully eligilible. That means they will have one mentor for every 48 new employee they hire. This ratio is quite high.
4.	
5.	When the number of mentors are catogorized by title we have a better picture of the percentage of mentors versus number of employees to be trained. According to query result,  that shows the percentage of mentors for employees below PH will have one Staff mentor to train 78 new employees. PH will need one mentor to train 14 Engineer positions. These numbers are quite high. There is no mentor available for manager position. PH might want to outsource the training employees or hire  new employees to as mentors or hire employees or expand the date of birth to have enough mentors.
 

see table D

![image](https://user-images.githubusercontent.com/115424156/204174200-77640d89-5b20-472a-9831-8678b94b7b96.png)

![image](https://user-images.githubusercontent.com/115424156/204165847-f0d24f07-065e-4daf-bab5-b5b5ded9b9e9.png)


![image](https://user-images.githubusercontent.com/115424156/204175481-ee11901d-f7c3-4b87-9746-b4e47dcfa07a.png)


 
## Summary:

In summary PH needs to plan to replace  74 758 retirement-aged positions out of 240,124 employees to prepare for the "silver tsunami". 
Given that there are only 1549 qualified participants  to the mentorship program-which is not enough to mentor the next generation of PH employees, PH should therefore address the following issues:

• Can PH operate efficiently with the 30% worforce reduction due to retirement?

• How soon will it take for new employees to be fully trained and mentored to take over when the retirement tsunami takes effect?

• And finally, the ratio of the retiring titles compared to currently working employees and compared to retiring titles ( See table E below) reflects a major issue when it comes to senior engineers. At the rate of 1 mentor for 121 mentees, it will prove very challenging to carry out a succesful program. There remains high mentor to mentees ratio for senir staff (1 to 39) and ttechnical leader ( 1 to 28) as well. So for this program to be succesful and bear the fruits expected PH will need to work on not overwhleming the mentors. The criteria for mentorship eleigibility could for example be open to date of birth other than 1965.  

Below is the need of mentors by departments to show the big picture need of PH. The focus should be put in the Sr Staff and Engineering area where over 1000 of the eligible mentors are needed ( 569 and 501 respectively) -See Table F

Table E


 TabLe F
![image](https://user-images.githubusercontent.com/115424156/204176128-2d2b9b1a-df07-4a92-ad10-652d08904b2d.png)



 
 
	
