# Write your MySQL query statement below
SELECT std.student_id, std.student_name,sub.subject_name, COUNT(ex.subject_name) as attended_exams
FROM Students as std
CROSS JOIN Subjects as sub
LEFT JOIN Examinations as ex
ON std.student_id = ex.student_id AND sub.subject_name = ex.subject_name
GROUP BY std.student_id, std.student_name,sub.subject_name
ORDER BY std.student_id , sub.subject_name;