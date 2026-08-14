# Write your MySQL query statement below
-- Method 1
-- select name, population, area 
-- from world
-- where area >= 3000000 OR population >= 25000000;

-- MEthod 2 Uing union 

select name, population, area 
from world
where area >= 3000000 
union
select name, population, area
from world
where population >= 25000000;