USE [master]
GO
/****** Object:  Database [C:\USERS\TEJAL\DESKTOP\MUSIC_MANIA_11_10_2012\MM_SOLUTION\MM_SITE\APP_DATA\MM_DB.MDF]    Script Date: 03/18/2014 05:16:34 ******/
CREATE DATABASE [C:\USERS\TEJAL\DESKTOP\MUSIC_MANIA_11_10_2012\MM_SOLUTION\MM_SITE\APP_DATA\MM_DB.MDF] ON  PRIMARY 
( NAME = N'mm_db', FILENAME = N'C:\Program Files (x86)\Microsoft SQL Server\MSSQL10_50.TIYA\MSSQL\DATA\mm_db.mdf' , SIZE = 2432KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'mm_db_log', FILENAME = N'C:\Program Files (x86)\Microsoft SQL Server\MSSQL10_50.TIYA\MSSQL\DATA\mm_db_log.ldf' , SIZE = 768KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [C:\USERS\TEJAL\DESKTOP\MUSIC_MANIA_11_10_2012\MM_SOLUTION\MM_SITE\APP_DATA\MM_DB.MDF] SET COMPATIBILITY_LEVEL = 90
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [C:\USERS\TEJAL\DESKTOP\MUSIC_MANIA_11_10_2012\MM_SOLUTION\MM_SITE\APP_DATA\MM_DB.MDF].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [C:\USERS\TEJAL\DESKTOP\MUSIC_MANIA_11_10_2012\MM_SOLUTION\MM_SITE\APP_DATA\MM_DB.MDF] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [C:\USERS\TEJAL\DESKTOP\MUSIC_MANIA_11_10_2012\MM_SOLUTION\MM_SITE\APP_DATA\MM_DB.MDF] SET ANSI_NULLS OFF
GO
ALTER DATABASE [C:\USERS\TEJAL\DESKTOP\MUSIC_MANIA_11_10_2012\MM_SOLUTION\MM_SITE\APP_DATA\MM_DB.MDF] SET ANSI_PADDING OFF
GO
ALTER DATABASE [C:\USERS\TEJAL\DESKTOP\MUSIC_MANIA_11_10_2012\MM_SOLUTION\MM_SITE\APP_DATA\MM_DB.MDF] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [C:\USERS\TEJAL\DESKTOP\MUSIC_MANIA_11_10_2012\MM_SOLUTION\MM_SITE\APP_DATA\MM_DB.MDF] SET ARITHABORT OFF
GO
ALTER DATABASE [C:\USERS\TEJAL\DESKTOP\MUSIC_MANIA_11_10_2012\MM_SOLUTION\MM_SITE\APP_DATA\MM_DB.MDF] SET AUTO_CLOSE ON
GO
ALTER DATABASE [C:\USERS\TEJAL\DESKTOP\MUSIC_MANIA_11_10_2012\MM_SOLUTION\MM_SITE\APP_DATA\MM_DB.MDF] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [C:\USERS\TEJAL\DESKTOP\MUSIC_MANIA_11_10_2012\MM_SOLUTION\MM_SITE\APP_DATA\MM_DB.MDF] SET AUTO_SHRINK ON
GO
ALTER DATABASE [C:\USERS\TEJAL\DESKTOP\MUSIC_MANIA_11_10_2012\MM_SOLUTION\MM_SITE\APP_DATA\MM_DB.MDF] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [C:\USERS\TEJAL\DESKTOP\MUSIC_MANIA_11_10_2012\MM_SOLUTION\MM_SITE\APP_DATA\MM_DB.MDF] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [C:\USERS\TEJAL\DESKTOP\MUSIC_MANIA_11_10_2012\MM_SOLUTION\MM_SITE\APP_DATA\MM_DB.MDF] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [C:\USERS\TEJAL\DESKTOP\MUSIC_MANIA_11_10_2012\MM_SOLUTION\MM_SITE\APP_DATA\MM_DB.MDF] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [C:\USERS\TEJAL\DESKTOP\MUSIC_MANIA_11_10_2012\MM_SOLUTION\MM_SITE\APP_DATA\MM_DB.MDF] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [C:\USERS\TEJAL\DESKTOP\MUSIC_MANIA_11_10_2012\MM_SOLUTION\MM_SITE\APP_DATA\MM_DB.MDF] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [C:\USERS\TEJAL\DESKTOP\MUSIC_MANIA_11_10_2012\MM_SOLUTION\MM_SITE\APP_DATA\MM_DB.MDF] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [C:\USERS\TEJAL\DESKTOP\MUSIC_MANIA_11_10_2012\MM_SOLUTION\MM_SITE\APP_DATA\MM_DB.MDF] SET  DISABLE_BROKER
GO
ALTER DATABASE [C:\USERS\TEJAL\DESKTOP\MUSIC_MANIA_11_10_2012\MM_SOLUTION\MM_SITE\APP_DATA\MM_DB.MDF] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [C:\USERS\TEJAL\DESKTOP\MUSIC_MANIA_11_10_2012\MM_SOLUTION\MM_SITE\APP_DATA\MM_DB.MDF] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [C:\USERS\TEJAL\DESKTOP\MUSIC_MANIA_11_10_2012\MM_SOLUTION\MM_SITE\APP_DATA\MM_DB.MDF] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [C:\USERS\TEJAL\DESKTOP\MUSIC_MANIA_11_10_2012\MM_SOLUTION\MM_SITE\APP_DATA\MM_DB.MDF] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [C:\USERS\TEJAL\DESKTOP\MUSIC_MANIA_11_10_2012\MM_SOLUTION\MM_SITE\APP_DATA\MM_DB.MDF] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [C:\USERS\TEJAL\DESKTOP\MUSIC_MANIA_11_10_2012\MM_SOLUTION\MM_SITE\APP_DATA\MM_DB.MDF] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [C:\USERS\TEJAL\DESKTOP\MUSIC_MANIA_11_10_2012\MM_SOLUTION\MM_SITE\APP_DATA\MM_DB.MDF] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [C:\USERS\TEJAL\DESKTOP\MUSIC_MANIA_11_10_2012\MM_SOLUTION\MM_SITE\APP_DATA\MM_DB.MDF] SET  READ_WRITE
GO
ALTER DATABASE [C:\USERS\TEJAL\DESKTOP\MUSIC_MANIA_11_10_2012\MM_SOLUTION\MM_SITE\APP_DATA\MM_DB.MDF] SET RECOVERY SIMPLE
GO
ALTER DATABASE [C:\USERS\TEJAL\DESKTOP\MUSIC_MANIA_11_10_2012\MM_SOLUTION\MM_SITE\APP_DATA\MM_DB.MDF] SET  MULTI_USER
GO
ALTER DATABASE [C:\USERS\TEJAL\DESKTOP\MUSIC_MANIA_11_10_2012\MM_SOLUTION\MM_SITE\APP_DATA\MM_DB.MDF] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [C:\USERS\TEJAL\DESKTOP\MUSIC_MANIA_11_10_2012\MM_SOLUTION\MM_SITE\APP_DATA\MM_DB.MDF] SET DB_CHAINING OFF
GO
USE [C:\USERS\TEJAL\DESKTOP\MUSIC_MANIA_11_10_2012\MM_SOLUTION\MM_SITE\APP_DATA\MM_DB.MDF]
GO
/****** Object:  Table [dbo].[contry_master]    Script Date: 03/18/2014 05:16:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[contry_master](
	[country_id] [int] IDENTITY(1,1) NOT NULL,
	[country_name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_contry_master] PRIMARY KEY CLUSTERED 
(
	[country_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[contry_master] ON
INSERT [dbo].[contry_master] ([country_id], [country_name]) VALUES (17, N'India')
INSERT [dbo].[contry_master] ([country_id], [country_name]) VALUES (18, N'Australia')
INSERT [dbo].[contry_master] ([country_id], [country_name]) VALUES (19, N'Usa')
INSERT [dbo].[contry_master] ([country_id], [country_name]) VALUES (20, N'Japan')
SET IDENTITY_INSERT [dbo].[contry_master] OFF
/****** Object:  Table [dbo].[catagory]    Script Date: 03/18/2014 05:16:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[catagory](
	[catagory_id] [int] IDENTITY(1,1) NOT NULL,
	[catagory_nm] [varchar](30) NOT NULL,
 CONSTRAINT [PK_catagory_1] PRIMARY KEY CLUSTERED 
(
	[catagory_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[catagory] ON
INSERT [dbo].[catagory] ([catagory_id], [catagory_nm]) VALUES (1, N'ringtone')
INSERT [dbo].[catagory] ([catagory_id], [catagory_nm]) VALUES (9, N'audio')
INSERT [dbo].[catagory] ([catagory_id], [catagory_nm]) VALUES (23, N'Video')
SET IDENTITY_INSERT [dbo].[catagory] OFF
/****** Object:  Table [dbo].[admin]    Script Date: 03/18/2014 05:16:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[admin](
	[admin_id] [int] IDENTITY(1,1) NOT NULL,
	[admin_nm] [varchar](30) NOT NULL,
	[password] [varchar](12) NOT NULL,
	[sec_que] [varchar](50) NOT NULL,
	[sec_ans] [varchar](50) NOT NULL,
	[flag] [tinyint] NOT NULL,
	[create_date] [datetime] NOT NULL,
 CONSTRAINT [PK_admin] PRIMARY KEY CLUSTERED 
(
	[admin_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[admin] ON
INSERT [dbo].[admin] ([admin_id], [admin_nm], [password], [sec_que], [sec_ans], [flag], [create_date]) VALUES (33, N'r', N'r', N'favourite food?', N'r', 0, CAST(0x0000A0D70083A884 AS DateTime))
INSERT [dbo].[admin] ([admin_id], [admin_nm], [password], [sec_que], [sec_ans], [flag], [create_date]) VALUES (34, N't', N't', N'favourite teacher', N't', 0, CAST(0x0000A0D70111079B AS DateTime))
SET IDENTITY_INSERT [dbo].[admin] OFF
/****** Object:  StoredProcedure [dbo].[delete_contact]    Script Date: 03/18/2014 05:16:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[delete_contact]
	
	@contact_id int
AS
	
	DELETE FROM contact_info where contact_id=@contact_id
	RETURN
GO
/****** Object:  StoredProcedure [dbo].[delete_cms]    Script Date: 03/18/2014 05:16:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[delete_cms]

	@cms_id int
AS
	
	DELETE FROM cms where cms_id=@cms_id
	
	RETURN
GO
/****** Object:  Table [dbo].[feedback]    Script Date: 03/18/2014 05:16:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[feedback](
	[feedback_id] [int] IDENTITY(1,1) NOT NULL,
	[fullname] [nvarchar](50) NOT NULL,
	[re_address] [nvarchar](50) NOT NULL,
	[rate] [nvarchar](50) NOT NULL,
	[mobile_no] [nvarchar](50) NOT NULL,
	[mail] [nvarchar](50) NOT NULL,
	[comment] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_feedback] PRIMARY KEY CLUSTERED 
(
	[feedback_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[feedback] ON
INSERT [dbo].[feedback] ([feedback_id], [fullname], [re_address], [rate], [mobile_no], [mail], [comment]) VALUES (2, N'reena', N'9979562995', N'reenabtani@rocketmail.com', N'good', N'0', N'Jul 26 2012  9:23PM')
INSERT [dbo].[feedback] ([feedback_id], [fullname], [re_address], [rate], [mobile_no], [mail], [comment]) VALUES (5, N'kaushik', N'9979562995', N'kaushik@gmail.com', N'good', N'0', N'Aug 14 2012  7:38AM')
INSERT [dbo].[feedback] ([feedback_id], [fullname], [re_address], [rate], [mobile_no], [mail], [comment]) VALUES (6, N'tiya', N'upl', N'Satisfactory', N'9033709340', N't@gmail.xom', N'very good')
SET IDENTITY_INSERT [dbo].[feedback] OFF
/****** Object:  StoredProcedure [dbo].[delete_email]    Script Date: 03/18/2014 05:16:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[delete_email]
	
	@email_id int
AS
	DELETE FROM email where email_id=@email_id 
	RETURN
GO
/****** Object:  StoredProcedure [dbo].[delete_link]    Script Date: 03/18/2014 05:16:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[delete_link]

	@link_id int
AS
DELETE FROM link where link_id =@link_id 
	RETURN
GO
/****** Object:  StoredProcedure [dbo].[delete_latest]    Script Date: 03/18/2014 05:16:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[delete_latest]
	
	@latest_id int
AS

		DELETE FROM latest_release where latest_id=@latest_id

	RETURN
GO
/****** Object:  StoredProcedure [dbo].[insert_contact]    Script Date: 03/18/2014 05:16:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[insert_contact]

	
	@contact_nm varchar(50),
	@contact_no bigint,
	@email varchar(50)
AS
	INSERT INTO contact_info(contact_nm, contact_no, email)
	VALUES(@contact_nm,@contact_no,@email)
	RETURN
GO
/****** Object:  StoredProcedure [dbo].[insert_cms]    Script Date: 03/18/2014 05:16:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[insert_cms]

	@link_id int,
	@contain1 varchar(150),
	@contain2 varchar(150)
	
	/*
	(
	@parameter1 int = 5,
	@parameter2 datatype OUTPUT
	)
	*/
AS
INSERT INTO cms(link_id, contain1, contain2)
VALUES(@link_id,@contain1,@contain2)
	/* SET NOCOUNT ON */
	RETURN
GO
/****** Object:  StoredProcedure [dbo].[insert_link]    Script Date: 03/18/2014 05:16:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[insert_link]

@link_nm varchar(50),
@page_nm varchar(100)

	
AS

INSERT INTO link (link_nm, page_nm)
VALUES (@link_nm,@page_nm)
	
	RETURN
GO
/****** Object:  StoredProcedure [dbo].[insert_latest]    Script Date: 03/18/2014 05:16:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[insert_latest]
	
	
	
	@movie_nm varchar(50),
	@movie_path varchar(100),
	@movie_img varchar(50)
	
	
AS
	INSERT INTO latest_release(movie_nm, movie_path, movie_img)
	VALUES(@movie_nm,@movie_path,@movie_img)
	
	
	RETURN
GO
/****** Object:  StoredProcedure [dbo].[insert_video]    Script Date: 03/18/2014 05:16:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[insert_video]


	
	@reg_id int,
	@video_path  varchar(100),
	@video_nm varchar(50),
	@video_img varchar(100),
	@video_desc varchar(150),
	@feedback_store int
	/*
	(
	@parameter1 int = 5,
	@parameter2 datatype OUTPUT
	)
	*/
AS
INSERT INTO video_upload(reg_id, video_path, video_nm,video_img, video_desc, feedback_store)
VALUES(@reg_id,@video_path,@video_nm,@video_img,@video_desc,@feedback_store)
	/* SET NOCOUNT ON */
	RETURN
GO
/****** Object:  StoredProcedure [dbo].[delete_video]    Script Date: 03/18/2014 05:16:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[delete_video]

	 @video_id int
AS
	DELETE FROM video_upload where video_id=@video_id
	RETURN
GO
/****** Object:  StoredProcedure [dbo].[update_video]    Script Date: 03/18/2014 05:16:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[update_video]

    @video_id int,
    @reg_id int,
	@video_path  varchar(100),
	@video_nm varchar(50),
	@video_img varchar(100),
	@video_desc varchar(150),
	@feedback_store tinyint
	
AS
UPDATE video_upload
SET 
 reg_id = @reg_id,
 video_path = @video_path,
 video_nm = @video_nm,
 video_img = @video_img,
 video_desc = @video_desc,
 feedback_store = @feedback_store
	
	RETURN
GO
/****** Object:  StoredProcedure [dbo].[update_contact]    Script Date: 03/18/2014 05:16:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[update_contact]

	@contact_id int,
	@contact_nm varchar(50),
	@contact_no bigint,
	@email varchar(50)
AS

UPDATE contact_info
SET contact_nm = @contact_nm, 
contact_no = @contact_no, 
email = @email where contact_id=@contact_id
	RETURN
GO
/****** Object:  StoredProcedure [dbo].[update_cms]    Script Date: 03/18/2014 05:16:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[update_cms]

	@cms_id int,
	@link_id int,
	@contain1 varchar(150),
	@contain2 varchar(150)
	
	
	/*
	(
	@parameter1 int = 5,
	@parameter2 datatype OUTPUT
	)
	*/
AS
UPDATE cms
SET link_id = @link_id, 
contain1 = @contain1, 
contain2 = @contain2 where cms_id=@cms_id
	/* SET NOCOUNT ON */
	RETURN
GO
/****** Object:  StoredProcedure [dbo].[update_email]    Script Date: 03/18/2014 05:16:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[update_email]

	@email_id int,
	@email_address varchar(50)
	
	/*
	(
	@parameter1 int = 5,
	@parameter2 datatype OUTPUT
	)
	*/
AS
	UPDATE email
	SET email_address = @email_address where email_id=@email_id
	/* SET NOCOUNT ON */
	RETURN
GO
/****** Object:  StoredProcedure [dbo].[update_link]    Script Date: 03/18/2014 05:16:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[update_link]

	@link_id int,
	@link_nm varchar(50),
	@page_nm varchar(100)
	/*
	(
	@parameter1 int = 5,
	@parameter2 datatype OUTPUT
	)
	*/
AS

UPDATE link
SET link_nm = @link_nm, 
page_nm = @page_nm where link_id=@link_id
	/* SET NOCOUNT ON */
	RETURN
GO
/****** Object:  StoredProcedure [dbo].[update_latest]    Script Date: 03/18/2014 05:16:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[update_latest]
	
	@latest_id int,
	@movie_nm varchar(50),
	@movie_path varchar(100),
	@movie_img varchar(50)
	
AS
	
	UPDATE  latest_release
	SET      
        movie_nm = @movie_nm,
        movie_path = @movie_path,
        movie_img = @movie_img
WHERE         
 latest_id = @latest_id
	
	RETURN
GO
/****** Object:  StoredProcedure [dbo].[select_contact]    Script Date: 03/18/2014 05:16:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[select_contact]

AS

SELECT * FROM contact_info
	RETURN
GO
/****** Object:  StoredProcedure [dbo].[select_cms]    Script Date: 03/18/2014 05:16:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[select_cms]
	
AS

SELECT  cms.*, link.link_nm FROM cms INNER JOIN link ON cms.link_id = link.link_id

	RETURN
GO
/****** Object:  StoredProcedure [dbo].[select_email]    Script Date: 03/18/2014 05:16:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[select_email]

AS
SELECT * FROM email
	RETURN
GO
/****** Object:  StoredProcedure [dbo].[select_link]    Script Date: 03/18/2014 05:16:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[select_link]
	
AS
SELECT * FROM link
	RETURN
GO
/****** Object:  StoredProcedure [dbo].[select_latest]    Script Date: 03/18/2014 05:16:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[select_latest]
	/*
	(
	@parameter1 int = 5,
	@parameter2 datatype OUTPUT
	)
	*/
AS
	SELECT latest_release.*	FROM    latest_release
	
	RETURN
GO
/****** Object:  StoredProcedure [dbo].[insert_email]    Script Date: 03/18/2014 05:16:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[insert_email]


	@email_address varchar(50)
	
	/*
	(
	@parameter1 int = 5,
	@parameter2 datatype OUTPUT
	)
	*/
AS
INSERT INTO email(email_address)
VALUES(@email_address)
	
	/* SET NOCOUNT ON */
	RETURN
GO
/****** Object:  StoredProcedure [dbo].[update_moresong]    Script Date: 03/18/2014 05:16:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[update_moresong]

	@require_id int,
	@reg_id int,
	@email_id varchar(50),
	@address varchar(150),
	@song_type varchar(20),
	@artist_nm varchar(30),
	@msgbody varchar(150)
	
	/*
	(
	@parameter1 int = 5,
	@parameter2 datatype OUTPUT
	)
	*/
AS
UPDATE required_song
SET reg_id = @reg_id, 
email_id = @email_id, 
address = @address,
song_type = @song_type, 
artist_nm = @artist_nm, 
msgbody = @msgbody where require_id=@require_id

	/* SET NOCOUNT ON */
	RETURN
GO
/****** Object:  StoredProcedure [dbo].[insert_moresong]    Script Date: 03/18/2014 05:16:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[insert_moresong]

	@reg_id int,
	@email_id varchar(50),
	@address varchar(150),
	@song_type varchar(20),
	@artist_nm varchar(30),
	@msgbody varchar(150)
	
	
	
	/*
	(
	@parameter1 int = 5,
	@parameter2 datatype OUTPUT
	)
	*/
AS
INSERT INTO required_song(reg_id, email_id, address, song_type, artist_nm, msgbody)
VALUES(@reg_id,@email_id,@address,@song_type,@artist_nm,@msgbody)
	/* SET NOCOUNT ON */
	RETURN
GO
/****** Object:  StoredProcedure [dbo].[delete_moresong]    Script Date: 03/18/2014 05:16:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[delete_moresong]
	@require_id int
AS
	DELETE FROM required_song  where require_id=@require_id
	RETURN
GO
/****** Object:  Table [dbo].[register]    Script Date: 03/18/2014 05:16:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[register](
	[reg_id] [int] IDENTITY(1,1) NOT NULL,
	[user_name] [nvarchar](50) NOT NULL,
	[password] [nvarchar](50) NOT NULL,
	[first_name] [nvarchar](50) NOT NULL,
	[last_name] [nvarchar](50) NOT NULL,
	[gender] [nvarchar](50) NULL,
	[contact_no] [nvarchar](50) NOT NULL,
	[email_id] [nvarchar](50) NOT NULL,
	[country_id] [int] NOT NULL,
	[state_id] [int] NOT NULL,
	[city_id] [int] NOT NULL,
 CONSTRAINT [PK_register] PRIMARY KEY CLUSTERED 
(
	[reg_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[register] ON
INSERT [dbo].[register] ([reg_id], [user_name], [password], [first_name], [last_name], [gender], [contact_no], [email_id], [country_id], [state_id], [city_id]) VALUES (4, N'reena', N'reena', N'reena', N'patel', N'Female', N'9979562995', N'reena@gmail.com', 2, 2, 2)
INSERT [dbo].[register] ([reg_id], [user_name], [password], [first_name], [last_name], [gender], [contact_no], [email_id], [country_id], [state_id], [city_id]) VALUES (72, N'u', N'i', N'i', N'i', N'Female', N'656', N'bnm', 2, 4, 6)
INSERT [dbo].[register] ([reg_id], [user_name], [password], [first_name], [last_name], [gender], [contact_no], [email_id], [country_id], [state_id], [city_id]) VALUES (73, N't', N't', N't', N't', N'Female', N'7686', N'hgj', 1, 2, 6)
INSERT [dbo].[register] ([reg_id], [user_name], [password], [first_name], [last_name], [gender], [contact_no], [email_id], [country_id], [state_id], [city_id]) VALUES (74, N're', N're', N'reena', N'patel', N'Female', N'9979568844', N'reena@gmail.co.in', 17, 6, 13)
INSERT [dbo].[register] ([reg_id], [user_name], [password], [first_name], [last_name], [gender], [contact_no], [email_id], [country_id], [state_id], [city_id]) VALUES (75, N'kaushik', N'df', N'kaushik', N'patel', N'Female', N'9979562995', N'kaushik@gmail.com', 18, 12, 18)
INSERT [dbo].[register] ([reg_id], [user_name], [password], [first_name], [last_name], [gender], [contact_no], [email_id], [country_id], [state_id], [city_id]) VALUES (76, N'geet', N'geeta', N'geet', N'geet', N'Female', N'972566995', N'geetakhunt101@gmail.com', 17, 6, 13)
INSERT [dbo].[register] ([reg_id], [user_name], [password], [first_name], [last_name], [gender], [contact_no], [email_id], [country_id], [state_id], [city_id]) VALUES (77, N'r1', N'r', N'r1', N'r1', N'Male', N'9978988779', N'reena@gmail.co', 18, 12, 19)
INSERT [dbo].[register] ([reg_id], [user_name], [password], [first_name], [last_name], [gender], [contact_no], [email_id], [country_id], [state_id], [city_id]) VALUES (78, N'w', N'i', N'w', N'w', N'Male', N'35454545', N'w', 17, 6, 12)
INSERT [dbo].[register] ([reg_id], [user_name], [password], [first_name], [last_name], [gender], [contact_no], [email_id], [country_id], [state_id], [city_id]) VALUES (79, N'h', N'h', N'h', N'h', N'Male', N'532323', N'nmnm', 17, 6, 13)
INSERT [dbo].[register] ([reg_id], [user_name], [password], [first_name], [last_name], [gender], [contact_no], [email_id], [country_id], [state_id], [city_id]) VALUES (80, N'tejal', N'k', N'12345', N'k', N'Male', N'4563523', N'k', 17, 6, 13)
INSERT [dbo].[register] ([reg_id], [user_name], [password], [first_name], [last_name], [gender], [contact_no], [email_id], [country_id], [state_id], [city_id]) VALUES (81, N'a', N'1234', N'a', N'a', N'female', N'9087908790', N'tiyaparmar111@gmail.com', 18, 18, 18)
SET IDENTITY_INSERT [dbo].[register] OFF
/****** Object:  Table [dbo].[mp3_upload]    Script Date: 03/18/2014 05:16:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[mp3_upload](
	[mp3_upload_id] [int] IDENTITY(1,1) NOT NULL,
	[mp3_path] [varchar](100) NOT NULL,
	[mp3upload_nm] [varchar](50) NOT NULL,
	[mp3_desc] [varchar](50) NOT NULL,
	[feedback_store] [int] NULL,
	[flag] [int] NOT NULL,
	[create_date] [datetime] NOT NULL,
 CONSTRAINT [PK_mp3_upload] PRIMARY KEY CLUSTERED 
(
	[mp3_upload_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[mp3_upload] ON
INSERT [dbo].[mp3_upload] ([mp3_upload_id], [mp3_path], [mp3upload_nm], [mp3_desc], [feedback_store], [flag], [create_date]) VALUES (56, N'Ek Tha Tiger', N'01_-_ek_tha_tiger_-_mashallah_[dm].mp3', N'ek tha tiger', 3, 0, CAST(0x0000A0DD013C71A5 AS DateTime))
INSERT [dbo].[mp3_upload] ([mp3_upload_id], [mp3_path], [mp3upload_nm], [mp3_desc], [feedback_store], [flag], [create_date]) VALUES (57, N'Agnipath', N'5abhi_mujh_mein_kahin.mp3', N'hi', 3, 0, CAST(0x0000A0DE0075D926 AS DateTime))
SET IDENTITY_INSERT [dbo].[mp3_upload] OFF
/****** Object:  StoredProcedure [dbo].[login]    Script Date: 03/18/2014 05:16:37 ******/
	SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[login]

	@admin_nm varchar(30),
		@password varchar(12)
AS
SELECT admin_nm, password FROM admin where admin_nm=@admin_nm and password=@password

	RETURN
GO
/****** Object:  StoredProcedure [dbo].[select_category]    Script Date: 03/18/2014 05:16:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[select_category]


AS
SELECT * FROM catagory

	RETURN
GO
/****** Object:  StoredProcedure [dbo].[select_admin]    Script Date: 03/18/2014 05:16:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[select_admin]


	
AS

SELECT * FROM   admin

	RETURN
GO
/****** Object:  Table [dbo].[ringtone_upload]    Script Date: 03/18/2014 05:16:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ringtone_upload](
	[ringtone_id] [int] IDENTITY(1,1) NOT NULL,
	[reg_id] [int] NOT NULL,
	[ringtone_nm] [varchar](50) NOT NULL,
	[ringtone_desc] [varchar](150) NOT NULL,
	[feedback_store] [int] NULL,
	[flag] [tinyint] NOT NULL,
	[create_date] [datetime] NOT NULL,
 CONSTRAINT [PK_ringtone_upload] PRIMARY KEY CLUSTERED 
(
	[ringtone_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[ringtone_upload] ON
INSERT [dbo].[ringtone_upload] ([ringtone_id], [reg_id], [ringtone_nm], [ringtone_desc], [feedback_store], [flag], [create_date]) VALUES (16, 4, N'Angry Bird Voice', N'voice', 1, 0, CAST(0x0000A0D90093B711 AS DateTime))
INSERT [dbo].[ringtone_upload] ([ringtone_id], [reg_id], [ringtone_nm], [ringtone_desc], [feedback_store], [flag], [create_date]) VALUES (17, 4, N'Angry Bird Voice', N'voice', 1, 0, CAST(0x0000A0D9009F70E2 AS DateTime))
INSERT [dbo].[ringtone_upload] ([ringtone_id], [reg_id], [ringtone_nm], [ringtone_desc], [feedback_store], [flag], [create_date]) VALUES (18, 4, N'Angry Bird Voice', N'voice', 1, 0, CAST(0x0000A0D900A00752 AS DateTime))
INSERT [dbo].[ringtone_upload] ([ringtone_id], [reg_id], [ringtone_nm], [ringtone_desc], [feedback_store], [flag], [create_date]) VALUES (19, 4, N'Angry Bird Voice', N'hi', 1, 0, CAST(0x0000A0DA0098B5C9 AS DateTime))
INSERT [dbo].[ringtone_upload] ([ringtone_id], [reg_id], [ringtone_nm], [ringtone_desc], [feedback_store], [flag], [create_date]) VALUES (20, 4, N'Angry Bird Voice', N'hi', 1, 0, CAST(0x0000A0DA0098DDC2 AS DateTime))
INSERT [dbo].[ringtone_upload] ([ringtone_id], [reg_id], [ringtone_nm], [ringtone_desc], [feedback_store], [flag], [create_date]) VALUES (21, 4, N'Angry Bird Voice', N'hi', 1, 0, CAST(0x0000A0DA009A98DF AS DateTime))
INSERT [dbo].[ringtone_upload] ([ringtone_id], [reg_id], [ringtone_nm], [ringtone_desc], [feedback_store], [flag], [create_date]) VALUES (22, 4, N'Angry Bird Voice', N'DDDD', 1, 0, CAST(0x0000A0DE006F2D61 AS DateTime))
SET IDENTITY_INSERT [dbo].[ringtone_upload] OFF
/****** Object:  StoredProcedure [dbo].[insert_register]    Script Date: 03/18/2014 05:16:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[insert_register]
(

	@user_name nvarchar(50),
	@password nvarchar(50),
	@first_name nvarchar(50),
	@last_name nvarchar(50),
	
	@gender varchar(6),
	@contact_no bigint,
	@email_id varchar(50),
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
INSERT INTO register(user_name, password, first_name, last_name,gender, contact_no, email_id, country_id, state_id, city_id )
VALUES(@user_name,@password,@first_name,@last_name,@gender,@contact_no,@email_id,@country_id,@state_id,@city_id)

	/* SET NOCOUNT ON */
	RETURN
GO
/****** Object:  StoredProcedure [dbo].[insert_mp3upload]    Script Date: 03/18/2014 05:16:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[insert_mp3upload]


	@reg_id int,
	@mp3_path varchar(100),
	@mp3upload_nm varchar(50),
	@mp3_desc varchar(50)
	
	
	/*
	(
	@parameter1 int = 5,
	@parameter2 datatype OUTPUT
	)
	*/
AS

	INSERT INTO mp3_upload(reg_id, mp3_path, mp3upload_nm,mp3_desc)
	VALUES(@reg_id,@mp3_path,@mp3upload_nm,@mp3_desc)
	/* SET NOCOUNT ON */
	RETURN
GO
/****** Object:  StoredProcedure [dbo].[insert_country]    Script Date: 03/18/2014 05:16:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[insert_country]

		@country_nm varchar(30)
	/*
	(
	@parameter1 int = 5,
	@parameter2 datatype OUTPUT
	)
	*/
AS
	/* SET NOCOUNT ON */
	
	INSERT INTO contry_master(country_nm)
	VALUES(@country_nm)
	RETURN
GO
/****** Object:  StoredProcedure [dbo].[select_mp3upload]    Script Date: 03/18/2014 05:16:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[select_mp3upload]

AS
SELECT register.user_name, mp3_upload.*  FROM mp3_upload INNER JOIN register ON mp3_upload.reg_id = register.reg_id
	RETURN
GO
/****** Object:  StoredProcedure [dbo].[select_moresong]    Script Date: 03/18/2014 05:16:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[select_moresong]
	
	AS
	
SELECT required_song.*, register.user_name FROM required_song INNER JOIN register ON required_song.reg_id = register.reg_id

	RETURN
GO
/****** Object:  StoredProcedure [dbo].[select_feedback]    Script Date: 03/18/2014 05:16:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[select_feedback]

	
AS
	SELECT * FROM  feedback
	RETURN
GO
/****** Object:  StoredProcedure [dbo].[select_country]    Script Date: 03/18/2014 05:16:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[select_country]
	
AS
	SELECT  * FROM contry_master
	RETURN
GO
/****** Object:  StoredProcedure [dbo].[update_feedback]    Script Date: 03/18/2014 05:16:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[update_feedback]
	 
	 @feedback_id int,
	 @full_name varchar(30),
	@contact_no bigint,
	@email_id varchar(50),
	@description varchar(200)
AS
	
	UPDATE feedback
	SET 
	full_name = @full_name, 
	contact_no = @contact_no, 
	email_id = @email_id, 
	description = @description where feedback_id=@feedback_id
	
	RETURN
GO
/****** Object:  StoredProcedure [dbo].[update_country]    Script Date: 03/18/2014 05:16:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[update_country]

	@country_id int,
	@country_nm varchar(30)
	/*
	(
	@parameter1 int = 5,
	@parameter2 datatype OUTPUT
	)
	*/
AS

	UPDATE contry_master
	SET country_nm = @country_nm where country_id = @country_id
	/* SET NOCOUNT ON */
	RETURN
GO
/****** Object:  StoredProcedure [dbo].[update_register]    Script Date: 03/18/2014 05:16:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[update_register]

	@reg_id int,
	@user_name varchar(30),
	@first_name varchar(30),
	@last_name varchar(30),
	@date_of_birth datetime,
	@gender varchar(6),
	@contact_no bigint,
	@email_id varchar(50),
	@country_id int,
	@state_id int,
	@city_id int,
	@music_size int,
	@ringtone_size int,
	@video_size int,
	@seq_que varchar(50),
	@seq_ans varchar(50),
	@facebook_url varchar(50),
	@twitter_url varchar(50),
	@google_url varchar(50)
	
	
AS

	UPDATE  register
	     SET 
	user_name = @user_name, 
	first_name = @first_name, 
	last_name = @last_name, 
	date_of_birth = @date_of_birth,
	gender=@gender,
	contact_no = @contact_no,
	email_id = @email_id, 
	country_id = @country_id, 
	state_id = @state_id, 
	city_id = @city_id, 
	music_size = @music_size, 
	ringtone_size = @ringtone_size, 
	video_size = @video_size, 
	seq_que = @seq_que, 
	seq_ans = @seq_ans, 
	facebook_url = @facebook_url, 
	twitter_url = @twitter_url, 
	google_url = @google_url
		   where
	reg_id=@reg_id	   
	                            
	RETURN
GO
/****** Object:  StoredProcedure [dbo].[update_password]    Script Date: 03/18/2014 05:16:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[update_password]


@password varchar(12),
@oldpassword varchar(12)
AS
UPDATE  register
SET   password =@password where password=@oldpassword
	RETURN
GO
/****** Object:  StoredProcedure [dbo].[update_mp3upload]    Script Date: 03/18/2014 05:16:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[update_mp3upload]

    @mp3_upload_id int,
	@reg_id int,
	@mp3_path varchar(100),
	@mp3upload_nm varchar(50),
	@mp3_desc varchar(50),
	@feedback_store tinyint
	
	
AS
UPDATE  mp3_upload
SET                   
reg_id = @reg_id,
mp3_path = @mp3_path,
mp3upload_nm = @mp3upload_nm,
mp3_desc = @mp3_desc,
feedback_store = @feedback_store where  mp3_upload_id=@mp3_upload_id
	
	RETURN
GO
/****** Object:  StoredProcedure [dbo].[update_catagory]    Script Date: 03/18/2014 05:16:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[update_catagory]


@catagory_id int,
@catagory_nm varchar(30)
	
AS
UPDATE catagory
SET catagory_nm = @catagory_nm where catagory_id=@catagory_id
	
	RETURN
GO
/****** Object:  StoredProcedure [dbo].[update_admin]    Script Date: 03/18/2014 05:16:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[update_admin]



		@admin_id  int,
		@admin_nm varchar(30),
		@password varchar(12),
		@sec_que varchar(50),
		@sec_ans varchar(50)
	
AS

	UPDATE admin 
	
	SET admin_nm = @admin_nm,
	 password = @password ,
	 sec_que = @sec_que, 
	 sec_ans = @sec_ans
	
	where admin_id=@admin_id 
	
	
	RETURN
GO
/****** Object:  Table [dbo].[state_master]    Script Date: 03/18/2014 05:16:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[state_master](
	[state_id] [int] IDENTITY(1,1) NOT NULL,
	[state_name] [varchar](30) NOT NULL,
	[country_id] [int] NOT NULL,
 CONSTRAINT [PK_state_master] PRIMARY KEY CLUSTERED 
(
	[state_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[state_master] ON
INSERT [dbo].[state_master] ([state_id], [state_name], [country_id]) VALUES (6, N'Gujarat', 17)
INSERT [dbo].[state_master] ([state_id], [state_name], [country_id]) VALUES (7, N'Maharastra', 17)
INSERT [dbo].[state_master] ([state_id], [state_name], [country_id]) VALUES (8, N'Rajsthan', 17)
INSERT [dbo].[state_master] ([state_id], [state_name], [country_id]) VALUES (9, N'Kerala', 17)
INSERT [dbo].[state_master] ([state_id], [state_name], [country_id]) VALUES (10, N'Orissa', 17)
INSERT [dbo].[state_master] ([state_id], [state_name], [country_id]) VALUES (11, N'Jammu & Kashmir', 17)
INSERT [dbo].[state_master] ([state_id], [state_name], [country_id]) VALUES (12, N'Victoria', 18)
INSERT [dbo].[state_master] ([state_id], [state_name], [country_id]) VALUES (14, N'Tasmania', 18)
INSERT [dbo].[state_master] ([state_id], [state_name], [country_id]) VALUES (15, N'Queensland', 18)
INSERT [dbo].[state_master] ([state_id], [state_name], [country_id]) VALUES (16, N'California', 18)
INSERT [dbo].[state_master] ([state_id], [state_name], [country_id]) VALUES (17, N'Kanagawa', 18)
INSERT [dbo].[state_master] ([state_id], [state_name], [country_id]) VALUES (18, N'Hawaii', 19)
INSERT [dbo].[state_master] ([state_id], [state_name], [country_id]) VALUES (19, N'kachh', 17)
INSERT [dbo].[state_master] ([state_id], [state_name], [country_id]) VALUES (20, N'surat', 17)
SET IDENTITY_INSERT [dbo].[state_master] OFF
/****** Object:  StoredProcedure [dbo].[select_video]    Script Date: 03/18/2014 05:16:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[select_video]
	
	
AS

SELECT video_upload.*, register.user_name FROM video_upload INNER JOIN register ON video_upload.reg_id = register.reg_id

	RETURN
GO
/****** Object:  StoredProcedure [dbo].[insert_feedback]    Script Date: 03/18/2014 05:16:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[insert_feedback]

	@fullname nvarchar(50),
	@re_address nvarchar(50),
	@rate nvarchar(50),
	@mobile_no nvarchar(50),
	@mail nvarchar(50),
	@comment nvarchar(50)
	/*
	(
	@parameter1 int = 5,
	@parameter2 datatype OUTPUT
	)
	*/
AS
INSERT INTO feedback(fullname,re_address,rate, mobile_no, mail, comment)
VALUES(@fullname,@re_address,@rate, @mobile_no, @mail,@comment)
	/* SET NOCOUNT ON */
	RETURN
GO
/****** Object:  StoredProcedure [dbo].[insert_catagory]    Script Date: 03/18/2014 05:16:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[insert_catagory]
	@catagory_nm varchar(30)
AS 
 INSERT INTO catagory
 (catagory_nm)
    VALUES(@catagory_nm)

	/* SET NOCOUNT ON */
	RETURN
GO
/****** Object:  StoredProcedure [dbo].[insert_admin]    Script Date: 03/18/2014 05:16:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[insert_admin]

	@admin_nm varchar(30),
	@password varchar(12),
	@sec_que varchar(50),
	@sec_ans varchar(50)
	
	/*
	(
	@parameter1 int = 5,
	@parameter2 datatype OUTPUT
	)
	*/
AS
INSERT INTO admin(admin_nm, password,sec_que,sec_ans)
VALUES(@admin_nm,@password,@sec_que,@sec_ans)
	
	/* SET NOCOUNT ON */
	RETURN
GO
/****** Object:  StoredProcedure [dbo].[delete_register]    Script Date: 03/18/2014 05:16:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[delete_register]

	@reg_id int
AS
	DELETE FROM register where reg_id=@reg_id 
	RETURN
GO
/****** Object:  StoredProcedure [dbo].[delete_mp3]    Script Date: 03/18/2014 05:16:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[delete_mp3]

	 @mp3_upload_id int
	 
AS
	DELETE FROM mp3_upload where mp3_upload_id=@mp3_upload_id
	
	RETURN
GO
/****** Object:  StoredProcedure [dbo].[delete_country]    Script Date: 03/18/2014 05:16:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[delete_country]

	@country_id int
	
AS
	DELETE FROM contry_master where country_id=@country_id
	RETURN
GO
/****** Object:  StoredProcedure [dbo].[delete_feedback]    Script Date: 03/18/2014 05:16:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[delete_feedback]

	@feedback_id int
AS
	DELETE FROM feedback where feedback_id=@feedback_id
	RETURN
GO
/****** Object:  StoredProcedure [dbo].[delete_catagory]    Script Date: 03/18/2014 05:16:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[delete_catagory]


	@catagory_id int

AS
	DELETE FROM catagory where catagory_id=@catagory_id
	RETURN
GO
/****** Object:  StoredProcedure [dbo].[delete_admin]    Script Date: 03/18/2014 05:16:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[delete_admin]


	
		@admin_id  int
		
		
		
AS
	DELETE FROM admin where admin_id=@admin_id
	RETURN
GO
/****** Object:  StoredProcedure [dbo].[c_change_pwd]    Script Date: 03/18/2014 05:16:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[c_change_pwd]
	(
	@user_name nvarchar(50),
@password nvarchar(50),
	@opass nvarchar(50)
	
	)
AS
	update register set password=@password where user_name =@user_name and password=@opass
	
	
	
		RETURN
GO
/****** Object:  StoredProcedure [dbo].[client_login]    Script Date: 03/18/2014 05:16:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[client_login]
	
	(
	@user_name nvarchar(50),
	@password  nvarchar(50)
	)
	
AS
	SELECT * FROM register where user_name=@user_name and password=@password
	RETURN
GO
/****** Object:  Table [dbo].[city_master]    Script Date: 03/18/2014 05:16:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[city_master](
	[city_id] [int] IDENTITY(1,1) NOT NULL,
	[city_name] [nvarchar](50) NOT NULL,
	[state_id] [int] NOT NULL,
 CONSTRAINT [PK_city_master] PRIMARY KEY CLUSTERED 
(
	[city_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[city_master] ON
INSERT [dbo].[city_master] ([city_id], [city_name], [state_id]) VALUES (12, N'Jetpur', 6)
INSERT [dbo].[city_master] ([city_id], [city_name], [state_id]) VALUES (13, N'Rajkot', 6)
INSERT [dbo].[city_master] ([city_id], [city_name], [state_id]) VALUES (14, N'Junagadh', 6)
INSERT [dbo].[city_master] ([city_id], [city_name], [state_id]) VALUES (15, N'Amhadabad', 6)
INSERT [dbo].[city_master] ([city_id], [city_name], [state_id]) VALUES (16, N'Bhuj', 6)
INSERT [dbo].[city_master] ([city_id], [city_name], [state_id]) VALUES (17, N'baroda', 6)
INSERT [dbo].[city_master] ([city_id], [city_name], [state_id]) VALUES (18, N'Bendigo', 12)
INSERT [dbo].[city_master] ([city_id], [city_name], [state_id]) VALUES (19, N'Wodonga', 12)
INSERT [dbo].[city_master] ([city_id], [city_name], [state_id]) VALUES (20, N'Benalla', 12)
INSERT [dbo].[city_master] ([city_id], [city_name], [state_id]) VALUES (23, N'Jetpur', 6)
SET IDENTITY_INSERT [dbo].[city_master] OFF
/****** Object:  StoredProcedure [dbo].[bind_state]    Script Date: 03/18/2014 05:16:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[bind_state]
	
	(
	@country_id int
	)
	
AS SELECT        contry_master.*, state_master.*
  FROM            contry_master INNER JOIN
                           state_master ON contry_master.country_id = state_master.country_id where state_master.country_id=@country_id
	
	RETURN
GO
/****** Object:  StoredProcedure [dbo].[delete_state]    Script Date: 03/18/2014 05:16:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[delete_state]

	@state_id int
AS
	DELETE FROM state_master where state_id=@state_id
	RETURN
GO
/****** Object:  StoredProcedure [dbo].[delete_ringtone]    Script Date: 03/18/2014 05:16:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[delete_ringtone]

	  @ringtone_id int
	  
AS
	
	DELETE FROM ringtone_upload where ringtone_id=@ringtone_id
	RETURN
GO
/****** Object:  StoredProcedure [dbo].[insert_state]    Script Date: 03/18/2014 05:16:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[insert_state]

	@state_name varchar(30),
	@country_id int
	/*
	(
	@parameter1 int =  5,
	@parameter2 datatype OUTPUT
	)
	*/
AS
INSERT INTO state_master(state_name, country_id)
VALUES(@state_name,@country_id)
	
	/* SET NOCOUNT ON */
	RETURN
GO
/****** Object:  StoredProcedure [dbo].[insert_ringtone]    Script Date: 03/18/2014 05:16:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[insert_ringtone]


	
	@ringtone_path varchar(100),
	@ringtone_nm varchar(50),
	@ringtone_desc varchar(150)

	
	/*
	(
	@parameter1 int = 5,
	@parameter2 datatype OUTPUT
	)
	*/
AS
INSERT INTO ringtone_upload( ringtone_path, ringtone_nm,ringtone_desc)
VALUES(@ringtone_path,@ringtone_nm,@ringtone_desc)
	/* SET NOCOUNT ON */
	RETURN
GO
/****** Object:  StoredProcedure [dbo].[select_state]    Script Date: 03/18/2014 05:16:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[select_state]

	
AS

SELECT state_master.*, contry_master.country_nm FROM state_master INNER JOIN contry_master ON state_master.country_id = contry_master.country_id

	RETURN
GO
/****** Object:  StoredProcedure [dbo].[select_ringtone]    Script Date: 03/18/2014 05:16:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[select_ringtone]
	
	
	
AS

SELECT  ringtone_upload.*, register.user_name FROM ringtone_upload INNER JOIN register ON ringtone_upload.reg_id = register.reg_id	

RETURN
GO
/****** Object:  StoredProcedure [dbo].[update_state]    Script Date: 03/18/2014 05:16:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[update_state]

	@state_id int,
    @state_name varchar(30),
	@country_id int
	
AS
	UPDATE  state_master
	SET  
	state_name = @state_name,
	country_id = @country_id where state_id=@state_id
	RETURN
GO
/****** Object:  StoredProcedure [dbo].[update_ringtone]    Script Date: 03/18/2014 05:16:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[update_ringtone]

    @ringtone_id int,
	@reg_id int,
	@ringtone_path varchar(100),
	@ringtone_nm varchar(50),
	@ringtone_desc varchar(150),
	@feedback_store tinyint
	
	
AS
UPDATE ringtone_upload
SET reg_id = @reg_id, 
ringtone_nm = @ringtone_nm,
ringtone_path = @ringtone_path, 
ringtone_desc = @ringtone_desc,
feedback_store = @feedback_store where ringtone_id=@ringtone_id
	
	RETURN
GO
/****** Object:  StoredProcedure [dbo].[update_city]    Script Date: 03/18/2014 05:16:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[update_city]
	@city_id int,
	@city_nm varchar(30),
	@country_id int,
	@state_id int

AS

UPDATE city_master
 SET
  city_nm = @city_nm,
  country_id = @country_id,
  state_id = @state_id
 where city_id=@city_id
	
	RETURN
GO
/****** Object:  StoredProcedure [dbo].[select_register]    Script Date: 03/18/2014 05:16:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[select_register]
	
	
AS

SELECT register.*, contry_master.country_nm, state_master.state_name, city_master.city_nm FROM register INNER JOIN contry_master ON register.country_id = contry_master.country_id INNER JOIN state_master ON register.state_id = state_master.state_id INNER JOIN city_master ON register.city_id = city_master.city_id	
	
	RETURN
GO
/****** Object:  StoredProcedure [dbo].[select_profile]    Script Date: 03/18/2014 05:16:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[select_profile]
	
	(
	@reg_id int
	)
	
AS
	SELECT        register.*, contry_master.*, city_master.*, state_master.*
	FROM            register INNER JOIN
	                         contry_master ON register.country_id = contry_master.country_id INNER JOIN
	                         city_master ON register.city_id = city_master.city_id INNER JOIN
	                         state_master ON contry_master.country_id = state_master.country_id AND city_master.state_id = state_master.state_id where register.reg_id=@reg_id
	RETURN
GO
/****** Object:  StoredProcedure [dbo].[select_city]    Script Date: 03/18/2014 05:16:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[select_city]
	
AS

SELECT  city_master.*, contry_master.country_nm, state_master.state_name FROM city_master INNER JOIN contry_master ON city_master.country_id = contry_master.country_id INNER JOIN state_master ON city_master.state_id = state_master.state_id
	RETURN
GO
/****** Object:  StoredProcedure [dbo].[insert_city]    Script Date: 03/18/2014 05:16:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[insert_city]


	@city_nm varchar(30),
	@country_id int,
	@state_id int
	/*
	(
	@parameter1 int = 5,
	@parameter2 datatype OUTPUT
	)
	*/
AS

INSERT INTO city_master(city_nm, country_id, state_id)
VALUES(@city_nm,@country_id,@state_id)
	/* SET NOCOUNT ON */
	RETURN
GO
/****** Object:  StoredProcedure [dbo].[delete_city]    Script Date: 03/18/2014 05:16:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[delete_city]

		@city_id int
AS
	DELETE FROM city_master where  city_id=@city_id
	RETURN
GO
/****** Object:  StoredProcedure [dbo].[bind_city]    Script Date: 03/18/2014 05:16:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[bind_city]
	
	(
	@state_id int 
	)
	
AS
	select * from city_master where state_id=@state_id
	RETURN
GO
/****** Object:  Default [DF_admin_flag]    Script Date: 03/18/2014 05:16:35 ******/
ALTER TABLE [dbo].[admin] ADD  CONSTRAINT [DF_admin_flag]  DEFAULT ((0)) FOR [flag]
GO
/****** Object:  Default [DF_admin_create_date]    Script Date: 03/18/2014 05:16:35 ******/
ALTER TABLE [dbo].[admin] ADD  CONSTRAINT [DF_admin_create_date]  DEFAULT (getdate()) FOR [create_date]
GO
/****** Object:  Default [DF_feedback_flag]    Script Date: 03/18/2014 05:16:37 ******/
ALTER TABLE [dbo].[feedback] ADD  CONSTRAINT [DF_feedback_flag]  DEFAULT ((0)) FOR [mail]
GO
/****** Object:  Default [DF_feedback_create_date]    Script Date: 03/18/2014 05:16:37 ******/
ALTER TABLE [dbo].[feedback] ADD  CONSTRAINT [DF_feedback_create_date]  DEFAULT (getdate()) FOR [comment]
GO
/****** Object:  Default [DF_mp3_upload_feedback_store]    Script Date: 03/18/2014 05:16:37 ******/
ALTER TABLE [dbo].[mp3_upload] ADD  CONSTRAINT [DF_mp3_upload_feedback_store]  DEFAULT ((0)) FOR [feedback_store]
GO
/****** Object:  Default [DF_mp3_upload_flag]    Script Date: 03/18/2014 05:16:37 ******/
ALTER TABLE [dbo].[mp3_upload] ADD  CONSTRAINT [DF_mp3_upload_flag]  DEFAULT ((0)) FOR [flag]
GO
/****** Object:  Default [DF_mp3_upload_create_date]    Script Date: 03/18/2014 05:16:37 ******/
ALTER TABLE [dbo].[mp3_upload] ADD  CONSTRAINT [DF_mp3_upload_create_date]  DEFAULT (getdate()) FOR [create_date]
GO
/****** Object:  Default [DF_ringtone_upload_flag]    Script Date: 03/18/2014 05:16:37 ******/
ALTER TABLE [dbo].[ringtone_upload] ADD  CONSTRAINT [DF_ringtone_upload_flag]  DEFAULT ((0)) FOR [flag]
GO
/****** Object:  Default [DF_ringtone_upload_create_date]    Script Date: 03/18/2014 05:16:37 ******/
ALTER TABLE [dbo].[ringtone_upload] ADD  CONSTRAINT [DF_ringtone_upload_create_date]  DEFAULT (getdate()) FOR [create_date]
GO
/****** Object:  ForeignKey [FK_ringtone_upload_register]    Script Date: 03/18/2014 05:16:37 ******/
ALTER TABLE [dbo].[ringtone_upload]  WITH CHECK ADD  CONSTRAINT [FK_ringtone_upload_register] FOREIGN KEY([reg_id])
REFERENCES [dbo].[register] ([reg_id])
GO
ALTER TABLE [dbo].[ringtone_upload] CHECK CONSTRAINT [FK_ringtone_upload_register]
GO
/****** Object:  ForeignKey [FK_state_master_contry_master]    Script Date: 03/18/2014 05:16:37 ******/
ALTER TABLE [dbo].[state_master]  WITH CHECK ADD  CONSTRAINT [FK_state_master_contry_master] FOREIGN KEY([country_id])
REFERENCES [dbo].[contry_master] ([country_id])
GO
ALTER TABLE [dbo].[state_master] CHECK CONSTRAINT [FK_state_master_contry_master]
GO
/****** Object:  ForeignKey [FK_city_master_state_master]    Script Date: 03/18/2014 05:16:37 ******/
ALTER TABLE [dbo].[city_master]  WITH CHECK ADD  CONSTRAINT [FK_city_master_state_master] FOREIGN KEY([state_id])
REFERENCES [dbo].[state_master] ([state_id])
GO
ALTER TABLE [dbo].[city_master] CHECK CONSTRAINT [FK_city_master_state_master]
GO
