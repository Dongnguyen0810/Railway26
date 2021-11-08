DROP DATABASE Testing_System_Assignment_01;
CREATE DATABASE Testing_System_Assignment_01;
USE Testing_System_Assignment_01;

CREATE TABLE Department (
Department_ID 		INT,
Department_Name 	VARCHAR(50)
);
       
CREATE TABLE Position (
Position_ID 		INT,
Position_Name 		VARCHAR (50)
);

CREATE TABLE Account(
Account_ID 			INT,
Email 				VARCHAR (50),
Username 			VARCHAR (50),
Fullname 			VARCHAR (50),
Department_ID 		INT,
Position_ID 		INT,
CreateDate			DATE
);

CREATE TABLE Groupv (
Group_ID 			INT,
Group_Name 			VARCHAR (50),
Creator_ID 			INT,
CreateDate			DATE
);

CREATE TABLE GroupAccount (
Group_ID 			INT,
Account_ID 			INT,
JoinDate 			DATE
);

CREATE TABLE TypeQuestion (
Type_ID 			INT,
TypeName 			VARCHAR (50)
);

CREATE TABLE CategoryQuestion (
Category_ID 		INT,
CategoryName 		VARCHAR (50)
);

CREATE TABLE Question (
Question_ID 		INT,
Content 			VARCHAR (300),
Category_ID 		INT,
Type_ID 			INT,
Creator_ID 			INT,
CreateDate 			DATE
);

CREATE TABLE Answer (
Answer_ID 			INT,
Content 			VARCHAR (300),
QuestionID 			INT,
isCorrect 			VARCHAR (50)
);

CREATE TABLE Exam (
Exam_ID 			INT,
`Code`				INT,
Title 				VARCHAR (50),
Category_ID			INT,
Creator_ID 			INT,
CreateDate			DATE
);

CREATE TABLE ExamQuestion (
Exam_ID 			INT,
Question_ID 		INT
);