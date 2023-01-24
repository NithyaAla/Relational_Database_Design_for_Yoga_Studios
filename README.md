# Relational_Database_Design_for_Yoga_Studios
Relational database design for one of the largest yoga studio chains in the US, CorePower Yoga. 

This relational database helps the executive team of CorePower Yoga’s Fenway studio perform data analysis to find the trainers with high ratings. The database efficiently captures the details of various sessions conducted by the trainers and implements an algorithm to rate the trainers based on student responses to a satisfaction survey.

The student satisfaction survey analyzes the level of satisfaction of students on a 0-5 scale. The database stores the score provided by students where 0 is the lowest and 5 is the highest possible score. A trainer is rated with ‘Y’ when he/she receives a score greater than or equal to 3. All scores below 3 lead to an ‘N’.

The students also have an option of choosing a diet plan suggested by one of the dieticians or adhering to their own diet plan. 

The database helps CorePower Yoga’s management gain insights to answer the following questions and identify top trainers,
1.	Which sessions are held in a particular studio type (Basic, Luxury, Aerial)? 
2.	Which sessions were attended by a student enrolled under a trainer? Was it a live-streaming or in-person session? 
3.	How many students are enrolled under a trainer? 
4.	Which trainers have a high number of students enrolled? 
5.	Which students opted for a diet plan and which dietician suggested the plan? 
6.	How many hours does it take for students to learn a yoga form? 
7.	Which survey was taken by which student and what is the score provided by the student to the trainer? How can a trainer’s rating be decided from the score provided by the student in the survey? 
8.	What is the rating of each trainer? Which trainers are among the best? 

The database was modeled taking in requirements set by the management for each training session. The complete database was implemented in MySQL, and a prototype with 3 collections that would aid in finding the trainers responsible for enrollment hike was implemented on MongoDB to test the feasibility of the database in a NoSQL environment.

A connection to the database was successfully established using Python and visualizations that would help the executive team make better decisions for the best performing trainers were generated using seaborn and matplotlib. 
  
To scale up the database and include details of all studios in Massachusetts, migration to a platform like Snowflake is the best choice. The MySQL database was migrated to Snowflake and dashboards were created to identify popular yoga forms and trainers with high ratings. 
