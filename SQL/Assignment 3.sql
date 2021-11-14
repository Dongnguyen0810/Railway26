USE Testing_System_Assignment_03;


-- Lấy ra tất cả các phòng ban trong table Department.
SELECT * FROM Department;

-- lấy ra ID của phòng ban SALE.
SELECT Department_ID 
FROM Department
WHERE Department_Name = "SALE";

-- Lấy ra thông tin Account có full name dài nhất.
-- Cách 1
SELECT * FROM `Account`
ORDER BY length(Fullname) DESC LIMIT 1;
-- Cách 2

SELECT * FROM `Account`
WHERE Fullname = (SELECT MAX(Fullname) FROM `Account`);

SELECT * FROM `Account`
WHERE LENGTH(Fullname) = (SELECT MAX(LENGTH(Fullname)) FROM `Account`);

-- 5 lấy ra thông tin Account có full name dài nhất và thuộc phong ban có ID =3.

-- SELECT * FROM `Account`

-- WHERE LENGTH(Fullname) = (SELECT MAX(LENGTH(Fullname)) FROM `Account` ;


-- 6 Lấy tên Group đã tham gia trước ngày  2021-11-07

SELECT Group_Name FROM `Group`
WHERE CreateDate < "20211108";

-- 7 Lấy ra ID của Question có lớn hơn(>=4) câu trả lời.

SELECT QuestionID, COUNT(Answer_ID)
FROM Answer
GROUP BY QuestionID HAVING COUNT(Answer_ID) >= 4;


-- 8 Lấy các mã đề thi có thời gian thi >=60 phút và được tạo trước ngày 20/12/2019.
SELECT `Code`
FROM Exam
WHERE Duration >=60 AND CreateDate < "2019-12-20";

-- 9 Lấy ra 5 group đc tạo gần đây nhất.
SELECT * FROM `Group`
ORDER BY CreateDate DESC LIMIT 5;


-- 10 Đếm số nhân viên thuộc Deparment có id=2
SELECT Department_ID, COUNT(Account_ID) AS SL
FROM `Account`
WHERE Department_ID = 2;

-- 11 Lấy ra nhân viên có tên bắt đầu bằng chữ "N" và kết thúc bằng chữ C.
SELECT Fullname
FROM `Account`
WHERE (SUBSTRING_INDEX(FullName, ' ', -1)) LIKE 'N%C' ;

-- 12 Xóa tất cả các exam được tạo trước ngày 20/12/2019
DELETE
FROM Exam
WHERE CreateDate < '2019-12-20';

-- 13 Xoá tất cả các Question có nội dung bắt đầu bằng từ "câu hỏi"
DELETE
FROM `question`
WHERE (SUBSTRING_INDEX(Content,' ',2)) ='câu hỏi';


-- update thông tin của Account có id=5 thành tên "Nguyễn Bá Lộc" và E mail thành LOc.nguyenba@vti.com.vn
UPDATE `Account`
SET 	Fullname = 'Nguyễn Bá Lộc',

		Email = 'loc.nguyenba@vti.com.vn'

WHERE 	Account_ID = 5;

-- update account có id=5 sẽ thuộc group có id = 4.
UPDATE `GroupAccount` 
SET 	Account_ID = 5
WHERE 	Group_ID = 4;
