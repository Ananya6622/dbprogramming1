create database DemoDb;
use DemoDb;

CREATE TABLE Student(    
    Id INT PRIMARY KEY,    
    Name VARCHAR(65) NOT NULL,    
    Gender VARCHAR(20),    
    Age INT,    
    Marks INT   
 )  ;

 INSERT INTO Student(Id,Name,Gender,Age,Marks)
 VALUES(1,'Ananya','Female',22,944),
 (2,'Suhas','Male',20,930);

 Select * from Student;

 UPDATE Student
 Set Marks = 940
 Where Name = 'Suhas';

 select * from Student;

 Delete from Student
 Where Id = 2;

 select * from Student;

