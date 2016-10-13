SELECT h.hacker_id, h.name, 
sum(scr) as tot
FROM Hackers h, 
    (
        SELECT s2.hacker_id as hac_id, 
        s2.challenge_id as ch_id, 
        max(s2.score) as scr
        FROM Submissions s2
        GROUP BY s2.hacker_id,s2.challenge_id
        having scr > 0
    ) AS chart1
WHERE h.hacker_id = hac_id
GROUP BY h.hacker_id
ORDER BY tot DESC, h.hacker_id