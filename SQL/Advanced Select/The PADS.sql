SELECT concat(Name,'(',left(Occupation,1),')') as first FROM Occupations ORDER BY first;
SELECT concat('There are total ',count(Occupation),' ',lower(Occupation),'s.') as first FROM Occupations GROUP BY Occupation ORDER BY count(Occupation),Occupation;
