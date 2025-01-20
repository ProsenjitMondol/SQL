
SELECT * FROM `classroom`
SELECT * FROM `course`
SELECT * FROM `department`
SELECT * FROM `instructor`
SELECT * FROM `prereq`
SELECT name from instructor where dept_name='Comp.Sci.' AND salary>70000;
SELECT name from instructor where dept_name='Comp.Sci.' AND salary>70000;
SELECT name from instructor where dept_name='Comp.Sci.' AND salary>70000;
select name from instructor;
select name, instructor.dept_name, building from instructor, department where instructor.dept_name= department.dept_name;
SELECT name,course_id from instructor,teaches WHERE instructor.ID=teaches.ID;
SELECT name,course_id from instructor,teaches WHERE instructor.ID=teaches.ID and instructor.dept_name='Comp.Sci.';
SELECT * FROM `instructor`;
select name,course_id from instructor,teaches where instructor.ID=teaches.ID;
select name,course_id from instructor,teaches where instructor.ID=teaches.ID;
SELECT * FROM `teaches`;
SELECT t.name,s.course_id from instructor as t, teaches as s WHERE t.ID=s.ID;