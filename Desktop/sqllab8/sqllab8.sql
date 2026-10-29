-- Q1-- student and their course
select s.name,c.course_name from student s 
inner join enrollment e
on s.student_id=e.student_id
inner join course c 
on e.course_id=c.course_id;

-- Q2
select c.course_name,e.enroll_date from course c
inner join enrollment e
on c.course_id=e.course_id;

-- Q3
select s.name,e.enroll_date from student s
inner join enrollment e
on s.student_id=e.student_id;

-- Q4
select e.enroll_id,f.amount_paid from enrollment e
inner join fee f
on e.enroll_id=f.enroll_id;

-- Q5
select s.name,f.amount_paid from student s 
inner join enrollment e
on s.student_id=e.student_id
inner join fee f
on e.enroll_id=f.enroll_id;

-- Q6
select c.course_name,f.amount_paid from course c
inner join enrollment e
on c.course_id=e.course_id
inner join fee f
on e.enroll_id=f.enroll_id;

-- Q7. Show the student name, course_name and amount_paid for every payment .
select s.name,c.course_name,f.amount_paid from student s
inner join enrollment e
on s.student_id=e.student_id
inner join course c
on e.course_id=c.course_id
inner join fee f
on e.enroll_id=f.enroll_id;

-- 8. Show all students with the courses they enrolled in, including students who have not enrolled anywhere.
select s.name,e.enroll_id from student s
left join enrollment e
on s.student_id=e.student_id;

-- 9. Show all courses with the names of students enrolled, including courses that have no students.
select c.course_name,s.name from course c
left join enrollment e
on c.course_id=e.course_id
left join student s
on e.student_id=s.student_id;

-- 10. Show every enrollment with its payments, including enrollments that have no payment yet
select e.enroll_id,f.amount_paid from enrollment e
left join fee f 
on e.enroll_id=f.enroll_id;