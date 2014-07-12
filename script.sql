USE [master]
GO
/****** Object:  Database [my database]    Script Date: 06/02/2014 18:08:03 ******/
CREATE DATABASE [my database] ON  PRIMARY 
( NAME = N'my database', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10.SQLEXPRESS\MSSQL\DATA\my database.mdf' , SIZE = 2048KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'my database_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10.SQLEXPRESS\MSSQL\DATA\my database_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [my database] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [my database].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [my database] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [my database] SET ANSI_NULLS OFF
GO
ALTER DATABASE [my database] SET ANSI_PADDING OFF
GO
ALTER DATABASE [my database] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [my database] SET ARITHABORT OFF
GO
ALTER DATABASE [my database] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [my database] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [my database] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [my database] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [my database] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [my database] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [my database] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [my database] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [my database] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [my database] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [my database] SET  DISABLE_BROKER
GO
ALTER DATABASE [my database] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [my database] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [my database] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [my database] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [my database] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [my database] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [my database] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [my database] SET  READ_WRITE
GO
ALTER DATABASE [my database] SET RECOVERY SIMPLE
GO
ALTER DATABASE [my database] SET  MULTI_USER
GO
ALTER DATABASE [my database] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [my database] SET DB_CHAINING OFF
GO
USE [my database]
GO
/****** Object:  Table [dbo].[video_tbl]    Script Date: 06/02/2014 18:08:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[video_tbl](
	[vid_id] [int] IDENTITY(1,1) NOT NULL,
	[vid_title] [nvarchar](50) NOT NULL,
	[sub_cat_id] [int] NOT NULL,
	[vid_extension] [nvarchar](50) NULL,
	[vid_image] [nvarchar](50) NOT NULL,
	[vid_like_dislike] [int] NULL,
	[vid_size] [nvarchar](50) NULL,
	[vid_path] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_video_tbl] PRIMARY KEY CLUSTERED 
(
	[vid_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[video_tbl] ON
INSERT [dbo].[video_tbl] ([vid_id], [vid_title], [sub_cat_id], [vid_extension], [vid_image], [vid_like_dislike], [vid_size], [vid_path]) VALUES (2, N'wwr', 2, NULL, N'~/vidimage/Chrysan themum.jpg', NULL, NULL, N'~/vidimage/H264_test1_Talkinghead_mp4_480x360.mp4')
SET IDENTITY_INSERT [dbo].[video_tbl] OFF
/****** Object:  Table [dbo].[sub_category]    Script Date: 06/02/2014 18:08:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[sub_category](
	[sub_cat_id] [int] IDENTITY(1,1) NOT NULL,
	[sub_cat_name] [varchar](50) NULL,
	[cat_id] [int] NULL,
 CONSTRAINT [PK_sub_category] PRIMARY KEY CLUSTERED 
(
	[sub_cat_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[sub_category] ON
INSERT [dbo].[sub_category] ([sub_cat_id], [sub_cat_name], [cat_id]) VALUES (1, N'Mussup', 1)
INSERT [dbo].[sub_category] ([sub_cat_id], [sub_cat_name], [cat_id]) VALUES (2, N'DJ Remix', 1)
SET IDENTITY_INSERT [dbo].[sub_category] OFF
/****** Object:  Table [dbo].[songs]    Script Date: 06/02/2014 18:08:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[songs](
	[song_id] [int] IDENTITY(1,1) NOT NULL,
	[song_name] [varchar](50) NULL,
	[sub_cat_id] [int] NULL,
 CONSTRAINT [PK_songs] PRIMARY KEY CLUSTERED 
(
	[song_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  StoredProcedure [dbo].[select_admin_login]    Script Date: 06/02/2014 18:08:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[select_admin_login]
	
	(
	@adminname varchar(50),
	@admin_password varchar(50)
	)
	
AS
	select * from select_admin_login WHERE adminname=@adminname and admin_password=@admin_password
	RETURN
GO
/****** Object:  Table [dbo].[feedback]    Script Date: 06/02/2014 18:08:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[feedback](
	[userid] [int] NULL,
	[fullname] [varchar](50) NULL,
	[re_address] [varchar](50) NULL,
	[mobile] [int] NULL,
	[mail] [varchar](50) NULL,
	[comment] [varchar](50) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[country]    Script Date: 06/02/2014 18:08:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[country](
	[country_id] [int] IDENTITY(1,1) NOT NULL,
	[country_name] [nvarchar](50) NULL,
 CONSTRAINT [PK_country] PRIMARY KEY CLUSTERED 
(
	[country_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[country] ON
INSERT [dbo].[country] ([country_id], [country_name]) VALUES (1, N'india')
INSERT [dbo].[country] ([country_id], [country_name]) VALUES (2, N'us')
SET IDENTITY_INSERT [dbo].[country] OFF
/****** Object:  StoredProcedure [dbo].[select_contactus]    Script Date: 06/02/2014 18:08:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[select_contactus]
	/*
	(
	@parameter1 int = 5,
	@parameter2 datatype OUTPUT
	)
	*/
AS
	Select * from contactus;
	RETURN
GO
/****** Object:  Table [dbo].[contact us]    Script Date: 06/02/2014 18:08:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[contact us](
	[name] [varchar](50) NULL,
	[addres] [varchar](50) NULL,
	[phone] [int] NULL,
	[email] [varchar](50) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[city]    Script Date: 06/02/2014 18:08:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[city](
	[city_id] [int] IDENTITY(1,1) NOT NULL,
	[city_name] [nvarchar](50) NULL,
	[state_id] [int] NULL,
 CONSTRAINT [PK_city] PRIMARY KEY CLUSTERED 
(
	[city_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[city] ON
INSERT [dbo].[city] ([city_id], [city_name], [state_id]) VALUES (1, N'junagadh', 1)
SET IDENTITY_INSERT [dbo].[city] OFF
/****** Object:  Table [dbo].[category]    Script Date: 06/02/2014 18:08:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[category](
	[cat_id] [int] IDENTITY(1,1) NOT NULL,
	[category_name] [varchar](50) NOT NULL,
 CONSTRAINT [PK_category] PRIMARY KEY CLUSTERED 
(
	[cat_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[category] ON
INSERT [dbo].[category] ([cat_id], [category_name]) VALUES (1, N'Remix')
INSERT [dbo].[category] ([cat_id], [category_name]) VALUES (2, N'melody')
INSERT [dbo].[category] ([cat_id], [category_name]) VALUES (3, N'hindi')
INSERT [dbo].[category] ([cat_id], [category_name]) VALUES (4, N'SufiSong')
SET IDENTITY_INSERT [dbo].[category] OFF
/****** Object:  Table [dbo].[c_login]    Script Date: 06/02/2014 18:08:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[c_login](
	[login_id] [int] IDENTITY(1,1) NOT NULL,
	[clientname] [varchar](50) NULL,
	[client_password] [varchar](50) NULL,
 CONSTRAINT [PK_c_login] PRIMARY KEY CLUSTERED 
(
	[login_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[audiotbl]    Script Date: 06/02/2014 18:08:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[audiotbl](
	[aid_id] [int] IDENTITY(1,1) NOT NULL,
	[aid_title] [nvarchar](50) NOT NULL,
	[sub_cat_id] [int] NOT NULL,
	[aid_extension] [nvarchar](50) NULL,
	[aid_image] [nvarchar](50) NOT NULL,
	[aid_like_dislike] [int] NULL,
	[aid_size] [nvarchar](50) NULL,
	[aid_path] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_audiotbl] PRIMARY KEY CLUSTERED 
(
	[aid_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[audiotbl] ON
INSERT [dbo].[audiotbl] ([aid_id], [aid_title], [sub_cat_id], [aid_extension], [aid_image], [aid_like_dislike], [aid_size], [aid_path]) VALUES (2, N'ddf', 1, NULL, N'~/vidimage/Des ert.jpg', NULL, NULL, N'~/vidimage/Baarish_Flute(wapking.cc).mp3')
SET IDENTITY_INSERT [dbo].[audiotbl] OFF
/****** Object:  Table [dbo].[admin_login]    Script Date: 06/02/2014 18:08:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[admin_login](
	[re_id] [int] IDENTITY(1,1) NOT NULL,
	[adminname] [varchar](50) NULL,
	[admin_password] [varchar](50) NULL,
 CONSTRAINT [PK_admin_login] PRIMARY KEY CLUSTERED 
(
	[re_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[admin_login] ON
INSERT [dbo].[admin_login] ([re_id], [adminname], [admin_password]) VALUES (1, N'aditi', N'aditi27')
SET IDENTITY_INSERT [dbo].[admin_login] OFF
/****** Object:  StoredProcedure [dbo].[add_vid]    Script Date: 06/02/2014 18:08:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[add_vid]
	(
	@sub_cat_id int,
	@vid_title nvarchar(50),
	@vid_image nvarchar(max),
	@vid_path nvarchar(50)
	)
	
AS
	/* SET NOCOUNT ON */
	insert into video_tbl(sub_cat_id,vid_title,vid_image,vid_path) values(@sub_cat_id,@vid_title,@vid_image,@vid_path)
	RETURN
GO
/****** Object:  StoredProcedure [dbo].[add_aid]    Script Date: 06/02/2014 18:08:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[add_aid]
	(
	@sub_cat_id int,
	@aid_title nvarchar(50),
	@aid_image nvarchar(max),
	@aid_path nvarchar(50)
	)
	
AS
	/* SET NOCOUNT ON */
	insert into audiotbl(sub_cat_id,aid_title,aid_image,aid_path) values(@sub_cat_id,@aid_title,@aid_image,@aid_path)
	RETURN
GO
/****** Object:  StoredProcedure [dbo].[a_chang_pwd]    Script Date: 06/02/2014 18:08:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[a_chang_pwd]
	
	(
	@adminname varchar(50),
	@admin_password varchar(50)
	)
	
AS
	update admin_login set admin_password=@admin_password where adminname=@adminname and admin_password=@admin_password
	RETURN
GO
/****** Object:  StoredProcedure [dbo].[bindmaterialvideo]    Script Date: 06/02/2014 18:08:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[bindmaterialvideo]
	/*
	(
	@parameter1 int = 5,
	@parameter2 datatype OUTPUT
	)
	*/
AS
	select * from video_tbl
	RETURN
GO
/****** Object:  StoredProcedure [dbo].[bindmaterialaudio]    Script Date: 06/02/2014 18:08:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[bindmaterialaudio]
	/*
	(
	@parameter1 int = 5,
	@parameter2 datatype OUTPUT
	)
	*/
AS
	select * from audiotbl
	RETURN
GO
/****** Object:  StoredProcedure [dbo].[bind_sub_category]    Script Date: 06/02/2014 18:08:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[bind_sub_category]
	
	(
	@cat_id int
	)
	
AS
	SELECT        sub_category.*, category.*
	FROM            sub_category INNER JOIN
	                         category ON sub_category.cat_id = category.cat_id
	RETURN
GO
/****** Object:  StoredProcedure [dbo].[bind_songs]    Script Date: 06/02/2014 18:08:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[bind_songs]
	
	(
	@sub_cat_id int
	)
	
AS
	SELECT        songs.*, sub_category.*
	FROM            songs INNER JOIN
	                         sub_category ON songs.sub_cat_id = sub_category.sub_cat_id
	RETURN
GO
/****** Object:  StoredProcedure [dbo].[categoriessong]    Script Date: 06/02/2014 18:08:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[categoriessong]

	(
	@sub_cat_id int
)
AS
	select * from video_tbl where sub_cat_id=@sub_cat_id
	RETURN
GO
/****** Object:  StoredProcedure [dbo].[delete_songs]    Script Date: 06/02/2014 18:08:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[delete_songs]
	
	(
	@song_id int
	
	)
	
AS
	Delete from songs where song_id=@song_id
	RETURN
GO
/****** Object:  StoredProcedure [dbo].[delete_country]    Script Date: 06/02/2014 18:08:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[delete_country]
	
	(
	
	@country_id int
	)
	
AS
	Delete from country where country_id=@country_id
	RETURN
GO
/****** Object:  StoredProcedure [dbo].[delete_city]    Script Date: 06/02/2014 18:08:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[delete_city]
	
	(
	@city_id int
	)
	
AS
	Delete from city where city_id=@city_id
	RETURN
GO
/****** Object:  StoredProcedure [dbo].[delete_category]    Script Date: 06/02/2014 18:08:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[delete_category]
	
	(
	@cat_id int

	)
	
AS
	Delete from category where cat_id=@cat_id
	RETURN
GO
/****** Object:  StoredProcedure [dbo].[delete_aid]    Script Date: 06/02/2014 18:08:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--SET IDENTITY_INSERT [dbo].[video_tbl] ON
--INSERT [dbo].[video_tbl] ([vid_id], [vid_title], [sub_cat_id], [vid_extension], [vid_image], [vid_like_dislike], [vid_size], [vid_path]) VALUES (17, N'uyjkhk', 2, NULL, N'~/admin/vidimage/Video0034.mp4', NULL, NULL, N'~/admin/vidimage/Video0034.mp4')
--INSERT [dbo].[video_tbl] ([vid_id], [vid_title], [sub_cat_id], [vid_extension], [vid_image], [vid_like_dislike], [vid_size], [vid_path]) VALUES (18, N'uyjkhk', 2, NULL, N'~/admin/vidimage/Video0034.mp4', NULL, NULL, N'~/admin/vidimage/Video0034.mp4')
--INSERT [dbo].[video_tbl] ([vid_id], [vid_title], [sub_cat_id], [vid_extension], [vid_image], [vid_like_dislike], [vid_size], [vid_path]) VALUES (26, N'gnff', 2, NULL, N'~/admin/vidimage/IMG-20140326-WA0001.jpg', NULL, NULL, N'~/admin/vidimage/Video0035.mp4')
--SET IDENTITY_INSERT [dbo].[video_tbl] OFF
--go
CREATE PROCEDURE [dbo].[delete_aid]
	(
	@aid_id int
	)

AS
	/* SET NOCOUNT ON */
	delete from audiotbl where @aid_id=aid_id
	RETURN
GO
/****** Object:  StoredProcedure [dbo].[displayvid]    Script Date: 06/02/2014 18:08:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[displayvid]

	/*
	(
	@parameter1 int = 5,
	@parameter2 datatype OUTPUT
	)
	*/
AS
	select p.*,s.sub_cat_name from video_tbl p,sub_category s where p.sub_cat_id=s.sub_cat_id 
	RETURN
GO
/****** Object:  StoredProcedure [dbo].[displayaid]    Script Date: 06/02/2014 18:08:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[displayaid]

	/*
	(
	@parameter1 int = 5,
	@parameter2 datatype OUTPUT
	)
	*/
AS
	select p.*,s.sub_cat_name from audiotbl p,sub_category s where p.sub_cat_id=s.sub_cat_id 
	RETURN
GO
/****** Object:  StoredProcedure [dbo].[delete_vid]    Script Date: 06/02/2014 18:08:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--SET IDENTITY_INSERT [dbo].[video_tbl] ON
--INSERT [dbo].[video_tbl] ([vid_id], [vid_title], [sub_cat_id], [vid_extension], [vid_image], [vid_like_dislike], [vid_size], [vid_path]) VALUES (17, N'uyjkhk', 2, NULL, N'~/admin/vidimage/Video0034.mp4', NULL, NULL, N'~/admin/vidimage/Video0034.mp4')
--INSERT [dbo].[video_tbl] ([vid_id], [vid_title], [sub_cat_id], [vid_extension], [vid_image], [vid_like_dislike], [vid_size], [vid_path]) VALUES (18, N'uyjkhk', 2, NULL, N'~/admin/vidimage/Video0034.mp4', NULL, NULL, N'~/admin/vidimage/Video0034.mp4')
--INSERT [dbo].[video_tbl] ([vid_id], [vid_title], [sub_cat_id], [vid_extension], [vid_image], [vid_like_dislike], [vid_size], [vid_path]) VALUES (26, N'gnff', 2, NULL, N'~/admin/vidimage/IMG-20140326-WA0001.jpg', NULL, NULL, N'~/admin/vidimage/Video0035.mp4')
--SET IDENTITY_INSERT [dbo].[video_tbl] OFF
--go
CREATE PROCEDURE [dbo].[delete_vid]
	(
	@vid_id int
	)

AS
	/* SET NOCOUNT ON */
	delete from video_tbl where @vid_id=vid_id
	RETURN
GO
/****** Object:  StoredProcedure [dbo].[delete_sub_category]    Script Date: 06/02/2014 18:08:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[delete_sub_category]
	
	(
	@sub_cat_id int
	)
	
AS
	Delete from sub_category where sub_cat_id=@sub_cat_id
	RETURN
GO
/****** Object:  Table [dbo].[registration]    Script Date: 06/02/2014 18:08:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[registration](
	[reg_id] [int] IDENTITY(1,1) NOT NULL,
	[firstname] [varchar](50) NULL,
	[lastname] [varchar](50) NULL,
	[address] [varchar](50) NULL,
	[gender] [varchar](50) NULL,
	[city_id] [int] NULL,
	[state_id] [int] NULL,
	[country_id] [int] NOT NULL,
	[contactno] [varchar](50) NULL,
	[e_mail] [varchar](50) NULL,
	[username] [varchar](50) NULL,
	[password] [nvarchar](50) NULL,
 CONSTRAINT [PK_registration] PRIMARY KEY CLUSTERED 
(
	[reg_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[registration] ON
INSERT [dbo].[registration] ([reg_id], [firstname], [lastname], [address], [gender], [city_id], [state_id], [country_id], [contactno], [e_mail], [username], [password]) VALUES (1, N'aditi', N'Sharma', NULL, N'female', 1, 1, 1, N'9090909090', N'aditi.sharma89@gmail.com', N'aditi27', N'aditi')
SET IDENTITY_INSERT [dbo].[registration] OFF
/****** Object:  StoredProcedure [dbo].[login]    Script Date: 06/02/2014 18:08:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[login]
	
	(
	@adminname varchar(50),
	@admin_password varchar(50)
	)
	
AS
	Select * from admin_login where adminname=@adminname and admin_password=@admin_password
	RETURN
GO
/****** Object:  StoredProcedure [dbo].[insert_sub_category]    Script Date: 06/02/2014 18:08:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[insert_sub_category]
	
	(
	@cat_id int,
	@sub_cat_name varchar(50)
	)
	
AS
	Insert into sub_category(cat_id,sub_cat_name) values(@cat_id,@sub_cat_name)
	RETURN
GO
/****** Object:  StoredProcedure [dbo].[insert_feedback]    Script Date: 06/02/2014 18:08:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[insert_feedback]
	
	(
	@fullname varchar(50),
	@re_address varchar(50),
	@mobile int,
	@mail varchar(50),
	@comment varchar(50)
	)
	
AS
	Insert  into feedback(fullname,re_address,mobile,mail,comment) values(@fullname,@re_address,@mobile,@mail,@comment)
	RETURN
GO
/****** Object:  StoredProcedure [dbo].[insert_country]    Script Date: 06/02/2014 18:08:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[insert_country]
	
	(
	@country_name nvarchar(50)
	)
	
AS
	Insert into country(country_name)values(@country_name)
	RETURN
GO
/****** Object:  StoredProcedure [dbo].[insert_city]    Script Date: 06/02/2014 18:08:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[insert_city]
	
	(
	@state_id int,
	@city_name varchar(50)
	)
	
AS
	Insert into city(city_name,state_id)values(@city_name,@state_id)
	RETURN
GO
/****** Object:  StoredProcedure [dbo].[insert_category]    Script Date: 06/02/2014 18:08:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[insert_category]
	
	(
	@category_name varchar(50)
	)
	
AS
	Insert into category(category_name) values(@category_name)
	RETURN
GO
/****** Object:  StoredProcedure [dbo].[getvideobyid]    Script Date: 06/02/2014 18:08:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[getvideobyid]
	(
	@vid_id int
	)
AS
	select * from video_tbl where vid_id=@vid_id
	RETURN
GO
/****** Object:  StoredProcedure [dbo].[getaudiobyid]    Script Date: 06/02/2014 18:08:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[getaudiobyid]
	(
	@aid_id int
	)
AS
	select * from audiotbl where aid_id=@aid_id
	RETURN
GO
/****** Object:  StoredProcedure [dbo].[insert_songs]    Script Date: 06/02/2014 18:08:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[insert_songs]
	
	(
	@sub_cat_id int,
	@song_name varchar(50)
	
	)
	
AS
	Insert into songs(sub_cat_id,song_name) values(@sub_cat_id,@song_name)
	RETURN
GO
/****** Object:  StoredProcedure [dbo].[select_sub_category]    Script Date: 06/02/2014 18:08:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[select_sub_category]
	/*
	(
	@parameter1 int = 5,
	@parameter2 datatype OUTPUT
	)
	*/
AS
	Select * from sub_category;
	RETURN
GO
/****** Object:  Table [dbo].[state]    Script Date: 06/02/2014 18:08:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[state](
	[state_id] [int] IDENTITY(1,1) NOT NULL,
	[state_name] [nvarchar](50) NULL,
	[country_id] [int] NULL,
 CONSTRAINT [PK_state] PRIMARY KEY CLUSTERED 
(
	[state_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[state] ON
INSERT [dbo].[state] ([state_id], [state_name], [country_id]) VALUES (1, N'gujarat', 1)
SET IDENTITY_INSERT [dbo].[state] OFF
/****** Object:  StoredProcedure [dbo].[update_songs]    Script Date: 06/02/2014 18:08:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[update_songs]
	
	(
	@song_id int,
	@sub_cat_id int,
	@song_name varchar(50)
	)
	
AS
	Update songs set sub_cat_id=@sub_cat_id,song_name=@song_name where song_id=@song_id
	RETURN
GO
/****** Object:  StoredProcedure [dbo].[update_country]    Script Date: 06/02/2014 18:08:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[update_country]
	
	(
	@country_id int,
	@country_name nvarchar(50)
	)
	
AS
	UPDATE country set country_name=@country_name where country_id=@country_id
	RETURN
GO
/****** Object:  StoredProcedure [dbo].[update_city]    Script Date: 06/02/2014 18:08:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[update_city]
	
	(
	@city_id int,
	
	@city_name varchar(50)
	)
	
AS
	Update city set city_name=@city_name where city_id=@city_id
	RETURN
GO
/****** Object:  StoredProcedure [dbo].[update_category]    Script Date: 06/02/2014 18:08:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[update_category]
	
	(
	@cat_id int,
	@category_name varchar(50)
	)
	
AS
	Update category set category_name=@category_name where cat_id=@cat_id
	RETURN
GO
/****** Object:  StoredProcedure [dbo].[select_country]    Script Date: 06/02/2014 18:08:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[select_country]
	/*
	(
	@parameter1 int = 5,
	@parameter2 datatype OUTPUT
	)
	*/
AS
	Select * from country;
	
	RETURN
GO
/****** Object:  StoredProcedure [dbo].[select_category]    Script Date: 06/02/2014 18:08:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[select_category]
	/*
	(
	@parameter1 int = 5,
	@parameter2 datatype OUTPUT
	)
	*/
AS
	Select * from category;
	
	RETURN
GO
/****** Object:  StoredProcedure [dbo].[select_songs]    Script Date: 06/02/2014 18:08:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[select_songs]
	/*
	(
	@parameter1 int = 5,
	@parameter2 datatype OUTPUT
	)
	*/
AS
	Select * from songs;
	RETURN
GO
/****** Object:  StoredProcedure [dbo].[update_sub_category]    Script Date: 06/02/2014 18:08:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[update_sub_category]
	
	(
	@sub_cat_id int,
	@cat_id int,
	@sub_cat_name varchar(50)
	)
	
AS
	Update sub_category set cat_id=@cat_id,sub_cat_name=@sub_cat_name where sub_cat_id=@sub_cat_id
	RETURN
GO
/****** Object:  StoredProcedure [dbo].[update_state]    Script Date: 06/02/2014 18:08:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[update_state]
	
	(
	@state_id int,
	@state_name varchar(5)
	)
	
AS
	Update state set state_name=@state_name where state_id=@state_id
	RETURN
GO
/****** Object:  StoredProcedure [dbo].[select_registration]    Script Date: 06/02/2014 18:08:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[select_registration]
	/*
	(
	@parameter1 int = 5,
	@parameter2 datatype OUTPUT
	)
	*/
AS
	Select * from registration;
	
	RETURN
GO
/****** Object:  StoredProcedure [dbo].[select_profile]    Script Date: 06/02/2014 18:08:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[select_profile]
	
	(
	@reg_id int
	)
	
AS
	SELECT        registration .*, country .*, city.*, state.*
	FROM            registration  INNER JOIN
	                         country  ON registration .country_id = country .country_id INNER JOIN
	                         city ON registration .city_id = city.city_id INNER JOIN
	                         state ON country .country_id = state.country_id AND city.state_id = state.state_id where registration .reg_id=@reg_id
	RETURN
GO
/****** Object:  StoredProcedure [dbo].[select_state]    Script Date: 06/02/2014 18:08:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[select_state]
	/*
	(
	@parameter1 int = 5,
	@parameter2 datatype OUTPUT
	)
	*/
AS
	SELECT        state.*, country.*
	FROM            state INNER JOIN
	                         country ON state.country_id = country.country_id	
	RETURN
GO
/****** Object:  StoredProcedure [dbo].[select_city]    Script Date: 06/02/2014 18:08:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[select_city]
	/*
	(
	@parameter1 int = 5,
	@parameter2 datatype OUTPUT
	)
	*/
AS
	SELECT        city.*, state.*
  FROM            city INNER JOIN
                           state ON city.state_id = state.state_id 
	
	RETURN
GO
/****** Object:  StoredProcedure [dbo].[insert_register]    Script Date: 06/02/2014 18:08:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[insert_register]
(

	@username nvarchar(50),
	@password nvarchar(50),
	@firstname nvarchar(50),
	@lastname nvarchar(50),
	
	@gender varchar(6),
	@contactno bigint,
	@e_mail varchar(50),
	@country_id int,
	@state_id int,
	@city_id int
	)
	/*
	
	@parameter1 int = 5,
	@parameter2 datatype OUTPUT
	)
	*/
AS
INSERT INTO registration (username , password, firstname , lastname,gender, contactno, e_mail, country_id, state_id, city_id )
VALUES(@username,@password,@firstname,@lastname,@gender,@contactno,@e_mail,@country_id,@state_id,@city_id)

	/* SET NOCOUNT ON */
	RETURN
GO
/****** Object:  StoredProcedure [dbo].[insert_state]    Script Date: 06/02/2014 18:08:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[insert_state]
	
	(
	@country_id int,
	@state_name varchar(50)
	)
	
AS
	insert into state(country_id,state_name) values(@country_id,@state_name)
	RETURN
GO
/****** Object:  StoredProcedure [dbo].[delete_state]    Script Date: 06/02/2014 18:08:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[delete_state]
	
	(
	@state_id int
	)
	
AS
	Delete from state where state_id=@state_id
	RETURN
GO
/****** Object:  StoredProcedure [dbo].[client_login]    Script Date: 06/02/2014 18:08:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[client_login]
	
	(
	@username varchar(50),
	@password varchar(50)
	)
	
AS
	Select * from registration where username=@username and password=@password
	RETURN
GO
/****** Object:  StoredProcedure [dbo].[c_change_pwd]    Script Date: 06/02/2014 18:08:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[c_change_pwd]
	(
	@username nvarchar(50),
@password nvarchar(50),
	@opass nvarchar(50)
	
	)
AS
	update registration  set password=@password where username =@username and password=@opass
	
	
	
		RETURN
GO
/****** Object:  StoredProcedure [dbo].[bind_city]    Script Date: 06/02/2014 18:08:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[bind_city]
	
	(
	@state_id int
	)
	
AS
SELECT        city.*, state.*
  FROM            city INNER JOIN
                           state ON city.state_id = state.state_id where state.state_id=@state_id 
	
	RETURN
GO
/****** Object:  StoredProcedure [dbo].[bind_state]    Script Date: 06/02/2014 18:08:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[bind_state]
	
	(
	@country_id int
	)
	
AS
	SELECT        state.*, country.*
	FROM            state INNER JOIN
	                         country ON state.country_id = country.country_id where country.country_id=@country_id
	RETURN
GO
/****** Object:  ForeignKey [FK_country_country]    Script Date: 06/02/2014 18:08:06 ******/
ALTER TABLE [dbo].[country]  WITH CHECK ADD  CONSTRAINT [FK_country_country] FOREIGN KEY([country_id])
REFERENCES [dbo].[country] ([country_id])
GO
ALTER TABLE [dbo].[country] CHECK CONSTRAINT [FK_country_country]
GO
/****** Object:  ForeignKey [FK_registration_registration]    Script Date: 06/02/2014 18:08:06 ******/
ALTER TABLE [dbo].[registration]  WITH CHECK ADD  CONSTRAINT [FK_registration_registration] FOREIGN KEY([country_id])
REFERENCES [dbo].[country] ([country_id])
GO
ALTER TABLE [dbo].[registration] CHECK CONSTRAINT [FK_registration_registration]
GO
/****** Object:  ForeignKey [FK_registration_registration1]    Script Date: 06/02/2014 18:08:06 ******/
ALTER TABLE [dbo].[registration]  WITH CHECK ADD  CONSTRAINT [FK_registration_registration1] FOREIGN KEY([reg_id])
REFERENCES [dbo].[registration] ([reg_id])
GO
ALTER TABLE [dbo].[registration] CHECK CONSTRAINT [FK_registration_registration1]
GO
/****** Object:  ForeignKey [FK_state_country]    Script Date: 06/02/2014 18:08:07 ******/
ALTER TABLE [dbo].[state]  WITH CHECK ADD  CONSTRAINT [FK_state_country] FOREIGN KEY([country_id])
REFERENCES [dbo].[country] ([country_id])
GO
ALTER TABLE [dbo].[state] CHECK CONSTRAINT [FK_state_country]
GO
