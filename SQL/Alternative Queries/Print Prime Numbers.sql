select listagg(a.num,'&') within group (order by a.num) from (SELECT LEVEL + 1 As num FROM dual CONNECT BY LEVEL < 1000)a where not exists (select null from (SELECT LEVEL + 1 As num FROM dual CONNECT BY LEVEL < 1000)b where b.num < a.num and mod(a.num,b.num)=0);