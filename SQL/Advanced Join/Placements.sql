SELECT S.Name
FROM Students S
INNER JOIN FRIENDS F ON F.ID = S.ID
INNER JOIN Packages P ON P.Id = S.Id
INNER JOIN Packages P1 ON F.Friend_Id = P1.Id 
WHERE P1.Salary > P.Salary
ORDER BY P1.Salary;