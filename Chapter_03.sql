
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

SELECT name,course_id from instructor,teaches WHERE instructor.ID=teaches.ID and instructor.dept_name='Comp.Sci.';
SELECT name,course_id from instructor,teaches WHERE instructor.ID=teaches.ID and instructor.dept_name='Comp.Sci.';
SELECT course_id FROM section WHERE semester='Fall' and year=2017;
select course_id from section where semester = 'Spring' and year= 2018;
select course_id from section where semester = 'Spring' and year= 2018;
select course_id from section where semester = 'Spring' and year= 2018;
select course_id from section where semester = 'Spring' and year= 2008;
​
ascendingdescendingOrder:Debug SQLExecution orderTime takenOrder by:Group queries
Some error occurred while getting SQL debug info.
BookmarksRefreshAdd
No bookmarks
Add bookmark
Label: 
 Target database: 
 Share this bookmark 
​
OptionsSet default
Always expand query messages
Show query history at start
Show current browsing query
 Execute queries on Enter and insert new line with Shift+Enter. To make this permanent, view settings.
Switch to dark theme
Run SQL query/queries on table university.section: Documentation
1
(SELECT course_id from section
2
WHERE semester='Fall' and year=2007)
3
UNION (SELECT course_id FROM section 
4
       WHERE section='Spring' and year=2008);
Bind parameters Documentation
Columnscourse_idsec_idsemesteryearbuildingroom_numbertime_slot_id
Bookmark this SQL query:
Delimiter
Delimiter
;
Show this query here again
Retain query box
Rollback when finished
Enable foreign key checks
Error
SQL query: Copy Documentation


(SELECT course_id from section
WHERE semester='Fall' and year=2007)
UNION (SELECT course_id FROM section 
       WHERE section='Spring' and year=2008) LIMIT 0, 25
MySQL said: Documentation

#1054 - Unknown column 'section' in 'where clause'
