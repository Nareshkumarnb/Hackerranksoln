select bst.n,
case 
    when bst.p is null then 'Root'
    when temp.p is null then 'Leaf'
    else 'Inner'
end
from bst left join (select distinct p from bst) as temp 
on bst.n = temp.p 
order by bst.n;