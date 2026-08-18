# Write your MySQL query statement below
SELECT v.customer_id, COUNT(customer_id) as  count_no_trans 
FROM Visits as v
LEFT JOIN Transactions as t
USING(visit_id)
where t.transaction_id is NULL
group by v.customer_id;