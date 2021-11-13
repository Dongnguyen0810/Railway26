USE Testing_System_Assignment_03;

INSERT INTO Department (Department_Name)
VALUES 	("SALE"),
		("HR"),
		("Marketing");

INSERT INTO Position (Position_Name)
VALUES  (N'Marketing' ),
		(N'Sale' ),
		(N'Bảo vệ' ),
		(N'Nhân sự' ),
		(N'Kỹ thuật' ),
		(N'Tài chính' ),
		(N'Phó giám đốc'),
		(N'Giám đốc' ),
		(N'Thư kí' ),
		(N'Bán hàng' );

INSERT INTO `Account` (Email, Username, Fullname, Department_ID, Position_ID, CreateDate )
VALUES  ("NGUYENVANA@GMAIL.COM", "A", "NGUYEN VAN A",1,2,"20211107"),
		("NGUYENVANB@GMAIL.COM", "B", "NGUYEN VAN B",1,3,"20211107"),
		("NGUYENVANC@GMAIL.COM", "C", "NGUYEN VAN C",1,1,"20211107"),
		("NGUYENVAND@GMAIL.COM", "D", "NGUYEN VAN D",1,2,"20211107"),
		("NGUYENVANE@GMAIL.COM", "E", "NGUYEN VAN E",1,2,"20211107"),
		("NGUYENVANF@GMAIL.COM", "F", "NGUYEN VAN F",1,3,"20211107"),
		("NGUYENVANG@GMAIL.COM", "G", "NGUYEN VAN G",2,3,"20211107"),
		("NGUYENVANH@GMAIL.COM", "H", "NGUYEN VAN H",1,3,"20211107"),
		("NGUYENVANI@GMAIL.COM", "I", "NGUYEN VAN I",1,3,"20211107"),
		("NGUYENVANK@GMAIL.COM", "K", "NGUYEN VAN K",2,3,"20211107");
	
INSERT INTO `Group` ( Group_Name , Creator_ID , CreateDate)
VALUES  (N'VTI ACADEMY' , 3,'2021-11-06'),
		(N'VTI SALE' , 1,'2021-11-07'),
		(N'VTI JAPAN' , 2 ,'2021-11-08'),
		(N'VTI VIETNAM' , 3 ,'2021-11-09'),
		(N'VTI Sale 03' , 4 ,'2021-11-10'),
		(N'VTI Creator' , 6 ,'2021-11-11'),
		(N'VTI Marketing' , 7 ,'2021-11-12'),
		(N'VTI BUSINESS' , 8 , '2021-11-13'),
		(N'VTI GROUP' , 9 ,'2021-11-14'),
		(N'VTI MENTOR' , 10 ,'2021-11-15');
     
INSERT INTO `GroupAccount` ( Group_ID , Account_ID , JoinDate )
VALUES  ( 1 , 1,'2021-11-6'),

		( 1 , 2,'2021-11-7'),

		( 3 , 3,'2021-11-09'),

		( 3 , 4,'2021-11-10'),

		( 5 , 5,'2021-11-11'),

		( 1 , 3,'2021-11-12'),

		( 1 , 7,'2021-11-13'),

		( 8 , 3,'2021-11-14'),

		( 1 , 9,'2021-11-15'),

		( 10 , 10,'2021-11-16');
        
INSERT INTO TypeQuestion (TypeName )
VALUES 	('Essay'),
		('Multiple-Choice' );

INSERT INTO CategoryQuestion (CategoryName )
VALUES  ('Java' ),
		('ASP.NET' ),
		('ADO.NET' ),
		('SQL' ),
		('Postman' ),
		('Ruby' ),
		('Python' ),
		('C++' ),
		('C Sharp' ),
		('PHP' );

INSERT INTO Question (Content , Category_ID, Type_ID , Creator_ID, CreateDate )
VALUES  (N'Câu hỏi về Java' , 1 ,'1' , '2' ,'2020-04-05'),

		(N'Câu Hỏi về PHP' , 10 ,'2' , '2' ,'2020-04-05'),

		(N'Hỏi về C#' , 9 ,'2' , '3' ,'2020-04-06'),

		(N'Hỏi về Ruby' , 6 ,'1' , '4' ,'2020-04-06'),

		(N'Hỏi về Postman' , 5 ,'1' , '5' ,'2020-04-06'),

		(N'Hỏi về ADO.NET' , 3 ,'2' , '6' ,'2020-04-06'),

		(N'Hỏi về ASP.NET' , 2 ,'1' , '7' ,'2020-04-06'),

		(N'Hỏi về C++' , 8 ,'1' , '8' ,'2020-04-07'),

		(N'Hỏi về SQL' , 4 ,'2' , '9' ,'2020-04-07'),

		(N'Hỏi về Python' , 7 ,'1' , '10' ,'2020-04-07');

INSERT INTO Answer ( Content , QuestionID , isCorrect )
VALUES  (N'Trả lời 01' , 1 , 0),
		(N'Trả lời 02' , 1 , 1),
		(N'Trả lời 03', 1 , 0 ),
		(N'Trả lời 04', 1 , 1 ),
		(N'Trả lời 05', 2 , 1 ),
		(N'Trả lời 06', 3 , 1 ),
		(N'Trả lời 07', 4 , 0 ),
		(N'Trả lời 08', 8 , 0 ),
		(N'Trả lời 09', 9 , 1 ),
		(N'Trả lời 10', 10 , 1 );

INSERT INTO Exam (`Code` , Title , Category_ID, Duration , Creator_ID , CreateDate )
VALUES ('VTIQ001' , N'Đề thi C#' ,1 , 60 , '5' ,'2019-04-05'),

('VTIQ002' , N'Đề thi PHP' ,10 , 60 , '2' ,'2019-04-05'),

('VTIQ003' , N'Đề thi C++' , 9 ,120 , '2' ,'2019-04-07'),

('VTIQ004' , N'Đề thi Java' , 6 , 60, '3' ,'2020-04-08'),

('VTIQ005' , N'Đề thi Ruby' , 5 , 120, '4' ,'2020-04-10'),

('VTIQ006' , N'Đề thi Postman' , 3 ,60 , '6' ,'2020-04-05'),

('VTIQ007' , N'Đề thi SQL' , 2 ,60 , '7' ,'2020-04-05'),

('VTIQ008' , N'Đề thi Python' , 8 ,60 , '8' ,'2020-04-07'),

('VTIQ009' , N'Đề thi ADO.NET' , 4 ,90 , '9' ,'2020-04-07'),

('VTIQ010' , N'Đề thi ASP.NET' , 7 ,90 , '10' ,'2020-04-08');

INSERT INTO ExamQuestion(Exam_ID , Question_ID )
VALUES  ( 1 , 5 ),
		( 2 , 10 ),
		( 3 , 4 ),
		( 4 , 3 ),
		( 5 , 7 ),
		( 6 , 10 ),
		( 7 , 2 ),
		( 8 , 10 ),
		( 9 , 9 ),
		( 10 , 8 );


