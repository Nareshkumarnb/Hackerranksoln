select 
   if(Grades.Grade < 8, concat('NULL'),Students.Name), 
   Grades.Grade, 
   Students.Marks 
   from Students 
   inner join Grades 
   on Students.Marks >= Grades.Min_Mark 
   and Students.Marks <= Grades.Max_Mark 
   group by 
   Grades.Grade desc, 
   Students.Name, Students.Marks asc