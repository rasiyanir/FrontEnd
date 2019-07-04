select distinct t1.trainername'Trainer Name',  c1.coursename as
'Course Name' from trainer t1, course_details c1, feedback f1
where t1.trainerid = f1.TrainerID AND c1.courseid = f1.CourseID; 

select t1.trainername  as 'Trainer Name', count( DISTINCT f1.CourseID)
from trainer t1, feedback f1 where t1.trainerid = f1.TrainerID GROUP BY t1.trainername HAVING COUNT(DISTINCT f1.courseid) >1;

select f1.trainerid, t1.trainername, count(DISTINCT f1.courseid)
from trainer t1, feedback f1 where t1.trainerid = f1.TrainerID GROUP BY f1.TrainerID, t1.trainerid;

select f1.trainerid, t1.trainername, c1.coursename, count(f1.courseid)
from trainer t1, feedback f1, course_details c1 where 
t1.trainerid = f1.TrainerID AND f1.CourseID = c1.courseid GROUP BY f1.trainerid, t1.trainername, c1.coursename;

select batchname, sum(enddate - startdate) from batch_schedule group by batchname;

select b1.batchname, b1.courseid, c1.coursename, f1.trainerid, t1.trainername, b1.startdate
from batch_schedule b1, course_details c1, trainer t1, feedback f1
where b1.courseid = c1.courseid AND b1.courseid = f1.CourseID AND f1.TrainerID = t1.trainerid AND startdate > '2007-02-20';   

select trainerid, batchname, COUNT(courseid)
from feedback
GROUP BY trainerid, BatchName HAVING COUNT(CourseID) > 1;

select trainerid, count(distinct courseid) from feedback group by trainerid having count(DISTINCT courseid) = 
(select count(courseid) from course_details );emp