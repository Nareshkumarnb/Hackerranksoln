select sub.hacker_id, hak.name 
from submissions sub, challenges cha,  hackers hak, difficulty dif
where sub.challenge_id = cha.challenge_id 
and sub.hacker_id = hak.hacker_id
and cha.difficulty_level = dif.difficulty_level
/*to eliminate submissions that did not earn full score */ 
and dif.score = sub.score
/* further eliminate hackers who only had one full-score submission */ 
group by sub.hacker_id, hak.name 
having count(sub.score) > 1
/* display by the order stated in the problem, */ 
order by count(sub.score) desc, sub.hacker_id;