USE [master]
GO
/****** Object:  Database [computermanagementdatabase]    Script Date: 12/7/2023 10:51:05 AM ******/
CREATE DATABASE [computermanagementdatabase]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'computermanagementdatabase', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\computermanagementdatabase.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'computermanagementdatabase_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\computermanagementdatabase_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [computermanagementdatabase] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [computermanagementdatabase].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [computermanagementdatabase] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [computermanagementdatabase] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [computermanagementdatabase] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [computermanagementdatabase] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [computermanagementdatabase] SET ARITHABORT OFF 
GO
ALTER DATABASE [computermanagementdatabase] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [computermanagementdatabase] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [computermanagementdatabase] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [computermanagementdatabase] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [computermanagementdatabase] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [computermanagementdatabase] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [computermanagementdatabase] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [computermanagementdatabase] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [computermanagementdatabase] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [computermanagementdatabase] SET  DISABLE_BROKER 
GO
ALTER DATABASE [computermanagementdatabase] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [computermanagementdatabase] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [computermanagementdatabase] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [computermanagementdatabase] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [computermanagementdatabase] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [computermanagementdatabase] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [computermanagementdatabase] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [computermanagementdatabase] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [computermanagementdatabase] SET  MULTI_USER 
GO
ALTER DATABASE [computermanagementdatabase] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [computermanagementdatabase] SET DB_CHAINING OFF 
GO
ALTER DATABASE [computermanagementdatabase] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [computermanagementdatabase] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [computermanagementdatabase] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [computermanagementdatabase] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [computermanagementdatabase] SET QUERY_STORE = OFF
GO
USE [computermanagementdatabase]
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 12/7/2023 10:51:06 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer](
	[CID] [nvarchar](50) NOT NULL,
	[CFullName] [nvarchar](50) NULL,
	[CPhone] [nvarchar](max) NULL,
	[CEmail] [nvarchar](50) NULL,
 CONSTRAINT [PK_Customer] PRIMARY KEY CLUSTERED 
(
	[CID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Information]    Script Date: 12/7/2023 10:51:06 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Information](
	[ID] [int] NOT NULL,
	[FullName] [nvarchar](50) NULL,
	[Address] [nvarchar](max) NULL,
	[Gender] [nvarchar](50) NULL,
	[Position] [nvarchar](max) NULL,
	[Age] [int] NULL,
	[Avatar] [nvarchar](max) NULL,
	[Username] [nvarchar](50) NULL,
	[Password] [varchar](max) NULL,
 CONSTRAINT [PK_Information] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[News]    Script Date: 12/7/2023 10:51:06 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[News](
	[Number] [int] NOT NULL,
	[News] [ntext] NULL,
	[Imageee] [nvarchar](50) NULL,
 CONSTRAINT [PK_News] PRIMARY KEY CLUSTERED 
(
	[Number] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Notification]    Script Date: 12/7/2023 10:51:06 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Notification](
	[NID] [int] NOT NULL,
	[NContent] [ntext] NULL,
	[ID] [int] NULL,
 CONSTRAINT [PK_Notification] PRIMARY KEY CLUSTERED 
(
	[NID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orderr]    Script Date: 12/7/2023 10:51:06 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orderr](
	[OId] [int] NOT NULL,
	[OMoney] [nvarchar](max) NULL,
	[ODescription] [ntext] NULL,
	[CID] [nvarchar](50) NULL,
	[SID] [nvarchar](50) NULL,
 CONSTRAINT [PK_Order] PRIMARY KEY CLUSTERED 
(
	[OId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Salary]    Script Date: 12/7/2023 10:51:06 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Salary](
	[ID] [int] NULL,
	[Year] [int] NULL,
	[Month] [int] NULL,
	[Money] [real] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Service]    Script Date: 12/7/2023 10:51:06 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Service](
	[SID] [nvarchar](50) NOT NULL,
	[SName] [nvarchar](50) NULL,
	[SPrice] [nvarchar](50) NULL,
	[SDescription] [ntext] NULL,
 CONSTRAINT [PK_Service] PRIMARY KEY CLUSTERED 
(
	[SID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[Customer] ([CID], [CFullName], [CPhone], [CEmail]) VALUES (N'1', N'Nguyen Duc Dat', N'0826329970', N'datnd.22git@vku.udn.vn')
INSERT [dbo].[Customer] ([CID], [CFullName], [CPhone], [CEmail]) VALUES (N'2', N'Tien Nhan', N'0999992929', N'dbcon.22@dn.udn.vn')
INSERT [dbo].[Customer] ([CID], [CFullName], [CPhone], [CEmail]) VALUES (N'3', N'Nguyen Tan Canh', N'0923256324', N'canhnt.22git@vku.udn.vn')
INSERT [dbo].[Customer] ([CID], [CFullName], [CPhone], [CEmail]) VALUES (N'4', N'Hoang Thanh', N'09050000000', N'thanh@gmail.com')
INSERT [dbo].[Customer] ([CID], [CFullName], [CPhone], [CEmail]) VALUES (N'5', N'hoangsuperman', N'0987645321', N'hoangpnh.22git@vku.udn.vn')
INSERT [dbo].[Customer] ([CID], [CFullName], [CPhone], [CEmail]) VALUES (N'6', N'dao khanh duy', N'0987654221', N'duydk.22git@vku.udn.vn')
INSERT [dbo].[Customer] ([CID], [CFullName], [CPhone], [CEmail]) VALUES (N'7', N'nguyen duc dat', N'09854353543', N'dat@gmail.com')
GO
INSERT [dbo].[Information] ([ID], [FullName], [Address], [Gender], [Position], [Age], [Avatar], [Username], [Password]) VALUES (1, N'Nguyen Duc Dat', N'Ngu Hanh Son', N'Man', N'Chief executive officer', 19, N'E:\avt\dat.jpg', N'22IT060', N'$2a$12$KUPh0h42CCJL.Sigxbw4g.y1Dc4LJHLCyPpUybi5AnMONn7fgpWze')
INSERT [dbo].[Information] ([ID], [FullName], [Address], [Gender], [Position], [Age], [Avatar], [Username], [Password]) VALUES (2, N'Huynh Cong Phap', N'Quang Nam', N'Man', N'Chief executive officer', 46, N'E:\avt\phaphc.jpg', N'phaphc', N'$2a$12$mdRvVCKso4/e81ZefRHPb.1PwNncCJGOgP2c/oDJmAi4tTHuNd2YS')
INSERT [dbo].[Information] ([ID], [FullName], [Address], [Gender], [Position], [Age], [Avatar], [Username], [Password]) VALUES (3, N'Nguyen Thanh Binh', N'Quang Tri', N'Man', N'Chief executive officer', 48, N'E:\avt\binhnt.jpg', N'binhnt', N'$2a$12$143VLfcysiHqrFnRJfBTcO6JuN2dOzdc4IYPHRekb1OYx5qvLBQe6')
INSERT [dbo].[Information] ([ID], [FullName], [Address], [Gender], [Position], [Age], [Avatar], [Username], [Password]) VALUES (4, N'Nguyen Duc Hien', N'Da Nang', N'Man', N'Chief financial officer', 50, N'E:\avt\nguyen_duc_hien.jpg', N'hiennd', N'$2a$12$oRQkFE91zZNynYu.vrkiuuKLWLWKMKeyUue5Kw7QypfrF.AihzNyW')
INSERT [dbo].[Information] ([ID], [FullName], [Address], [Gender], [Position], [Age], [Avatar], [Username], [Password]) VALUES (5, N'Huynh Ngoc Tho', N'Quang Nam', N'Man', N'Chief financial officer', 41, N'E:\avt\thohn.jpg', N'thohn', N'thohn')
INSERT [dbo].[Information] ([ID], [FullName], [Address], [Gender], [Position], [Age], [Avatar], [Username], [Password]) VALUES (6, N'Nguyen Quang Vu', N'Thua Thien Hue', N'Man', N'Chief financial officer', 48, N'E:\avt\quangvunguyen.jpg', N'vunq', N'vunq')
INSERT [dbo].[Information] ([ID], [FullName], [Address], [Gender], [Position], [Age], [Avatar], [Username], [Password]) VALUES (7, N'Ho Quoc Bao', N'Hue', N'Man', N'Software engineer', 19, N'E:\avt\noman.jpg', N'baohq', N'baohq')
INSERT [dbo].[Information] ([ID], [FullName], [Address], [Gender], [Position], [Age], [Avatar], [Username], [Password]) VALUES (8, N'Hoang Cong Tri Dung', N'Da Nang', N'Man', N'Software engineer', 19, N'E:\avt\dunghoang.jpg', N'22IT048', N'22IT048')
INSERT [dbo].[Information] ([ID], [FullName], [Address], [Gender], [Position], [Age], [Avatar], [Username], [Password]) VALUES (9, N'Tran Thi Cam Hoa', N'Da Nang', N'Woman', N'Chief information officer', 19, N'E:\avt\hoa.jpg', N'22ITEB021', N'22ITEB021')
INSERT [dbo].[Information] ([ID], [FullName], [Address], [Gender], [Position], [Age], [Avatar], [Username], [Password]) VALUES (10, N'Tran Quyen Anh', N'Nghe An', N'Man', N'Chief information officer', 19, N'E:\avt\quyenanh.jpg', N'22IT010', N'22IT010')
INSERT [dbo].[Information] ([ID], [FullName], [Address], [Gender], [Position], [Age], [Avatar], [Username], [Password]) VALUES (11, N'Vo Hong Duc', N'Da Nang', N'Man', N'Chief information officer', 19, N'E:\avt\noman.jpg', N'22IT070', N'22IT070')
INSERT [dbo].[Information] ([ID], [FullName], [Address], [Gender], [Position], [Age], [Avatar], [Username], [Password]) VALUES (12, N'Truong Cong Hoang Thanh', N'Da Nang', N'Man', N'Software engineer', 19, N'E:\avt\ht.jpg', N'22IT270', N'22IT270')
INSERT [dbo].[Information] ([ID], [FullName], [Address], [Gender], [Position], [Age], [Avatar], [Username], [Password]) VALUES (13, N'Nguyen Tan Canh', N'Da Nang', N'Man', N'Chief marketing officer', 19, N'E:\avt\tcanh.jpg', N'22IT030', N'22IT030')
INSERT [dbo].[Information] ([ID], [FullName], [Address], [Gender], [Position], [Age], [Avatar], [Username], [Password]) VALUES (14, N'Phan Nguyen Huy Hoang', N'Da Nang', N'Man', N'Chief marketing officer', 19, N'E:\avt\avt11.jpg', N'22IT101', N'22IT101')
INSERT [dbo].[Information] ([ID], [FullName], [Address], [Gender], [Position], [Age], [Avatar], [Username], [Password]) VALUES (15, N'Truong Gia Huy', N'Da Nang', N'Man', N'Chief marketing officer', 19, N'E:\avt\huybru.jpg', N'22IT119', N'22IT119')
INSERT [dbo].[Information] ([ID], [FullName], [Address], [Gender], [Position], [Age], [Avatar], [Username], [Password]) VALUES (16, N'Tran Thao Nguyen', N'Quang Tri', N'Woman', N'Chief operations officer', 19, N'E:\avt\thaonguye.jpg', N'22IT195', N'22IT195')
INSERT [dbo].[Information] ([ID], [FullName], [Address], [Gender], [Position], [Age], [Avatar], [Username], [Password]) VALUES (17, N'2111', N'1', N'Woman', N'Chief executive officer', 12, NULL, N'12', N'$2a$10$9IDaEjv2.Zvdscjfm9z4SuHqsNEol4SXwXDttP5xQjNFfE1laWbJK')
GO
INSERT [dbo].[News] ([Number], [News], [Imageee]) VALUES (1, N'Flash sale to day 20%', NULL)
INSERT [dbo].[News] ([Number], [News], [Imageee]) VALUES (2, N'Graphic design is a craft where professionals create visual content to communicate messages. 
By applying visual hierarchy and page layout techniques, designers use typography and 
pictures to meet users’ specific needs and focus on the logic of displaying elements 
in interactive designs, to optimize the user experience.', NULL)
INSERT [dbo].[News] ([Number], [News], [Imageee]) VALUES (3, N'Service design is a process where designers create sustainable solutions and optimal experiences 
for both customers in unique contexts and any service providers involved. 
Designers break services into sections and adapt fine-tuned solutions to suit all 
users’ needs in context—based on actors, location and other factors.', NULL)
INSERT [dbo].[News] ([Number], [News], [Imageee]) VALUES (4, N'Service Design is about Designing for the Biggest Picture
Users don’t access brands in a vacuum, but within complex chains of interactions. 
For example, a car is a product, but in service design terms it’s a tool when 
an elderly customer wants to book an Uber ride to visit a friend in hospital. 
There’s much to consider in such contexts. This user might be accessing Uber on a smartphone, 
which she’s still learning to use. Perhaps she’s infirm, too, lives in an assisted living facility
and must inform the driver about her specific needs. Also, she’s not the only user involved here. 
Other users are any service providers attached to her user experience. 
For example, the driver that customer books also uses Uber—but experiences a different 
aspect of it. To cater to various users’ and customers’ contexts as a designer, 
you must understand these sorts of relations between service receivers and service providers 
and the far-reaching aspects of their contexts from start to finish. Only then can you ideate 
towards solutions for these users’/customers’ specific ecosystems while you ensure brands 
can deliver on expectations optimally and sustainably.', NULL)
INSERT [dbo].[News] ([Number], [News], [Imageee]) VALUES (5, N'Want to send your faraway lover a kiss? A Chinese contraption with warm, moving silicon “lips” appears to have just the answer.

The device, advertised as a way to let long-distance couples share “real” physical intimacy, is causing a buzz among Chinese social media users, who have reacted with both intrigue and shock.

Equipped with pressure sensors and actuators, the device is said to be able to mimic a real kiss by replicating the pressure, movement and temperature of a user’s lips.

Along with the kissing motion, it can also transmit the sound the user makes.

However, while many social media users saw a funny side to the device, others criticized it as “vulgar” and “creepy.” Some voiced concerns that minors could buy and use it.

“I don’t understand (the device) but I’m utterly shocked,” said one top comment on Weibo.

', NULL)
INSERT [dbo].[News] ([Number], [News], [Imageee]) VALUES (6, N'According to China’s state-run Global Times, the invention has been patented by the Changzhou Vocational Institute of Mechatronic Technology.

“In my university, I was in a long distance relationship with my girlfriend so we only had contact with each other through the phone. That’s where the inspiration of this device originated,” Jiang Zhongli, the leading inventor of the design, was cited as saying by the Global Times.

It said Jiang had applied for a patent in 2019 but the patent ended in January 2023 and Jiang now hoped someone else could expand on and perfect the design.

A similar invention, the “Kissinger,” was launched by the Imagineering Institute in Malaysia in 2016. But it came in the form of a touch-sensitive silicon pad, rather than realistic-looking lips.

While advertised for long-distance relationships, the Chinese device also allows users to pair up anonymously with strangers in the “kissing square” function of the app. If two strangers match successfully and like each other, they can ask to exchange kisses.

Users can also “upload” their smooches in the app for others to download and experience.

On China’s largest online shopping site Taobao, dozens of users have shared their reviews of the device, which is priced at 288 yuan (US$41).

“My partner didn’t believe that (remote) kissing could be achieved at first, so her jaw dropped when she used it … This is the best surprise I have given her during our long-distance relationship,” one user commented.

“Thank you technology.”', NULL)
INSERT [dbo].[News] ([Number], [News], [Imageee]) VALUES (7, N'Pushing through cognitive impairment, migraines and severe fatigue, Michaelene Carlton, 49, mustered up the energy last week to dial the Social Security Administration to speak to her newly appointed Social Security Disability Insurance case manager. She has left six messages, one every two weeks since late December, and she still hasn’t heard back.

Carlton, who says she has had long-term Covid-19 symptoms since March 2020, is one of up to 23 million Americans estimated to be living with post-acute sequelae SARS-CoV-2 infection. PASC is the medical name often given to Covid-19 symptoms that last or evolve after an initial infection. Those estimates are from the Department of Health and Human Services as of late last year.

The chronic condition can include symptoms from memory loss and extreme fatigue to muscle weakness and musculoskeletal pain. Patients can struggle for months and even years, and many cannot work during that period.

A study by The Brookings Institution found that as many as 683,000 workers may have had to leave the labor force due to long Covid as of October 2022.

Pandemic issues and budget cuts at the Social Security Administration, which handles SSDI claims, have resulted in the lowest staffing levels in 25 years, according to the Center on Budget and Policy Priorities. That has kept long Covid cases backlogged.', NULL)
GO
INSERT [dbo].[Notification] ([NID], [NContent], [ID]) VALUES (1, N'New CUSTOMER 

 Name : Nguyen Duc Dat
 Email : datnd.22git@vku.udn.vn
 Phone number : 0826329970

 SERVICES 

	Design Banner
	Design Logo
	Edit

PRICE :  70 $', 0)
INSERT [dbo].[Notification] ([NID], [NContent], [ID]) VALUES (2, N'New CUSTOMER 

 Name : Tien Nhan
 Email : dbcon.22@dn.udn.vn
 Phone number : 0999992929

 SERVICES 

	Design Logo
	Design Poster

PRICE :  80 $', 0)
INSERT [dbo].[Notification] ([NID], [NContent], [ID]) VALUES (3, N'New works', 9)
INSERT [dbo].[Notification] ([NID], [NContent], [ID]) VALUES (4, N'1233213123123213213', 1)
INSERT [dbo].[Notification] ([NID], [NContent], [ID]) VALUES (5, N'New CUSTOMER 

 Name : Nguyen Tan Canh
 Email : canhnt.22git@vku.udn.vn
 Phone number : 0923256324

 SERVICES 

	Design Banner
	Design Logo
	Edit

PRICE :  70 $', 0)
INSERT [dbo].[Notification] ([NID], [NContent], [ID]) VALUES (6, N'12312312312321312321321321312323123213', 13)
INSERT [dbo].[Notification] ([NID], [NContent], [ID]) VALUES (7, N'231323', 13)
INSERT [dbo].[Notification] ([NID], [NContent], [ID]) VALUES (8, N'xdfsdrfsfs', 0)
INSERT [dbo].[Notification] ([NID], [NContent], [ID]) VALUES (9, N'New CUSTOMER 

 Name : Hoang Thanh
 Email : thanh@gmail.com
 Phone number : 09050000000

 SERVICES 

	Design Poster
	Picture 2D

PRICE :  150 $', 0)
INSERT [dbo].[Notification] ([NID], [NContent], [ID]) VALUES (10, N'hoang nguyen huy phan', 14)
INSERT [dbo].[Notification] ([NID], [NContent], [ID]) VALUES (11, N'New CUSTOMER 

 Name : hoangsuperman
 Email : hoangpnh.22git@vku.udn.vn
 Phone number : 0987645321

 SERVICES 

	Design Logo
	Design Poster
	Picture 3D

PRICE :  280 $', 0)
INSERT [dbo].[Notification] ([NID], [NContent], [ID]) VALUES (12, N'New CUSTOMER 

 Name : dao khanh duy
 Email : duydk.22git@vku.udn.vn
 Phone number : 0987654221

 SERVICES 

	Design Logo
	Design Poster

PRICE :  80 $', 0)
INSERT [dbo].[Notification] ([NID], [NContent], [ID]) VALUES (13, N'nguyen duc dat', 1)
INSERT [dbo].[Notification] ([NID], [NContent], [ID]) VALUES (14, N'New CUSTOMER 

 Name : nguyen duc dat
 Email : dat@gmail.com
 Phone number : 09854353543

 SERVICES 

	Design Logo
	Design Poster
	Picture 2D

PRICE :  180 $', 0)
GO
INSERT [dbo].[Orderr] ([OId], [OMoney], [ODescription], [CID], [SID]) VALUES (1, N'20.0', N'CUSTOMER 

 Name : Nguyen Duc Dat
 Email : datnd.22git@vku.udn.vn
 Phone number : 0826329970

 SERVICES 

	Design Banner
	Design Logo
	Edit

PRICE :  70 $', N'1', N'1')
INSERT [dbo].[Orderr] ([OId], [OMoney], [ODescription], [CID], [SID]) VALUES (2, N'30.0', N'CUSTOMER 

 Name : Nguyen Duc Dat
 Email : datnd.22git@vku.udn.vn
 Phone number : 0826329970

 SERVICES 

	Design Banner
	Design Logo
	Edit

PRICE :  70 $', N'1', N'2')
INSERT [dbo].[Orderr] ([OId], [OMoney], [ODescription], [CID], [SID]) VALUES (3, N'20.0', N'CUSTOMER 

 Name : Nguyen Duc Dat
 Email : datnd.22git@vku.udn.vn
 Phone number : 0826329970

 SERVICES 

	Design Banner
	Design Logo
	Edit

PRICE :  70 $', N'1', N'4')
INSERT [dbo].[Orderr] ([OId], [OMoney], [ODescription], [CID], [SID]) VALUES (4, N'30.0', N'CUSTOMER 

 Name : Tien Nhan
 Email : dbcon.22@dn.udn.vn
 Phone number : 0999992929

 SERVICES 

	Design Logo
	Design Poster

PRICE :  80 $', N'2', N'2')
INSERT [dbo].[Orderr] ([OId], [OMoney], [ODescription], [CID], [SID]) VALUES (5, N'50.0', N'CUSTOMER 

 Name : Tien Nhan
 Email : dbcon.22@dn.udn.vn
 Phone number : 0999992929

 SERVICES 

	Design Logo
	Design Poster

PRICE :  80 $', N'2', N'3')
INSERT [dbo].[Orderr] ([OId], [OMoney], [ODescription], [CID], [SID]) VALUES (6, N'20.0', N'CUSTOMER 

 Name : Nguyen Tan Canh
 Email : canhnt.22git@vku.udn.vn
 Phone number : 0923256324

 SERVICES 

	Design Banner
	Design Logo
	Edit

PRICE :  70 $', N'3', N'1')
INSERT [dbo].[Orderr] ([OId], [OMoney], [ODescription], [CID], [SID]) VALUES (7, N'30.0', N'CUSTOMER 

 Name : Nguyen Tan Canh
 Email : canhnt.22git@vku.udn.vn
 Phone number : 0923256324

 SERVICES 

	Design Banner
	Design Logo
	Edit

PRICE :  70 $', N'3', N'2')
INSERT [dbo].[Orderr] ([OId], [OMoney], [ODescription], [CID], [SID]) VALUES (8, N'20.0', N'CUSTOMER 

 Name : Nguyen Tan Canh
 Email : canhnt.22git@vku.udn.vn
 Phone number : 0923256324

 SERVICES 

	Design Banner
	Design Logo
	Edit

PRICE :  70 $', N'3', N'4')
INSERT [dbo].[Orderr] ([OId], [OMoney], [ODescription], [CID], [SID]) VALUES (9, N'50.0', N'CUSTOMER 

 Name : Hoang Thanh
 Email : thanh@gmail.com
 Phone number : 09050000000

 SERVICES 

	Design Poster
	Picture 2D

PRICE :  150 $', N'4', N'3')
INSERT [dbo].[Orderr] ([OId], [OMoney], [ODescription], [CID], [SID]) VALUES (10, N'100.0', N'CUSTOMER 

 Name : Hoang Thanh
 Email : thanh@gmail.com
 Phone number : 09050000000

 SERVICES 

	Design Poster
	Picture 2D

PRICE :  150 $', N'4', N'5')
INSERT [dbo].[Orderr] ([OId], [OMoney], [ODescription], [CID], [SID]) VALUES (11, N'30.0', N'CUSTOMER 

 Name : hoangsuperman
 Email : hoangpnh.22git@vku.udn.vn
 Phone number : 0987645321

 SERVICES 

	Design Logo
	Design Poster
	Picture 3D

PRICE :  280 $', N'5', N'2')
INSERT [dbo].[Orderr] ([OId], [OMoney], [ODescription], [CID], [SID]) VALUES (12, N'50.0', N'CUSTOMER 

 Name : hoangsuperman
 Email : hoangpnh.22git@vku.udn.vn
 Phone number : 0987645321

 SERVICES 

	Design Logo
	Design Poster
	Picture 3D

PRICE :  280 $', N'5', N'3')
INSERT [dbo].[Orderr] ([OId], [OMoney], [ODescription], [CID], [SID]) VALUES (13, N'200.0', N'CUSTOMER 

 Name : hoangsuperman
 Email : hoangpnh.22git@vku.udn.vn
 Phone number : 0987645321

 SERVICES 

	Design Logo
	Design Poster
	Picture 3D

PRICE :  280 $', N'5', N'6')
INSERT [dbo].[Orderr] ([OId], [OMoney], [ODescription], [CID], [SID]) VALUES (14, N'30.0', N'CUSTOMER 

 Name : dao khanh duy
 Email : duydk.22git@vku.udn.vn
 Phone number : 0987654221

 SERVICES 

	Design Logo
	Design Poster

PRICE :  80 $', N'6', N'2')
INSERT [dbo].[Orderr] ([OId], [OMoney], [ODescription], [CID], [SID]) VALUES (15, N'50.0', N'CUSTOMER 

 Name : dao khanh duy
 Email : duydk.22git@vku.udn.vn
 Phone number : 0987654221

 SERVICES 

	Design Logo
	Design Poster

PRICE :  80 $', N'6', N'3')
INSERT [dbo].[Orderr] ([OId], [OMoney], [ODescription], [CID], [SID]) VALUES (16, N'30.0', N'CUSTOMER 

 Name : nguyen duc dat
 Email : dat@gmail.com
 Phone number : 09854353543

 SERVICES 

	Design Logo
	Design Poster
	Picture 2D

PRICE :  180 $', N'7', N'2')
INSERT [dbo].[Orderr] ([OId], [OMoney], [ODescription], [CID], [SID]) VALUES (17, N'50.0', N'CUSTOMER 

 Name : nguyen duc dat
 Email : dat@gmail.com
 Phone number : 09854353543

 SERVICES 

	Design Logo
	Design Poster
	Picture 2D

PRICE :  180 $', N'7', N'3')
INSERT [dbo].[Orderr] ([OId], [OMoney], [ODescription], [CID], [SID]) VALUES (18, N'100.0', N'CUSTOMER 

 Name : nguyen duc dat
 Email : dat@gmail.com
 Phone number : 09854353543

 SERVICES 

	Design Logo
	Design Poster
	Picture 2D

PRICE :  180 $', N'7', N'5')
GO
INSERT [dbo].[Salary] ([ID], [Year], [Month], [Money]) VALUES (1, 2021, 1, 2100)
INSERT [dbo].[Salary] ([ID], [Year], [Month], [Money]) VALUES (2, 2021, 1, 3000)
INSERT [dbo].[Salary] ([ID], [Year], [Month], [Money]) VALUES (3, 2021, 1, 2900)
INSERT [dbo].[Salary] ([ID], [Year], [Month], [Money]) VALUES (4, 2021, 1, 2700)
INSERT [dbo].[Salary] ([ID], [Year], [Month], [Money]) VALUES (5, 2021, 1, 2520)
INSERT [dbo].[Salary] ([ID], [Year], [Month], [Money]) VALUES (6, 2021, 1, 2250)
INSERT [dbo].[Salary] ([ID], [Year], [Month], [Money]) VALUES (9, 2021, 1, 2400)
INSERT [dbo].[Salary] ([ID], [Year], [Month], [Money]) VALUES (10, 2021, 1, 1520)
INSERT [dbo].[Salary] ([ID], [Year], [Month], [Money]) VALUES (11, 2021, 1, 1520)
INSERT [dbo].[Salary] ([ID], [Year], [Month], [Money]) VALUES (13, 2021, 1, 1960)
INSERT [dbo].[Salary] ([ID], [Year], [Month], [Money]) VALUES (14, 2021, 1, 2030)
INSERT [dbo].[Salary] ([ID], [Year], [Month], [Money]) VALUES (15, 2021, 1, 1890)
INSERT [dbo].[Salary] ([ID], [Year], [Month], [Money]) VALUES (16, 2021, 1, 1800)
INSERT [dbo].[Salary] ([ID], [Year], [Month], [Money]) VALUES (8, 2021, 1, 3360)
INSERT [dbo].[Salary] ([ID], [Year], [Month], [Money]) VALUES (7, 2021, 1, 3120)
INSERT [dbo].[Salary] ([ID], [Year], [Month], [Money]) VALUES (12, 2021, 1, 3000)
INSERT [dbo].[Salary] ([ID], [Year], [Month], [Money]) VALUES (1, 2022, 1, 2700)
INSERT [dbo].[Salary] ([ID], [Year], [Month], [Money]) VALUES (2, 2022, 1, 2600)
INSERT [dbo].[Salary] ([ID], [Year], [Month], [Money]) VALUES (3, 2022, 1, 2900)
INSERT [dbo].[Salary] ([ID], [Year], [Month], [Money]) VALUES (4, 2022, 1, 2610)
INSERT [dbo].[Salary] ([ID], [Year], [Month], [Money]) VALUES (5, 2022, 1, 2430)
INSERT [dbo].[Salary] ([ID], [Year], [Month], [Money]) VALUES (6, 2022, 1, 2340)
INSERT [dbo].[Salary] ([ID], [Year], [Month], [Money]) VALUES (9, 2022, 1, 2000)
INSERT [dbo].[Salary] ([ID], [Year], [Month], [Money]) VALUES (10, 2022, 1, 1520)
INSERT [dbo].[Salary] ([ID], [Year], [Month], [Money]) VALUES (11, 2022, 1, 2320)
INSERT [dbo].[Salary] ([ID], [Year], [Month], [Money]) VALUES (13, 2022, 1, 1960)
INSERT [dbo].[Salary] ([ID], [Year], [Month], [Money]) VALUES (14, 2022, 1, 2100)
INSERT [dbo].[Salary] ([ID], [Year], [Month], [Money]) VALUES (15, 2022, 1, 1960)
INSERT [dbo].[Salary] ([ID], [Year], [Month], [Money]) VALUES (16, 2022, 1, 1380)
INSERT [dbo].[Salary] ([ID], [Year], [Month], [Money]) VALUES (12, 2022, 1, 3360)
INSERT [dbo].[Salary] ([ID], [Year], [Month], [Money]) VALUES (8, 2022, 1, 3120)
INSERT [dbo].[Salary] ([ID], [Year], [Month], [Money]) VALUES (7, 2022, 1, 3000)
INSERT [dbo].[Salary] ([ID], [Year], [Month], [Money]) VALUES (13, 2021, 3, 1330)
INSERT [dbo].[Salary] ([ID], [Year], [Month], [Money]) VALUES (6, 2021, 3, 1890)
INSERT [dbo].[Salary] ([ID], [Year], [Month], [Money]) VALUES (2, 2022, 2, 5438)
INSERT [dbo].[Salary] ([ID], [Year], [Month], [Money]) VALUES (2, 2022, 3, 7852)
INSERT [dbo].[Salary] ([ID], [Year], [Month], [Money]) VALUES (2, 2022, 4, 3412)
INSERT [dbo].[Salary] ([ID], [Year], [Month], [Money]) VALUES (2, 2022, 5, 2342)
INSERT [dbo].[Salary] ([ID], [Year], [Month], [Money]) VALUES (2, 2022, 6, 2434)
INSERT [dbo].[Salary] ([ID], [Year], [Month], [Money]) VALUES (2, 2022, 7, 24452)
INSERT [dbo].[Salary] ([ID], [Year], [Month], [Money]) VALUES (2, 2022, 8, 5435)
INSERT [dbo].[Salary] ([ID], [Year], [Month], [Money]) VALUES (2, 2022, 9, 2313)
INSERT [dbo].[Salary] ([ID], [Year], [Month], [Money]) VALUES (2, 2022, 10, 14334)
INSERT [dbo].[Salary] ([ID], [Year], [Month], [Money]) VALUES (2, 2022, 11, 1231)
INSERT [dbo].[Salary] ([ID], [Year], [Month], [Money]) VALUES (2, 2022, 12, 4325)
GO
INSERT [dbo].[Service] ([SID], [SName], [SPrice], [SDescription]) VALUES (N'1', N'Design Banner', N'20', N'Design Banner')
INSERT [dbo].[Service] ([SID], [SName], [SPrice], [SDescription]) VALUES (N'2', N'Design Logo', N'30', N'Design Logo')
INSERT [dbo].[Service] ([SID], [SName], [SPrice], [SDescription]) VALUES (N'3 ', N'Design Poster', N'50', N'Design Poster')
INSERT [dbo].[Service] ([SID], [SName], [SPrice], [SDescription]) VALUES (N'4', N'Edit', N'20', N'Fix some problems of old picture')
INSERT [dbo].[Service] ([SID], [SName], [SPrice], [SDescription]) VALUES (N'5', N'Picture 2D', N'100', N'Picture 2D')
INSERT [dbo].[Service] ([SID], [SName], [SPrice], [SDescription]) VALUES (N'6', N'Picture 3D ', N'200', N'Picture 3D')
GO
ALTER TABLE [dbo].[Orderr]  WITH CHECK ADD  CONSTRAINT [FK_Order_Customer] FOREIGN KEY([CID])
REFERENCES [dbo].[Customer] ([CID])
GO
ALTER TABLE [dbo].[Orderr] CHECK CONSTRAINT [FK_Order_Customer]
GO
ALTER TABLE [dbo].[Orderr]  WITH CHECK ADD  CONSTRAINT [FK_Order_Service] FOREIGN KEY([SID])
REFERENCES [dbo].[Service] ([SID])
GO
ALTER TABLE [dbo].[Orderr] CHECK CONSTRAINT [FK_Order_Service]
GO
USE [master]
GO
ALTER DATABASE [computermanagementdatabase] SET  READ_WRITE 
GO
