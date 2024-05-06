Create Database LoginDemoDB
Go
use LoginDemoDB
go

--select * from Users
--go

Create Table Users (
	Email nvarchar(100) ,
	[Password] nvarchar(20) NOT NULL,
	PhoneNumber nvarchar(20) NULL,
	BirthDate DATETIME NULL,
	[Status] int NULL,
	[Name] nvarchar(50) NOT NULL,
	 CONSTRAINT PK_Users PRIMARY KEY (Email)

)
Create Table Grades (
	[GradeID] int IDENTITY(1,1) NOT NULL ,
	Email nvarchar(100) ,
	TestDate DATETIME NULL,
	GradeNum int NULL,
	SubjectName nvarchar(50) NOT NULL,
	CONSTRAINT PK_Grades PRIMARY KEY (GradeID),
	CONSTRAINT FK_Email FOREIGN KEY (Email)
    REFERENCES Users(Email)
)
Go

INSERT INTO dbo.Users VALUES ('ofer@ofer.com', '1234', '+972526344450','15-nov-1972',1,'Ofer Zadikario')
INSERT INTO dbo.Grades VALUES ('ofer@ofer.com', '15-nov-1972', '50','computer science')
INSERT INTO dbo.Grades VALUES ('ofer@ofer.com', '15-nov-2972','100','Math')
INSERT INTO dbo.Grades VALUES ('ofer@ofer.com','25-sep-2972','45','History' )

Go

--scaffold-DbContext "Server = LAB2-14\SQLEXPRESS;Initial Catalog=LoginDemoDB;Integrated Security=True;Persist Security Info=False;Pooling=False;Multiple Active Result Sets=False;Encrypt=False;Trust Server Certificate=False;Command Timeout=0" Microsoft.EntityFrameworkCore.SqlServer -OutPutDir Models -Context LoginDemoDbContext -DataAnnotations -force