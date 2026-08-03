--1.Retrieve all data from table STUDENT.

select * from student


--2.Display Student Name and City from STUDENT.

select sname,city from student

--3.Display student details of all students who belongs to COMPUTER branch.

select * from student
where branch = 'computer'

--4.Display names of students whose ID is less than 105 from STUDENT table.

select * from student
where stdid <105

--5.Give Student Name, City and SPI of student whose SPI is greater than 6.50.

select sname,city,spi from student
where spi >6.50


--6.Give name of Student whose branch is COMPUTER and SPI is greater than 8.00.


select sname from student where spi >8.00 and branch = 'computer'

--7.Give names of students whose ID is greater than 103 and belongs to Rajkot city

select sname from student where stdid>103 and city = 'rajkot'

--8.Display names of students who belong to either ‘RAJKOT’ or ‘SURAT’ city (USE OR & IN)

select sname from student where  city = 'rajkot' or city = 'surat'


--9.Display names of students with branch whose SPI is greater than 8.0 and ID is less than 105.

select sname,branch from student
where  spi >8.00 and stdid<105

-- 10.Find all students whose SPI is greater than or equal to 7.0 and less than or equal to 9.0 (USE AND & BETWEEN).

select * from student where spi between 7 and 9

--11.Find all students who do not belong to ‘COMPUTER’ branch.

select * from student
where  branch != 'computer'

--12.Display Student ID, Name & SPI of students who belong to ‘COMPUTER’, ‘CIVIL’ or ‘CHEMICAL’ branch and ID is less than 104.

select stdid,sname,spi from student
WHERE Branch IN ('COMPUTER', 'CIVIL', 'CHEMICAL') 
  AND stdid < 104


--13.Display all student IDs and names who do not belong to ‘COMPUTER’ or ‘CIVIL’ branch (USE NOT IN)

select stdid,sname from student
where branch not in ('COMPUTER','CIVIL')

--14.Display all student names other than ‘DEEP’ from STUDENT table (USE NOT, <>, !=).

select sname from student
WHERE NOT (sname = 'DEEP')

--15. Display student names whose branch is not available (NULL) in STUDENT table.

select stdid,sname,spi from student
WHERE Branch is null

--16.Retrieve all unique branches name from STUDENT table.

SELECT DISTINCT branch FROM STUDENT


--17.Retrieve first 50% records from STUDENT table.

SELECT TOP 50 PERCENT * FROM STUDENT


--18.Retrieve first five student IDs from STUDENT table.

SELECT TOP 5  stdid FROM STUDENT

--19. Display all the details of first five students from STUDENT table.

SELECT TOP 5 SNAME  FROM STUDENT


--20. Display all the details of first three students whose SPI is greater than 8.0.

SELECT TOP 3 SNAME  FROM STUDENT where spi >8.00


--21.Display Student ID, Name of first five students whose branch does not belong to ‘COMPUTER’ branch.

SELECT TOP 5 STDID,SNAME,BRANCH from STUDENT where branch not in ('COMPUTER')


--22. Select all details with student IDs not in the range 105 to 109.

select STDID from STUDENT where STDID < 105


--23.Select all records from STUDENT where SPI is greater than 7.0 and less than or equal to 9.0, and student ID is between 102 and 108.

SELECT * FROM STUDENT WHERE SPI > 7.0 AND SPI <= 9.0 AND STDID BETWEEN 102 AND 108;

--24.Display all details of students who have SPI more than 8.5 without using * from STUDENT table.

select SNAME,SPI from STUDENT WHERE SPI > 8.5;

--25. Retrieve names of students whose city is ‘RAJKOT’ and SPI is less than 8.00.
select SNAME,SPI from STUDENT where CITY='RAjKOT' and SPI <8.00;

--26. Retrieve records from STUDENT table where SPI is greater than 8.0 and student ID is less than 105.
select SNAME,SPI from STUDENT where SPI<8.0 and STDID >105;

--27. Retrieve records from STUDENT table where SPI is greater than 7.5 and student ID is between 100 and 110 and city is ‘RAJKOT’ or ‘SURAT’.

select SNAME,SPI,CITY from STUDENT where SPI>7.5 and STDID between 100 and 110 and CITY in ('RAJKOT','SURAT');

--28. Display details of students who belong to ‘CIVIL’ or ‘MECHANICAL’ branch and SPI is greater than 8.0.

select  SNAME,SPI,CITY