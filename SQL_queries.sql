# Queries using joins
#1 Query to find which session is taking place in which studio number and studio type 
SELECT Y.studio_number, Y.studio_type, Y.name, S.Session_ID, S.Date 
from Yoga_Studio Y 
join Session S
on Y.studio_number = S.studio_number ; 


#2 Query to display the details of a trainer handling a session:
# In-person Session
SELECT I.Session_ID, T.Trainer_ID, T.TrainerName, T.Number_of_Sessions 
from Inperson_session I 
inner join Trainer T 
on I.Trainer_ID = T.Trainer_ID; 

#Live-streaming Session
SELECT L.Session_ID, L.Streaming_Platform, T.Trainer_ID, T.TrainerName, 
T.Number_of_Sessions 
from Livestreaming_session L 
inner join Trainer T 
on L.Trainer_ID = T.Trainer_ID; 

#3 Query to display the details of the students attending a session
SELECT SA.Session_ID, S.Student_ID, S.StudentName, S.Phonenumber, S.Age, S.sex 
from Session_Attendance SA 
right join Student S 
on SA.Student_ID = S.Student_ID; 


# Queries using group by, having and order by
#4 Query to display number of students enrolled under a trainer
SELECT Trainer_ID, count(Student_ID) as NumberOfStudents 
from Trains 
GROUP BY Trainer_ID; 

#5 Query to display yoga forms which require more than 20 hours to learn
SELECT Form, Minimum_Hours
from class_type
GROUP BY Form
having minimum_hours > 20;

#6 Query to display the ID of trainers with highest to lowest number of students:
SELECT Trainer_ID 
From Trains 
GROUP BY Trainer_ID 
ORDER BY count(Student_ID) DESC; 

#7 Query using EXISTS
SELECT student_id, studentname
from student 
where EXISTS (select student_ID from diet_suggestion where diet_plan is NOT NULL);

#8 Correlated query with aggregate function
SELECT age
from student
where age > (select avg(age) from student);

#9 Query using ALL
SELECT form 
from class_type
where Minimum_Hours >ALL (select Minimum_Hours from class_type where form = "CorePower1");

#Query to update a field based on another field
#10 Query to calculate trainer rating based on the score from surveys taken by students
CREATE table Satisfaction 
AS (SELECT S.SurveyNumber, S.Student_ID, S.Score, R.Trainer_ID, R.Y_or_N 
from Survey S 
inner join Rating R 
on S.SurveyNumber = R.SurveyNumber); 
UPDATE Satisfaction 
SET Y_or_N = case 
when score>=3 then 'Y' 
else 'N' 
end; 

#Query to display the rating of a Trainer
SELECT Trainer_ID, Y_or_N from Satisfaction;


#Query using window function dense rank 
SELECT trainer_ID, score,
dense_rank() over (order by score desc) as Top_Trainers
from satisfaction;


