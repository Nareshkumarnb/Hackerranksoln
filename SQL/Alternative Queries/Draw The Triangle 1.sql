select tst from ( 
SELECT rpad('* ',level*2,'* ') as tst,level as asc_lvl FROM dual CONNECT BY LEVEL <= 20 order by 2 desc);