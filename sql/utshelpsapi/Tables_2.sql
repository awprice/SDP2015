USE [elssa_booking]
GO
/****** Object:  Table [dbo].[campus]    Script Date: 7/08/2015 9:23:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[campus](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[campus] [varchar](25) NULL,
	[creatorID] [int] NULL,
	[created] [datetime] NULL,
	[modifierID] [int] NULL,
	[modified] [datetime] NULL,
	[archiverID] [int] NULL,
	[archived] [datetime] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[emailtemplates]    Script Date: 7/08/2015 9:23:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[emailtemplates](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[subject] [text] NULL,
	[body] [text] NULL,
	[stagingsubject] [text] NULL,
	[stagingbody] [text] NULL,
	[description] [text] NULL,
	[modified] [datetime] NULL,
	[ModifierID] [int] NULL,
	[published] [datetime] NULL,
	[PublisherID] [int] NULL,
	[isactived] [int] NULL,
	[categoryID] [int] NULL,
 CONSTRAINT [PK_emailtemplates] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[emailtemplatesCategory]    Script Date: 7/08/2015 9:23:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[emailtemplatesCategory](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[category] [varchar](25) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[learningissues]    Script Date: 7/08/2015 9:23:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[learningissues](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[issue] [nvarchar](50) NULL,
	[researchonly] [int] NULL,
	[orderitem] [int] NULL,
	[iscurrent] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[lecturers]    Script Date: 7/08/2015 9:23:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[lecturers](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[staffID] [char](10) NULL,
	[first_name] [nvarchar](50) NOT NULL,
	[last_name] [nvarchar](50) NOT NULL,
	[email] [nvarchar](100) NOT NULL,
	[created] [datetime] NOT NULL,
	[creatorId] [int] NOT NULL,
	[modified] [datetime] NULL,
	[modifierId] [int] NULL,
	[archived] [datetime] NULL,
	[archiverID] [int] NULL,
	[inactive] [bit] NULL CONSTRAINT [DF_lecturers_inactive]  DEFAULT ((0)),
 CONSTRAINT [PK_lecturers] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[messages]    Script Date: 7/08/2015 9:23:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[messages](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[path] [varchar](100) NULL,
	[filename] [varchar](50) NULL,
	[modifierID] [int] NULL,
	[modified] [datetime] NULL,
	[description] [varchar](255) NULL,
	[text] [ntext] NULL,
	[cssID] [varchar](50) NULL,
	[isactive] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[programs]    Script Date: 7/08/2015 9:23:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[programs](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](250) NULL,
	[days] [nvarchar](50) NULL,
	[numOfWeeks] [int] NULL,
	[startDate] [date] NULL,
	[endDate] [date] NULL,
	[maximum] [int] NULL,
	[cutoff] [int] NULL,
	[created] [datetime] NULL,
	[creatorId] [int] NULL,
	[modified] [datetime] NULL,
	[modifierId] [int] NULL,
	[archived] [datetime] NULL,
	[archiverId] [int] NULL,
	[reminder_num] [int] NULL,
	[reminder_sent] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[programWorkshops]    Script Date: 7/08/2015 9:23:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[programWorkshops](
	[programId] [int] NULL,
	[workshopId] [int] NULL
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[campus] ON 

INSERT [dbo].[campus] ([id], [campus], [creatorID], [created], [modifierID], [modified], [archiverID], [archived]) VALUES (1, N'CB01.03.08', 1834, CAST(N'2012-05-17 10:27:40.900' AS DateTime), 1834, CAST(N'2012-10-30 10:32:51.667' AS DateTime), NULL, NULL)
INSERT [dbo].[campus] ([id], [campus], [creatorID], [created], [modifierID], [modified], [archiverID], [archived]) VALUES (2, N'KG01.05.19', 1834, CAST(N'2012-05-17 12:15:39.580' AS DateTime), 1337, CAST(N'2012-07-25 14:16:48.447' AS DateTime), NULL, NULL)
INSERT [dbo].[campus] ([id], [campus], [creatorID], [created], [modifierID], [modified], [archiverID], [archived]) VALUES (3, N'TBA', 1337, CAST(N'2012-05-18 12:43:57.373' AS DateTime), 1337, CAST(N'2012-05-18 12:44:14.170' AS DateTime), 1337, CAST(N'2012-07-19 15:14:02.743' AS DateTime))
INSERT [dbo].[campus] ([id], [campus], [creatorID], [created], [modifierID], [modified], [archiverID], [archived]) VALUES (4, N'Skype', 2560, CAST(N'2012-06-13 13:34:38.620' AS DateTime), NULL, NULL, 2560, CAST(N'2012-06-13 13:34:45.323' AS DateTime))
INSERT [dbo].[campus] ([id], [campus], [creatorID], [created], [modifierID], [modified], [archiverID], [archived]) VALUES (5, N'CB02.05.39', 1337, CAST(N'2012-07-19 15:13:47.853' AS DateTime), 1337, CAST(N'2012-07-25 14:16:48.243' AS DateTime), NULL, NULL)
INSERT [dbo].[campus] ([id], [campus], [creatorID], [created], [modifierID], [modified], [archiverID], [archived]) VALUES (6, N'CB02.07.005', 1337, CAST(N'2012-07-19 15:13:57.867' AS DateTime), 1337, CAST(N'2012-07-25 14:16:48.260' AS DateTime), NULL, NULL)
INSERT [dbo].[campus] ([id], [campus], [creatorID], [created], [modifierID], [modified], [archiverID], [archived]) VALUES (7, N'CB02.05.32', 1337, CAST(N'2012-07-19 15:14:12.010' AS DateTime), 1337, CAST(N'2012-07-25 14:16:48.227' AS DateTime), NULL, NULL)
INSERT [dbo].[campus] ([id], [campus], [creatorID], [created], [modifierID], [modified], [archiverID], [archived]) VALUES (8, N'CB06.06.109', 1337, CAST(N'2012-07-19 15:14:25.617' AS DateTime), 1337, CAST(N'2012-07-25 14:16:48.383' AS DateTime), NULL, NULL)
INSERT [dbo].[campus] ([id], [campus], [creatorID], [created], [modifierID], [modified], [archiverID], [archived]) VALUES (9, N'CB10.02.330', 1337, CAST(N'2012-07-19 15:14:34.070' AS DateTime), 1337, CAST(N'2012-07-25 14:16:48.417' AS DateTime), NULL, NULL)
INSERT [dbo].[campus] ([id], [campus], [creatorID], [created], [modifierID], [modified], [archiverID], [archived]) VALUES (10, N'CB02.07.110', 1337, CAST(N'2012-07-19 15:14:51.993' AS DateTime), 1337, CAST(N'2012-07-25 14:16:48.370' AS DateTime), NULL, NULL)
INSERT [dbo].[campus] ([id], [campus], [creatorID], [created], [modifierID], [modified], [archiverID], [archived]) VALUES (11, N'CB02.07.008', 1337, CAST(N'2012-07-19 15:15:04.680' AS DateTime), 1337, CAST(N'2012-07-25 14:16:48.277' AS DateTime), NULL, NULL)
INSERT [dbo].[campus] ([id], [campus], [creatorID], [created], [modifierID], [modified], [archiverID], [archived]) VALUES (12, N'CB10.02.240', 1337, CAST(N'2012-07-19 15:15:18.133' AS DateTime), 1337, CAST(N'2012-07-25 14:16:48.400' AS DateTime), NULL, NULL)
INSERT [dbo].[campus] ([id], [campus], [creatorID], [created], [modifierID], [modified], [archiverID], [archived]) VALUES (13, N'CB02.07.004A', 1337, CAST(N'2012-07-19 15:15:28.883' AS DateTime), 1337, CAST(N'2012-07-25 14:16:48.243' AS DateTime), NULL, NULL)
INSERT [dbo].[campus] ([id], [campus], [creatorID], [created], [modifierID], [modified], [archiverID], [archived]) VALUES (14, N'CB02.04.23', 1337, CAST(N'2012-07-19 15:15:38.197' AS DateTime), 1337, CAST(N'2012-07-25 14:16:48.213' AS DateTime), NULL, NULL)
INSERT [dbo].[campus] ([id], [campus], [creatorID], [created], [modifierID], [modified], [archiverID], [archived]) VALUES (15, N'CB03.04.24', 1337, CAST(N'2012-07-19 15:16:23.913' AS DateTime), 1337, CAST(N'2012-07-25 14:16:48.383' AS DateTime), NULL, NULL)
INSERT [dbo].[campus] ([id], [campus], [creatorID], [created], [modifierID], [modified], [archiverID], [archived]) VALUES (16, N'Library Training room 2', 1337, CAST(N'2012-07-19 15:16:56.663' AS DateTime), 1337, CAST(N'2012-07-25 14:16:48.477' AS DateTime), NULL, NULL)
INSERT [dbo].[campus] ([id], [campus], [creatorID], [created], [modifierID], [modified], [archiverID], [archived]) VALUES (17, N'HELPS 1:1 room', 1337, CAST(N'2012-07-19 15:17:13.553' AS DateTime), 1337, CAST(N'2012-07-25 14:16:48.417' AS DateTime), NULL, NULL)
INSERT [dbo].[campus] ([id], [campus], [creatorID], [created], [modifierID], [modified], [archiverID], [archived]) VALUES (19, N'Yura Mudang Level 8', 1337, CAST(N'2012-07-27 10:19:45.153' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[campus] ([id], [campus], [creatorID], [created], [modifierID], [modified], [archiverID], [archived]) VALUES (20, N'CB10.02.230', 1337, CAST(N'2012-08-07 15:24:47.647' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[campus] ([id], [campus], [creatorID], [created], [modifierID], [modified], [archiverID], [archived]) VALUES (21, N'CB03.05.29', 2186, CAST(N'2013-02-12 10:00:26.177' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[campus] ([id], [campus], [creatorID], [created], [modifierID], [modified], [archiverID], [archived]) VALUES (22, N'CB06.04.45', 2186, CAST(N'2013-03-26 14:31:04.540' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[campus] ([id], [campus], [creatorID], [created], [modifierID], [modified], [archiverID], [archived]) VALUES (23, N'CB10.02.450A', 2186, CAST(N'2013-04-03 14:32:25.650' AS DateTime), 2186, CAST(N'2013-04-03 14:33:07.840' AS DateTime), NULL, NULL)
INSERT [dbo].[campus] ([id], [campus], [creatorID], [created], [modifierID], [modified], [archiverID], [archived]) VALUES (24, N'CB01.05.10B', 1337, CAST(N'2013-05-16 12:01:25.930' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[campus] ([id], [campus], [creatorID], [created], [modifierID], [modified], [archiverID], [archived]) VALUES (25, N'CB06.03.52', 1337, CAST(N'2013-05-16 12:01:43.040' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[campus] ([id], [campus], [creatorID], [created], [modifierID], [modified], [archiverID], [archived]) VALUES (26, N'CB10.05.214', 1337, CAST(N'2013-05-16 12:01:58.067' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[campus] ([id], [campus], [creatorID], [created], [modifierID], [modified], [archiverID], [archived]) VALUES (27, N'CB10.04.460', 1337, CAST(N'2013-05-16 12:02:13.723' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[campus] ([id], [campus], [creatorID], [created], [modifierID], [modified], [archiverID], [archived]) VALUES (28, N'CM05B.03.21', 1337, CAST(N'2013-05-16 12:02:31.923' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[campus] ([id], [campus], [creatorID], [created], [modifierID], [modified], [archiverID], [archived]) VALUES (29, N'CM05D.02.19', 1337, CAST(N'2013-05-16 12:02:54.437' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[campus] ([id], [campus], [creatorID], [created], [modifierID], [modified], [archiverID], [archived]) VALUES (30, N'CB02.05.36', 1337, CAST(N'2013-05-16 12:03:32.447' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[campus] ([id], [campus], [creatorID], [created], [modifierID], [modified], [archiverID], [archived]) VALUES (31, N'CB02.07.004B', 1337, CAST(N'2013-05-16 12:04:21.273' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[campus] ([id], [campus], [creatorID], [created], [modifierID], [modified], [archiverID], [archived]) VALUES (32, N'CB02.06.42', 1337, CAST(N'2013-07-03 11:31:08.110' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[campus] ([id], [campus], [creatorID], [created], [modifierID], [modified], [archiverID], [archived]) VALUES (33, N'CB02.06.41', 1337, CAST(N'2013-07-03 11:31:17.530' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[campus] ([id], [campus], [creatorID], [created], [modifierID], [modified], [archiverID], [archived]) VALUES (34, N'CB06.06.106', 1337, CAST(N'2013-07-04 10:58:59.220' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[campus] ([id], [campus], [creatorID], [created], [modifierID], [modified], [archiverID], [archived]) VALUES (35, N'CB06.06.116', 1337, CAST(N'2013-07-09 15:54:53.807' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[campus] ([id], [campus], [creatorID], [created], [modifierID], [modified], [archiverID], [archived]) VALUES (36, N'CB10.02.320', 1337, CAST(N'2013-07-09 15:55:14.993' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[campus] ([id], [campus], [creatorID], [created], [modifierID], [modified], [archiverID], [archived]) VALUES (37, N'CM05B.03.22', 1337, CAST(N'2013-07-23 15:30:05.597' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[campus] ([id], [campus], [creatorID], [created], [modifierID], [modified], [archiverID], [archived]) VALUES (38, N'CM05C.01.11', 1337, CAST(N'2013-07-23 15:30:14.940' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[campus] ([id], [campus], [creatorID], [created], [modifierID], [modified], [archiverID], [archived]) VALUES (39, N'CM05C.01.15', 1337, CAST(N'2013-07-23 15:30:21.207' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[campus] ([id], [campus], [creatorID], [created], [modifierID], [modified], [archiverID], [archived]) VALUES (40, N'KG02.05.23', 1337, CAST(N'2013-07-23 15:30:44.723' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[campus] ([id], [campus], [creatorID], [created], [modifierID], [modified], [archiverID], [archived]) VALUES (41, N'ANNEX', 2560, CAST(N'2013-07-26 16:29:31.587' AS DateTime), NULL, NULL, 2560, CAST(N'2013-07-26 16:29:52.197' AS DateTime))
INSERT [dbo].[campus] ([id], [campus], [creatorID], [created], [modifierID], [modified], [archiverID], [archived]) VALUES (42, N'CB01.03.14 (Annex)', 2560, CAST(N'2013-07-26 16:30:07.853' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[campus] ([id], [campus], [creatorID], [created], [modifierID], [modified], [archiverID], [archived]) VALUES (43, N'CB10.06.224', 1337, CAST(N'2013-09-12 09:53:28.393' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[campus] ([id], [campus], [creatorID], [created], [modifierID], [modified], [archiverID], [archived]) VALUES (44, N'Hong Kong', 2560, CAST(N'2013-09-20 10:29:38.650' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[campus] ([id], [campus], [creatorID], [created], [modifierID], [modified], [archiverID], [archived]) VALUES (45, N'Library Training room 1', 2186, CAST(N'2014-02-12 15:53:13.380' AS DateTime), 2186, CAST(N'2014-02-12 15:54:02.630' AS DateTime), NULL, NULL)
INSERT [dbo].[campus] ([id], [campus], [creatorID], [created], [modifierID], [modified], [archiverID], [archived]) VALUES (46, N'CM05C.02.42', 2186, CAST(N'2014-02-19 14:19:23.657' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[campus] ([id], [campus], [creatorID], [created], [modifierID], [modified], [archiverID], [archived]) VALUES (47, N'CM05C.02.40', 2186, CAST(N'2014-02-19 14:19:45.420' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[campus] ([id], [campus], [creatorID], [created], [modifierID], [modified], [archiverID], [archived]) VALUES (48, N'CB02.05.33', 2186, CAST(N'2014-02-19 14:46:36.557' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[campus] ([id], [campus], [creatorID], [created], [modifierID], [modified], [archiverID], [archived]) VALUES (49, N'CB02.06.44', 2186, CAST(N'2014-02-19 15:04:39.277' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[campus] ([id], [campus], [creatorID], [created], [modifierID], [modified], [archiverID], [archived]) VALUES (50, N'CB02.05.35', 2186, CAST(N'2014-02-19 15:05:01.323' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[campus] ([id], [campus], [creatorID], [created], [modifierID], [modified], [archiverID], [archived]) VALUES (51, N'CB02.05.37', 2186, CAST(N'2014-02-19 15:05:41.883' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[campus] ([id], [campus], [creatorID], [created], [modifierID], [modified], [archiverID], [archived]) VALUES (52, N'CB10.04.470', 2186, CAST(N'2014-02-19 16:09:45.683' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[campus] ([id], [campus], [creatorID], [created], [modifierID], [modified], [archiverID], [archived]) VALUES (53, N'CM05D.01.12', 2186, CAST(N'2014-02-19 16:10:11.027' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[campus] ([id], [campus], [creatorID], [created], [modifierID], [modified], [archiverID], [archived]) VALUES (54, N'CM05D.01.28', 2186, CAST(N'2014-02-19 16:10:27.997' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[campus] ([id], [campus], [creatorID], [created], [modifierID], [modified], [archiverID], [archived]) VALUES (55, N'CC05.GD.02', 1614, CAST(N'2014-03-03 13:09:54.607' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[campus] ([id], [campus], [creatorID], [created], [modifierID], [modified], [archiverID], [archived]) VALUES (57, N'CM05D.01.14', 1614, CAST(N'2014-03-10 14:37:17.247' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[campus] ([id], [campus], [creatorID], [created], [modifierID], [modified], [archiverID], [archived]) VALUES (59, N'CB10.03.330', 1337, CAST(N'2014-06-25 12:03:36.687' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[campus] ([id], [campus], [creatorID], [created], [modifierID], [modified], [archiverID], [archived]) VALUES (60, N'CB05B.03.28', 2186, CAST(N'2014-07-23 16:27:40.763' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[campus] ([id], [campus], [creatorID], [created], [modifierID], [modified], [archiverID], [archived]) VALUES (61, N'CB05C.01.15.', 2186, CAST(N'2014-07-23 16:28:17.687' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[campus] ([id], [campus], [creatorID], [created], [modifierID], [modified], [archiverID], [archived]) VALUES (62, N'CB05B.03.21', 2186, CAST(N'2014-07-23 16:28:30.280' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[campus] ([id], [campus], [creatorID], [created], [modifierID], [modified], [archiverID], [archived]) VALUES (63, N'CB05C.01.29', 2560, CAST(N'2014-09-05 15:13:50.617' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[campus] ([id], [campus], [creatorID], [created], [modifierID], [modified], [archiverID], [archived]) VALUES (64, N'CB11.05.202', 2186, CAST(N'2015-02-10 10:06:38.253' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[campus] ([id], [campus], [creatorID], [created], [modifierID], [modified], [archiverID], [archived]) VALUES (65, N'CB11.03.204', 2186, CAST(N'2015-02-10 10:07:00.487' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[campus] ([id], [campus], [creatorID], [created], [modifierID], [modified], [archiverID], [archived]) VALUES (66, N'CB11.03.400', 2186, CAST(N'2015-02-10 10:07:14.970' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[campus] ([id], [campus], [creatorID], [created], [modifierID], [modified], [archiverID], [archived]) VALUES (67, N'CB05C.02.45', 2186, CAST(N'2015-02-10 10:08:54.220' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[campus] ([id], [campus], [creatorID], [created], [modifierID], [modified], [archiverID], [archived]) VALUES (68, N'CB05C.02.41', 2186, CAST(N'2015-02-10 10:09:10.533' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[campus] ([id], [campus], [creatorID], [created], [modifierID], [modified], [archiverID], [archived]) VALUES (69, N'CB02.07.004', 2560, CAST(N'2015-02-12 14:03:11.653' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[campus] ([id], [campus], [creatorID], [created], [modifierID], [modified], [archiverID], [archived]) VALUES (71, N'CB10.02.410', 2560, CAST(N'2015-02-12 15:03:35.710' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[campus] ([id], [campus], [creatorID], [created], [modifierID], [modified], [archiverID], [archived]) VALUES (72, N'CB06.04.37', 2560, CAST(N'2015-02-12 15:17:25.113' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[campus] ([id], [campus], [creatorID], [created], [modifierID], [modified], [archiverID], [archived]) VALUES (73, N'CB11.03.202', 2186, CAST(N'2015-02-20 15:58:07.813' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[campus] ([id], [campus], [creatorID], [created], [modifierID], [modified], [archiverID], [archived]) VALUES (74, N'CB11.03.300', 2186, CAST(N'2015-02-20 16:52:08.700' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[campus] ([id], [campus], [creatorID], [created], [modifierID], [modified], [archiverID], [archived]) VALUES (75, N'CB02.03.02', 2560, CAST(N'2015-03-09 12:29:35.997' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[campus] ([id], [campus], [creatorID], [created], [modifierID], [modified], [archiverID], [archived]) VALUES (76, N'CB06.03.56', 2560, CAST(N'2015-03-09 12:29:58.887' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[campus] ([id], [campus], [creatorID], [created], [modifierID], [modified], [archiverID], [archived]) VALUES (77, N'KG02.04.33', 2560, CAST(N'2015-03-09 12:30:10.140' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[campus] ([id], [campus], [creatorID], [created], [modifierID], [modified], [archiverID], [archived]) VALUES (78, N'CB11.05.100', 2186, CAST(N'2015-07-08 10:17:17.633' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[campus] ([id], [campus], [creatorID], [created], [modifierID], [modified], [archiverID], [archived]) VALUES (79, N'CB11.04.202', 2186, CAST(N'2015-07-08 10:17:46.277' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[campus] ([id], [campus], [creatorID], [created], [modifierID], [modified], [archiverID], [archived]) VALUES (80, N'CB11.04.101', 2186, CAST(N'2015-07-08 10:17:56.073' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[campus] ([id], [campus], [creatorID], [created], [modifierID], [modified], [archiverID], [archived]) VALUES (81, N'CB11.03.205', 2186, CAST(N'2015-07-08 10:18:35.370' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[campus] ([id], [campus], [creatorID], [created], [modifierID], [modified], [archiverID], [archived]) VALUES (82, N'CB11.03.203', 2186, CAST(N'2015-07-08 10:18:48.040' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[campus] ([id], [campus], [creatorID], [created], [modifierID], [modified], [archiverID], [archived]) VALUES (83, N'CB11.05.203', 2186, CAST(N'2015-07-08 10:19:05.510' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[campus] ([id], [campus], [creatorID], [created], [modifierID], [modified], [archiverID], [archived]) VALUES (84, N'CB02.05.38', 2186, CAST(N'2015-07-10 15:54:01.193' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[campus] ([id], [campus], [creatorID], [created], [modifierID], [modified], [archiverID], [archived]) VALUES (86, N'CB02.05.40', 2186, CAST(N'2015-07-10 16:12:51.177' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[campus] ([id], [campus], [creatorID], [created], [modifierID], [modified], [archiverID], [archived]) VALUES (87, N'CB02.07.007', 2560, CAST(N'2015-07-20 10:12:12.877' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[campus] ([id], [campus], [creatorID], [created], [modifierID], [modified], [archiverID], [archived]) VALUES (88, N'CB03.04.25', 2560, CAST(N'2015-07-20 10:33:19.277' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[campus] ([id], [campus], [creatorID], [created], [modifierID], [modified], [archiverID], [archived]) VALUES (89, N'CB02.07.009', 2186, CAST(N'2015-07-22 15:00:49.763' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[campus] ([id], [campus], [creatorID], [created], [modifierID], [modified], [archiverID], [archived]) VALUES (90, N'CB06.06.123', 1614, CAST(N'2015-07-27 09:54:16.247' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[campus] ([id], [campus], [creatorID], [created], [modifierID], [modified], [archiverID], [archived]) VALUES (91, N'CB08.03.004', 1614, CAST(N'2015-07-27 10:06:45.183' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[campus] ([id], [campus], [creatorID], [created], [modifierID], [modified], [archiverID], [archived]) VALUES (92, N'CB07.02.015', 1614, CAST(N'2015-07-27 10:23:22.760' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[campus] ([id], [campus], [creatorID], [created], [modifierID], [modified], [archiverID], [archived]) VALUES (93, N'CB07.02.020', 1614, CAST(N'2015-07-27 10:27:59.933' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[campus] ([id], [campus], [creatorID], [created], [modifierID], [modified], [archiverID], [archived]) VALUES (56, N'KG01.05.19/Hong kong', 1337, CAST(N'2014-03-06 13:59:02.673' AS DateTime), 1337, CAST(N'2014-03-06 13:59:54.220' AS DateTime), NULL, NULL)
INSERT [dbo].[campus] ([id], [campus], [creatorID], [created], [modifierID], [modified], [archiverID], [archived]) VALUES (58, N'CB03.05.28', 2560, CAST(N'2014-03-13 13:55:31.867' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[campus] ([id], [campus], [creatorID], [created], [modifierID], [modified], [archiverID], [archived]) VALUES (70, N'CB10.02.450', 2560, CAST(N'2015-02-12 14:55:32.073' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[campus] ([id], [campus], [creatorID], [created], [modifierID], [modified], [archiverID], [archived]) VALUES (85, N'CB02.05.31', 2186, CAST(N'2015-07-10 15:54:08.757' AS DateTime), NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[campus] OFF
SET IDENTITY_INSERT [dbo].[emailtemplates] ON 

INSERT [dbo].[emailtemplates] ([id], [subject], [body], [stagingsubject], [stagingbody], [description], [modified], [ModifierID], [published], [PublisherID], [isactived], [categoryID]) VALUES (1, N'Confirmation of your HELPS consultation', N'Dear [% student_givenname %],

Your appointment detail:

 •  When:      [% date %]
 •  Start time:[% start_time %]
 •  End time:  [% end_time %]
 •  Where: [% campus %]
	
To make this session helpful, it is essential that you upload* any material that is relevant to the assignment (your draft, assignment question and marking criteria). You must do this by 12 midnight the day before your appointment. 

 * To upload, logon to  <a href="http://helps-booking.uts.edu.au">HELPS booking system</a> and click on ''My Bookings'' tab 

If your circumstances change and you’re no longer available to attend your appointment, please make sure to cancel your booking at least 24 hours beforehand. To CANCEL your booking, please email to helps@uts.edu.au, or ring 9514-9733.

Please know that failure to keep two appointments without timely cancellation and valid reasons will preclude you from making future appointments.

For further information about HELPS programs, please contact the HELPS office: 9514 9733 or helps@uts.edu.au

Looking forward to seeing you.
HELPS', N'Confirmation of your HELPS consultation', N'Dear [% student_givenname %],

Your appointment detail:

 •  When:      [% date %]
 •  Start time:[% start_time %]
 •  End time:  [% end_time %]
 •  Where: [% campus %]
	
To make this session helpful, it is essential that you upload* any material that is relevant to the assignment (your draft, assignment question and marking criteria). You must do this by 12 midnight the day before your appointment. 

 * To upload, logon to  <a href="http://helps-booking.uts.edu.au">HELPS booking system</a> and click on ''My Bookings'' tab 

If your circumstances change and you’re no longer available to attend your appointment, please make sure to cancel your booking at least 24 hours beforehand. To CANCEL your booking, please email to helps@uts.edu.au, or ring 9514-9733.

Please know that failure to keep two appointments without timely cancellation and valid reasons will preclude you from making future appointments.

For further information about HELPS programs, please contact the HELPS office: 9514 9733 or helps@uts.edu.au

Looking forward to seeing you.
HELPS', N'Confirmation of booking (to student)', CAST(N'2015-02-25 15:47:23.567' AS DateTime), 1337, CAST(N'2015-03-19 09:19:41.257' AS DateTime), 1337, 1, 1)
INSERT [dbo].[emailtemplates] ([id], [subject], [body], [stagingsubject], [stagingbody], [description], [modified], [ModifierID], [published], [PublisherID], [isactived], [categoryID]) VALUES (2, N'Confirmation of booking', N'[% student_givenname %] [% student_surname %] has booked a one-to-one appointment with you.
Appointment time: [% datetime %]', N'Confirmation of booking', N'[% student_givenname %] [% student_surname %] has booked a one-to-one appointment with you.
Appointment time: [% datetime %]', N'Confirmation of booking (to lecturer)', CAST(N'2008-10-27 14:41:00.717' AS DateTime), 1407, CAST(N'2008-10-27 15:01:31.170' AS DateTime), 1407, 1, 1)
INSERT [dbo].[emailtemplates] ([id], [subject], [body], [stagingsubject], [stagingbody], [description], [modified], [ModifierID], [published], [PublisherID], [isactived], [categoryID]) VALUES (3, N'Cancellation of HELPS consultation', N'Dear [% student_givenname %],

This message is to confirm that you have cancelled an individual consultation appointment on [% datetime %] at [% campus %].

regards,
HELPS', N'Cancellation of HELPS consultation', N'Dear [% student_givenname %],

This message is to confirm that you have cancelled an individual consultation appointment on [% datetime %] at [% campus %].

regards,
HELPS', N'Confirmation of cancellation (to student)', CAST(N'2012-07-25 10:11:14.370' AS DateTime), 1337, CAST(N'2012-07-25 10:11:15.323' AS DateTime), 1337, 1, 1)
INSERT [dbo].[emailtemplates] ([id], [subject], [body], [stagingsubject], [stagingbody], [description], [modified], [ModifierID], [published], [PublisherID], [isactived], [categoryID]) VALUES (4, N'Confirmation of cancellation', N'[% student_givenname %] [% student_surname %] has cancelled a one-to-one appointment with you on [% datetime %].', N'Confirmation of cancellation', N'[% student_givenname %] [% student_surname %] has cancelled a one-to-one appointment with you on [% datetime %].', N'Confirmation of cancellation (to lecturer)', CAST(N'2008-10-28 10:57:55.420' AS DateTime), 1407, CAST(N'2008-10-28 10:58:00.920' AS DateTime), 1407, 1, 1)
INSERT [dbo].[emailtemplates] ([id], [subject], [body], [stagingsubject], [stagingbody], [description], [modified], [ModifierID], [published], [PublisherID], [isactived], [categoryID]) VALUES (5, N'You have been booked in to HELPS consultation', N'Dear [% student_givenname %],

You were on a waiting list for an individual consultation appointment on [% datetime %] at [% campus %]. This session has become available and has been booked for you.
	
To make this session helpful, it is essential that you upload* any material that is relevant to the assignment (your draft, assignment question and marking criteria). You must do this by 12 midnight the day before your appointment. 

 * To upload, logon to <a href="http://helps-booking.uts.edu.au">HELPS booking system</a> and click on ''My Bookings'' tab 

If your circumstances change and you’re no longer available to attend your appointment, please make sure to cancel your booking at least 24 hours beforehand. To cancel your booking, please email to helps@uts.edu.au, or ring 9514-9733.

Please know that failure to keep two appointments without timely cancellation and valid reasons will preclude you from making future appointments.

For further information about HELPS programs, please contact the HELPS office: 9514 9733 or helps@uts.edu.au

Looking forward to seeing you.
HELPS', N'You have been booked in to HELPS consultation', N'Dear [% student_givenname %],

You were on a waiting list for an individual consultation appointment on [% datetime %] at [% campus %]. This session has become available and has been booked for you.
	
To make this session helpful, it is essential that you upload* any material that is relevant to the assignment (your draft, assignment question and marking criteria). You must do this by 12 midnight the day before your appointment. 

 * To upload, logon to <a href="http://helps-booking.uts.edu.au">HELPS booking system</a> and click on ''My Bookings'' tab 

If your circumstances change and you’re no longer available to attend your appointment, please make sure to cancel your booking at least 24 hours beforehand. To cancel your booking, please email to helps@uts.edu.au, or ring 9514-9733.

Please know that failure to keep two appointments without timely cancellation and valid reasons will preclude you from making future appointments.

For further information about HELPS programs, please contact the HELPS office: 9514 9733 or helps@uts.edu.au

Looking forward to seeing you.
HELPS', N'Student on waiting list is booked for a session automatically (to student)', CAST(N'2013-02-13 10:54:41.260' AS DateTime), 1337, CAST(N'2013-02-13 10:54:42.573' AS DateTime), 1337, 1, 1)
INSERT [dbo].[emailtemplates] ([id], [subject], [body], [stagingsubject], [stagingbody], [description], [modified], [ModifierID], [published], [PublisherID], [isactived], [categoryID]) VALUES (6, N'Confirmation of booking', N'[% student_givenname %] [% student_surname %] has booked into a one-to-one appointment with you.
Appointment time: [% datetime %]', N'Confirmation of booking', N'[% student_givenname %] [% student_surname %] has booked into a one-to-one appointment with you.
Appointment time: [% datetime %]', N'Student on waiting list is booked for a session automatically (to lecturer)', CAST(N'2008-10-27 14:45:18.717' AS DateTime), 1407, CAST(N'2008-10-27 15:01:09.953' AS DateTime), 1407, 1, 1)
INSERT [dbo].[emailtemplates] ([id], [subject], [body], [stagingsubject], [stagingbody], [description], [modified], [ModifierID], [published], [PublisherID], [isactived], [categoryID]) VALUES (7, N'You are placed on a waiting list for HELPS consultation', N'Dear [% student_givenname %],

You have been placed on a waiting list for an individual consultation appointment on [% datetime %] at [% campus %].

If this session becomes available, you will receive a confirmation email at least 24 hours before the appointment. Otherwise, you will not hear from us.

regards,
HELPS', N'You are placed on a waiting list for HELPS consultation', N'Dear [% student_givenname %],

You have been placed on a waiting list for an individual consultation appointment on [% datetime %] at [% campus %].

If this session becomes available, you will receive a confirmation email at least 24 hours before the appointment. Otherwise, you will not hear from us.

regards,
HELPS', N'Student registers for waiting list (to student)', CAST(N'2012-07-25 10:11:51.783' AS DateTime), 1337, CAST(N'2012-07-25 10:11:52.767' AS DateTime), 1337, 1, 1)
INSERT [dbo].[emailtemplates] ([id], [subject], [body], [stagingsubject], [stagingbody], [description], [modified], [ModifierID], [published], [PublisherID], [isactived], [categoryID]) VALUES (8, N'Reminder of your HELPS consultation: don''t forget to attend your appointment', N'Dear [% student_givenname %],

This is a gentle reminder of your appointment with HELPS.

 •  When:      [% date %]
 •  Start time:[% start_time %]
 •  End time:  [% end_time %]
 •  Where: [% campus %]

To make this session helpful, it is essential that you upload* any material that is relevant to the assignment (your draft, assignment question and marking criteria). You must do this by 12 midnight the day before your appointment.
 
 * To upload, logon to  <a href="http://helps-booking.uts.edu.au">HELPS booking system</a> and click on ''My Bookings'' tab 

If your circumstances change and you’re no longer available to attend your appointment, please make sure to cancel your booking at least 24 hours beforehand. To cancel your booking, please email to helps@uts.edu.au, or ring 9514-9733.

Please know that failure to keep two appointments without timely cancellation and valid reasons will preclude you from making future appointments.

For further information about HELPS programs, please contact the HELPS office: 9514 9733 or helps@uts.edu.au

Looking forward to seeing you there.
HELPS', N'Reminder of your HELPS consultation: don''t forget to attend your appointment', N'Dear [% student_givenname %],

This is a gentle reminder of your appointment with HELPS.

 •  When:      [% date %]
 •  Start time:[% start_time %]
 •  End time:  [% end_time %]
 •  Where: [% campus %]

To make this session helpful, it is essential that you upload* any material that is relevant to the assignment (your draft, assignment question and marking criteria). You must do this by 12 midnight the day before your appointment.
 
 * To upload, logon to  <a href="http://helps-booking.uts.edu.au">HELPS booking system</a> and click on ''My Bookings'' tab 

If your circumstances change and you’re no longer available to attend your appointment, please make sure to cancel your booking at least 24 hours beforehand. To cancel your booking, please email to helps@uts.edu.au, or ring 9514-9733.

Please know that failure to keep two appointments without timely cancellation and valid reasons will preclude you from making future appointments.

For further information about HELPS programs, please contact the HELPS office: 9514 9733 or helps@uts.edu.au

Looking forward to seeing you there.
HELPS', N'Reminder email (to course work student)', CAST(N'2015-03-19 09:20:01.787' AS DateTime), 1337, CAST(N'2015-03-19 09:20:03.100' AS DateTime), 1337, 1, 1)
INSERT [dbo].[emailtemplates] ([id], [subject], [body], [stagingsubject], [stagingbody], [description], [modified], [ModifierID], [published], [PublisherID], [isactived], [categoryID]) VALUES (9, N'Reminder of appointment', N'Reminder of your appointment:

Name: [% student_givenname %] [% student_surname %] 
When: [% datetime %] 
Where: [% campus %]
Lecturer''s email: [% lecturer_email %] 

NOTE:

As a first step, please make sure that you go to the ELSSA Centre on Level 18 (CB01.18.22) and indicate that you have arrived. They will call me and then direct you down to my office on Level 17 (CB01.17.17a).

AT LEAST 48 hours before the appointment, you MUST UPLOAD the extract online (under the heading of ''Upload your documents'' on your booking page):

1.    A maximum 10 pages of your writing: a section, or several sections, or plans to do with your research program.

2.    Any relevant comments by your supervisor.

3.    Any specific questions you may have or you want to cover about your writing in the session.
 
If I do not receive an extract of your writing for me to look at before that deadline, we will have to cancel the meeting and if space is available, re-schedule the booking.

regards,
Terry Royce

PS. Please do not reply to this email', N'Reminder of appointment', N'Reminder of your appointment:

Name: [% student_givenname %] [% student_surname %] 
When: [% datetime %] 
Where: [% campus %]
Lecturer''s email: [% lecturer_email %] 

NOTE:

As a first step, please make sure that you go to the ELSSA Centre on Level 18 (CB01.18.22) and indicate that you have arrived. They will call me and then direct you down to my office on Level 17 (CB01.17.17a).

AT LEAST 48 hours before the appointment, you MUST UPLOAD the extract online (under the heading of ''Upload your documents'' on your booking page):

1.    A maximum 10 pages of your writing: a section, or several sections, or plans to do with your research program.

2.    Any relevant comments by your supervisor.

3.    Any specific questions you may have or you want to cover about your writing in the session.
 
If I do not receive an extract of your writing for me to look at before that deadline, we will have to cancel the meeting and if space is available, re-schedule the booking.

regards,
Terry Royce

PS. Please do not reply to this email', N'Reminder email (to research student)', CAST(N'2011-08-01 11:05:18.750' AS DateTime), 1614, CAST(N'2011-08-01 11:05:19.970' AS DateTime), 1614, 1, 1)
INSERT [dbo].[emailtemplates] ([id], [subject], [body], [stagingsubject], [stagingbody], [description], [modified], [ModifierID], [published], [PublisherID], [isactived], [categoryID]) VALUES (10, N'You have booked a place in HELPS workshops!', N'Dear [% student_givenname %],

This message is to confirm your booking to attend the HELPS workshop: 

•  Workshop: [% topic %] 	
•  When: [% datetime %]
•  Where: [% campus %]

If your circumstances change and you’re no longer available to attend your registered workshop, please make sure to cancel your booking at least 24 hours beforehand. To cancel your booking,  please logon to  <a href="http://helps-booking.uts.edu.au">HELPS booking system</a> and click on ''My Bookings'' tab 

Repeat offenders (2 no-show) may be barred from registering for workshops.

For further information about HELPS programs, please contact the HELPS office: 9514 9733 or helps@uts.edu.au

Looking forward to seeing you there.
HELPS', N'You have booked a place in HELPS workshops!', N'Dear [% student_givenname %],

This message is to confirm your booking to attend the HELPS workshop: 

•  Workshop: [% topic %] 	
•  When: [% datetime %]
•  Where: [% campus %]

If your circumstances change and you’re no longer available to attend your registered workshop, please make sure to cancel your booking at least 24 hours beforehand. To cancel your booking,  please logon to  <a href="http://helps-booking.uts.edu.au">HELPS booking system</a> and click on ''My Bookings'' tab 

Repeat offenders (2 no-show) may be barred from registering for workshops.

For further information about HELPS programs, please contact the HELPS office: 9514 9733 or helps@uts.edu.au

Looking forward to seeing you there.
HELPS', N'Confirmation of workshop booking (to student)', CAST(N'2013-02-13 10:56:34.913' AS DateTime), 1337, CAST(N'2013-02-13 10:56:37.557' AS DateTime), 1337, 1, 2)
INSERT [dbo].[emailtemplates] ([id], [subject], [body], [stagingsubject], [stagingbody], [description], [modified], [ModifierID], [published], [PublisherID], [isactived], [categoryID]) VALUES (11, NULL, NULL, N'Confirmation of workshop booking', N'[% student_givenname %] [% student_surname %] has booked a one-to-one appointment with you.
Appointment time: [% datetime %]', N'Confirmation of workshop booking (to advisor)', CAST(N'2012-05-16 15:34:49.247' AS DateTime), 1834, NULL, NULL, 0, 2)
INSERT [dbo].[emailtemplates] ([id], [subject], [body], [stagingsubject], [stagingbody], [description], [modified], [ModifierID], [published], [PublisherID], [isactived], [categoryID]) VALUES (12, N'You are placed on a waiting list for HELPS workshops', N'Dear [% student_givenname %],

You have been placed on a waiting list for the ''[% topic %]'' session on [% datetime %] at  [% campus %].

If this session becomes available, you will receive an email. Otherwise, you will not hear from us.

For further information about HELPS programs, please contact the HELPS office: 9514 9733 or helps@uts.edu.au

Thank you
HELPS', N'You are placed on a waiting list for HELPS workshops', N'Dear [% student_givenname %],

You have been placed on a waiting list for the ''[% topic %]'' session on [% datetime %] at  [% campus %].

If this session becomes available, you will receive an email. Otherwise, you will not hear from us.

For further information about HELPS programs, please contact the HELPS office: 9514 9733 or helps@uts.edu.au

Thank you
HELPS', N'Confirmation of workshop waiting list (to student)', CAST(N'2012-07-25 10:09:54.197' AS DateTime), 1337, CAST(N'2012-07-25 10:09:55.120' AS DateTime), 1337, 1, 2)
INSERT [dbo].[emailtemplates] ([id], [subject], [body], [stagingsubject], [stagingbody], [description], [modified], [ModifierID], [published], [PublisherID], [isactived], [categoryID]) VALUES (13, N'You have cancelled the place in HELPS workshops', N'Dear [% student_givenname %],

You have cancelled the ''[% topic %]'' session on [% datetime %].

For further information about HELPS programs, please contact the HELPS office: 9514 9733 or helps@uts.edu.au

Thank you
HELPS', N'You have cancelled the place in HELPS workshops', N'Dear [% student_givenname %],

You have cancelled the ''[% topic %]'' session on [% datetime %].

For further information about HELPS programs, please contact the HELPS office: 9514 9733 or helps@uts.edu.au

Thank you
HELPS', N'Confirmation of workshop cancellation (to student)', CAST(N'2013-04-02 17:06:21.333' AS DateTime), 1864, CAST(N'2013-04-02 17:06:22.753' AS DateTime), 1864, 1, 2)
INSERT [dbo].[emailtemplates] ([id], [subject], [body], [stagingsubject], [stagingbody], [description], [modified], [ModifierID], [published], [PublisherID], [isactived], [categoryID]) VALUES (14, NULL, NULL, N'Confirmation of cancellation', N'[% student_givenname %] [% student_surname %] has cancelled a one-to-one appointment with you on [% datetime %].', N'Confirmation of workshop cancellation (to advisor)', CAST(N'2012-05-16 15:37:40.963' AS DateTime), 1834, NULL, NULL, 0, 2)
INSERT [dbo].[emailtemplates] ([id], [subject], [body], [stagingsubject], [stagingbody], [description], [modified], [ModifierID], [published], [PublisherID], [isactived], [categoryID]) VALUES (15, N'You have been booked in to HELPS workshops', N'Dear [% student_givenname %],

You were on a waiting list for the ''[% topic %]'' session on [% datetime %] at [% campus %]. This session has become available and has been booked for you.

If your circumstances change and you’re no longer available to attend your registered workshop, please make sure to cancel your booking at least 24 hours beforehand. To CANCEL, please log on to http://helps-booking.uts.edu.au.

Repeat offenders (2 no-show) may be barred from registering for workshops.

For further information about HELPS programs, please contact the HELPS office: 9514 9733 or helps@uts.edu.au

Thank you
HELPS', N'You have been booked in to HELPS workshops', N'Dear [% student_givenname %],

You were on a waiting list for the ''[% topic %]'' session on [% datetime %] at [% campus %]. This session has become available and has been booked for you.

If your circumstances change and you’re no longer available to attend your registered workshop, please make sure to cancel your booking at least 24 hours beforehand. To CANCEL,  please log on to  <a href="http://helps-booking.uts.edu.au">HELPS booking system</a>

Repeat offenders (2 no-show) may be barred from registering for workshops.

For further information about HELPS programs, please contact the HELPS office: 9514 9733 or helps@uts.edu.au

Thank you
HELPS', N'Confirmation of workshop booking from waiting list (to student)', CAST(N'2013-02-13 10:57:25.197' AS DateTime), 1337, CAST(N'2013-02-12 15:44:48.647' AS DateTime), 1337, 1, 2)
INSERT [dbo].[emailtemplates] ([id], [subject], [body], [stagingsubject], [stagingbody], [description], [modified], [ModifierID], [published], [PublisherID], [isactived], [categoryID]) VALUES (16, N'Reminder: don''t forget to attend your workshop', N'Dear [% student_givenname %],

This is just a little reminder about your workshop.

•  Workshop: [% topic %]
•  When: [% datetime %] 
•  Where: [% campus %]

If your circumstances change and you’re no longer available to attend your registered workshop, please make sure to cancel your booking at least 24 hours beforehand. To CANCEL your booking, please log on to <a href="http://helps-booking.uts.edu.au"> HELPS booking system</a>

Repeat offenders (2 no-show) may be barred from registering for workshops.

For further information about HELPS programs, please contact the HELPS office: 9514 9733 or helps@uts.edu.au

See you there
HELPS', N'Reminder: don''t forget to attend your workshop', N'Dear [% student_givenname %],

This is just a little reminder about your workshop.

•  Workshop: [% topic %]
•  When: [% datetime %] 
•  Where: [% campus %]

If your circumstances change and you’re no longer available to attend your registered workshop, please make sure to cancel your booking at least 24 hours beforehand. To CANCEL your booking, please log on to <a href="http://helps-booking.uts.edu.au"> HELPS booking system</a>

Repeat offenders (2 no-show) may be barred from registering for workshops.

For further information about HELPS programs, please contact the HELPS office: 9514 9733 or helps@uts.edu.au

See you there
HELPS', N'Reminder email for a workshop (to student)', CAST(N'2013-05-06 16:56:50.493' AS DateTime), 1864, CAST(N'2013-05-06 16:56:51.757' AS DateTime), 1864, 1, 2)
INSERT [dbo].[emailtemplates] ([id], [subject], [body], [stagingsubject], [stagingbody], [description], [modified], [ModifierID], [published], [PublisherID], [isactived], [categoryID]) VALUES (17, N'You registered to attend in HELPS workshops!', N'Dear [% student_givenname %],

This message is to confirm your booking to attend the HELPS workshop: 

•  Workshop: [% topic %] 	
•  When, where:[% recurring_sessions %]

If your circumstances change and you’re no longer available to attend your registered workshop, please make sure to cancel your booking at least 24 hours beforehand. 

To cancel your booking,  please logon to  <a href="http://helps-booking.uts.edu.au">HELPS booking system</a> and click on ''My Bookings'' tab. 

Looking forward to seeing you there.
HELPS', N'You registered to attend in HELPS workshops!', N'Dear [% student_givenname %],

This message is to confirm your booking to attend the HELPS workshop: 

•  Workshop: [% topic %] 	
•  When, where:[% recurring_sessions %]

If your circumstances change and you’re no longer available to attend your registered workshop, please make sure to cancel your booking at least 24 hours beforehand. 

To cancel your booking,  please logon to  <a href="http://helps-booking.uts.edu.au">HELPS booking system</a> and click on ''My Bookings'' tab. 

Looking forward to seeing you there.
HELPS', N'Confirmation of workshop recurring-session booking (to student)', CAST(N'2015-02-19 11:17:07.767' AS DateTime), 2560, CAST(N'2015-02-19 14:07:08.397' AS DateTime), 2560, 1, 2)
INSERT [dbo].[emailtemplates] ([id], [subject], [body], [stagingsubject], [stagingbody], [description], [modified], [ModifierID], [published], [PublisherID], [isactived], [categoryID]) VALUES (18, N'You have cancelled the place in HELPS workshops', N'Dear [% student_givenname %],

You have cancelled the following session(s):

•  Workshop: [% topic %] 	

For further information about HELPS programs, please contact the HELPS office: 9514 9733 or helps@uts.edu.au

Thank you
HELPS', N'You have cancelled the place in HELPS workshops', N'Dear [% student_givenname %],

You have cancelled the following session(s):

•  Workshop: [% topic %] 	

For further information about HELPS programs, please contact the HELPS office: 9514 9733 or helps@uts.edu.au

Thank you
HELPS', N'Confirmation of workshop recurring-session cancellation (to student)', CAST(N'2014-07-25 17:00:27.127' AS DateTime), 2560, CAST(N'2014-07-25 17:00:28.813' AS DateTime), 2560, 1, 2)
INSERT [dbo].[emailtemplates] ([id], [subject], [body], [stagingsubject], [stagingbody], [description], [modified], [ModifierID], [published], [PublisherID], [isactived], [categoryID]) VALUES (19, N'You are placed on a waiting list for HELPS workshops', N'Dear [% student_givenname %],

Due to high demand, you have been placed on a waiting list for the following sessions:

•  Workshop: [% topic %] 	
•  When, where:[% recurring_sessions %]

If this session becomes available, you will receive an email. Otherwise, you will not hear from us.

For further information about HELPS programs, please contact the HELPS office: 9514 9733 or helps@uts.edu.au

Thank you
HELPS', N'You are placed on a waiting list for HELPS workshops', N'Dear [% student_givenname %],

Due to high demand, you have been placed on a waiting list for the following sessions:

•  Workshop: [% topic %] 	
•  When, where:[% recurring_sessions %]

If this session becomes available, you will receive an email. Otherwise, you will not hear from us.

For further information about HELPS programs, please contact the HELPS office: 9514 9733 or helps@uts.edu.au

Thank you
HELPS', N'Confirmation of workshop waiting list (to student)', CAST(N'2015-02-19 11:17:44.160' AS DateTime), 2560, CAST(N'2015-02-19 11:18:41.893' AS DateTime), 2560, 1, 2)
INSERT [dbo].[emailtemplates] ([id], [subject], [body], [stagingsubject], [stagingbody], [description], [modified], [ModifierID], [published], [PublisherID], [isactived], [categoryID]) VALUES (20, N'You are registered to attend HELPS workshops', N'Dear [% student_givenname %],

You were on a waiting list for the following ''[% topic %]'' sessions:

•  Workshop: [% topic %] 	
•  When, where:[% recurring_sessions %]

This session(s) has become available and has been booked for you.

If your circumstances change and you are no longer available to attend the workshop, please make sure to cancel your enrolment as soon as you can. To CANCEL,  please log on to  <a href="http://helps-booking.uts.edu.au">HELPS booking system</a>

For further information about HELPS programs, please contact the HELPS office: 9514 9733 or helps@uts.edu.au

Thank you
HELPS', N'You are registered to attend HELPS workshops', N'Dear [% student_givenname %],

You were on a waiting list for the following ''[% topic %]'' sessions:

•  Workshop: [% topic %] 	
•  When, where:[% recurring_sessions %]

This session(s) has become available and has been booked for you.

If your circumstances change and you are no longer available to attend the workshop, please make sure to cancel your enrolment as soon as you can. To CANCEL,  please log on to  <a href="http://helps-booking.uts.edu.au">HELPS booking system</a>

For further information about HELPS programs, please contact the HELPS office: 9514 9733 or helps@uts.edu.au

Thank you
HELPS', N'Confirmation of workshop recurring-session  booking from waiting list (to student)', CAST(N'2014-08-07 10:05:21.603' AS DateTime), 1337, CAST(N'2014-08-07 10:05:23.040' AS DateTime), 1337, 1, 2)
INSERT [dbo].[emailtemplates] ([id], [subject], [body], [stagingsubject], [stagingbody], [description], [modified], [ModifierID], [published], [PublisherID], [isactived], [categoryID]) VALUES (21, N'Reminder: don''t forget to attend your workshop', N'Dear [% student_givenname %],

This is a reminder about your workshop:

•  Workshop: [% topic %] 	
•  When, where:[% recurring_sessions %]	

If your circumstances change and you’re no longer available to attend your registered workshop, please make sure to cancel your booking. To CANCEL your booking, please log on to <a href="http://helps-booking.uts.edu.au"> HELPS booking system</a>

For further information about HELPS programs, please contact the HELPS office: 9514 9733 or helps@uts.edu.au

See you there
HELPS', N'Reminder: don''t forget to attend your workshop', N'Dear [% student_givenname %],

This is a reminder about your workshop:

•  Workshop: [% topic %] 	
•  When, where:[% recurring_sessions %]	

If your circumstances change and you’re no longer available to attend your registered workshop, please make sure to cancel your booking. To CANCEL your booking, please log on to <a href="http://helps-booking.uts.edu.au"> HELPS booking system</a>

For further information about HELPS programs, please contact the HELPS office: 9514 9733 or helps@uts.edu.au

See you there
HELPS', N'Reminder email for a recurring-session (to student)', CAST(N'2015-02-19 11:18:32.927' AS DateTime), 2560, CAST(N'2015-02-19 11:18:33.957' AS DateTime), 2560, 1, 2)
SET IDENTITY_INSERT [dbo].[emailtemplates] OFF
SET IDENTITY_INSERT [dbo].[emailtemplatesCategory] ON 

INSERT [dbo].[emailtemplatesCategory] ([id], [category]) VALUES (1, N'session')
INSERT [dbo].[emailtemplatesCategory] ([id], [category]) VALUES (2, N'workshop')
SET IDENTITY_INSERT [dbo].[emailtemplatesCategory] OFF
SET IDENTITY_INSERT [dbo].[learningissues] ON 

INSERT [dbo].[learningissues] ([id], [issue], [researchonly], [orderitem], [iscurrent]) VALUES (1, N'Understanding assignment requirements', NULL, 1, 1)
INSERT [dbo].[learningissues] ([id], [issue], [researchonly], [orderitem], [iscurrent]) VALUES (2, N'Purpose/ focus/ argument', NULL, 2, 1)
INSERT [dbo].[learningissues] ([id], [issue], [researchonly], [orderitem], [iscurrent]) VALUES (3, N'Genre/ register', NULL, 3, 1)
INSERT [dbo].[learningissues] ([id], [issue], [researchonly], [orderitem], [iscurrent]) VALUES (4, N'Cohesion', NULL, 4, 1)
INSERT [dbo].[learningissues] ([id], [issue], [researchonly], [orderitem], [iscurrent]) VALUES (5, N'Paragraph structure', NULL, 5, 1)
INSERT [dbo].[learningissues] ([id], [issue], [researchonly], [orderitem], [iscurrent]) VALUES (6, N'Using sources approriately', NULL, 6, 1)
INSERT [dbo].[learningissues] ([id], [issue], [researchonly], [orderitem], [iscurrent]) VALUES (7, N'Sentence grammar', NULL, 7, 1)
INSERT [dbo].[learningissues] ([id], [issue], [researchonly], [orderitem], [iscurrent]) VALUES (8, N'Speaking/ presentation', NULL, 8, 1)
INSERT [dbo].[learningissues] ([id], [issue], [researchonly], [orderitem], [iscurrent]) VALUES (9, N'Other', NULL, 99, 1)
INSERT [dbo].[learningissues] ([id], [issue], [researchonly], [orderitem], [iscurrent]) VALUES (10, N'Thesis writing', 1, 9, 1)
INSERT [dbo].[learningissues] ([id], [issue], [researchonly], [orderitem], [iscurrent]) VALUES (11, N'MA/Doc assessment', 1, 10, 1)
INSERT [dbo].[learningissues] ([id], [issue], [researchonly], [orderitem], [iscurrent]) VALUES (12, N'Publication/ conference/ grant', 1, 11, 1)
SET IDENTITY_INSERT [dbo].[learningissues] OFF
SET IDENTITY_INSERT [dbo].[lecturers] ON 

INSERT [dbo].[lecturers] ([id], [staffID], [first_name], [last_name], [email], [created], [creatorId], [modified], [modifierId], [archived], [archiverID], [inactive]) VALUES (1, NULL, N'FirstName', N'LastName', N'firstname.lastname@uts.edu.au', CAST(N'2007-06-13 14:37:17.000' AS DateTime), 1304, NULL, NULL, CAST(N'2007-06-14 16:35:09.000' AS DateTime), 1304, 0)
INSERT [dbo].[lecturers] ([id], [staffID], [first_name], [last_name], [email], [created], [creatorId], [modified], [modifierId], [archived], [archiverID], [inactive]) VALUES (2, NULL, N'FirstName', N'LastName', N'firstname.lastname@uts.edu.au', CAST(N'2007-06-13 14:37:36.000' AS DateTime), 1304, CAST(N'2007-07-13 13:00:00.000' AS DateTime), 1304, CAST(N'2007-06-14 16:35:09.000' AS DateTime), 1304, 0)
INSERT [dbo].[lecturers] ([id], [staffID], [first_name], [last_name], [email], [created], [creatorId], [modified], [modifierId], [archived], [archiverID], [inactive]) VALUES (3, NULL, N'FirstName', N'LastName', N'firstname.lastname@uts.edu.au', CAST(N'2007-06-13 14:37:55.000' AS DateTime), 1304, NULL, NULL, CAST(N'2007-06-14 16:35:09.000' AS DateTime), 1304, 0)
INSERT [dbo].[lecturers] ([id], [staffID], [first_name], [last_name], [email], [created], [creatorId], [modified], [modifierId], [archived], [archiverID], [inactive]) VALUES (4, NULL, N'FirstName', N'LastName', N'firstname.lastname@uts.edu.au', CAST(N'2007-06-13 14:48:26.000' AS DateTime), 1304, CAST(N'2007-06-13 14:51:49.000' AS DateTime), 1304, CAST(N'2007-06-14 16:35:09.000' AS DateTime), 1304, 0)
INSERT [dbo].[lecturers] ([id], [staffID], [first_name], [last_name], [email], [created], [creatorId], [modified], [modifierId], [archived], [archiverID], [inactive]) VALUES (5, NULL, N'FirstName', N'LastName', N'firstname.lastname@uts.edu.au', CAST(N'2007-06-13 14:53:31.000' AS DateTime), 1304, CAST(N'2007-06-13 15:06:00.000' AS DateTime), 1304, CAST(N'2007-06-14 16:35:09.000' AS DateTime), 1304, 0)
INSERT [dbo].[lecturers] ([id], [staffID], [first_name], [last_name], [email], [created], [creatorId], [modified], [modifierId], [archived], [archiverID], [inactive]) VALUES (6, NULL, N'FirstName', N'LastName', N'firstname.lastname@uts.edu.au', CAST(N'2007-06-13 14:53:47.000' AS DateTime), 1304, NULL, NULL, CAST(N'2007-06-14 16:35:09.000' AS DateTime), 1304, 0)
INSERT [dbo].[lecturers] ([id], [staffID], [first_name], [last_name], [email], [created], [creatorId], [modified], [modifierId], [archived], [archiverID], [inactive]) VALUES (7, NULL, N'FirstName', N'LastName', N'firstname.lastname@uts.edu.au', CAST(N'2007-06-13 14:53:53.000' AS DateTime), 1304, NULL, NULL, CAST(N'2007-06-14 16:35:09.000' AS DateTime), 1304, 0)
INSERT [dbo].[lecturers] ([id], [staffID], [first_name], [last_name], [email], [created], [creatorId], [modified], [modifierId], [archived], [archiverID], [inactive]) VALUES (8, NULL, N'FirstName', N'LastName', N'firstname.lastname@uts.edu.au', CAST(N'2007-06-13 15:07:40.000' AS DateTime), 1304, NULL, NULL, CAST(N'2007-06-14 16:35:09.000' AS DateTime), 1304, 0)
INSERT [dbo].[lecturers] ([id], [staffID], [first_name], [last_name], [email], [created], [creatorId], [modified], [modifierId], [archived], [archiverID], [inactive]) VALUES (9, NULL, N'FirstName', N'LastName', N'firstname.lastname@uts.edu.au', CAST(N'2007-06-13 15:07:40.000' AS DateTime), 1304, CAST(N'2007-06-13 15:10:02.000' AS DateTime), 1304, CAST(N'2007-06-14 16:35:09.000' AS DateTime), 1304, 0)
INSERT [dbo].[lecturers] ([id], [staffID], [first_name], [last_name], [email], [created], [creatorId], [modified], [modifierId], [archived], [archiverID], [inactive]) VALUES (10, NULL, N'FirstName', N'LastName', N'firstname.lastname@uts.edu.au', CAST(N'2007-06-13 15:07:40.000' AS DateTime), 1304, CAST(N'2007-06-13 15:10:02.000' AS DateTime), 1304, CAST(N'2007-06-14 16:35:09.000' AS DateTime), 1304, 0)
INSERT [dbo].[lecturers] ([id], [staffID], [first_name], [last_name], [email], [created], [creatorId], [modified], [modifierId], [archived], [archiverID], [inactive]) VALUES (11, NULL, N'FirstName', N'LastName', N'firstname.lastname@uts.edu.au', CAST(N'2007-06-13 15:31:33.000' AS DateTime), 1304, NULL, NULL, CAST(N'2007-06-14 16:35:09.000' AS DateTime), 1304, 0)
INSERT [dbo].[lecturers] ([id], [staffID], [first_name], [last_name], [email], [created], [creatorId], [modified], [modifierId], [archived], [archiverID], [inactive]) VALUES (12, NULL, N'FirstName', N'LastName', N'firstname.lastname@uts.edu.au', CAST(N'2007-06-13 15:31:33.000' AS DateTime), 1304, CAST(N'2007-06-13 16:28:56.000' AS DateTime), 1304, CAST(N'2007-06-14 16:35:09.000' AS DateTime), 1304, 0)
INSERT [dbo].[lecturers] ([id], [staffID], [first_name], [last_name], [email], [created], [creatorId], [modified], [modifierId], [archived], [archiverID], [inactive]) VALUES (13, NULL, N'FirstName', N'LastName', N'firstname.lastname@uts.edu.au', CAST(N'2007-06-13 15:31:33.000' AS DateTime), 1304, NULL, NULL, CAST(N'2007-06-14 16:35:09.000' AS DateTime), 1304, 0)
INSERT [dbo].[lecturers] ([id], [staffID], [first_name], [last_name], [email], [created], [creatorId], [modified], [modifierId], [archived], [archiverID], [inactive]) VALUES (14, NULL, N'FirstName', N'LastName', N'firstname.lastname@uts.edu.au', CAST(N'2007-06-13 18:54:55.000' AS DateTime), 1304, CAST(N'2007-06-28 16:40:22.000' AS DateTime), 1407, CAST(N'2007-07-02 10:34:07.000' AS DateTime), 100570, 0)
INSERT [dbo].[lecturers] ([id], [staffID], [first_name], [last_name], [email], [created], [creatorId], [modified], [modifierId], [archived], [archiverID], [inactive]) VALUES (15, NULL, N'FirstName', N'LastName', N'firstname.lastname@uts.edu.au', CAST(N'2007-06-14 16:28:34.000' AS DateTime), 1304, NULL, NULL, CAST(N'2007-06-14 16:35:09.000' AS DateTime), 1304, 0)
INSERT [dbo].[lecturers] ([id], [staffID], [first_name], [last_name], [email], [created], [creatorId], [modified], [modifierId], [archived], [archiverID], [inactive]) VALUES (16, NULL, N'FirstName', N'LastName', N'firstname.lastname@uts.edu.au', CAST(N'2007-06-14 16:28:34.000' AS DateTime), 1304, NULL, NULL, CAST(N'2007-06-14 16:35:09.000' AS DateTime), 1304, 0)
INSERT [dbo].[lecturers] ([id], [staffID], [first_name], [last_name], [email], [created], [creatorId], [modified], [modifierId], [archived], [archiverID], [inactive]) VALUES (17, NULL, N'FirstName', N'LastName', N'firstname.lastname@uts.edu.au', CAST(N'2007-06-14 16:28:34.000' AS DateTime), 1304, NULL, NULL, CAST(N'2007-06-14 16:35:09.000' AS DateTime), 1304, 0)
INSERT [dbo].[lecturers] ([id], [staffID], [first_name], [last_name], [email], [created], [creatorId], [modified], [modifierId], [archived], [archiverID], [inactive]) VALUES (18, NULL, N'FirstName', N'LastName', N'firstname.lastname@uts.edu.au', CAST(N'2007-06-14 16:28:43.000' AS DateTime), 1304, NULL, NULL, CAST(N'2007-06-14 16:35:09.000' AS DateTime), 1304, 0)
INSERT [dbo].[lecturers] ([id], [staffID], [first_name], [last_name], [email], [created], [creatorId], [modified], [modifierId], [archived], [archiverID], [inactive]) VALUES (19, NULL, N'FirstName', N'LastName', N'firstname.lastname@uts.edu.au', CAST(N'2007-06-14 16:28:43.000' AS DateTime), 1304, NULL, NULL, CAST(N'2007-06-14 16:35:09.000' AS DateTime), 1304, 0)
INSERT [dbo].[lecturers] ([id], [staffID], [first_name], [last_name], [email], [created], [creatorId], [modified], [modifierId], [archived], [archiverID], [inactive]) VALUES (20, NULL, N'FirstName', N'LastName', N'firstname.lastname@uts.edu.au', CAST(N'2007-06-14 16:28:43.000' AS DateTime), 1304, NULL, NULL, CAST(N'2007-06-14 16:35:09.000' AS DateTime), 1304, 0)
INSERT [dbo].[lecturers] ([id], [staffID], [first_name], [last_name], [email], [created], [creatorId], [modified], [modifierId], [archived], [archiverID], [inactive]) VALUES (21, NULL, N'FirstName', N'LastName', N'firstname.lastname@uts.edu.au', CAST(N'2007-06-14 16:44:41.000' AS DateTime), 1304, NULL, NULL, CAST(N'2007-06-18 10:10:59.000' AS DateTime), 1304, 0)
INSERT [dbo].[lecturers] ([id], [staffID], [first_name], [last_name], [email], [created], [creatorId], [modified], [modifierId], [archived], [archiverID], [inactive]) VALUES (22, NULL, N'FirstName', N'LastName', N'firstname.lastname@uts.edu.au', CAST(N'2007-06-15 15:42:31.000' AS DateTime), 1304, CAST(N'2007-06-19 10:47:34.000' AS DateTime), 1304, CAST(N'2007-07-02 14:46:25.000' AS DateTime), 1449, 0)
INSERT [dbo].[lecturers] ([id], [staffID], [first_name], [last_name], [email], [created], [creatorId], [modified], [modifierId], [archived], [archiverID], [inactive]) VALUES (23, NULL, N'FirstName', N'LastName', N'firstname.lastname@uts.edu.au', CAST(N'2007-06-19 10:47:40.000' AS DateTime), 1304, CAST(N'2007-06-28 16:35:24.000' AS DateTime), 1407, CAST(N'2007-06-29 09:45:38.000' AS DateTime), 1449, 0)
INSERT [dbo].[lecturers] ([id], [staffID], [first_name], [last_name], [email], [created], [creatorId], [modified], [modifierId], [archived], [archiverID], [inactive]) VALUES (24, N'777408    ', N'FirstName', N'LastName', N'firstname.lastname@uts.edu.au', CAST(N'2007-06-19 10:47:40.000' AS DateTime), 1304, CAST(N'2007-07-31 13:19:02.000' AS DateTime), 1337, CAST(N'2007-08-15 15:32:54.120' AS DateTime), 1337, 0)
INSERT [dbo].[lecturers] ([id], [staffID], [first_name], [last_name], [email], [created], [creatorId], [modified], [modifierId], [archived], [archiverID], [inactive]) VALUES (25, NULL, N'FirstName', N'LastName', N'firstname.lastname@uts.edu.au', CAST(N'2007-06-19 10:47:40.000' AS DateTime), 1304, NULL, NULL, CAST(N'2007-06-20 16:32:39.000' AS DateTime), 1407, 0)
INSERT [dbo].[lecturers] ([id], [staffID], [first_name], [last_name], [email], [created], [creatorId], [modified], [modifierId], [archived], [archiverID], [inactive]) VALUES (26, N'888519    ', N'FirstName', N'LastName', N'firstname.lastname@uts.edu.au', CAST(N'2007-07-02 11:27:20.000' AS DateTime), 1449, CAST(N'2007-07-31 13:19:02.000' AS DateTime), 1337, CAST(N'2007-08-15 15:32:54.120' AS DateTime), 1337, 0)
INSERT [dbo].[lecturers] ([id], [staffID], [first_name], [last_name], [email], [created], [creatorId], [modified], [modifierId], [archived], [archiverID], [inactive]) VALUES (27, N'999630    ', N'FirstName', N'LastName', N'firstname.lastname@uts.edu.au', CAST(N'2007-07-02 14:46:55.000' AS DateTime), 1449, CAST(N'2007-07-17 16:30:15.000' AS DateTime), 1407, CAST(N'2007-07-19 11:48:32.000' AS DateTime), 10508707, 0)
INSERT [dbo].[lecturers] ([id], [staffID], [first_name], [last_name], [email], [created], [creatorId], [modified], [modifierId], [archived], [archiverID], [inactive]) VALUES (28, N'998966    ', N'FirstName', N'LastName', N'firstname.lastname@uts.edu.au', CAST(N'2007-07-17 16:30:50.000' AS DateTime), 1407, CAST(N'2007-08-09 10:11:48.000' AS DateTime), 1407, CAST(N'2007-08-15 15:32:54.120' AS DateTime), 1337, 0)
INSERT [dbo].[lecturers] ([id], [staffID], [first_name], [last_name], [email], [created], [creatorId], [modified], [modifierId], [archived], [archiverID], [inactive]) VALUES (30, N'10599     ', N'FirstName', N'LastName', N'firstname.lastname@uts.edu.au', CAST(N'2007-07-19 15:07:34.000' AS DateTime), 1337, CAST(N'2015-05-06 13:51:53.200' AS DateTime), 2186, NULL, NULL, 1)
INSERT [dbo].[lecturers] ([id], [staffID], [first_name], [last_name], [email], [created], [creatorId], [modified], [modifierId], [archived], [archiverID], [inactive]) VALUES (31, N'99990     ', N'FirstName', N'LastName', N'firstname.lastname@uts.edu.au', CAST(N'2007-07-19 15:07:34.000' AS DateTime), 1337, CAST(N'2011-03-24 11:25:41.310' AS DateTime), 1337, NULL, NULL, 0)
INSERT [dbo].[lecturers] ([id], [staffID], [first_name], [last_name], [email], [created], [creatorId], [modified], [modifierId], [archived], [archiverID], [inactive]) VALUES (32, N'34377     ', N'FirstName', N'LastName', N'firstname.lastname@uts.edu.au', CAST(N'2007-07-31 13:17:02.000' AS DateTime), 1337, CAST(N'2012-02-22 09:16:38.980' AS DateTime), 1337, NULL, NULL, 1)
INSERT [dbo].[lecturers] ([id], [staffID], [first_name], [last_name], [email], [created], [creatorId], [modified], [modifierId], [archived], [archiverID], [inactive]) VALUES (33, N'997707    ', N'FirstName', N'LastName', N'firstname.lastname@uts.edu.au', CAST(N'2007-07-31 13:17:02.000' AS DateTime), 1337, CAST(N'2012-02-22 09:16:39.043' AS DateTime), 1337, NULL, NULL, 1)
INSERT [dbo].[lecturers] ([id], [staffID], [first_name], [last_name], [email], [created], [creatorId], [modified], [modifierId], [archived], [archiverID], [inactive]) VALUES (34, N'964010    ', N'FirstName', N'LastName', N'firstname.lastname@uts.edu.au', CAST(N'2007-07-31 13:17:02.000' AS DateTime), 1337, CAST(N'2012-02-22 09:16:39.403' AS DateTime), 1337, NULL, NULL, 1)
INSERT [dbo].[lecturers] ([id], [staffID], [first_name], [last_name], [email], [created], [creatorId], [modified], [modifierId], [archived], [archiverID], [inactive]) VALUES (35, N'101991    ', N'FirstName', N'LastName', N'firstname.lastname@uts.edu.au', CAST(N'2007-07-31 13:18:27.000' AS DateTime), 1337, CAST(N'2007-07-31 13:19:02.000' AS DateTime), 1337, CAST(N'2008-03-10 17:06:48.880' AS DateTime), 1337, 0)
INSERT [dbo].[lecturers] ([id], [staffID], [first_name], [last_name], [email], [created], [creatorId], [modified], [modifierId], [archived], [archiverID], [inactive]) VALUES (36, N'24394     ', N'FirstName', N'LastName', N'firstname.lastname@uts.edu.au', CAST(N'2007-07-31 13:18:27.000' AS DateTime), 1337, CAST(N'2011-03-21 16:58:01.167' AS DateTime), 1337, NULL, NULL, 1)
INSERT [dbo].[lecturers] ([id], [staffID], [first_name], [last_name], [email], [created], [creatorId], [modified], [modifierId], [archived], [archiverID], [inactive]) VALUES (37, N'34030     ', N'FirstName', N'LastName', N'firstname.lastname@uts.edu.au', CAST(N'2007-07-31 13:18:27.000' AS DateTime), 1337, CAST(N'2012-02-22 09:16:39.623' AS DateTime), 1337, NULL, NULL, 1)
INSERT [dbo].[lecturers] ([id], [staffID], [first_name], [last_name], [email], [created], [creatorId], [modified], [modifierId], [archived], [archiverID], [inactive]) VALUES (38, N'20729     ', N'FirstName', N'LastName', N'firstname.lastname@uts.edu.au', CAST(N'2007-07-31 13:18:50.000' AS DateTime), 1337, CAST(N'2008-10-27 10:20:05.050' AS DateTime), 1337, NULL, NULL, 1)
INSERT [dbo].[lecturers] ([id], [staffID], [first_name], [last_name], [email], [created], [creatorId], [modified], [modifierId], [archived], [archiverID], [inactive]) VALUES (39, N'122952    ', N'FirstName', N'LastName', N'firstname.lastname@uts.edu.au', CAST(N'2007-08-15 15:01:47.133' AS DateTime), 1407, NULL, NULL, CAST(N'2007-08-15 15:01:52.913' AS DateTime), 1407, 0)
INSERT [dbo].[lecturers] ([id], [staffID], [first_name], [last_name], [email], [created], [creatorId], [modified], [modifierId], [archived], [archiverID], [inactive]) VALUES (40, N'998725    ', N'FirstName', N'LastName', N'firstname.lastname@uts.edu.au', CAST(N'2007-08-15 15:52:49.633' AS DateTime), 1614, NULL, NULL, CAST(N'2008-03-10 17:06:43.177' AS DateTime), 1337, 0)
INSERT [dbo].[lecturers] ([id], [staffID], [first_name], [last_name], [email], [created], [creatorId], [modified], [modifierId], [archived], [archiverID], [inactive]) VALUES (41, N'39750     ', N'FirstName', N'LastName', N'firstname.lastname@uts.edu.au', CAST(N'2007-09-18 14:40:48.020' AS DateTime), 1614, CAST(N'2012-02-22 09:16:39.560' AS DateTime), 1337, NULL, NULL, 1)
INSERT [dbo].[lecturers] ([id], [staffID], [first_name], [last_name], [email], [created], [creatorId], [modified], [modifierId], [archived], [archiverID], [inactive]) VALUES (42, N'996087    ', N'FirstName', N'LastName', N'firstname.lastname@uts.edu.au', CAST(N'2008-01-31 15:11:00.790' AS DateTime), 1656, CAST(N'2009-02-20 15:29:29.317' AS DateTime), 1656, NULL, NULL, 1)
INSERT [dbo].[lecturers] ([id], [staffID], [first_name], [last_name], [email], [created], [creatorId], [modified], [modifierId], [archived], [archiverID], [inactive]) VALUES (43, N'103710    ', N'FirstName', N'LastName', N'firstname.lastname@uts.edu.au', CAST(N'2008-03-04 10:46:40.767' AS DateTime), 1337, CAST(N'2008-03-10 17:06:32.240' AS DateTime), 1337, CAST(N'2008-04-22 13:00:21.357' AS DateTime), 1337, 0)
INSERT [dbo].[lecturers] ([id], [staffID], [first_name], [last_name], [email], [created], [creatorId], [modified], [modifierId], [archived], [archiverID], [inactive]) VALUES (44, N'998966    ', N'FirstName', N'LastName', N'firstname.lastname@uts.edu.au', CAST(N'2008-04-01 10:04:37.090' AS DateTime), 1407, NULL, NULL, CAST(N'2008-04-01 10:47:10.207' AS DateTime), 1407, 0)
INSERT [dbo].[lecturers] ([id], [staffID], [first_name], [last_name], [email], [created], [creatorId], [modified], [modifierId], [archived], [archiverID], [inactive]) VALUES (45, N'998725    ', N'FirstName', N'LastName', N'firstname.lastname@uts.edu.au', CAST(N'2008-04-17 12:11:06.497' AS DateTime), 1337, CAST(N'2009-02-20 15:23:04.707' AS DateTime), 1656, NULL, NULL, 1)
INSERT [dbo].[lecturers] ([id], [staffID], [first_name], [last_name], [email], [created], [creatorId], [modified], [modifierId], [archived], [archiverID], [inactive]) VALUES (46, N'103710    ', N'FirstName', N'LastName', N'firstname.lastname@uts.edu.au', CAST(N'2008-04-23 14:00:53.360' AS DateTime), 1337, CAST(N'2012-07-23 12:06:09.917' AS DateTime), 1337, NULL, NULL, 1)
INSERT [dbo].[lecturers] ([id], [staffID], [first_name], [last_name], [email], [created], [creatorId], [modified], [modifierId], [archived], [archiverID], [inactive]) VALUES (47, N'101991    ', N'FirstName', N'LastName', N'firstname.lastname@uts.edu.au', CAST(N'2008-06-12 14:59:21.400' AS DateTime), 1337, CAST(N'2009-02-20 15:23:58.510' AS DateTime), 1656, NULL, NULL, 1)
INSERT [dbo].[lecturers] ([id], [staffID], [first_name], [last_name], [email], [created], [creatorId], [modified], [modifierId], [archived], [archiverID], [inactive]) VALUES (48, N'14462     ', N'FirstName', N'LastName', N'firstname.lastname@uts.edu.au', CAST(N'2008-09-04 16:15:12.757' AS DateTime), 1337, CAST(N'2009-08-05 12:20:57.940' AS DateTime), 1337, NULL, NULL, 1)
INSERT [dbo].[lecturers] ([id], [staffID], [first_name], [last_name], [email], [created], [creatorId], [modified], [modifierId], [archived], [archiverID], [inactive]) VALUES (49, N'998966    ', N'FirstName', N'LastName', N'firstname.lastname@uts.edu.au', CAST(N'2008-10-21 15:03:31.670' AS DateTime), 1407, CAST(N'2008-10-21 15:04:49.047' AS DateTime), 1407, CAST(N'2008-10-21 15:04:56.030' AS DateTime), 1407, 0)
INSERT [dbo].[lecturers] ([id], [staffID], [first_name], [last_name], [email], [created], [creatorId], [modified], [modifierId], [archived], [archiverID], [inactive]) VALUES (50, N'23683     ', N'FirstName', N'LastName', N'firstname.lastname@uts.edu.au', CAST(N'2008-12-02 10:47:59.857' AS DateTime), 1614, CAST(N'2009-02-20 15:25:54.037' AS DateTime), 1656, NULL, NULL, 1)
INSERT [dbo].[lecturers] ([id], [staffID], [first_name], [last_name], [email], [created], [creatorId], [modified], [modifierId], [archived], [archiverID], [inactive]) VALUES (51, N'10686     ', N'FirstName', N'LastName', N'firstname.lastname@uts.edu.au', CAST(N'2008-12-15 16:26:53.990' AS DateTime), 1656, CAST(N'2011-03-24 11:24:50.823' AS DateTime), 1337, NULL, NULL, 1)
INSERT [dbo].[lecturers] ([id], [staffID], [first_name], [last_name], [email], [created], [creatorId], [modified], [modifierId], [archived], [archiverID], [inactive]) VALUES (52, N'39747     ', N'FirstName', N'LastName', N'firstname.lastname@uts.edu.au', CAST(N'2008-12-15 16:26:54.007' AS DateTime), 1656, CAST(N'2012-02-22 09:16:38.903' AS DateTime), 1337, NULL, NULL, 1)
INSERT [dbo].[lecturers] ([id], [staffID], [first_name], [last_name], [email], [created], [creatorId], [modified], [modifierId], [archived], [archiverID], [inactive]) VALUES (53, N'106075    ', N'FirstName', N'LastName', N'firstname.lastname@uts.edu.au', CAST(N'2009-02-18 14:37:15.987' AS DateTime), 1656, CAST(N'2012-02-22 09:16:39.653' AS DateTime), 1337, NULL, NULL, 1)
INSERT [dbo].[lecturers] ([id], [staffID], [first_name], [last_name], [email], [created], [creatorId], [modified], [modifierId], [archived], [archiverID], [inactive]) VALUES (54, N'104617    ', N'FirstName', N'LastName', N'firstname.lastname@uts.edu.au', CAST(N'2009-02-20 15:28:25.190' AS DateTime), 1656, CAST(N'2014-03-17 14:30:31.497' AS DateTime), 2509, NULL, NULL, 0)
INSERT [dbo].[lecturers] ([id], [staffID], [first_name], [last_name], [email], [created], [creatorId], [modified], [modifierId], [archived], [archiverID], [inactive]) VALUES (55, N'101869    ', N'FirstName', N'LastName', N'firstname.lastname@uts.edu.au', CAST(N'2009-03-23 12:44:30.757' AS DateTime), 1337, CAST(N'2011-08-01 12:16:32.700' AS DateTime), 1614, NULL, NULL, 1)
INSERT [dbo].[lecturers] ([id], [staffID], [first_name], [last_name], [email], [created], [creatorId], [modified], [modifierId], [archived], [archiverID], [inactive]) VALUES (56, N'929947    ', N'FirstName', N'LastName', N'firstname.lastname@uts.edu.au', CAST(N'2009-03-24 15:06:23.957' AS DateTime), 1656, CAST(N'2010-05-18 15:01:01.867' AS DateTime), 1834, CAST(N'2010-05-18 15:01:10.947' AS DateTime), 1834, 0)
INSERT [dbo].[lecturers] ([id], [staffID], [first_name], [last_name], [email], [created], [creatorId], [modified], [modifierId], [archived], [archiverID], [inactive]) VALUES (57, N'105269    ', N'FirstName', N'LastName', N'firstname.lastname@uts.edu.au', CAST(N'2009-04-20 10:22:36.170' AS DateTime), 1337, CAST(N'2009-08-05 12:21:17.630' AS DateTime), 1337, NULL, NULL, 1)
INSERT [dbo].[lecturers] ([id], [staffID], [first_name], [last_name], [email], [created], [creatorId], [modified], [modifierId], [archived], [archiverID], [inactive]) VALUES (58, N'107306    ', N'FirstName', N'LastName', N'firstname.lastname@uts.edu.au', CAST(N'2009-07-27 13:26:56.893' AS DateTime), 1337, CAST(N'2012-07-23 11:51:44.053' AS DateTime), 1337, NULL, NULL, 0)
INSERT [dbo].[lecturers] ([id], [staffID], [first_name], [last_name], [email], [created], [creatorId], [modified], [modifierId], [archived], [archiverID], [inactive]) VALUES (59, N'107695    ', N'FirstName', N'LastName', N'firstname.lastname@uts.edu.au', CAST(N'2009-09-15 16:29:19.890' AS DateTime), 1614, CAST(N'2009-10-23 10:03:43.337' AS DateTime), 1337, NULL, NULL, 1)
INSERT [dbo].[lecturers] ([id], [staffID], [first_name], [last_name], [email], [created], [creatorId], [modified], [modifierId], [archived], [archiverID], [inactive]) VALUES (60, N'929947    ', N'FirstName', N'LastName', N'firstname.lastname@uts.edu.au', CAST(N'2009-10-01 10:24:28.543' AS DateTime), 1337, CAST(N'2012-02-22 09:16:38.840' AS DateTime), 1337, NULL, NULL, 1)
INSERT [dbo].[lecturers] ([id], [staffID], [first_name], [last_name], [email], [created], [creatorId], [modified], [modifierId], [archived], [archiverID], [inactive]) VALUES (61, N'39750     ', N'FirstName', N'LastName', N'firstname.lastname@uts.edu.au', CAST(N'2010-02-11 13:36:52.650' AS DateTime), 1614, CAST(N'2011-03-24 11:25:41.340' AS DateTime), 1337, CAST(N'2011-06-28 12:48:13.793' AS DateTime), 1614, 0)
INSERT [dbo].[lecturers] ([id], [staffID], [first_name], [last_name], [email], [created], [creatorId], [modified], [modifierId], [archived], [archiverID], [inactive]) VALUES (63, N'13716     ', N'FirstName', N'LastName', N'firstname.lastname@uts.edu.au', CAST(N'2010-03-01 10:44:35.843' AS DateTime), 2067, NULL, NULL, CAST(N'2010-05-18 15:14:40.197' AS DateTime), 1337, 0)
INSERT [dbo].[lecturers] ([id], [staffID], [first_name], [last_name], [email], [created], [creatorId], [modified], [modifierId], [archived], [archiverID], [inactive]) VALUES (64, N'10686     ', N'FirstName', N'LastName', N'firstname.lastname@uts.edu.au', CAST(N'2010-03-02 10:27:47.903' AS DateTime), 1614, CAST(N'2010-06-23 14:41:57.497' AS DateTime), 1337, CAST(N'2010-06-23 14:42:28.560' AS DateTime), 1337, 0)
INSERT [dbo].[lecturers] ([id], [staffID], [first_name], [last_name], [email], [created], [creatorId], [modified], [modifierId], [archived], [archiverID], [inactive]) VALUES (65, N'105122    ', N'FirstName', N'LastName', N'firstname.lastname@uts.edu.au', CAST(N'2010-03-23 10:34:58.473' AS DateTime), 1834, CAST(N'2010-03-23 10:37:14.383' AS DateTime), 1834, CAST(N'2010-03-23 10:37:21.650' AS DateTime), 1834, 0)
INSERT [dbo].[lecturers] ([id], [staffID], [first_name], [last_name], [email], [created], [creatorId], [modified], [modifierId], [archived], [archiverID], [inactive]) VALUES (66, N'998966    ', N'FirstName', N'LastName', N'firstname.lastname@uts.edu.au', CAST(N'2010-03-23 15:19:21.767' AS DateTime), 1407, NULL, NULL, CAST(N'2010-03-23 15:23:08.560' AS DateTime), 1407, 0)
INSERT [dbo].[lecturers] ([id], [staffID], [first_name], [last_name], [email], [created], [creatorId], [modified], [modifierId], [archived], [archiverID], [inactive]) VALUES (67, N'105122    ', N'FirstName', N'LastName', N'firstname.lastname@uts.edu.au', CAST(N'2010-03-26 14:06:44.690' AS DateTime), 1834, CAST(N'2012-07-16 14:06:43.083' AS DateTime), 1834, CAST(N'2012-07-16 14:14:35.360' AS DateTime), 1834, 0)
INSERT [dbo].[lecturers] ([id], [staffID], [first_name], [last_name], [email], [created], [creatorId], [modified], [modifierId], [archived], [archiverID], [inactive]) VALUES (68, N'29910     ', N'FirstName', N'LastName', N'firstname.lastname@uts.edu.au', CAST(N'2010-05-20 14:46:32.363' AS DateTime), 1614, CAST(N'2012-02-22 09:16:39.527' AS DateTime), 1337, NULL, NULL, 1)
INSERT [dbo].[lecturers] ([id], [staffID], [first_name], [last_name], [email], [created], [creatorId], [modified], [modifierId], [archived], [archiverID], [inactive]) VALUES (69, N'109835    ', N'FirstName', N'LastName', N'firstname.lastname@uts.edu.au', CAST(N'2010-07-20 15:02:05.190' AS DateTime), 1337, CAST(N'2011-08-01 12:16:26.247' AS DateTime), 1614, NULL, NULL, 1)
INSERT [dbo].[lecturers] ([id], [staffID], [first_name], [last_name], [email], [created], [creatorId], [modified], [modifierId], [archived], [archiverID], [inactive]) VALUES (70, N'108560    ', N'FirstName', N'LastName', N'firstname.lastname@uts.edu.au', CAST(N'2010-09-07 12:09:49.460' AS DateTime), 1337, CAST(N'2011-03-24 11:24:50.790' AS DateTime), 1337, NULL, NULL, 1)
INSERT [dbo].[lecturers] ([id], [staffID], [first_name], [last_name], [email], [created], [creatorId], [modified], [modifierId], [archived], [archiverID], [inactive]) VALUES (71, N'108980    ', N'FirstName', N'LastName', N'firstname.lastname@uts.edu.au', CAST(N'2011-02-01 14:17:51.883' AS DateTime), 2067, CAST(N'2012-02-22 09:16:39.310' AS DateTime), 1337, NULL, NULL, 1)
INSERT [dbo].[lecturers] ([id], [staffID], [first_name], [last_name], [email], [created], [creatorId], [modified], [modifierId], [archived], [archiverID], [inactive]) VALUES (72, N'111165    ', N'FirstName', N'LastName', N'firstname.lastname@uts.edu.au', CAST(N'2011-03-16 15:28:11.357' AS DateTime), 2186, CAST(N'2011-08-01 12:16:55.667' AS DateTime), 1614, NULL, NULL, 1)
INSERT [dbo].[lecturers] ([id], [staffID], [first_name], [last_name], [email], [created], [creatorId], [modified], [modifierId], [archived], [archiverID], [inactive]) VALUES (73, N'111931    ', N'FirstName', N'LastName', N'firstname.lastname@uts.edu.au', CAST(N'2011-03-31 11:48:22.720' AS DateTime), 1337, CAST(N'2011-08-01 12:16:20.233' AS DateTime), 1614, NULL, NULL, 1)
INSERT [dbo].[lecturers] ([id], [staffID], [first_name], [last_name], [email], [created], [creatorId], [modified], [modifierId], [archived], [archiverID], [inactive]) VALUES (74, N'10214     ', N'FirstName', N'LastName', N'firstname.lastname@uts.edu.au', CAST(N'2011-06-15 12:08:08.773' AS DateTime), 1614, CAST(N'2012-02-22 09:16:39.607' AS DateTime), 1337, NULL, NULL, 1)
INSERT [dbo].[lecturers] ([id], [staffID], [first_name], [last_name], [email], [created], [creatorId], [modified], [modifierId], [archived], [archiverID], [inactive]) VALUES (75, N'109021    ', N'FirstName', N'LastName', N'firstname.lastname@uts.edu.au', CAST(N'2011-07-13 16:13:26.057' AS DateTime), 2186, CAST(N'2012-02-22 09:16:39.577' AS DateTime), 1337, NULL, NULL, 1)
INSERT [dbo].[lecturers] ([id], [staffID], [first_name], [last_name], [email], [created], [creatorId], [modified], [modifierId], [archived], [archiverID], [inactive]) VALUES (76, N'106407    ', N'FirstName', N'LastName', N'firstname.lastname@uts.edu.au', CAST(N'2011-08-01 12:18:50.133' AS DateTime), 1614, CAST(N'2012-02-22 09:17:01.903' AS DateTime), 1337, NULL, NULL, 0)
INSERT [dbo].[lecturers] ([id], [staffID], [first_name], [last_name], [email], [created], [creatorId], [modified], [modifierId], [archived], [archiverID], [inactive]) VALUES (77, N'105122    ', N'FirstName', N'LastName', N'firstname.lastname@uts.edu.au', CAST(N'2012-02-28 12:14:19.287' AS DateTime), 1834, CAST(N'2012-02-28 12:14:35.287' AS DateTime), 1834, CAST(N'2012-02-28 12:14:40.443' AS DateTime), 1834, 0)
INSERT [dbo].[lecturers] ([id], [staffID], [first_name], [last_name], [email], [created], [creatorId], [modified], [modifierId], [archived], [archiverID], [inactive]) VALUES (78, N'112670    ', N'FirstName', N'LastName', N'firstname.lastname@uts.edu.au', CAST(N'2012-02-28 14:46:33.157' AS DateTime), 1337, CAST(N'2013-02-21 14:40:10.853' AS DateTime), 2536, NULL, NULL, 0)
INSERT [dbo].[lecturers] ([id], [staffID], [first_name], [last_name], [email], [created], [creatorId], [modified], [modifierId], [archived], [archiverID], [inactive]) VALUES (79, N'112366    ', N'FirstName', N'LastName', N'firstname.lastname@uts.edu.au', CAST(N'2012-03-01 15:09:21.710' AS DateTime), 1337, CAST(N'2014-06-11 15:17:07.833' AS DateTime), 1337, NULL, NULL, 0)
INSERT [dbo].[lecturers] ([id], [staffID], [first_name], [last_name], [email], [created], [creatorId], [modified], [modifierId], [archived], [archiverID], [inactive]) VALUES (80, N'114553    ', N'FirstName', N'LastName', N'firstname.lastname@uts.edu.au', CAST(N'2012-03-13 12:00:40.237' AS DateTime), 1614, CAST(N'2012-04-27 15:37:38.123' AS DateTime), 1614, NULL, NULL, 1)
INSERT [dbo].[lecturers] ([id], [staffID], [first_name], [last_name], [email], [created], [creatorId], [modified], [modifierId], [archived], [archiverID], [inactive]) VALUES (81, N'114841    ', N'FirstName', N'LastName', N'firstname.lastname@uts.edu.au', CAST(N'2012-04-20 11:22:27.820' AS DateTime), 1337, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[lecturers] ([id], [staffID], [first_name], [last_name], [email], [created], [creatorId], [modified], [modifierId], [archived], [archiverID], [inactive]) VALUES (82, N'113878    ', N'FirstName', N'LastName', N'firstname.lastname@uts.edu.au', CAST(N'2012-04-27 15:37:22.107' AS DateTime), 1614, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[lecturers] ([id], [staffID], [first_name], [last_name], [email], [created], [creatorId], [modified], [modifierId], [archived], [archiverID], [inactive]) VALUES (83, N'115015    ', N'FirstName', N'LastName', N'firstname.lastname@uts.edu.au', CAST(N'2012-06-01 15:26:30.070' AS DateTime), 1614, CAST(N'2013-02-12 15:45:43.193' AS DateTime), 1337, NULL, NULL, 1)
INSERT [dbo].[lecturers] ([id], [staffID], [first_name], [last_name], [email], [created], [creatorId], [modified], [modifierId], [archived], [archiverID], [inactive]) VALUES (84, N'115359    ', N'FirstName', N'LastName', N'firstname.lastname@uts.edu.au', CAST(N'2012-07-20 15:13:52.917' AS DateTime), 1337, CAST(N'2013-02-12 15:45:33.490' AS DateTime), 1337, NULL, NULL, 1)
INSERT [dbo].[lecturers] ([id], [staffID], [first_name], [last_name], [email], [created], [creatorId], [modified], [modifierId], [archived], [archiverID], [inactive]) VALUES (85, N'998606    ', N'FirstName', N'LastName', N'firstname.lastname@uts.edu.au', CAST(N'2012-07-20 15:13:53.057' AS DateTime), 1337, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[lecturers] ([id], [staffID], [first_name], [last_name], [email], [created], [creatorId], [modified], [modifierId], [archived], [archiverID], [inactive]) VALUES (86, N'106416    ', N'FirstName', N'LastName', N'firstname.lastname@uts.edu.au', CAST(N'2012-07-20 15:13:53.057' AS DateTime), 1337, CAST(N'2013-02-12 15:45:43.193' AS DateTime), 1337, NULL, NULL, 1)
INSERT [dbo].[lecturers] ([id], [staffID], [first_name], [last_name], [email], [created], [creatorId], [modified], [modifierId], [archived], [archiverID], [inactive]) VALUES (87, N'115358    ', N'FirstName', N'LastName', N'firstname.lastname@uts.edu.au', CAST(N'2012-07-20 15:14:21.917' AS DateTime), 1337, CAST(N'2012-07-23 12:05:55.153' AS DateTime), 1337, NULL, NULL, 0)
INSERT [dbo].[lecturers] ([id], [staffID], [first_name], [last_name], [email], [created], [creatorId], [modified], [modifierId], [archived], [archiverID], [inactive]) VALUES (88, N'105122    ', N'FirstName', N'LastName', N'firstname.lastname@uts.edu.au', CAST(N'2012-09-12 10:23:50.860' AS DateTime), 1834, NULL, NULL, CAST(N'2012-09-12 10:33:38.743' AS DateTime), 1834, 0)
INSERT [dbo].[lecturers] ([id], [staffID], [first_name], [last_name], [email], [created], [creatorId], [modified], [modifierId], [archived], [archiverID], [inactive]) VALUES (89, N'116083    ', N'FirstName', N'LastName', N'firstname.lastname@uts.edu.au', CAST(N'2012-11-07 10:05:43.097' AS DateTime), 1614, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[lecturers] ([id], [staffID], [first_name], [last_name], [email], [created], [creatorId], [modified], [modifierId], [archived], [archiverID], [inactive]) VALUES (90, N'117458    ', N'FirstName', N'LastName', N'firstname.lastname@uts.edu.au', CAST(N'2013-03-26 15:51:07.290' AS DateTime), 2186, CAST(N'2014-01-30 16:50:48.740' AS DateTime), 2560, NULL, NULL, 1)
INSERT [dbo].[lecturers] ([id], [staffID], [first_name], [last_name], [email], [created], [creatorId], [modified], [modifierId], [archived], [archiverID], [inactive]) VALUES (91, N'117437    ', N'FirstName', N'LastName', N'firstname.lastname@uts.edu.au', CAST(N'2013-03-26 15:51:07.290' AS DateTime), 2186, CAST(N'2014-01-30 16:50:23.600' AS DateTime), 2560, NULL, NULL, 1)
INSERT [dbo].[lecturers] ([id], [staffID], [first_name], [last_name], [email], [created], [creatorId], [modified], [modifierId], [archived], [archiverID], [inactive]) VALUES (92, N'108018    ', N'FirstName', N'LastName', N'firstname.lastname@uts.edu.au', CAST(N'2013-07-26 16:01:03.157' AS DateTime), 1337, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[lecturers] ([id], [staffID], [first_name], [last_name], [email], [created], [creatorId], [modified], [modifierId], [archived], [archiverID], [inactive]) VALUES (93, N'114723    ', N'FirstName', N'LastName', N'firstname.lastname@uts.edu.au', CAST(N'2014-02-13 14:51:50.120' AS DateTime), 2560, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[lecturers] ([id], [staffID], [first_name], [last_name], [email], [created], [creatorId], [modified], [modifierId], [archived], [archiverID], [inactive]) VALUES (94, N'104445    ', N'FirstName', N'LastName', N'firstname.lastname@uts.edu.au', CAST(N'2014-02-24 10:53:03.740' AS DateTime), 1337, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[lecturers] ([id], [staffID], [first_name], [last_name], [email], [created], [creatorId], [modified], [modifierId], [archived], [archiverID], [inactive]) VALUES (95, N'115946    ', N'FirstName', N'LastName', N'firstname.lastname@uts.edu.au', CAST(N'2014-04-07 08:54:31.400' AS DateTime), 1337, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[lecturers] ([id], [staffID], [first_name], [last_name], [email], [created], [creatorId], [modified], [modifierId], [archived], [archiverID], [inactive]) VALUES (96, N'121489    ', N'FirstName', N'LastName', N'firstname.lastname@uts.edu.au', CAST(N'2014-04-17 15:54:25.113' AS DateTime), 1337, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[lecturers] ([id], [staffID], [first_name], [last_name], [email], [created], [creatorId], [modified], [modifierId], [archived], [archiverID], [inactive]) VALUES (97, N'121488    ', N'FirstName', N'LastName', N'firstname.lastname@uts.edu.au', CAST(N'2014-04-17 15:54:25.127' AS DateTime), 1337, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[lecturers] ([id], [staffID], [first_name], [last_name], [email], [created], [creatorId], [modified], [modifierId], [archived], [archiverID], [inactive]) VALUES (98, N'108671    ', N'FirstName', N'LastName', N'firstname.lastname@uts.edu.au', CAST(N'2015-03-11 15:39:45.040' AS DateTime), 2186, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[lecturers] ([id], [staffID], [first_name], [last_name], [email], [created], [creatorId], [modified], [modifierId], [archived], [archiverID], [inactive]) VALUES (99, N'105762    ', N'FirstName', N'LastName', N'firstname.lastname@uts.edu.au', CAST(N'2015-03-23 16:34:25.073' AS DateTime), 1864, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[lecturers] ([id], [staffID], [first_name], [last_name], [email], [created], [creatorId], [modified], [modifierId], [archived], [archiverID], [inactive]) VALUES (100, N'10599     ', N'FirstName', N'LastName', N'firstname.lastname@uts.edu.au', CAST(N'2015-03-23 16:45:33.330' AS DateTime), 1864, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[lecturers] ([id], [staffID], [first_name], [last_name], [email], [created], [creatorId], [modified], [modifierId], [archived], [archiverID], [inactive]) VALUES (101, N'100201    ', N'FirstName', N'LastName', N'firstname.lastname@uts.edu.au', CAST(N'2015-03-23 16:46:04.173' AS DateTime), 1864, NULL, NULL, NULL, NULL, 0)
GO
INSERT [dbo].[lecturers] ([id], [staffID], [first_name], [last_name], [email], [created], [creatorId], [modified], [modifierId], [archived], [archiverID], [inactive]) VALUES (102, N'124548    ', N'FirstName', N'LastName', N'firstname.lastname@uts.edu.au', CAST(N'2015-05-14 10:55:47.330' AS DateTime), 1337, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[lecturers] ([id], [staffID], [first_name], [last_name], [email], [created], [creatorId], [modified], [modifierId], [archived], [archiverID], [inactive]) VALUES (103, N'124554    ', N'FirstName', N'LastName', N'firstname.lastname@uts.edu.au', CAST(N'2015-05-20 14:04:59.233' AS DateTime), 2186, NULL, NULL, NULL, NULL, 0)
SET IDENTITY_INSERT [dbo].[lecturers] OFF
SET IDENTITY_INSERT [dbo].[messages] ON 

INSERT [dbo].[messages] ([id], [path], [filename], [modifierID], [modified], [description], [text], [cssID], [isactive]) VALUES (1, N'/student/index.cfm?scope=workshop&action=list&id=2&preview=1', N'student_workshop_list_instruction.html', 2186, CAST(N'2013-02-26 16:40:38.200' AS DateTime), N'Instruction of workshops in student interface', N'<p>
	&nbsp;</p>
<h2>
	Step 2:</h2>
<ul>
	<li>
		<p>
			<strong>To avoid a timetable clash</strong>, please check the date, time and location of each session carefully.</p>
	</li>
	<li>
		<p>
			For additional session information and to register, click on the <strong>&lsquo;detail&rsquo;</strong> link.</p>
	</li>
</ul>
<p>
	&nbsp;</p>', N'student_workshop_list_instruction', 1)
INSERT [dbo].[messages] ([id], [path], [filename], [modifierID], [modified], [description], [text], [cssID], [isactive]) VALUES (2, N'/student/index.cfm?scope=workshop&preview=1', N'student_workshop_skillset_instruction.html', 2560, CAST(N'2013-02-21 13:15:20.273' AS DateTime), N'Instruction of skill set in student interface', N'<p>
	&nbsp;</p>
<h3>
	<strong>Important information:</strong></h3>
<ul>
	<li>
		<p>
			<strong>Follow </strong>each step to complete your booking<span style="font-weight: bold;"> </span></p>
	</li>
	<li>
		<p>
			<strong>Check </strong><span class="st">the time to ensure that there is no timetable clash</span></p>
	</li>
	<li>
		<p>
			<strong>Check your email</strong> (UTS&nbsp;email address) for the booking confirmation</p>
	</li>
	<li>
		<p>
			<strong>Cancel, </strong>if no longer available, <strong>24 hours before </strong>the scheduled session by clicking on &#39;<strong>My Booking</strong>&#39; tab and then the &#39;<strong>detail</strong>&#39; link</p>
	</li>
	<li>
		<p>
			Please know that failing to turn up for your registered workshop is not fair to those on the waiting list. Repeat offenders (2 no-shows) may be barred from registering for workshops.</p>
	</li>
</ul>
<p>
	&nbsp;</p>
<p>
	&nbsp;</p>
<h2>
	Step 1:</h2>
<p>
	<strong>To start the booking process, please click on the skill-set that you want to improve.</strong></p>
<p>
	&nbsp;</p>', N'student_workshop_skillset_instruction', 1)
INSERT [dbo].[messages] ([id], [path], [filename], [modifierID], [modified], [description], [text], [cssID], [isactive]) VALUES (3, N'/student/index.cfm?scope=newsession&action=edit&id=5752&preview=1', N'student_file_upload_instruction.html', 1337, CAST(N'2013-03-11 09:53:38.717' AS DateTime), N'Instruction of file upload in student interface', N'<p>
	Please upload the following documents by clicking the upload button (max. 50 MB):</p>
<ul>
	<li>
		<p>
			a draft of your assignment (one version only, with your name and page number on every page)</p>
	</li>
	<li>
		<p>
			the assignment question</p>
	</li>
	<li>
		<p>
			the assessment criteria</p>
	</li>
</ul>
<p>
	<strong>You must upload your documents by 12 midnight the day before your scheduled appointment.</strong></p>', N'student_file_upload_instruction', 1)
INSERT [dbo].[messages] ([id], [path], [filename], [modifierID], [modified], [description], [text], [cssID], [isactive]) VALUES (4, N'/student/index.cfm?scope=help&preview=1', N'student_help.html', 1337, CAST(N'2015-02-25 11:50:14.697' AS DateTime), N'FAQ in student interface', N'<h2>
	Frequently asked questions:</h2>
<h3>
	<a href="#About_the_HELPS_programs">About the HELPS programs</a></h3>
<p>
	<a href="#Who_can_use_HELPS_">Who can use HELPS?</a><br />
	<a href="#Where_is_HELPS_">Where is HELPS?</a><br />
	<a href="#Who_can_use_HELPS_">How much does it cost?</a><br />
	<a href="#Can_you_help_me_with_my_assignment_">Can you help me with my assignment?</a><br />
	<a href="#Can_you_proofread_and_correct_my_assignment_">Can you proofread and correct my assignment?</a><br />
	<a href="#Can_you_help_me_with_the_content_of_my_assignment_">Can you help me with the content of my assignment?</a><br />
	<a href="#My_lecturer_says_I_need_to_improve_my_grammar._Can_you_help_me_">My lecturer says I need to improve my grammar. Can you help me?</a><br />
	<a href="#Can_you_help_me_with_my_pronunciation_">Can you help me with my pronunciation?</a><br />
	<a href="#Can_I_practise_my_seminar_presentation_with_someone_">Can I practise my seminar presentation with someone?</a></p>
<p>
	&nbsp;</p>
<h3>
	<a href="#About_the_Special_Conditions_in_Exams">About the Special Conditions in Exams</a></h3>
<p>
	<a href="#I_am_not_a_native_English_speaker_and_I_feel_that_I_need_more_time_in_exams._Can_you_help_">I am not a native English speaker and I feel that I need more time in exams. Can you help?</a><br />
	<a href="#I_m_a_second_third_year_student._Can_I_get_Special_Conditions_in_my_exams_">I&#39;m a second/third year student. Can I get special conditions in my exams?</a><br />
	<a href="#What_is_the_deadline_to_apply_for_the_Special_Conditions_">What is the deadline to apply for the conditions?</a></p>
<p>
	&nbsp;</p>
<hr />
<h3>
	<br />
	<a name="About_the_HELPS_programs">About the HELPS programs</a></h3>
<p>
	&nbsp;</p>
<p>
	<a name="Who_can_use_HELPS_">Who can use HELPS?</a></p>
<p>
	&raquo; Any student enrolled in any faculty at UTS, and all members of UTS staff</p>
<p>
	<a name="Where_is_HELPS_">Where is HELPS?</a></p>
<p>
	&raquo; HELPS is located on Building 1, Level 3 , room 8 (opposite the Careers service)</p>
<p>
	<a name="How_much_does_it_cost_">How much does it cost?</a></p>
<p>
	&raquo; Services are free of tuition fees for non-credit workshops and individual consultations.</p>
<p>
	<a name="Can_you_help_me_with_my_assignment_">Can you help me with my assignment?</a></p>
<p>
	&raquo; Yes. HELPS offers various workshops and individual consultations. For more information, check out our <a href="http://www.ssu.uts.edu.au/helps/index.html">website</a>.</p>
<p>
	<a name="Can_you_proofread_and_correct_my_assignment_">Can you proofread and correct my assignment?</a></p>
<p>
	&raquo; No. Our role is not to correct grammar or other errors in an assignment. We can help you develop your own editing strategies. You should also use a computer spell-check, find a competent friend and a good dictionary.</p>
<p>
	<a name="Can_you_help_me_with_the_content_of_my_assignment_">Can you help me with the content of my assignment?</a></p>
<p>
	&raquo; No. We can&rsquo;t tell you what to say, we can only help you say it better and more clearly. While we&rsquo;re happy to act as a sounding board for your ideas, content questions require the specialised disciplinary knowledge of lecturers and tutors in your faculty. You should take specific content questions directly to them.</p>
<p>
	<a name="My_lecturer_says_I_need_to_improve_my_grammar._Can_you_help_me_">My lecturer says I need to improve my grammar. Can you help me?</a></p>
<p>
	&raquo; Yes. Please check out our <a href="http://www.ssu.uts.edu.au/helps/index.html">website</a> or <a href="http://www.ssu.uts.edu.au/helps/resources/">Learning resources</a>.</p>
<p>
	<a name="Can_you_help_me_with_my_pronunciation_">Can you help me with my pronunciation?</a></p>
<p>
	&raquo; Yes. Please check <a href="http://www.ssu.uts.edu.au/helps/index.html">website</a> or <a href="http://www.ssu.uts.edu.au/helps/resources/">Learning resources</a>.</p>
<p>
	<a name="Can_I_practise_my_seminar_presentation_with_someone_">Can I practise my seminar presentation with someone?</a></p>
<p>
	&raquo; Yes. You can attend our workshops or drop in for an individual consultation session.</p>
<p class="b2top" style="text-align: right;">
	<a href="#"><img alt="Back to top" height="21" src="http://datasearch.uts.edu.au/site_manager_sites/elssa/images/css/b2top.gif" width="71" /></a></p>
<p>
	&nbsp;</p>
<h3>
	<a name="About_the_Special_Conditions_in_Exams">About the Special Conditions in Exams</a></h3>
<p>
	&nbsp;&nbsp;</p>
<p>
	<a name="I_am_not_a_native_English_speaker_and_I_feel_that_I_need_more_time_in_exams._Can_you_help_">I am not a native English speaker and I feel that I need more time in exams. Can you help?</a></p>
<p>
	&raquo; Maybe. You might be eligible to apply for Special Conditions in Exams.</p>
<p>
	<a name="I_m_a_second_third_year_student._Can_I_get_Special_Conditions_in_my_exams_">I&#39;m a second/third year student. Can I get Special Conditions in my exams?</a></p>
<p>
	&raquo; No. Only first year (1st/2nd semester) students are eligible to apply.</p>
<p>
	<a name="What_is_the_deadline_to_apply_for_the_Special_Conditions_">What is the deadline to apply for the Special Conditions?</a></p>
<p>
	&raquo; The application closes on the Census date (for Autumn semester: 31 March 2015) . Click on<a href="http://www.ssu.uts.edu.au/helps/conditions/index.html"> Special Conditions in Exams</a> for more information.</p>
<p>
	If you have a question which has not been answered above, please email us: HELPS@uts.edu.au</p>
<p class="b2top" style="text-align: right;">
	<a href="#"><img alt="Back to top" height="21" src="http://datasearch.uts.edu.au/site_manager_sites/elssa/images/css/b2top.gif" width="71" /></a></p>
<p>
	&nbsp;</p>
<p>
	&nbsp;</p>
<p>
	&nbsp;</p>', N'student_help', 1)
INSERT [dbo].[messages] ([id], [path], [filename], [modifierID], [modified], [description], [text], [cssID], [isactive]) VALUES (5, N'/student/index.cfm?scope=program&preview=1', N'student_helps_programs.html', 1337, CAST(N'2015-02-25 11:00:34.790' AS DateTime), N'Program in student interface', N'<h2>
	Drop-in consultations</h2>
<p style="margin: 0px 0px 1.3em; padding: 0px; border: 0px; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 14px; font-stretch: inherit; line-height: 20px; vertical-align: baseline; color: rgb(37, 43, 43);">
	At the initial stage of your assignment writing or preparation process, you are strongly encouraged to come and see HELPS. The best time to see us is when you first receive your assignment.</p>
<p style="margin: 0px 0px 1.3em; padding: 0px; border: 0px; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 14px; font-stretch: inherit; line-height: 20px; vertical-align: baseline; color: rgb(37, 43, 43);">
	<strong style="margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-size: inherit; font-style: inherit; font-variant: inherit; font-stretch: inherit; line-height: inherit; vertical-align: baseline; color: rgb(0, 0, 0);">HELPS Advisors can help edit your assignment WITH you, not FOR you</strong>&nbsp;- helping you to edit for:</p>
<ul style="margin: 0px 0px 15px 30px; padding-right: 0px; padding-left: 0px; border: 0px; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 14px; font-stretch: inherit; line-height: 20px; vertical-align: baseline; list-style-position: outside; color: rgb(37, 43, 43);">
	<li style="margin: 0px 0px 10px; padding: 0px; border: 0px; font-family: inherit; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; vertical-align: baseline; text-align: left;">
		Structure and argument &ndash; that your writing is logically organised with well-developed and well-supported arguments.</li>
	<li style="margin: 0px 0px 10px; padding: 0px; border: 0px; font-family: inherit; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; vertical-align: baseline; text-align: left;">
		Style and expression &ndash; that your choice of vocabulary is appropriate, sentences are well constructed, ideas are clearly introduced, and paragraphs are fully developed.</li>
	<li style="margin: 0px 0px 10px; padding: 0px; border: 0px; font-family: inherit; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; vertical-align: baseline; text-align: left;">
		Grammar &ndash; that your issues are identified and explained so you can learn from your mistakes and avoid making them in the future.</li>
</ul>
<p style="margin: 0px 0px 1.3em; padding: 0px; border: 0px; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 14px; font-stretch: inherit; line-height: 20px; vertical-align: baseline; color: rgb(37, 43, 43);">
	Proofreading is the final step in the editing process, with the aim of producing an error-free assignment. It is&nbsp;<strong style="margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-size: inherit; font-style: inherit; font-variant: inherit; font-stretch: inherit; line-height: inherit; vertical-align: baseline; color: rgb(0, 0, 0);">your</strong>&nbsp;responsibility to check for mistakes in spelling, punctuation, typing and formatting in your assignment before you submit it to your lecturer.</p>
<p style="margin: 0px 0px 1.3em; padding: 0px; border: 0px; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 14px; font-stretch: inherit; line-height: 20px; vertical-align: baseline; color: rgb(37, 43, 43);">
	We offer 15-minute drop-in advice sessions and 40-minute one-to-one consultations by referral to help you with your assignment writing and preparation.</p>
<h3>
	Drop-in consultations are held at:</h3>
<ul>
	<li>
		<h4 style="margin: 14px 0px 0.714em; padding: 0px; border: 0px; font-family: ''DIN Bold''; font-size: 1.143em; font-weight: normal; font-stretch: inherit; line-height: 1em; vertical-align: baseline; -webkit-font-smoothing: antialiased; color: rgb(37, 43, 43);">
			2015 Autumn semester (from week 2 to week 14)</h4>
		<p style="margin: 0px 0px 1.3em; padding: 0px; border: 0px; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 14px; font-stretch: inherit; line-height: 20px; vertical-align: baseline; color: rgb(37, 43, 43);">
			<em style="margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-size: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; vertical-align: baseline; color: rgb(0, 0, 0);">Not offered on Public Holidays</em></p>
		<ul style="margin: 0px 0px 15px 30px; padding-right: 0px; padding-left: 0px; border: 0px; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 14px; font-stretch: inherit; line-height: 20px; vertical-align: baseline; list-style-position: outside; color: rgb(37, 43, 43);">
			<li style="margin: 0px 0px 10px; padding: 0px; border: 0px; font-family: inherit; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; vertical-align: baseline; text-align: left;">
				HELPS office (CB01.03.08)
				<p style="margin: 0px 0px 1.3em; padding: 0px; border: 0px; font-family: inherit; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; vertical-align: baseline;">
					Monday to Thursday: 12noon - 6pm / Friday: 12noon - 5pm</p>
			</li>
		</ul>
		<ul style="margin: 0px 0px 15px 30px; padding-right: 0px; padding-left: 0px; border: 0px; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 14px; font-stretch: inherit; line-height: 20px; vertical-align: baseline; list-style-position: outside; color: rgb(37, 43, 43);">
			<li style="margin: 0px 0px 10px; padding: 0px; border: 0px; font-family: inherit; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; vertical-align: baseline; text-align: left;">
				UTS Blake Library (Research helpdesk)
				<p style="margin: 0px 0px 1.3em; padding: 0px; border: 0px; font-family: inherit; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; vertical-align: baseline;">
					Tuesday to Thursday: 4pm - 7pm / Saturday: 1pm - 4pm</p>
			</li>
		</ul>
		<ul style="margin: 0px 0px 15px 30px; padding-right: 0px; padding-left: 0px; border: 0px; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 14px; font-stretch: inherit; line-height: 20px; vertical-align: baseline; list-style-position: outside; color: rgb(37, 43, 43);">
			<li style="margin: 0px 0px 10px; padding: 0px; border: 0px; font-family: inherit; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; vertical-align: baseline; text-align: left;">
				Kuring Gai Library
				<p style="margin: 0px 0px 1.3em; padding: 0px; border: 0px; font-family: inherit; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; vertical-align: baseline;">
					Tuesday and Thursday: 2pm - 5pm</p>
			</li>
		</ul>
		<p style="margin: 0px 0px 1.3em; padding: 0px; border: 0px; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 14px; font-stretch: inherit; line-height: 20px; vertical-align: baseline; color: rgb(37, 43, 43);">
			At the drop-in advice session we can, if you need it, book you in for a longer&nbsp;<a href="https://www.uts.edu.au/current-students/support/helps/assignment-writing-assistance/one-one-consultation-referral" style="font-weight: bold; color: rgb(0, 153, 204); text-decoration: none; -webkit-transition: all 0.2s ease-in-out; transition: all 0.2s ease-in-out; -webkit-tap-highlight-color: rgb(0, 153, 204);">one-to-one consultation&nbsp;</a>closer to the due date for when you have your draft ready.</p>
	</li>
</ul>
<h2>
	Individual assistance by referral</h2>
<p style="margin: 0px 0px 1.3em; padding: 0px; border: 0px; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 14px; font-stretch: inherit; line-height: 20px; vertical-align: baseline; color: rgb(37, 43, 43);">
	After you have attended a&nbsp;<a href="https://www.uts.edu.au/current-students/support/helps/assignment-writing-assistance" style="font-weight: bold; color: rgb(0, 153, 204); text-decoration: none; -webkit-transition: all 0.2s ease-in-out; transition: all 0.2s ease-in-out; -webkit-tap-highlight-color: rgb(0, 153, 204);">drop-in advice&nbsp;</a>session; if a longer consultation is required you may be able to book in for a 40-minute one-to-one consultation.</p>
<p style="margin: 0px 0px 1.3em; padding: 0px; border: 0px; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 14px; font-stretch: inherit; line-height: 20px; vertical-align: baseline; color: rgb(37, 43, 43);">
	Having a one-to-one consultation is an opportunity for an in-depth discussion in relation to your specific needs on an assessment.</p>
<p style="margin: 0px 0px 1.3em; padding: 0px; border: 0px; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 14px; font-stretch: inherit; line-height: 20px; vertical-align: baseline; color: rgb(37, 43, 43);">
	A 40-minute one-to-one consultation may involve:</p>
<ul style="margin: 0px 0px 15px 30px; padding-right: 0px; padding-left: 0px; border: 0px; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 14px; font-stretch: inherit; line-height: 20px; vertical-align: baseline; list-style-position: outside; color: rgb(37, 43, 43);">
	<li style="margin: 0px 0px 10px; padding: 0px; border: 0px; font-family: inherit; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; vertical-align: baseline; text-align: left;">
		discussing your draft to ensure that you have addressed the assessment criteria</li>
	<li style="margin: 0px 0px 10px; padding: 0px; border: 0px; font-family: inherit; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; vertical-align: baseline; text-align: left;">
		addressing a number of grammar or referencing issues that require assistance</li>
	<li style="margin: 0px 0px 10px; padding: 0px; border: 0px; font-family: inherit; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; vertical-align: baseline; text-align: left;">
		preparing for an oral presentation.</li>
</ul>
<h2>
	Daily workshops</h2>
<ul>
	<li>
		<a _fcksavedurl="#study_reading" href="https://sitemgr.uts.edu.au/fckeditor/editor/fckeditor.html?InstanceName=ObjectContent&amp;Toolbar=SiteManager#study_reading">Study and reading skills</a></li>
	<li>
		<a _fcksavedurl="#writing" href="https://sitemgr.uts.edu.au/fckeditor/editor/fckeditor.html?InstanceName=ObjectContent&amp;Toolbar=SiteManager#writing">Writing skills</a></li>
	<li>
		<a _fcksavedurl="#presentation_speaking" href="https://sitemgr.uts.edu.au/fckeditor/editor/fckeditor.html?InstanceName=ObjectContent&amp;Toolbar=SiteManager#presentation_speaking">Presentation and speaking skills</a></li>
</ul>
<p>
	You will need to register for these workshops as places are limited. To <em><strong>register</strong></em>, click on the <strong>workshop registration tab </strong>and follow the instructions. If you wish your cancel your registration, please do so online or contact us via email. Failing to turn up for your registered workshops are not fair to those on the waiting lists. Repeat offenders may be barred from attending workshops for the rest of the semester.</p>
<h3>
	<a name="study_reading">Study + Reading Skills</a></h3>
<h2 class="toc-header toc-header-bullet" style="margin: 14px 0px; padding: 0px; border: 0px; font-family: ''DIN Bold''; font-size: 2em; font-weight: normal; font-stretch: inherit; line-height: 1em; vertical-align: baseline; -webkit-font-smoothing: antialiased; letter-spacing: -0.7px; color: rgb(37, 43, 43);">
	Reading and Note-making</h2>
<p style="margin: 0px 0px 1.3em; padding: 0px; border: 0px; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 14px; font-stretch: inherit; line-height: 20px; vertical-align: baseline; color: rgb(37, 43, 43);">
	Fri 13 Mar 12:00 &ndash; 13:30&nbsp;<em style="margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-size: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; vertical-align: baseline; color: rgb(0, 0, 0);">CB02.07.008</em><br />
	Repeat: 18 Mar 11:00 &ndash; 12:30&nbsp;<em style="margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-size: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; vertical-align: baseline; color: rgb(0, 0, 0);">CB03.05.28</em></p>
<p style="margin: 0px 0px 1.3em; padding: 0px; border: 0px; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 14px; font-stretch: inherit; line-height: 20px; vertical-align: baseline; color: rgb(37, 43, 43);">
	<strong style="margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-size: inherit; font-style: inherit; font-variant: inherit; font-stretch: inherit; line-height: inherit; vertical-align: baseline; color: rgb(0, 0, 0);">Target group:&nbsp;</strong>All students<strong style="margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-size: inherit; font-style: inherit; font-variant: inherit; font-stretch: inherit; line-height: inherit; vertical-align: baseline; color: rgb(0, 0, 0);">&nbsp;</strong><br />
	<strong style="margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-size: inherit; font-style: inherit; font-variant: inherit; font-stretch: inherit; line-height: inherit; vertical-align: baseline; color: rgb(0, 0, 0);">What it covers:</strong><strong style="margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-size: inherit; font-style: inherit; font-variant: inherit; font-stretch: inherit; line-height: inherit; vertical-align: baseline; color: rgb(0, 0, 0);">&nbsp;</strong><em style="margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-size: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; vertical-align: baseline; color: rgb(0, 0, 0);">&quot;</em><em style="margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-size: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; vertical-align: baseline; color: rgb(0, 0, 0);">I have so much to read and so little time. How do I know which is more important?&rdquo;&nbsp;</em><span style="margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; vertical-align: baseline;">This workshop introduces you to the reading and note-making strategies that will help you to read more selectively and critically, and make notes to prepare for an assignment and/or exam revision</span></p>
<h2 class="toc-header toc-header-bullet" style="margin: 14px 0px; padding: 0px; border: 0px; font-family: ''DIN Bold''; font-size: 2em; font-weight: normal; font-stretch: inherit; line-height: 1em; vertical-align: baseline; -webkit-font-smoothing: antialiased; letter-spacing: -0.7px; color: rgb(37, 43, 43);">
	<span style="margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; vertical-align: baseline;">Exam Preparation</span></h2>
<p style="margin: 0px 0px 1.3em; padding: 0px; border: 0px; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 14px; font-stretch: inherit; line-height: 20px; vertical-align: baseline; color: rgb(37, 43, 43);">
	Thu 2 Apr 12:00 &ndash; 13:30&nbsp;<em style="margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-size: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; vertical-align: baseline; color: rgb(0, 0, 0);">CB02.07.008</em><br />
	Repeat: Tue 19 May 17:00 &ndash; 18:30&nbsp;<em style="margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-size: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; vertical-align: baseline; color: rgb(0, 0, 0);">CB02.07.004</em></p>
<p style="margin: 0px 0px 1.3em; padding: 0px; border: 0px; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 14px; font-stretch: inherit; line-height: 20px; vertical-align: baseline; color: rgb(37, 43, 43);">
	<strong style="margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-size: inherit; font-style: inherit; font-variant: inherit; font-stretch: inherit; line-height: inherit; vertical-align: baseline; color: rgb(0, 0, 0);">Target group:&nbsp;</strong>All students<strong style="margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-size: inherit; font-style: inherit; font-variant: inherit; font-stretch: inherit; line-height: inherit; vertical-align: baseline; color: rgb(0, 0, 0);">&nbsp;</strong><br />
	<strong style="margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-size: inherit; font-style: inherit; font-variant: inherit; font-stretch: inherit; line-height: inherit; vertical-align: baseline; color: rgb(0, 0, 0);">What it covers:</strong><strong style="margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-size: inherit; font-style: inherit; font-variant: inherit; font-stretch: inherit; line-height: inherit; vertical-align: baseline; color: rgb(0, 0, 0);">&nbsp;</strong><em style="margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-size: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; vertical-align: baseline; color: rgb(0, 0, 0);">&quot;How do I prepare for my exams? What kind of questions will be asked? What is the best approach to answer them?&quot;&nbsp;</em>This workshop focuses on practical approaches to revise and prepare for your exams, the types of exam questions and how to plan strategically so that you can tackle an exam more confidently.</p>
<h3>
	<a name="writing">Writing Skills</a></h3>
<h2 class="toc-header toc-header-bullet" style="margin: 14px 0px; padding: 0px; border: 0px; font-family: ''DIN Bold''; font-size: 2em; font-weight: normal; font-stretch: inherit; line-height: 1em; vertical-align: baseline; -webkit-font-smoothing: antialiased; letter-spacing: -0.7px; color: rgb(37, 43, 43);">
	Writing in academic style</h2>
<p style="margin: 0px 0px 1.3em; padding: 0px; border: 0px; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 14px; font-stretch: inherit; line-height: 20px; vertical-align: baseline; color: rgb(37, 43, 43);">
	Tue 3 Mar 17:00 &ndash; 18:30 &nbsp;&nbsp;<em style="margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-size: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; vertical-align: baseline; color: rgb(0, 0, 0);">CB02.07.004</em><br />
	Repeat: Fri 6 Mar 12:00 &ndash; 13:30&nbsp;<em style="margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-size: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; vertical-align: baseline; color: rgb(0, 0, 0);">CB02.07.008;&nbsp;</em>Wed 11 Mar 11:00 - 12:30&nbsp;<em style="margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-size: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; vertical-align: baseline; color: rgb(0, 0, 0);">CB02.05.36;&nbsp;</em>Thu 12 Mar 12:00 - 13:30&nbsp;<em style="margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-size: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; vertical-align: baseline; color: rgb(0, 0, 0);">CB02.07.008</em></p>
<p style="margin: 0px 0px 1.3em; padding: 0px; border: 0px; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 14px; font-stretch: inherit; line-height: 20px; vertical-align: baseline; color: rgb(37, 43, 43);">
	<strong style="margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-size: inherit; font-style: inherit; font-variant: inherit; font-stretch: inherit; line-height: inherit; vertical-align: baseline; color: rgb(0, 0, 0);">Target group:&nbsp;</strong>all students<br />
	<strong style="margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-size: inherit; font-style: inherit; font-variant: inherit; font-stretch: inherit; line-height: inherit; vertical-align: baseline; color: rgb(0, 0, 0);">What it covers:&nbsp;</strong>&ldquo;How do I make my writing sound more academic?&rdquo; This workshop focuses on the common characteristics of academic writing across all disciplines, e.g. how to sound more formal; how to express your opinion and attitude, and be impersonal at the same time; and how to be more concise.</p>
<div style="margin: 0px; padding: 0px; border: 0px; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 14px; font-stretch: inherit; line-height: 20px; vertical-align: baseline; color: rgb(37, 43, 43);">
	<h2 class="toc-header toc-header-bullet" style="margin: 14px 0px; padding: 0px; border: 0px; font-family: ''DIN Bold''; font-size: 2em; font-style: inherit; font-variant: inherit; font-weight: normal; font-stretch: inherit; line-height: 1em; vertical-align: baseline; -webkit-font-smoothing: antialiased; letter-spacing: -0.7px;">
		Analysing an assignment question and planning for an assignment</h2>
	<p style="margin: 0px 0px 1.3em; padding: 0px; border: 0px; font-family: inherit; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; vertical-align: baseline;">
		Wed 4 Mar 11:00 &ndash; 12:30<em style="margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-size: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; vertical-align: baseline; color: rgb(0, 0, 0);">&nbsp;CB02.07.008</em><br />
		Repeats: Fri 20 Mar 12:00 &ndash; 13:30&nbsp;<em style="margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-size: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; vertical-align: baseline; color: rgb(0, 0, 0);">CB10.02.450</em></p>
	<p style="margin: 0px 0px 1.3em; padding: 0px; border: 0px; font-family: inherit; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; vertical-align: baseline;">
		<strong style="margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-size: inherit; font-style: inherit; font-variant: inherit; font-stretch: inherit; line-height: inherit; vertical-align: baseline; color: rgb(0, 0, 0);">Target group:&nbsp;</strong>all students<br />
		<strong style="margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-size: inherit; font-style: inherit; font-variant: inherit; font-stretch: inherit; line-height: inherit; vertical-align: baseline; color: rgb(0, 0, 0);">What it covers:</strong>&nbsp;&ldquo;I don&rsquo;t understand the assignment question, and what is required of me.&rdquo; &ldquo;I have an assignment due soon, but I don&rsquo;t know where and how to begin.&rdquo; This workshop helps you to (1) identify the key words and break down an assignment question so you can address each component adequately and comprehensively; and (2) plan for an assignment before you embark on writing the first draft.</p>
	<h2 class="toc-header toc-header-bullet" style="margin: 14px 0px; padding: 0px; border: 0px; font-family: ''DIN Bold''; font-size: 2em; font-style: inherit; font-variant: inherit; font-weight: normal; font-stretch: inherit; line-height: 1em; vertical-align: baseline; -webkit-font-smoothing: antialiased; letter-spacing: -0.7px;">
		Critical thinking and writing</h2>
	<p style="margin: 0px 0px 1.3em; padding: 0px; border: 0px; font-family: inherit; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; vertical-align: baseline;">
		Tue 10 Mar 17:00 - 18:30&nbsp;<em style="margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-size: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; vertical-align: baseline; color: rgb(0, 0, 0);">CB02.05.36</em><br />
		Repeat: Thu 30 Apr 12:00 &ndash; 13:30&nbsp;<em style="margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-size: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; vertical-align: baseline; color: rgb(0, 0, 0);">CB02.07.005</em></p>
	<p style="margin: 0px 0px 1.3em; padding: 0px; border: 0px; font-family: inherit; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; vertical-align: baseline;">
		<strong style="margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-size: inherit; font-style: inherit; font-variant: inherit; font-stretch: inherit; line-height: inherit; vertical-align: baseline; color: rgb(0, 0, 0);">Target group:</strong>&nbsp;all students<br />
		<strong style="margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-size: inherit; font-style: inherit; font-variant: inherit; font-stretch: inherit; line-height: inherit; vertical-align: baseline; color: rgb(0, 0, 0);">What it covers:</strong>&nbsp;&ldquo;My tutor says I&rsquo;m not critical enough in my writing. What does that mean? How can I be more critical?&rdquo; This workshop focuses on what it means to be critical, what is a piece of critical writing, and how to present your critical opinions, attitudes and arguments in your assignments.</p>
	<h2 class="toc-header toc-header-bullet" style="margin: 14px 0px; padding: 0px; border: 0px; font-family: ''DIN Bold''; font-size: 2em; font-style: inherit; font-variant: inherit; font-weight: normal; font-stretch: inherit; line-height: 1em; vertical-align: baseline; -webkit-font-smoothing: antialiased; letter-spacing: -0.7px;">
		Writing an essay</h2>
	<p style="margin: 0px 0px 1.3em; padding: 0px; border: 0px; font-family: inherit; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; vertical-align: baseline;">
		Thu 5 Mar 12:00 &ndash; 13:30&nbsp;<em style="margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-size: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; vertical-align: baseline; color: rgb(0, 0, 0);">CB02.07.005</em><br />
		Repeat: Tue 17:00 - 18:30&nbsp;<em style="margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-size: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; vertical-align: baseline; color: rgb(0, 0, 0);">CB02.07.005</em></p>
	<p style="margin: 0px 0px 1.3em; padding: 0px; border: 0px; font-family: inherit; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; vertical-align: baseline;">
		<strong style="margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-size: inherit; font-style: inherit; font-variant: inherit; font-stretch: inherit; line-height: inherit; vertical-align: baseline; color: rgb(0, 0, 0);">Target group:&nbsp;</strong>all students<br />
		<strong style="margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-size: inherit; font-style: inherit; font-variant: inherit; font-stretch: inherit; line-height: inherit; vertical-align: baseline; color: rgb(0, 0, 0);">What it covers:</strong>&nbsp;&ldquo;This is my first essay at uni, and I&rsquo;m not sure if I have done it right. How should I structure my essay?&rdquo; This workshop covers the characteristics of analytical and critical essays (as opposed to descriptive essays) across all disciplines, including how to incorporate evidence to substantiate your arguments.</p>
	<h2 class="toc-header toc-header-bullet" style="margin: 14px 0px; padding: 0px; border: 0px; font-family: ''DIN Bold''; font-size: 2em; font-style: inherit; font-variant: inherit; font-weight: normal; font-stretch: inherit; line-height: 1em; vertical-align: baseline; -webkit-font-smoothing: antialiased; letter-spacing: -0.7px;">
		Writing a report</h2>
	<p style="margin: 0px 0px 1.3em; padding: 0px; border: 0px; font-family: inherit; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; vertical-align: baseline;">
		Thu 19 Mar 12:00 &ndash; 13:30&nbsp;<em style="margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-size: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; vertical-align: baseline; color: rgb(0, 0, 0);">CB02.07.008</em><br />
		Repeat: Tue 28 Apr 17:00 &ndash; 18:30&nbsp;<em style="margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-size: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; vertical-align: baseline; color: rgb(0, 0, 0);">CB02.07.005</em></p>
	<p style="margin: 0px 0px 1.3em; padding: 0px; border: 0px; font-family: inherit; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; vertical-align: baseline;">
		<strong style="margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-size: inherit; font-style: inherit; font-variant: inherit; font-stretch: inherit; line-height: inherit; vertical-align: baseline; color: rgb(0, 0, 0);">Target group:&nbsp;</strong>all students<br />
		<strong style="margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-size: inherit; font-style: inherit; font-variant: inherit; font-stretch: inherit; line-height: inherit; vertical-align: baseline; color: rgb(0, 0, 0);">What it covers:&nbsp;</strong>&ldquo;This is my first report, and I have absolutely no idea how to organise and structure it. What&rsquo;s the difference between &lsquo;executive summary&rsquo; and &lsquo;introduction&rsquo;?&rdquo; This workshop introduces students to the different types of reports, a generic report structure, what each component should consist of, and how best to present a report.</p>
</div>
<div style="margin: 0px; padding: 0px; border: 0px; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 14px; font-stretch: inherit; line-height: 20px; vertical-align: baseline; color: rgb(37, 43, 43);">
	<h2 class="toc-header toc-header-bullet" style="margin: 14px 0px; padding: 0px; border: 0px; font-family: ''DIN Bold''; font-size: 2em; font-style: inherit; font-variant: inherit; font-weight: normal; font-stretch: inherit; line-height: 1em; vertical-align: baseline; -webkit-font-smoothing: antialiased; letter-spacing: -0.7px;">
		Writing a literature review</h2>
	<p style="margin: 0px 0px 1.3em; padding: 0px; border: 0px; font-family: inherit; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; vertical-align: baseline;">
		Thu 26 Mar 12:00 &ndash; 13:30&nbsp;<em style="margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-size: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; vertical-align: baseline; color: rgb(0, 0, 0);">CB02.05.36</em><br />
		Repeat: Tue 31 Mar 17:00 &ndash; 18:30&nbsp;<em style="margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-size: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; vertical-align: baseline; color: rgb(0, 0, 0);">CB02.07.005</em></p>
	<p style="margin: 0px 0px 1.3em; padding: 0px; border: 0px; font-family: inherit; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; vertical-align: baseline;">
		<strong style="margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-size: inherit; font-style: inherit; font-variant: inherit; font-stretch: inherit; line-height: inherit; vertical-align: baseline; color: rgb(0, 0, 0);">Target group:</strong>&nbsp;all students<br />
		<strong style="margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-size: inherit; font-style: inherit; font-variant: inherit; font-stretch: inherit; line-height: inherit; vertical-align: baseline; color: rgb(0, 0, 0);">What it covers:</strong>&nbsp;&ldquo;My next assignment is a literature review, but I don&rsquo;t know what to include and how to structure it.&rdquo; This workshop provides information on what a literature review is; what it means to review the literature; how to review the literature; and how to structure a literature review.</p>
	<h2 class="toc-header toc-header-bullet" style="margin: 14px 0px; padding: 0px; border: 0px; font-family: ''DIN Bold''; font-size: 2em; font-style: inherit; font-variant: inherit; font-weight: normal; font-stretch: inherit; line-height: 1em; vertical-align: baseline; -webkit-font-smoothing: antialiased; letter-spacing: -0.7px;">
		Writing effective paragraphs</h2>
	<p style="margin: 0px 0px 1.3em; padding: 0px; border: 0px; font-family: inherit; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; vertical-align: baseline;">
		Wed 25 Mar 11:00 &ndash; 12:30&nbsp;<em style="margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-size: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; vertical-align: baseline; color: rgb(0, 0, 0);">CB10.02.410</em><br />
		Repeat: Thu 7 May 12:00 &ndash; 13:30&nbsp;<em style="margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-size: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; vertical-align: baseline; color: rgb(0, 0, 0);">CB02.07.008</em></p>
	<p style="margin: 0px 0px 1.3em; padding: 0px; border: 0px; font-family: inherit; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; vertical-align: baseline;">
		<strong style="margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-size: inherit; font-style: inherit; font-variant: inherit; font-stretch: inherit; line-height: inherit; vertical-align: baseline; color: rgb(0, 0, 0);">Target group:&nbsp;</strong>all students<br />
		<strong style="margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-size: inherit; font-style: inherit; font-variant: inherit; font-stretch: inherit; line-height: inherit; vertical-align: baseline; color: rgb(0, 0, 0);">What it covers:&nbsp;</strong>&ldquo;My lecturer says my sentences don&rsquo;t make sense.&rdquo; &ldquo;Is a one- sentence paragraph okay? Some of my paragraphs are like more than one page. Is that okay?&rdquo; The workshop focuses on the make-up of a sentence and a paragraph, and how to ensure your ideas flow between sentences and paragraphs, and throughout your writing to make it logical, cohesive and coherent.</p>
	<h2 class="toc-header toc-header-bullet" style="margin: 14px 0px; padding: 0px; border: 0px; font-family: ''DIN Bold''; font-size: 2em; font-style: inherit; font-variant: inherit; font-weight: normal; font-stretch: inherit; line-height: 1em; vertical-align: baseline; -webkit-font-smoothing: antialiased; letter-spacing: -0.7px;">
		Paraphrasing, summarising and quoting to avoid plagiarism</h2>
	<p style="margin: 0px 0px 1.3em; padding: 0px; border: 0px; font-family: inherit; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; vertical-align: baseline;">
		Fri 27 Mar 12:00 &ndash; 13:30&nbsp;<em style="margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-size: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; vertical-align: baseline; color: rgb(0, 0, 0);">CB10.02.450</em><br />
		Repeat: Wed 1 Apr 11:00 &ndash; 12:30&nbsp;<em style="margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-size: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; vertical-align: baseline; color: rgb(0, 0, 0);">CB02.07.008;&nbsp;</em>Tue 5 May 17:00 - 18:30&nbsp;<em style="margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-size: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; vertical-align: baseline; color: rgb(0, 0, 0);">CB02.07.004</em></p>
	<p style="margin: 0px 0px 1.3em; padding: 0px; border: 0px; font-family: inherit; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; vertical-align: baseline;">
		<strong style="margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-size: inherit; font-style: inherit; font-variant: inherit; font-stretch: inherit; line-height: inherit; vertical-align: baseline; color: rgb(0, 0, 0);">Target group:&nbsp;</strong>all students<br />
		<strong style="margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-size: inherit; font-style: inherit; font-variant: inherit; font-stretch: inherit; line-height: inherit; vertical-align: baseline; color: rgb(0, 0, 0);">What it covers:&nbsp;</strong>&ldquo;I always end up copying chunks of text from my readings when I do my assignment as I don&rsquo;t know how to rewrite them in my own words.&rdquo; &ldquo;My Turnitin similarity index is very high. What should I do?&rdquo; This workshop provides practical information on how to paraphrase, summarise and quote from your sources to ensure that the information you use is well integrated in your writing.</p>
	<h2 class="toc-header toc-header-bullet" style="margin: 14px 0px; padding: 0px; border: 0px; font-family: ''DIN Bold''; font-size: 2em; font-style: inherit; font-variant: inherit; font-weight: normal; font-stretch: inherit; line-height: 1em; vertical-align: baseline; -webkit-font-smoothing: antialiased; letter-spacing: -0.7px;">
		Editing and proofreading your writing</h2>
	<p style="margin: 0px 0px 1.3em; padding: 0px; border: 0px; font-family: inherit; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; vertical-align: baseline;">
		Tue 12 May 17:00 &ndash; 18:30&nbsp;<em style="margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-size: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; vertical-align: baseline; color: rgb(0, 0, 0);">CB06.04.37</em><br />
		Repeat: Thu 21 May 12:00 &ndash; 13:30&nbsp;<em style="margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-size: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; vertical-align: baseline; color: rgb(0, 0, 0);">CB02.07.008</em></p>
	<p style="margin: 0px 0px 1.3em; padding: 0px; border: 0px; font-family: inherit; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; vertical-align: baseline;">
		<strong style="margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-size: inherit; font-style: inherit; font-variant: inherit; font-stretch: inherit; line-height: inherit; vertical-align: baseline; color: rgb(0, 0, 0);">Target group:&nbsp;</strong>all students<br />
		<strong style="margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-size: inherit; font-style: inherit; font-variant: inherit; font-stretch: inherit; line-height: inherit; vertical-align: baseline; color: rgb(0, 0, 0);">What it covers:&nbsp;</strong>&ldquo;I&rsquo;ve finished my assignment, but how do I check it to make sure that I&rsquo;ve got everything right before I submit it?&rdquo; This workshop focuses on how to edit your writing for content, and proofread for grammatical accuracy. A checklist will be provided to help you focus on what to look out for when editing and proofreading your writing.</p>
</div>
<div style="margin: 0px; padding: 0px; border: 0px; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 14px; font-stretch: inherit; line-height: 20px; vertical-align: baseline; color: rgb(37, 43, 43);">
	<div style="margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; vertical-align: baseline;">
		<div style="margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; vertical-align: baseline;">
			<h2 class="toc-header toc-header-bullet" style="margin: 14px 0px; padding: 0px; border: 0px; font-family: ''DIN Bold''; font-size: 2em; font-style: inherit; font-variant: inherit; font-weight: normal; font-stretch: inherit; line-height: 1em; vertical-align: baseline; -webkit-font-smoothing: antialiased; letter-spacing: -0.7px;">
				Grammar review (4 sessions)</h2>
			<p style="margin: 0px 0px 1.3em; padding: 0px; border: 0px; font-family: inherit; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; vertical-align: baseline;">
				Session 1: Parts of speech &amp; subject-verb agreement, Wed 29 Apr 11:00 &ndash; 12:30<em style="margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-size: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; vertical-align: baseline; color: rgb(0, 0, 0);">CB10.02.330</em><br />
				Session 2: Verb tenses &amp; reporting verbs, Wed 6 May&nbsp;<span style="margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; vertical-align: baseline;">11:00 &ndash; 12:30</span>&nbsp;<em style="margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-size: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; vertical-align: baseline; color: rgb(0, 0, 0);">CB10.02.330</em><br />
				Session 3: Articles, prepositions &amp; punctuation, Wed 13 May&nbsp;<span style="margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; vertical-align: baseline;">11:00 &ndash; 12:30</span>&nbsp;<em style="margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-size: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; vertical-align: baseline; color: rgb(0, 0, 0);">CB10.02.410</em><br />
				Session 4: Common grammar errors, Wed 20 May&nbsp;<span style="margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; vertical-align: baseline;">11:00 &ndash; 12:30</span>&nbsp;<em style="margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-size: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; vertical-align: baseline; color: rgb(0, 0, 0);">CB10.02.330</em></p>
			<p style="margin: 0px 0px 1.3em; padding: 0px; border: 0px; font-family: inherit; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; vertical-align: baseline;">
				<strong style="margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-size: inherit; font-style: inherit; font-variant: inherit; font-stretch: inherit; line-height: inherit; vertical-align: baseline; color: rgb(0, 0, 0);">Target group:&nbsp;</strong>all students<br />
				<strong style="margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-size: inherit; font-style: inherit; font-variant: inherit; font-stretch: inherit; line-height: inherit; vertical-align: baseline; color: rgb(0, 0, 0);">What it covers:&nbsp;</strong>&ldquo;I need help with English grammar. I tend to make many grammatical mistakes in my writing.&rdquo; These grammar review workshops cover the most common grammatical errors made by students. Students will have opportunities to discuss and practise these grammar items and activities in small groups. You can choose to attend one of the four, or all four workshops. Topics are subject to change depending on needs of attendees.</p>
		</div>
	</div>
</div>
<h3>
	<a name="presentation_speaking">Presentation + Speaking Skills</a></h3>
<h2 class="toc-header toc-header-bullet" style="margin: 14px 0px; padding: 0px; border: 0px; font-family: ''DIN Bold''; font-size: 2em; font-weight: normal; font-stretch: inherit; line-height: 1em; vertical-align: baseline; -webkit-font-smoothing: antialiased; letter-spacing: -0.7px; color: rgb(37, 43, 43);">
	Presentation workshop</h2>
<h3 style="margin: 14px 0px; padding: 0px; border: 0px; font-family: ''DIN Bold''; font-size: 1.429em; font-weight: normal; font-stretch: inherit; line-height: 1em; vertical-align: baseline; -webkit-font-smoothing: antialiased; letter-spacing: -0.3px; color: rgb(37, 43, 43);">
	Giving a successful presentation</h3>
<p style="margin: 0px 0px 1.3em; padding: 0px; border: 0px; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 14px; font-stretch: inherit; line-height: 20px; vertical-align: baseline; color: rgb(37, 43, 43);">
	Tue 24 Mar17:00 &ndash; 18:30&nbsp;<em style="margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-size: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; vertical-align: baseline; color: rgb(0, 0, 0);">CB06.04.37</em><br />
	Repeat: Thu 14 May 12:00 &ndash; 13:30&nbsp;<em style="margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-size: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; vertical-align: baseline; color: rgb(0, 0, 0);">CB02.07.005</em></p>
<p style="margin: 0px 0px 1.3em; padding: 0px; border: 0px; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 14px; font-stretch: inherit; line-height: 20px; vertical-align: baseline; color: rgb(37, 43, 43);">
	<strong style="margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-size: inherit; font-style: inherit; font-variant: inherit; font-stretch: inherit; line-height: inherit; vertical-align: baseline; color: rgb(0, 0, 0);">Target group:&nbsp;</strong>all students<br />
	<strong style="margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-size: inherit; font-style: inherit; font-variant: inherit; font-stretch: inherit; line-height: inherit; vertical-align: baseline; color: rgb(0, 0, 0);">What it covers:&nbsp;</strong><em style="margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-size: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; vertical-align: baseline; color: rgb(0, 0, 0);">&ldquo;I have to do an in-class presentation. How do I prepare for it? What can I do to ensure that my presentation is structured clearly?&rdquo;</em>&nbsp;The workshop aims to help you plan, organise and structure your oral presentation, and how to use visual aids effectively. Practical information will be provided to help you calm your nerves, and enhance your clarity in speech.</p>
<p style="margin: 0px 0px 1.3em; padding: 0px; border: 0px; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 14px; font-stretch: inherit; line-height: 20px; vertical-align: baseline; color: rgb(37, 43, 43);">
	Refer also&nbsp;<a href="https://www.uts.edu.au/node/90466/" style="font-weight: bold; color: rgb(0, 153, 204); text-decoration: none; -webkit-transition: all 0.2s ease-in-out; transition: all 0.2s ease-in-out; -webkit-tap-highlight-color: rgb(0, 153, 204);">Pronunciation tips for presenters</a></p>
<h2 class="toc-header toc-header-bullet" style="margin: 14px 0px; padding: 0px; border: 0px; font-family: ''DIN Bold''; font-size: 2em; font-weight: normal; font-stretch: inherit; line-height: 1em; vertical-align: baseline; -webkit-font-smoothing: antialiased; letter-spacing: -0.7px; color: rgb(37, 43, 43);">
	Pronunciation workshops</h2>
<h3 style="margin: 14px 0px; padding: 0px; border: 0px; font-family: ''DIN Bold''; font-size: 1.429em; font-weight: normal; font-stretch: inherit; line-height: 1em; vertical-align: baseline; -webkit-font-smoothing: antialiased; letter-spacing: -0.3px; color: rgb(37, 43, 43);">
	Pronunciation (four sessions)</h3>
<p style="margin: 0px 0px 1.3em; padding: 0px; border: 0px; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 14px; font-stretch: inherit; line-height: 20px; vertical-align: baseline; color: rgb(37, 43, 43);">
	Session 1: English sounds, Fri 1 May 12:00 &ndash; 13:30&nbsp;<em style="margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-size: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; vertical-align: baseline; color: rgb(0, 0, 0);">CB10.02.450</em><br />
	Session 2: Word stress, Fri 8 May&nbsp;<span style="margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; vertical-align: baseline;">12:00 &ndash; 13:30</span>&nbsp;<em style="margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-size: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; vertical-align: baseline; color: rgb(0, 0, 0);">CB10.02.330</em><br />
	Session 3: Sentence stress &amp; intonation, Fri 15 May&nbsp;<span style="margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; vertical-align: baseline;">12:00 &ndash; 13:30</span>&nbsp;<em style="margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-size: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; vertical-align: baseline; color: rgb(0, 0, 0);">CB10.02.330</em><br />
	Session 4: Pausing &amp; chunking, &amp; connected speech, Fri 22 May&nbsp;<span style="margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; vertical-align: baseline;">12:00 &ndash; 13:30</span>&nbsp;<em style="margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-size: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; vertical-align: baseline; color: rgb(0, 0, 0);">CB10.02.330</em></p>
<p style="margin: 0px 0px 1.3em; padding: 0px; border: 0px; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 14px; font-stretch: inherit; line-height: 20px; vertical-align: baseline; color: rgb(37, 43, 43);">
	<strong style="margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-size: inherit; font-style: inherit; font-variant: inherit; font-stretch: inherit; line-height: inherit; vertical-align: baseline; color: rgb(0, 0, 0);">Target group</strong>: non-English speaking background students<br />
	<strong style="margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-size: inherit; font-style: inherit; font-variant: inherit; font-stretch: inherit; line-height: inherit; vertical-align: baseline; color: rgb(0, 0, 0);">What it covers:&nbsp;</strong><em style="margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-size: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; vertical-align: baseline; color: rgb(0, 0, 0);">&ldquo;My tutor and classmates find it hard to understand what I&rsquo;m saying. How can I speak more clearly&rdquo;&nbsp;&nbsp;</em>These workshops aim to help improve your clarity in speech. The focus will be on English sounds, word stress and sentence stress, intonation, pausing,chunking, and connected speech. Students may be able to receive individual feedback if time permits. You can choose to attend one of the four, or all four workshops.</p>
<p class="b2top" style="text-align: right;">
	&nbsp;</p>
<h2>
	WriteNow! Writing Support session</h2>
<ul style="margin: 0px 0px 15px 30px; padding-right: 0px; padding-left: 0px; border: 0px; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 14px; font-stretch: inherit; line-height: 20px; vertical-align: baseline; list-style-position: outside; color: rgb(37, 43, 43);">
	<li style="margin: 0px 0px 10px; padding: 0px; border: 0px; font-family: inherit; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; vertical-align: baseline; text-align: left;">
		Find it hard to make a start on an assignment?</li>
	<li style="margin: 0px 0px 10px; padding: 0px; border: 0px; font-family: inherit; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; vertical-align: baseline; text-align: left;">
		Wish that someone could be on hand to help you as you write?</li>
</ul>
<p style="margin: 0px 0px 1.3em; padding: 0px; border: 0px; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 14px; font-stretch: inherit; line-height: 20px; vertical-align: baseline; color: rgb(37, 43, 43);">
	Our WriteNow! Writing support sessions provide a space and an opportunity for you to work on your assignment with a HELPS Advisor on hand to support you during the writing process. Note that the main purpose of these sessions is for you to write. If you have completed your draft and are in need of feedback, you should book in for&nbsp;<a href="http://www.uts.edu.au/current-students/support/helps/assignment-writing-assistance" style="font-weight: bold; color: rgb(0, 153, 204); text-decoration: none; -webkit-transition: all 0.2s ease-in-out; transition: all 0.2s ease-in-out; -webkit-tap-highlight-color: rgb(0, 153, 204);">one-to-one assignment advice</a>.</p>
<p style="margin: 0px 0px 1.3em; padding: 0px; border: 0px; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 14px; font-stretch: inherit; line-height: 20px; vertical-align: baseline; color: rgb(37, 43, 43);">
	At WriteNow! Writing support sessions, we can help you to:</p>
<ul style="margin: 0px 0px 15px 30px; padding-right: 0px; padding-left: 0px; border: 0px; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 14px; font-stretch: inherit; line-height: 20px; vertical-align: baseline; list-style-position: outside; color: rgb(37, 43, 43);">
	<li style="margin: 0px 0px 10px; padding: 0px; border: 0px; font-family: inherit; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; vertical-align: baseline; text-align: left;">
		understand your assignment questions and assessment criteria</li>
</ul>
<ul style="margin: 0px 0px 15px 30px; padding-right: 0px; padding-left: 0px; border: 0px; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 14px; font-stretch: inherit; line-height: 20px; vertical-align: baseline; list-style-position: outside; color: rgb(37, 43, 43);">
	<li style="margin: 0px 0px 10px; padding: 0px; border: 0px; font-family: inherit; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; vertical-align: baseline; text-align: left;">
		develop and structure your ideas</li>
	<li style="margin: 0px 0px 10px; padding: 0px; border: 0px; font-family: inherit; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; vertical-align: baseline; text-align: left;">
		use and reference evidence effectively</li>
	<li style="margin: 0px 0px 10px; padding: 0px; border: 0px; font-family: inherit; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; vertical-align: baseline; text-align: left;">
		improve sentence and paragraph level writing</li>
	<li style="margin: 0px 0px 10px; padding: 0px; border: 0px; font-family: inherit; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; vertical-align: baseline; text-align: left;">
		identify and understand your language issues.</li>
</ul>
<p style="margin: 0px 0px 1.3em; padding: 0px; border: 0px; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 14px; font-stretch: inherit; line-height: 20px; vertical-align: baseline; color: rgb(37, 43, 43);">
	But we can&rsquo;t:</p>
<ul style="margin: 0px 0px 15px 30px; padding-right: 0px; padding-left: 0px; border: 0px; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 14px; font-stretch: inherit; line-height: 20px; vertical-align: baseline; list-style-position: outside; color: rgb(37, 43, 43);">
	<li style="margin: 0px 0px 10px; padding: 0px; border: 0px; font-family: inherit; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; vertical-align: baseline; text-align: left;">
		help you with the content of you assignments</li>
	<li style="margin: 0px 0px 10px; padding: 0px; border: 0px; font-family: inherit; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; vertical-align: baseline; text-align: left;">
		correct or &lsquo;check&rsquo; grammar and spelling</li>
	<li style="margin: 0px 0px 10px; padding: 0px; border: 0px; font-family: inherit; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; vertical-align: baseline; text-align: left;">
		proofread your writing</li>
	<li style="margin: 0px 0px 10px; padding: 0px; border: 0px; font-family: inherit; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; vertical-align: baseline; text-align: left;">
		help you with take-home exams</li>
	<li style="margin: 0px 0px 10px; padding: 0px; border: 0px; font-family: inherit; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; vertical-align: baseline; text-align: left;">
		provide subject tutoring.</li>
</ul>
<p>
	<strong>UTS Library </strong><br />
	Week 3 to Week 13<br />
	Training Room 1<br />
	Fri 1 &ndash; 5 pm<br />
	&nbsp;</p>
<p>
	<strong>HELPS Office</strong><br />
	Week 3 to Week 13<br />
	Building 1, level 3, room 8<br />
	Mon to Thu 1 &ndash; 4 pm<br />
	<em>Please remember to bring a laptop to the session</em></p>
<h2>
	Conversations@UTS</h2>
<ul>
	<li>
		Want to feel more confident when you speak?</li>
	<li>
		Want to practice effective ways to speak socially and professionally?</li>
	<li>
		Looking forward to meeting new people, making new friends and learning to network in a friendly, supportive environment?</li>
	<li>
		Love to talk and keen to support others get over their shyness?</li>
</ul>
<p>
	Our social conversations@uts sessions are offered throughout the week and are for all UTS students. Join as many sessions as you like.</p>
<h2>
	Intensive Academic English program in July</h2>
<p>
	HELPS runs an intensive academic English program during the semester break in July. The program includes workshops in the areas:</p>
<ul>
	<li>
		<a href="http://www.ssu.uts.edu.au/helps/holiday/writing.html">Academic writing</a></li>
	<li>
		<a href="http://www.ssu.uts.edu.au/helps/holiday/oral.html">Oral presentation</a></li>
	<li>
		<a href="http://www.ssu.uts.edu.au/helps/holiday/pronunciation.html">Pronunciation correction</a></li>
</ul>', N'student_helps_programs', 1)
INSERT [dbo].[messages] ([id], [path], [filename], [modifierID], [modified], [description], [text], [cssID], [isactive]) VALUES (6, N'/student/index.cfm?scope=home&preview=1', N'student_homepage.html', 1834, CAST(N'2012-10-08 13:10:54.360' AS DateTime), N'Instruction of nav in in student interface', N'<p>
	Thank you for using the <span style="font-weight: bold;">HELPS booking system</span>. Please use the above navigation.</p>', N'student_homepage', 1)
INSERT [dbo].[messages] ([id], [path], [filename], [modifierID], [modified], [description], [text], [cssID], [isactive]) VALUES (7, N'/student/index.cfm?scope=logout&preview=1', N'student_logon_annoucement.html', 1834, CAST(N'2012-10-23 15:29:15.557' AS DateTime), N'Logon page annoucement in student interface', N'<p>
	Log-in and become a HELPS student!</p>', N'student_logon_annoucement', 1)
INSERT [dbo].[messages] ([id], [path], [filename], [modifierID], [modified], [description], [text], [cssID], [isactive]) VALUES (8, N'/student/index.cfm?scope=logout&preview=1', N'student_logon_left.html', 1337, CAST(N'2015-03-20 09:48:34.913' AS DateTime), N'Logon page box on the right in student interface', N'<p>
	<a href="http://www.ssu.uts.edu.au/helps/about.html">HELPS home and contact details</a></p>
<p>
	<a href="https://servicedesk.uts.edu.au/CAisd/pdmweb.exe">IT Help desk if you have login issues</a></p>
<p>
	<a href="https://www.facebook.com/UTSHELPS">Like us on <strong>Facebook</strong> to keep up with all the latest happenngs at HELPS</a></p>', N'student_logon_left', 1)
INSERT [dbo].[messages] ([id], [path], [filename], [modifierID], [modified], [description], [text], [cssID], [isactive]) VALUES (9, N'/student/index.cfm?scope=profile&preview=1', N'student_profile_instruction.html', 1834, CAST(N'2012-06-13 17:33:48.000' AS DateTime), N'Instruction of student Profile in student interface', N'<p>This page displays your profile. Please update it whenever necessary (especially your contact details).</p>
<p>Questions marked with an asterisk (*) are compulsory.</p>
<p>&nbsp;</p>', N'student_profile_instruction', 1)
INSERT [dbo].[messages] ([id], [path], [filename], [modifierID], [modified], [description], [text], [cssID], [isactive]) VALUES (10, N'/student/index.cfm?scope=session&preview=1', N'student_session_instruction.html', NULL, NULL, N'Instruction of session in student interface', NULL, N'student_session_instruction', 0)
INSERT [dbo].[messages] ([id], [path], [filename], [modifierID], [modified], [description], [text], [cssID], [isactive]) VALUES (11, N'/attendance/index.cfm?scope=logout&preview=1', N'attendance_logon_annoucement.html', NULL, NULL, N'Logon page annoucement in attendance interface', N'<p><strong>Welcome to HELPS Booking system - Attendance check</strong></p><p>To logon, enter your staff number and password (same password as accessing UTS email or NEO)</p>', NULL, 1)
INSERT [dbo].[messages] ([id], [path], [filename], [modifierID], [modified], [description], [text], [cssID], [isactive]) VALUES (12, N'/attendance/index.cfm?scope=workshop', N'attendance_workshop_instruction.html', 1864, CAST(N'2015-03-24 16:34:31.180' AS DateTime), N'Instruction of workshops in attendance interface', N'<p>
	To mark the attendance, please;</p>
<ol>
	<li>
		Choose the workshop (clicking the date from the calendar)</li>
	<li>
		Chose the correct workshop (clicking on the link &#39;Detail&#39;)</li>
	<li>
		Check the students ID and click yes</li>
</ol>
<p>
	&nbsp;</p>', NULL, 1)
SET IDENTITY_INSERT [dbo].[messages] OFF
SET IDENTITY_INSERT [dbo].[programs] ON 

INSERT [dbo].[programs] ([id], [name], [days], [numOfWeeks], [startDate], [endDate], [maximum], [cutoff], [created], [creatorId], [modified], [modifierId], [archived], [archiverId], [reminder_num], [reminder_sent]) VALUES (1, N'Test wt', N'2,4', 3, CAST(N'2013-08-04' AS Date), CAST(N'2013-08-24' AS Date), 1, 12, CAST(N'2013-02-25 12:12:18.850' AS DateTime), 1864, NULL, NULL, CAST(N'2013-02-26 17:05:21.083' AS DateTime), 1337, 9999, 0)
INSERT [dbo].[programs] ([id], [name], [days], [numOfWeeks], [startDate], [endDate], [maximum], [cutoff], [created], [creatorId], [modified], [modifierId], [archived], [archiverId], [reminder_num], [reminder_sent]) VALUES (2, N'General conversations', N'2', 14, CAST(N'2013-03-04' AS Date), CAST(N'2013-06-09' AS Date), 35, 24, CAST(N'2013-02-25 12:23:17.100' AS DateTime), 2560, NULL, NULL, CAST(N'2013-02-25 12:27:28.070' AS DateTime), 2560, 9999, 0)
INSERT [dbo].[programs] ([id], [name], [days], [numOfWeeks], [startDate], [endDate], [maximum], [cutoff], [created], [creatorId], [modified], [modifierId], [archived], [archiverId], [reminder_num], [reminder_sent]) VALUES (3, N'General conversations', N'2', 13, CAST(N'2013-03-04' AS Date), CAST(N'2013-06-02' AS Date), 35, 24, CAST(N'2013-02-25 13:47:20.250' AS DateTime), 2560, NULL, NULL, CAST(N'2013-02-25 13:50:21.380' AS DateTime), 2560, 9999, 0)
INSERT [dbo].[programs] ([id], [name], [days], [numOfWeeks], [startDate], [endDate], [maximum], [cutoff], [created], [creatorId], [modified], [modifierId], [archived], [archiverId], [reminder_num], [reminder_sent]) VALUES (4, N'General conversations - Monday morning', N'2', 5, CAST(N'2013-02-26' AS Date), CAST(N'2013-04-01' AS Date), 35, 24, CAST(N'2013-02-25 13:51:01.660' AS DateTime), 2560, NULL, NULL, CAST(N'2013-02-25 13:52:06.393' AS DateTime), 2560, 9999, 0)
INSERT [dbo].[programs] ([id], [name], [days], [numOfWeeks], [startDate], [endDate], [maximum], [cutoff], [created], [creatorId], [modified], [modifierId], [archived], [archiverId], [reminder_num], [reminder_sent]) VALUES (5, N'General conversations - Monday morning', N'2', 13, CAST(N'2013-03-04' AS Date), CAST(N'2013-06-02' AS Date), 35, 24, CAST(N'2013-02-25 13:52:31.190' AS DateTime), 2560, NULL, NULL, CAST(N'2013-02-25 18:44:18.983' AS DateTime), 1337, 9999, 0)
INSERT [dbo].[programs] ([id], [name], [days], [numOfWeeks], [startDate], [endDate], [maximum], [cutoff], [created], [creatorId], [modified], [modifierId], [archived], [archiverId], [reminder_num], [reminder_sent]) VALUES (6, N'General conversations - Monday afternoon', N'2', 13, CAST(N'2013-03-04' AS Date), CAST(N'2013-06-02' AS Date), 35, 24, CAST(N'2013-02-25 13:54:40.313' AS DateTime), 2560, NULL, NULL, CAST(N'2013-02-25 18:44:31.090' AS DateTime), 1337, 9999, 0)
INSERT [dbo].[programs] ([id], [name], [days], [numOfWeeks], [startDate], [endDate], [maximum], [cutoff], [created], [creatorId], [modified], [modifierId], [archived], [archiverId], [reminder_num], [reminder_sent]) VALUES (7, N'IELTS-style speaking - Tuesday morning', N'3', 14, CAST(N'2013-03-05' AS Date), CAST(N'2013-06-10' AS Date), 35, 24, CAST(N'2013-02-25 14:02:02.187' AS DateTime), 2560, CAST(N'2013-06-01 23:30:00.407' AS DateTime), 1864, NULL, NULL, 9999, 4)
INSERT [dbo].[programs] ([id], [name], [days], [numOfWeeks], [startDate], [endDate], [maximum], [cutoff], [created], [creatorId], [modified], [modifierId], [archived], [archiverId], [reminder_num], [reminder_sent]) VALUES (8, N'Research students'' group - Tuesday afternoon', N'3', 14, CAST(N'2013-03-05' AS Date), CAST(N'2013-06-10' AS Date), 35, 24, CAST(N'2013-02-25 14:05:40.277' AS DateTime), 2560, CAST(N'2013-06-01 23:30:01.797' AS DateTime), 1864, NULL, NULL, 9999, 4)
INSERT [dbo].[programs] ([id], [name], [days], [numOfWeeks], [startDate], [endDate], [maximum], [cutoff], [created], [creatorId], [modified], [modifierId], [archived], [archiverId], [reminder_num], [reminder_sent]) VALUES (9, N'General conversations - Tuesday evening', N'3', 14, CAST(N'2013-03-05' AS Date), CAST(N'2013-06-10' AS Date), 35, 24, CAST(N'2013-02-25 14:06:58.120' AS DateTime), 2560, CAST(N'2013-06-01 23:30:04.030' AS DateTime), 1864, NULL, NULL, 9999, 4)
INSERT [dbo].[programs] ([id], [name], [days], [numOfWeeks], [startDate], [endDate], [maximum], [cutoff], [created], [creatorId], [modified], [modifierId], [archived], [archiverId], [reminder_num], [reminder_sent]) VALUES (10, N'General conversations - Wednesday morning', N'4', 14, CAST(N'2013-03-06' AS Date), CAST(N'2013-06-11' AS Date), 35, 24, CAST(N'2013-02-25 14:12:12.120' AS DateTime), 2560, CAST(N'2013-06-02 23:30:00.487' AS DateTime), 1864, NULL, NULL, 9999, 4)
INSERT [dbo].[programs] ([id], [name], [days], [numOfWeeks], [startDate], [endDate], [maximum], [cutoff], [created], [creatorId], [modified], [modifierId], [archived], [archiverId], [reminder_num], [reminder_sent]) VALUES (11, N'Practising your presentation skills - Wednesday afternoon', N'4', 14, CAST(N'2013-03-06' AS Date), CAST(N'2013-06-11' AS Date), 35, 24, CAST(N'2013-02-25 14:16:41.810' AS DateTime), 2560, CAST(N'2013-06-02 23:30:01.800' AS DateTime), 1864, NULL, NULL, 9999, 4)
INSERT [dbo].[programs] ([id], [name], [days], [numOfWeeks], [startDate], [endDate], [maximum], [cutoff], [created], [creatorId], [modified], [modifierId], [archived], [archiverId], [reminder_num], [reminder_sent]) VALUES (12, N'General conversations - Wednesday evening', N'4', 14, CAST(N'2013-03-05' AS Date), CAST(N'2013-06-10' AS Date), 35, 24, CAST(N'2013-02-25 14:18:45.467' AS DateTime), 2560, CAST(N'2013-06-02 23:30:03.110' AS DateTime), 1864, NULL, NULL, 9999, 4)
INSERT [dbo].[programs] ([id], [name], [days], [numOfWeeks], [startDate], [endDate], [maximum], [cutoff], [created], [creatorId], [modified], [modifierId], [archived], [archiverId], [reminder_num], [reminder_sent]) VALUES (13, N'General conversations - Thursday afternoon', N'5', 13, CAST(N'2013-03-07' AS Date), CAST(N'2013-06-05' AS Date), 35, 24, CAST(N'2013-02-25 14:20:29.840' AS DateTime), 2560, CAST(N'2013-06-03 23:30:00.630' AS DateTime), 1864, NULL, NULL, 9999, 4)
INSERT [dbo].[programs] ([id], [name], [days], [numOfWeeks], [startDate], [endDate], [maximum], [cutoff], [created], [creatorId], [modified], [modifierId], [archived], [archiverId], [reminder_num], [reminder_sent]) VALUES (14, N'General conversations - Thursday evening', N'5', 13, CAST(N'2013-03-07' AS Date), CAST(N'2013-06-05' AS Date), 35, 24, CAST(N'2013-02-25 14:23:47.980' AS DateTime), 2560, CAST(N'2013-06-03 23:30:02.113' AS DateTime), 1864, NULL, NULL, 9999, 4)
INSERT [dbo].[programs] ([id], [name], [days], [numOfWeeks], [startDate], [endDate], [maximum], [cutoff], [created], [creatorId], [modified], [modifierId], [archived], [archiverId], [reminder_num], [reminder_sent]) VALUES (15, N'Students'' choice topics - Friday morning', N'6', 13, CAST(N'2013-03-08' AS Date), CAST(N'2013-06-06' AS Date), 35, 24, CAST(N'2013-02-25 14:25:58.980' AS DateTime), 2560, CAST(N'2013-06-04 23:30:00.557' AS DateTime), 1864, NULL, NULL, 9999, 5)
INSERT [dbo].[programs] ([id], [name], [days], [numOfWeeks], [startDate], [endDate], [maximum], [cutoff], [created], [creatorId], [modified], [modifierId], [archived], [archiverId], [reminder_num], [reminder_sent]) VALUES (16, N'General conversations - Monday morning session', N'2', 13, CAST(N'2013-03-04' AS Date), CAST(N'2013-06-02' AS Date), 35, 24, CAST(N'2013-02-25 18:58:23.927' AS DateTime), 1337, NULL, NULL, CAST(N'2013-02-25 19:03:05.223' AS DateTime), 1337, 9999, 0)
INSERT [dbo].[programs] ([id], [name], [days], [numOfWeeks], [startDate], [endDate], [maximum], [cutoff], [created], [creatorId], [modified], [modifierId], [archived], [archiverId], [reminder_num], [reminder_sent]) VALUES (17, N'General Conversations - Monday morning', N'2', 13, CAST(N'2013-03-04' AS Date), CAST(N'2013-06-02' AS Date), 35, 24, CAST(N'2013-02-26 16:35:02.487' AS DateTime), 2186, CAST(N'2013-05-31 23:30:00.543' AS DateTime), 1864, NULL, NULL, 9999, 4)
INSERT [dbo].[programs] ([id], [name], [days], [numOfWeeks], [startDate], [endDate], [maximum], [cutoff], [created], [creatorId], [modified], [modifierId], [archived], [archiverId], [reminder_num], [reminder_sent]) VALUES (18, N'General Conversations - Monday afternoon', N'2', 13, CAST(N'2013-03-04' AS Date), CAST(N'2013-06-02' AS Date), 35, 24, CAST(N'2013-02-26 16:38:09.767' AS DateTime), 2186, CAST(N'2013-05-31 23:30:01.777' AS DateTime), 1864, NULL, NULL, 9999, 4)
INSERT [dbo].[programs] ([id], [name], [days], [numOfWeeks], [startDate], [endDate], [maximum], [cutoff], [created], [creatorId], [modified], [modifierId], [archived], [archiverId], [reminder_num], [reminder_sent]) VALUES (19, N'.t del', N'2,3', 2, CAST(N'2013-03-18' AS Date), CAST(N'2013-03-31' AS Date), 35, 24, CAST(N'2013-03-05 16:36:41.363' AS DateTime), 1864, NULL, NULL, CAST(N'2013-03-05 16:40:20.907' AS DateTime), 1864, 9999, 0)
INSERT [dbo].[programs] ([id], [name], [days], [numOfWeeks], [startDate], [endDate], [maximum], [cutoff], [created], [creatorId], [modified], [modifierId], [archived], [archiverId], [reminder_num], [reminder_sent]) VALUES (20, N'test new db', N'2', 2, CAST(N'2013-03-07' AS Date), CAST(N'2013-03-20' AS Date), 35, 24, CAST(N'2013-03-07 11:20:33.950' AS DateTime), 1864, NULL, NULL, CAST(N'2013-03-07 11:23:47.277' AS DateTime), 1864, 9999, 0)
INSERT [dbo].[programs] ([id], [name], [days], [numOfWeeks], [startDate], [endDate], [maximum], [cutoff], [created], [creatorId], [modified], [modifierId], [archived], [archiverId], [reminder_num], [reminder_sent]) VALUES (21, N'Grammar review (4 sessions)', N'5', 4, CAST(N'2013-05-02' AS Date), CAST(N'2013-05-29' AS Date), 35, 24, CAST(N'2013-04-03 13:26:53.680' AS DateTime), 2186, NULL, NULL, NULL, NULL, 9999, 0)
INSERT [dbo].[programs] ([id], [name], [days], [numOfWeeks], [startDate], [endDate], [maximum], [cutoff], [created], [creatorId], [modified], [modifierId], [archived], [archiverId], [reminder_num], [reminder_sent]) VALUES (22, N'Grammar review (4 sessions)', N'5', 4, CAST(N'2013-05-02' AS Date), CAST(N'2013-05-29' AS Date), 35, 24, CAST(N'2013-04-03 14:27:17.797' AS DateTime), 2186, CAST(N'2013-05-20 23:30:02.453' AS DateTime), 1864, NULL, NULL, 9999, 2)
INSERT [dbo].[programs] ([id], [name], [days], [numOfWeeks], [startDate], [endDate], [maximum], [cutoff], [created], [creatorId], [modified], [modifierId], [archived], [archiverId], [reminder_num], [reminder_sent]) VALUES (23, N'Grammar review (4 sessions)', N'5', 4, CAST(N'2013-05-02' AS Date), CAST(N'2013-05-29' AS Date), 35, 24, CAST(N'2013-04-03 14:28:41.510' AS DateTime), 2186, NULL, NULL, NULL, NULL, 9999, 0)
INSERT [dbo].[programs] ([id], [name], [days], [numOfWeeks], [startDate], [endDate], [maximum], [cutoff], [created], [creatorId], [modified], [modifierId], [archived], [archiverId], [reminder_num], [reminder_sent]) VALUES (24, N'Grammar review (4 sessions)', N'5', 4, CAST(N'2013-05-02' AS Date), CAST(N'2013-05-29' AS Date), 35, 24, CAST(N'2013-04-03 14:36:43.843' AS DateTime), 2186, NULL, NULL, CAST(N'2013-04-03 14:38:21.283' AS DateTime), 2186, 9999, 0)
INSERT [dbo].[programs] ([id], [name], [days], [numOfWeeks], [startDate], [endDate], [maximum], [cutoff], [created], [creatorId], [modified], [modifierId], [archived], [archiverId], [reminder_num], [reminder_sent]) VALUES (25, N'Pronunciation', N'6', 4, CAST(N'2013-05-03' AS Date), CAST(N'2013-05-30' AS Date), 35, 24, CAST(N'2013-04-03 15:06:00.653' AS DateTime), 2186, CAST(N'2013-05-21 23:30:02.103' AS DateTime), 1864, NULL, NULL, 9999, 3)
INSERT [dbo].[programs] ([id], [name], [days], [numOfWeeks], [startDate], [endDate], [maximum], [cutoff], [created], [creatorId], [modified], [modifierId], [archived], [archiverId], [reminder_num], [reminder_sent]) VALUES (26, N'Pronunciation', N'6', 4, CAST(N'2013-05-03' AS Date), CAST(N'2013-05-30' AS Date), 35, 24, CAST(N'2013-04-03 15:09:24.257' AS DateTime), 2186, NULL, NULL, NULL, NULL, 9999, 0)
INSERT [dbo].[programs] ([id], [name], [days], [numOfWeeks], [startDate], [endDate], [maximum], [cutoff], [created], [creatorId], [modified], [modifierId], [archived], [archiverId], [reminder_num], [reminder_sent]) VALUES (27, N'Temp test', N'5', 1, CAST(N'2013-04-10' AS Date), CAST(N'2013-04-16' AS Date), 35, 24, CAST(N'2013-04-08 09:43:22.177' AS DateTime), 1864, NULL, NULL, CAST(N'2013-04-11 14:19:17.363' AS DateTime), 2560, 9999, 0)
INSERT [dbo].[programs] ([id], [name], [days], [numOfWeeks], [startDate], [endDate], [maximum], [cutoff], [created], [creatorId], [modified], [modifierId], [archived], [archiverId], [reminder_num], [reminder_sent]) VALUES (28, N'test', N'5', 1, CAST(N'2013-04-09' AS Date), CAST(N'2013-04-15' AS Date), 1, 24, CAST(N'2013-04-08 14:12:32.313' AS DateTime), 1864, NULL, NULL, CAST(N'2013-04-08 16:14:50.293' AS DateTime), 1864, 9999, 0)
INSERT [dbo].[programs] ([id], [name], [days], [numOfWeeks], [startDate], [endDate], [maximum], [cutoff], [created], [creatorId], [modified], [modifierId], [archived], [archiverId], [reminder_num], [reminder_sent]) VALUES (29, N'General conversations - Thursday morning', N'5', 8, CAST(N'2013-04-18' AS Date), CAST(N'2013-06-12' AS Date), 25, 24, CAST(N'2013-04-11 14:07:28.977' AS DateTime), 2560, CAST(N'2013-06-03 23:30:02.990' AS DateTime), 1864, NULL, NULL, 9999, 4)
INSERT [dbo].[programs] ([id], [name], [days], [numOfWeeks], [startDate], [endDate], [maximum], [cutoff], [created], [creatorId], [modified], [modifierId], [archived], [archiverId], [reminder_num], [reminder_sent]) VALUES (30, N'General conversations - Thursday morning', N'5', 8, CAST(N'2013-04-18' AS Date), CAST(N'2013-06-12' AS Date), 25, 24, CAST(N'2013-04-11 14:08:59.583' AS DateTime), 2560, NULL, NULL, CAST(N'2013-04-11 14:17:58.067' AS DateTime), 2560, 9999, 0)
INSERT [dbo].[programs] ([id], [name], [days], [numOfWeeks], [startDate], [endDate], [maximum], [cutoff], [created], [creatorId], [modified], [modifierId], [archived], [archiverId], [reminder_num], [reminder_sent]) VALUES (31, N'General conversation - Friday afternoon', N'6', 8, CAST(N'2013-04-19' AS Date), CAST(N'2013-06-13' AS Date), 25, 24, CAST(N'2013-04-11 14:20:17.927' AS DateTime), 1337, CAST(N'2013-06-04 23:30:01.793' AS DateTime), 1864, NULL, NULL, 9999, 5)
INSERT [dbo].[programs] ([id], [name], [days], [numOfWeeks], [startDate], [endDate], [maximum], [cutoff], [created], [creatorId], [modified], [modifierId], [archived], [archiverId], [reminder_num], [reminder_sent]) VALUES (32, N'test lb1', N'3', 3, CAST(N'2013-04-08' AS Date), CAST(N'2013-04-28' AS Date), 1, 1, CAST(N'2013-04-12 14:19:55.533' AS DateTime), 1864, NULL, NULL, NULL, NULL, 9999, 0)
INSERT [dbo].[programs] ([id], [name], [days], [numOfWeeks], [startDate], [endDate], [maximum], [cutoff], [created], [creatorId], [modified], [modifierId], [archived], [archiverId], [reminder_num], [reminder_sent]) VALUES (33, N'test lb2', N'4', 3, CAST(N'2013-04-07' AS Date), CAST(N'2013-04-27' AS Date), 1, 1, CAST(N'2013-04-12 14:21:20.893' AS DateTime), 1864, NULL, NULL, NULL, NULL, 9999, 0)
INSERT [dbo].[programs] ([id], [name], [days], [numOfWeeks], [startDate], [endDate], [maximum], [cutoff], [created], [creatorId], [modified], [modifierId], [archived], [archiverId], [reminder_num], [reminder_sent]) VALUES (34, N'test 4', N'3', 5, CAST(N'2013-04-16' AS Date), CAST(N'2013-05-20' AS Date), 35, 24, CAST(N'2013-04-15 16:53:43.900' AS DateTime), 1337, NULL, NULL, CAST(N'2013-04-15 17:07:57.640' AS DateTime), 1337, 9999, 0)
INSERT [dbo].[programs] ([id], [name], [days], [numOfWeeks], [startDate], [endDate], [maximum], [cutoff], [created], [creatorId], [modified], [modifierId], [archived], [archiverId], [reminder_num], [reminder_sent]) VALUES (35, N'testing 6', N'4', 5, CAST(N'2013-04-17' AS Date), CAST(N'2013-05-21' AS Date), 35, 24, CAST(N'2013-04-15 16:56:53.590' AS DateTime), 1337, NULL, NULL, CAST(N'2013-04-15 16:57:56.810' AS DateTime), 1337, 9999, 0)
INSERT [dbo].[programs] ([id], [name], [days], [numOfWeeks], [startDate], [endDate], [maximum], [cutoff], [created], [creatorId], [modified], [modifierId], [archived], [archiverId], [reminder_num], [reminder_sent]) VALUES (36, N'testing 10', N'6', 5, CAST(N'2013-04-18' AS Date), CAST(N'2013-05-22' AS Date), 35, 24, CAST(N'2013-04-15 16:58:33.623' AS DateTime), 1337, NULL, NULL, NULL, NULL, 9999, 0)
INSERT [dbo].[programs] ([id], [name], [days], [numOfWeeks], [startDate], [endDate], [maximum], [cutoff], [created], [creatorId], [modified], [modifierId], [archived], [archiverId], [reminder_num], [reminder_sent]) VALUES (37, N'test miguel', N'2,3,4,5,6,7', 1, CAST(N'2013-05-15' AS Date), CAST(N'2013-05-21' AS Date), 2, 24, CAST(N'2013-05-07 15:25:08.710' AS DateTime), 1864, NULL, NULL, CAST(N'2013-05-07 15:30:34.897' AS DateTime), 1864, 999, 0)
INSERT [dbo].[programs] ([id], [name], [days], [numOfWeeks], [startDate], [endDate], [maximum], [cutoff], [created], [creatorId], [modified], [modifierId], [archived], [archiverId], [reminder_num], [reminder_sent]) VALUES (38, N'test migue 2', N'2,3,4,5,6', 2, CAST(N'2013-05-09' AS Date), CAST(N'2013-05-22' AS Date), 35, 24, CAST(N'2013-05-07 15:29:40.680' AS DateTime), 1864, NULL, NULL, CAST(N'2013-05-07 15:31:00.930' AS DateTime), 1864, 1, 0)
INSERT [dbo].[programs] ([id], [name], [days], [numOfWeeks], [startDate], [endDate], [maximum], [cutoff], [created], [creatorId], [modified], [modifierId], [archived], [archiverId], [reminder_num], [reminder_sent]) VALUES (39, N'tes miguel 3', N'2,3,4,5', 2, CAST(N'2013-05-10' AS Date), CAST(N'2013-05-23' AS Date), 2, 24, CAST(N'2013-05-07 15:31:23.257' AS DateTime), 1864, NULL, NULL, CAST(N'2013-05-07 15:32:22.790' AS DateTime), 1864, 9999, 0)
INSERT [dbo].[programs] ([id], [name], [days], [numOfWeeks], [startDate], [endDate], [maximum], [cutoff], [created], [creatorId], [modified], [modifierId], [archived], [archiverId], [reminder_num], [reminder_sent]) VALUES (40, N'Test jquery', N'2,3', 1, CAST(N'2013-05-22' AS Date), CAST(N'2013-05-28' AS Date), 1, 24, CAST(N'2013-05-14 10:27:24.973' AS DateTime), 1864, NULL, NULL, CAST(N'2013-05-14 10:27:54.600' AS DateTime), 1864, 9999, 0)
INSERT [dbo].[programs] ([id], [name], [days], [numOfWeeks], [startDate], [endDate], [maximum], [cutoff], [created], [creatorId], [modified], [modifierId], [archived], [archiverId], [reminder_num], [reminder_sent]) VALUES (41, N'Test jquery2', N'2', 1, CAST(N'2013-05-15' AS Date), CAST(N'2013-05-21' AS Date), 35, 24, CAST(N'2013-05-14 10:29:09.490' AS DateTime), 1864, NULL, NULL, CAST(N'2013-05-14 11:10:10.577' AS DateTime), 1864, 9999, 0)
INSERT [dbo].[programs] ([id], [name], [days], [numOfWeeks], [startDate], [endDate], [maximum], [cutoff], [created], [creatorId], [modified], [modifierId], [archived], [archiverId], [reminder_num], [reminder_sent]) VALUES (42, N'Academic Writing - Daytime', N'2,3,4,5,6', 1, CAST(N'2013-07-08' AS Date), CAST(N'2013-07-14' AS Date), 25, 48, CAST(N'2013-05-16 12:00:19.550' AS DateTime), 1337, NULL, NULL, CAST(N'2013-05-16 12:01:01.247' AS DateTime), 1337, 1, 0)
INSERT [dbo].[programs] ([id], [name], [days], [numOfWeeks], [startDate], [endDate], [maximum], [cutoff], [created], [creatorId], [modified], [modifierId], [archived], [archiverId], [reminder_num], [reminder_sent]) VALUES (43, N'Academic Writing - Daytime 1', N'2,3,4,5,6', 1, CAST(N'2013-07-08' AS Date), CAST(N'2013-07-14' AS Date), 31, 200, CAST(N'2013-05-16 12:05:10.160' AS DateTime), 1337, CAST(N'2013-07-11 16:34:43.563' AS DateTime), 2560, NULL, NULL, 1, 1)
INSERT [dbo].[programs] ([id], [name], [days], [numOfWeeks], [startDate], [endDate], [maximum], [cutoff], [created], [creatorId], [modified], [modifierId], [archived], [archiverId], [reminder_num], [reminder_sent]) VALUES (44, N'Academic Writing- Daytime 2', N'2,3,4,5,6', 1, CAST(N'2013-07-08' AS Date), CAST(N'2013-07-14' AS Date), 36, 250, CAST(N'2013-05-16 12:50:35.833' AS DateTime), 2560, CAST(N'2013-07-10 12:43:56.657' AS DateTime), 2186, NULL, NULL, 1, 1)
INSERT [dbo].[programs] ([id], [name], [days], [numOfWeeks], [startDate], [endDate], [maximum], [cutoff], [created], [creatorId], [modified], [modifierId], [archived], [archiverId], [reminder_num], [reminder_sent]) VALUES (45, N'Academic Writing- Daytime 3', N'2,3,4,5,6', 1, CAST(N'2013-07-08' AS Date), CAST(N'2013-07-14' AS Date), 15, 250, CAST(N'2013-05-16 13:00:04.230' AS DateTime), 2560, CAST(N'2013-07-10 12:15:34.243' AS DateTime), 2186, NULL, NULL, 1, 1)
INSERT [dbo].[programs] ([id], [name], [days], [numOfWeeks], [startDate], [endDate], [maximum], [cutoff], [created], [creatorId], [modified], [modifierId], [archived], [archiverId], [reminder_num], [reminder_sent]) VALUES (46, N'Academic Writing- Daytime 4', N'2,3,4,5,6', 1, CAST(N'2013-07-18' AS Date), CAST(N'2013-07-24' AS Date), 35, 48, CAST(N'2013-05-16 13:01:42.733' AS DateTime), 2560, NULL, NULL, CAST(N'2013-05-16 13:02:01.370' AS DateTime), 2560, 1, 0)
INSERT [dbo].[programs] ([id], [name], [days], [numOfWeeks], [startDate], [endDate], [maximum], [cutoff], [created], [creatorId], [modified], [modifierId], [archived], [archiverId], [reminder_num], [reminder_sent]) VALUES (47, N'Academic Writing- Daytime 4', N'2,3,4,5,6', 1, CAST(N'2013-07-08' AS Date), CAST(N'2013-07-14' AS Date), 36, 250, CAST(N'2013-05-16 13:03:35.937' AS DateTime), 2560, CAST(N'2013-07-10 15:06:02.543' AS DateTime), 2186, NULL, NULL, 1, 1)
INSERT [dbo].[programs] ([id], [name], [days], [numOfWeeks], [startDate], [endDate], [maximum], [cutoff], [created], [creatorId], [modified], [modifierId], [archived], [archiverId], [reminder_num], [reminder_sent]) VALUES (48, N'Academic Writing- Daytime 5', N'2,3,4,5,6', 1, CAST(N'2013-07-08' AS Date), CAST(N'2013-07-14' AS Date), 35, 250, CAST(N'2013-05-16 13:08:01.410' AS DateTime), 2560, CAST(N'2013-07-05 23:30:42.973' AS DateTime), 1864, NULL, NULL, 1, 1)
INSERT [dbo].[programs] ([id], [name], [days], [numOfWeeks], [startDate], [endDate], [maximum], [cutoff], [created], [creatorId], [modified], [modifierId], [archived], [archiverId], [reminder_num], [reminder_sent]) VALUES (49, N'Academic Writing - Evening 1', N'2,3,4,5,6', 1, CAST(N'2013-07-08' AS Date), CAST(N'2013-07-14' AS Date), 35, 400, CAST(N'2013-05-16 13:11:32.967' AS DateTime), 2560, CAST(N'2013-07-15 11:29:44.530' AS DateTime), 2560, NULL, NULL, 1, 1)
INSERT [dbo].[programs] ([id], [name], [days], [numOfWeeks], [startDate], [endDate], [maximum], [cutoff], [created], [creatorId], [modified], [modifierId], [archived], [archiverId], [reminder_num], [reminder_sent]) VALUES (50, N'Academic Writing - Evening 2', N'2,3,4,5,6', 1, CAST(N'2013-07-08' AS Date), CAST(N'2013-07-14' AS Date), 35, 300, CAST(N'2013-05-16 13:14:26.983' AS DateTime), 2560, CAST(N'2013-07-05 23:30:43.167' AS DateTime), 1864, NULL, NULL, 1, 1)
INSERT [dbo].[programs] ([id], [name], [days], [numOfWeeks], [startDate], [endDate], [maximum], [cutoff], [created], [creatorId], [modified], [modifierId], [archived], [archiverId], [reminder_num], [reminder_sent]) VALUES (51, N'Presentation - Daytime 1', N'2,3,4,5,6', 1, CAST(N'2013-07-15' AS Date), CAST(N'2013-07-21' AS Date), 27, 400, CAST(N'2013-05-16 13:18:28.433' AS DateTime), 2560, CAST(N'2013-07-15 14:23:09.480' AS DateTime), 2560, NULL, NULL, 1, 1)
INSERT [dbo].[programs] ([id], [name], [days], [numOfWeeks], [startDate], [endDate], [maximum], [cutoff], [created], [creatorId], [modified], [modifierId], [archived], [archiverId], [reminder_num], [reminder_sent]) VALUES (52, N'Presentation - Daytime 2', N'2,3,4,5,6', 1, CAST(N'2013-07-15' AS Date), CAST(N'2013-07-21' AS Date), 27, 400, CAST(N'2013-05-16 13:22:11.510' AS DateTime), 2560, CAST(N'2013-07-12 23:30:00.603' AS DateTime), 1864, NULL, NULL, 1, 1)
INSERT [dbo].[programs] ([id], [name], [days], [numOfWeeks], [startDate], [endDate], [maximum], [cutoff], [created], [creatorId], [modified], [modifierId], [archived], [archiverId], [reminder_num], [reminder_sent]) VALUES (53, N'Presentation - Evening 1', N'2,3,4,5,6', 1, CAST(N'2013-07-15' AS Date), CAST(N'2013-07-21' AS Date), 35, 400, CAST(N'2013-05-16 13:24:48.417' AS DateTime), 2560, CAST(N'2013-07-17 14:24:52.117' AS DateTime), 2186, NULL, NULL, 1, 1)
INSERT [dbo].[programs] ([id], [name], [days], [numOfWeeks], [startDate], [endDate], [maximum], [cutoff], [created], [creatorId], [modified], [modifierId], [archived], [archiverId], [reminder_num], [reminder_sent]) VALUES (54, N'Presentation - Evening 2', N'2,3,4,5,6', 1, CAST(N'2013-07-15' AS Date), CAST(N'2013-07-21' AS Date), 33, 400, CAST(N'2013-05-16 13:32:51.200' AS DateTime), 2560, CAST(N'2013-07-17 14:42:55.737' AS DateTime), 2186, NULL, NULL, 1, 1)
INSERT [dbo].[programs] ([id], [name], [days], [numOfWeeks], [startDate], [endDate], [maximum], [cutoff], [created], [creatorId], [modified], [modifierId], [archived], [archiverId], [reminder_num], [reminder_sent]) VALUES (55, N'Pronunciation 1', N'2,3,4,5,6', 1, CAST(N'2013-07-15' AS Date), CAST(N'2013-07-21' AS Date), 35, 400, CAST(N'2013-05-16 13:37:15.247' AS DateTime), 2560, CAST(N'2013-07-12 23:30:00.883' AS DateTime), 1864, NULL, NULL, 1, 1)
INSERT [dbo].[programs] ([id], [name], [days], [numOfWeeks], [startDate], [endDate], [maximum], [cutoff], [created], [creatorId], [modified], [modifierId], [archived], [archiverId], [reminder_num], [reminder_sent]) VALUES (56, N'Pronunciation 2', N'2,3,4,5,6', 1, CAST(N'2013-07-15' AS Date), CAST(N'2013-07-21' AS Date), 36, 400, CAST(N'2013-05-16 14:28:02.363' AS DateTime), 2560, CAST(N'2013-07-17 11:26:49.290' AS DateTime), 2186, NULL, NULL, 1, 1)
INSERT [dbo].[programs] ([id], [name], [days], [numOfWeeks], [startDate], [endDate], [maximum], [cutoff], [created], [creatorId], [modified], [modifierId], [archived], [archiverId], [reminder_num], [reminder_sent]) VALUES (57, N'Pronunciation 3', N'2,3,4,5,6', 1, CAST(N'2013-07-15' AS Date), CAST(N'2013-07-21' AS Date), 35, 400, CAST(N'2013-05-16 14:31:17.207' AS DateTime), 2560, CAST(N'2013-07-12 23:30:01.057' AS DateTime), 1864, NULL, NULL, 1, 1)
INSERT [dbo].[programs] ([id], [name], [days], [numOfWeeks], [startDate], [endDate], [maximum], [cutoff], [created], [creatorId], [modified], [modifierId], [archived], [archiverId], [reminder_num], [reminder_sent]) VALUES (58, N'Pronunciation 4', N'2,3,4,5,6', 1, CAST(N'2013-07-15' AS Date), CAST(N'2013-07-21' AS Date), 34, 400, CAST(N'2013-05-16 14:34:12.237' AS DateTime), 2560, CAST(N'2013-07-15 10:29:27.763' AS DateTime), 2560, NULL, NULL, 1, 1)
INSERT [dbo].[programs] ([id], [name], [days], [numOfWeeks], [startDate], [endDate], [maximum], [cutoff], [created], [creatorId], [modified], [modifierId], [archived], [archiverId], [reminder_num], [reminder_sent]) VALUES (59, N'wt-testing 01', N'4,5,6', 3, CAST(N'2013-05-21' AS Date), CAST(N'2013-06-10' AS Date), 2, 1, CAST(N'2013-05-22 13:31:56.483' AS DateTime), 1864, CAST(N'2013-05-22 14:21:42.247' AS DateTime), 1864, CAST(N'2013-05-24 09:37:50.777' AS DateTime), 1337, 9999, 0)
INSERT [dbo].[programs] ([id], [name], [days], [numOfWeeks], [startDate], [endDate], [maximum], [cutoff], [created], [creatorId], [modified], [modifierId], [archived], [archiverId], [reminder_num], [reminder_sent]) VALUES (60, N'wt-testing 02', N'2,3,4', 9, CAST(N'2013-05-07' AS Date), CAST(N'2013-07-08' AS Date), 2, 24, CAST(N'2013-05-22 14:40:10.327' AS DateTime), 1864, NULL, NULL, CAST(N'2013-05-22 14:42:30.527' AS DateTime), 1864, 9999, 0)
INSERT [dbo].[programs] ([id], [name], [days], [numOfWeeks], [startDate], [endDate], [maximum], [cutoff], [created], [creatorId], [modified], [modifierId], [archived], [archiverId], [reminder_num], [reminder_sent]) VALUES (61, N'wt-testing 03', N'2,3,4', 5, CAST(N'2013-07-01' AS Date), CAST(N'2013-08-04' AS Date), 1, 24, CAST(N'2013-05-22 14:43:17.260' AS DateTime), 1864, NULL, NULL, CAST(N'2013-05-24 09:43:28.900' AS DateTime), 1864, 9999, 0)
INSERT [dbo].[programs] ([id], [name], [days], [numOfWeeks], [startDate], [endDate], [maximum], [cutoff], [created], [creatorId], [modified], [modifierId], [archived], [archiverId], [reminder_num], [reminder_sent]) VALUES (62, N'Test wt june', N'4', 8, CAST(N'2013-06-12' AS Date), CAST(N'2013-08-06' AS Date), 1, 24, CAST(N'2013-06-12 15:12:51.953' AS DateTime), 1864, NULL, NULL, CAST(N'2013-06-12 15:37:10.543' AS DateTime), 1864, 9999, 0)
INSERT [dbo].[programs] ([id], [name], [days], [numOfWeeks], [startDate], [endDate], [maximum], [cutoff], [created], [creatorId], [modified], [modifierId], [archived], [archiverId], [reminder_num], [reminder_sent]) VALUES (63, N'General conversations - Winter special', N'4', 4, CAST(N'2013-07-03' AS Date), CAST(N'2013-07-30' AS Date), 30, 24, CAST(N'2013-06-25 10:11:31.883' AS DateTime), 1337, CAST(N'2013-07-21 23:30:00.280' AS DateTime), 1864, NULL, NULL, 9999, 4)
INSERT [dbo].[programs] ([id], [name], [days], [numOfWeeks], [startDate], [endDate], [maximum], [cutoff], [created], [creatorId], [modified], [modifierId], [archived], [archiverId], [reminder_num], [reminder_sent]) VALUES (64, N'General conversations - Winter special', N'4', 4, CAST(N'2013-07-03' AS Date), CAST(N'2013-07-30' AS Date), 30, 24, CAST(N'2013-06-25 10:13:01.147' AS DateTime), 1337, CAST(N'2013-07-21 23:30:00.997' AS DateTime), 1864, NULL, NULL, 9999, 4)
INSERT [dbo].[programs] ([id], [name], [days], [numOfWeeks], [startDate], [endDate], [maximum], [cutoff], [created], [creatorId], [modified], [modifierId], [archived], [archiverId], [reminder_num], [reminder_sent]) VALUES (65, N'General conversations - Winter special', N'5', 4, CAST(N'2013-07-04' AS Date), CAST(N'2013-07-31' AS Date), 30, 24, CAST(N'2013-06-25 10:14:39.147' AS DateTime), 1337, CAST(N'2013-07-22 23:30:00.307' AS DateTime), 1864, NULL, NULL, 9999, 5)
INSERT [dbo].[programs] ([id], [name], [days], [numOfWeeks], [startDate], [endDate], [maximum], [cutoff], [created], [creatorId], [modified], [modifierId], [archived], [archiverId], [reminder_num], [reminder_sent]) VALUES (66, N'General conversations - Winter special', N'5', 4, CAST(N'2013-07-04' AS Date), CAST(N'2013-07-31' AS Date), 30, 24, CAST(N'2013-06-25 10:15:41.067' AS DateTime), 1337, CAST(N'2013-07-22 23:30:00.887' AS DateTime), 1864, NULL, NULL, 9999, 5)
INSERT [dbo].[programs] ([id], [name], [days], [numOfWeeks], [startDate], [endDate], [maximum], [cutoff], [created], [creatorId], [modified], [modifierId], [archived], [archiverId], [reminder_num], [reminder_sent]) VALUES (67, N'1.	U:PASSwrite for MPO students 1', N'3', 10, CAST(N'2013-08-13' AS Date), CAST(N'2013-10-21' AS Date), 20, 48, CAST(N'2013-07-23 15:29:17.097' AS DateTime), 1337, CAST(N'2013-07-23 15:32:42.517' AS DateTime), 1337, CAST(N'2013-07-23 15:33:01.470' AS DateTime), 1337, 9999, 0)
INSERT [dbo].[programs] ([id], [name], [days], [numOfWeeks], [startDate], [endDate], [maximum], [cutoff], [created], [creatorId], [modified], [modifierId], [archived], [archiverId], [reminder_num], [reminder_sent]) VALUES (68, N'U:PASSwrite for MPO students  1', N'3', 10, CAST(N'2013-08-13' AS Date), CAST(N'2013-10-21' AS Date), 20, 24, CAST(N'2013-07-23 15:33:57.610' AS DateTime), 1337, CAST(N'2013-10-12 23:30:02.283' AS DateTime), 1864, NULL, NULL, 9999, 8)
INSERT [dbo].[programs] ([id], [name], [days], [numOfWeeks], [startDate], [endDate], [maximum], [cutoff], [created], [creatorId], [modified], [modifierId], [archived], [archiverId], [reminder_num], [reminder_sent]) VALUES (69, N'U:PASSwrite for MPO students  2', N'3', 10, CAST(N'2013-08-13' AS Date), CAST(N'2013-10-21' AS Date), 20, 24, CAST(N'2013-07-23 15:35:00.093' AS DateTime), 1337, CAST(N'2013-10-12 23:30:02.987' AS DateTime), 1864, NULL, NULL, 9999, 8)
INSERT [dbo].[programs] ([id], [name], [days], [numOfWeeks], [startDate], [endDate], [maximum], [cutoff], [created], [creatorId], [modified], [modifierId], [archived], [archiverId], [reminder_num], [reminder_sent]) VALUES (70, N'U:PASSwrite for MPO students  3', N'3', 10, CAST(N'2013-08-13' AS Date), CAST(N'2013-10-21' AS Date), 20, 24, CAST(N'2013-07-23 15:36:13.297' AS DateTime), 1337, CAST(N'2013-10-12 23:30:03.783' AS DateTime), 1864, NULL, NULL, 9999, 8)
INSERT [dbo].[programs] ([id], [name], [days], [numOfWeeks], [startDate], [endDate], [maximum], [cutoff], [created], [creatorId], [modified], [modifierId], [archived], [archiverId], [reminder_num], [reminder_sent]) VALUES (71, N'U:PASSwrite for MPO students  4', N'3', 10, CAST(N'2013-08-13' AS Date), CAST(N'2013-10-21' AS Date), 20, 24, CAST(N'2013-07-23 15:37:22.983' AS DateTime), 1337, CAST(N'2013-10-12 23:30:04.563' AS DateTime), 1864, NULL, NULL, 9999, 8)
INSERT [dbo].[programs] ([id], [name], [days], [numOfWeeks], [startDate], [endDate], [maximum], [cutoff], [created], [creatorId], [modified], [modifierId], [archived], [archiverId], [reminder_num], [reminder_sent]) VALUES (72, N'U:PASSwrite for MPO students  5', N'3', 10, CAST(N'2013-08-13' AS Date), CAST(N'2013-10-21' AS Date), 20, 24, CAST(N'2013-07-23 15:38:34.843' AS DateTime), 1337, CAST(N'2013-10-12 23:30:05.437' AS DateTime), 1864, NULL, NULL, 9999, 8)
INSERT [dbo].[programs] ([id], [name], [days], [numOfWeeks], [startDate], [endDate], [maximum], [cutoff], [created], [creatorId], [modified], [modifierId], [archived], [archiverId], [reminder_num], [reminder_sent]) VALUES (73, N'U:PASSwrite for EN2 students  1', N'3', 6, CAST(N'2013-08-13' AS Date), CAST(N'2013-09-23' AS Date), 15, 24, CAST(N'2013-07-23 15:42:24.717' AS DateTime), 1337, CAST(N'2013-08-17 23:30:05.930' AS DateTime), 1864, NULL, NULL, 9999, 2)
INSERT [dbo].[programs] ([id], [name], [days], [numOfWeeks], [startDate], [endDate], [maximum], [cutoff], [created], [creatorId], [modified], [modifierId], [archived], [archiverId], [reminder_num], [reminder_sent]) VALUES (74, N'U:PASSwrite for EN2 students  2', N'3', 6, CAST(N'2013-08-13' AS Date), CAST(N'2013-09-23' AS Date), 15, 24, CAST(N'2013-07-23 15:43:16.810' AS DateTime), 1337, CAST(N'2013-08-17 23:30:06.087' AS DateTime), 1864, NULL, NULL, 9999, 2)
INSERT [dbo].[programs] ([id], [name], [days], [numOfWeeks], [startDate], [endDate], [maximum], [cutoff], [created], [creatorId], [modified], [modifierId], [archived], [archiverId], [reminder_num], [reminder_sent]) VALUES (75, N'U:PASSwrite for EN2 students  3', N'5', 6, CAST(N'2013-08-15' AS Date), CAST(N'2013-09-25' AS Date), 20, 24, CAST(N'2013-07-23 15:44:01.340' AS DateTime), 1337, NULL, NULL, CAST(N'2013-07-23 15:45:34.513' AS DateTime), 1337, 9999, 0)
INSERT [dbo].[programs] ([id], [name], [days], [numOfWeeks], [startDate], [endDate], [maximum], [cutoff], [created], [creatorId], [modified], [modifierId], [archived], [archiverId], [reminder_num], [reminder_sent]) VALUES (76, N'U:PASSwrite for EN1 students  1', N'5', 6, CAST(N'2013-08-15' AS Date), CAST(N'2013-09-25' AS Date), 15, 24, CAST(N'2013-07-23 15:46:11.807' AS DateTime), 1337, CAST(N'2013-08-19 23:30:01.250' AS DateTime), 1864, NULL, NULL, 9999, 1)
INSERT [dbo].[programs] ([id], [name], [days], [numOfWeeks], [startDate], [endDate], [maximum], [cutoff], [created], [creatorId], [modified], [modifierId], [archived], [archiverId], [reminder_num], [reminder_sent]) VALUES (77, N'U:PASSwrite for EN1 students  2', N'5', 6, CAST(N'2013-08-15' AS Date), CAST(N'2013-09-25' AS Date), 15, 24, CAST(N'2013-07-23 15:47:01.793' AS DateTime), 1337, CAST(N'2013-07-23 15:48:18.947' AS DateTime), 1337, NULL, NULL, 9999, 0)
INSERT [dbo].[programs] ([id], [name], [days], [numOfWeeks], [startDate], [endDate], [maximum], [cutoff], [created], [creatorId], [modified], [modifierId], [archived], [archiverId], [reminder_num], [reminder_sent]) VALUES (78, N'GROUP WORK & COLLABORATION', N'2', 14, CAST(N'2013-08-05' AS Date), CAST(N'2013-11-10' AS Date), 35, 24, CAST(N'2013-07-31 15:37:40.847' AS DateTime), 2186, CAST(N'2013-11-01 23:30:01.697' AS DateTime), 1864, NULL, NULL, 9999, 12)
INSERT [dbo].[programs] ([id], [name], [days], [numOfWeeks], [startDate], [endDate], [maximum], [cutoff], [created], [creatorId], [modified], [modifierId], [archived], [archiverId], [reminder_num], [reminder_sent]) VALUES (79, N'DEVELOPING YOUR CONFIDENCE IN IELTS STYLE SPEAKING', N'3', 14, CAST(N'2013-08-06' AS Date), CAST(N'2013-11-11' AS Date), 20, 24, CAST(N'2013-07-31 15:39:48.860' AS DateTime), 2186, CAST(N'2013-11-02 23:30:02.343' AS DateTime), 1864, NULL, NULL, 9999, 13)
INSERT [dbo].[programs] ([id], [name], [days], [numOfWeeks], [startDate], [endDate], [maximum], [cutoff], [created], [creatorId], [modified], [modifierId], [archived], [archiverId], [reminder_num], [reminder_sent]) VALUES (80, N'UNDERSTANDING AUSTRALIAN CULTURE', N'4', 14, CAST(N'2013-08-07' AS Date), CAST(N'2013-11-12' AS Date), 35, 24, CAST(N'2013-07-31 15:42:13.203' AS DateTime), 2186, CAST(N'2013-11-03 23:30:01.177' AS DateTime), 1864, NULL, NULL, 9999, 13)
INSERT [dbo].[programs] ([id], [name], [days], [numOfWeeks], [startDate], [endDate], [maximum], [cutoff], [created], [creatorId], [modified], [modifierId], [archived], [archiverId], [reminder_num], [reminder_sent]) VALUES (81, N'GENERAL DISCUSSION', N'5', 14, CAST(N'2013-08-08' AS Date), CAST(N'2013-11-13' AS Date), 35, 24, CAST(N'2013-07-31 15:43:17.903' AS DateTime), 2186, CAST(N'2013-11-04 23:30:01.460' AS DateTime), 1864, NULL, NULL, 9999, 12)
INSERT [dbo].[programs] ([id], [name], [days], [numOfWeeks], [startDate], [endDate], [maximum], [cutoff], [created], [creatorId], [modified], [modifierId], [archived], [archiverId], [reminder_num], [reminder_sent]) VALUES (82, N'LIVING & WORKING IN AUSTRALIA', N'6', 14, CAST(N'2013-08-09' AS Date), CAST(N'2013-11-14' AS Date), 35, 24, CAST(N'2013-07-31 15:44:32.667' AS DateTime), 2186, CAST(N'2013-11-05 23:30:01.710' AS DateTime), 1864, NULL, NULL, 9999, 13)
INSERT [dbo].[programs] ([id], [name], [days], [numOfWeeks], [startDate], [endDate], [maximum], [cutoff], [created], [creatorId], [modified], [modifierId], [archived], [archiverId], [reminder_num], [reminder_sent]) VALUES (83, N'CONVERSATIONAL ENGLISH AT WORK – UNDERSTANDING AUSTRALIAN SPOKEN ENGLISH', N'2', 14, CAST(N'2013-08-05' AS Date), CAST(N'2013-11-10' AS Date), 35, 24, CAST(N'2013-07-31 15:45:38.590' AS DateTime), 2186, CAST(N'2013-11-01 23:30:02.760' AS DateTime), 1864, NULL, NULL, 9999, 13)
INSERT [dbo].[programs] ([id], [name], [days], [numOfWeeks], [startDate], [endDate], [maximum], [cutoff], [created], [creatorId], [modified], [modifierId], [archived], [archiverId], [reminder_num], [reminder_sent]) VALUES (84, N'DEVELOPING YOUR EMPLOYMENT OPPORTUNITY SKILLS', N'3', 14, CAST(N'2013-08-06' AS Date), CAST(N'2013-11-11' AS Date), 35, 24, CAST(N'2013-07-31 15:47:16.353' AS DateTime), 2186, CAST(N'2013-11-02 23:30:03.983' AS DateTime), 1864, NULL, NULL, 9999, 13)
INSERT [dbo].[programs] ([id], [name], [days], [numOfWeeks], [startDate], [endDate], [maximum], [cutoff], [created], [creatorId], [modified], [modifierId], [archived], [archiverId], [reminder_num], [reminder_sent]) VALUES (85, N'DEVELOPING YOUR PRESENTATION SKILLS', N'4', 14, CAST(N'2013-08-07' AS Date), CAST(N'2013-11-12' AS Date), 35, 24, CAST(N'2013-07-31 15:48:07.697' AS DateTime), 2186, CAST(N'2013-11-03 23:30:02.677' AS DateTime), 1864, NULL, NULL, 9999, 13)
INSERT [dbo].[programs] ([id], [name], [days], [numOfWeeks], [startDate], [endDate], [maximum], [cutoff], [created], [creatorId], [modified], [modifierId], [archived], [archiverId], [reminder_num], [reminder_sent]) VALUES (86, N'GENERAL DISCUSSION', N'5', 14, CAST(N'2013-08-08' AS Date), CAST(N'2013-11-13' AS Date), 35, 24, CAST(N'2013-07-31 15:49:17.037' AS DateTime), 2186, CAST(N'2013-11-04 23:30:02.243' AS DateTime), 1864, NULL, NULL, 9999, 12)
INSERT [dbo].[programs] ([id], [name], [days], [numOfWeeks], [startDate], [endDate], [maximum], [cutoff], [created], [creatorId], [modified], [modifierId], [archived], [archiverId], [reminder_num], [reminder_sent]) VALUES (87, N'GENERAL DISCUSSION', N'6', 14, CAST(N'2013-08-09' AS Date), CAST(N'2013-11-14' AS Date), 35, 24, CAST(N'2013-07-31 15:50:04.663' AS DateTime), 2186, CAST(N'2013-11-05 23:30:02.663' AS DateTime), 1864, NULL, NULL, 9999, 13)
INSERT [dbo].[programs] ([id], [name], [days], [numOfWeeks], [startDate], [endDate], [maximum], [cutoff], [created], [creatorId], [modified], [modifierId], [archived], [archiverId], [reminder_num], [reminder_sent]) VALUES (88, N'STUDY & WORK STYLES IN AUSTRALIA', N'2', 14, CAST(N'2013-08-05' AS Date), CAST(N'2013-11-10' AS Date), 35, 24, CAST(N'2013-07-31 15:51:01.647' AS DateTime), 2186, CAST(N'2013-11-01 23:30:03.120' AS DateTime), 1864, NULL, NULL, 9999, 13)
INSERT [dbo].[programs] ([id], [name], [days], [numOfWeeks], [startDate], [endDate], [maximum], [cutoff], [created], [creatorId], [modified], [modifierId], [archived], [archiverId], [reminder_num], [reminder_sent]) VALUES (89, N'GENERAL DISCUSSION', N'3', 14, CAST(N'2013-08-06' AS Date), CAST(N'2013-11-11' AS Date), 35, 24, CAST(N'2013-07-31 15:52:06.330' AS DateTime), 2186, CAST(N'2013-11-02 23:30:04.923' AS DateTime), 1864, NULL, NULL, 9999, 13)
INSERT [dbo].[programs] ([id], [name], [days], [numOfWeeks], [startDate], [endDate], [maximum], [cutoff], [created], [creatorId], [modified], [modifierId], [archived], [archiverId], [reminder_num], [reminder_sent]) VALUES (90, N'GENERAL DISCUSSION', N'4', 14, CAST(N'2013-08-07' AS Date), CAST(N'2013-11-12' AS Date), 35, 24, CAST(N'2013-07-31 15:52:51.940' AS DateTime), 2186, CAST(N'2013-11-03 23:30:03.097' AS DateTime), 1864, NULL, NULL, 9999, 13)
INSERT [dbo].[programs] ([id], [name], [days], [numOfWeeks], [startDate], [endDate], [maximum], [cutoff], [created], [creatorId], [modified], [modifierId], [archived], [archiverId], [reminder_num], [reminder_sent]) VALUES (91, N'ENGLISH LANGUAGE FOR THE MULTICULTURAL WORKPLACE ENVIRONMENT', N'5', 14, CAST(N'2013-08-08' AS Date), CAST(N'2013-11-13' AS Date), 35, 24, CAST(N'2013-07-31 15:53:40.563' AS DateTime), 2186, CAST(N'2013-11-04 23:30:02.697' AS DateTime), 1864, NULL, NULL, 9999, 12)
INSERT [dbo].[programs] ([id], [name], [days], [numOfWeeks], [startDate], [endDate], [maximum], [cutoff], [created], [creatorId], [modified], [modifierId], [archived], [archiverId], [reminder_num], [reminder_sent]) VALUES (92, N'DEVELOPING YOUR CONFIDENCE IN IELTS STYLE SPEAKING: Repeat', N'3', 12, CAST(N'2013-08-20' AS Date), CAST(N'2013-11-11' AS Date), 20, 24, CAST(N'2013-08-13 16:29:16.697' AS DateTime), 1337, CAST(N'2013-11-02 23:30:05.937' AS DateTime), 1864, NULL, NULL, 9999, 11)
INSERT [dbo].[programs] ([id], [name], [days], [numOfWeeks], [startDate], [endDate], [maximum], [cutoff], [created], [creatorId], [modified], [modifierId], [archived], [archiverId], [reminder_num], [reminder_sent]) VALUES (93, N'Summer Session: General discussion', N'3', 3, CAST(N'2014-02-11' AS Date), CAST(N'2014-03-03' AS Date), 35, 24, CAST(N'2014-01-20 12:18:17.157' AS DateTime), 2560, CAST(N'2014-02-22 23:30:00.143' AS DateTime), 1864, NULL, NULL, 1, 1)
INSERT [dbo].[programs] ([id], [name], [days], [numOfWeeks], [startDate], [endDate], [maximum], [cutoff], [created], [creatorId], [modified], [modifierId], [archived], [archiverId], [reminder_num], [reminder_sent]) VALUES (94, N'Summer Session: General discussion', N'3', 3, CAST(N'2014-02-11' AS Date), CAST(N'2014-03-03' AS Date), 35, 24, CAST(N'2014-01-20 12:22:47.310' AS DateTime), 2560, CAST(N'2014-02-22 23:30:00.143' AS DateTime), 1864, NULL, NULL, 1, 1)
INSERT [dbo].[programs] ([id], [name], [days], [numOfWeeks], [startDate], [endDate], [maximum], [cutoff], [created], [creatorId], [modified], [modifierId], [archived], [archiverId], [reminder_num], [reminder_sent]) VALUES (95, N'Summer Session: General discussion', N'4', 3, CAST(N'2014-02-12' AS Date), CAST(N'2014-03-04' AS Date), 35, 24, CAST(N'2014-01-20 12:24:23.480' AS DateTime), 2560, CAST(N'2014-02-23 23:30:00.140' AS DateTime), 1864, NULL, NULL, 1, 1)
INSERT [dbo].[programs] ([id], [name], [days], [numOfWeeks], [startDate], [endDate], [maximum], [cutoff], [created], [creatorId], [modified], [modifierId], [archived], [archiverId], [reminder_num], [reminder_sent]) VALUES (96, N'Summer Session: General discussion', N'4', 3, CAST(N'2014-02-12' AS Date), CAST(N'2014-03-04' AS Date), 35, 24, CAST(N'2014-01-20 12:25:17.497' AS DateTime), 2560, CAST(N'2014-02-23 23:30:00.170' AS DateTime), 1864, NULL, NULL, 1, 1)
INSERT [dbo].[programs] ([id], [name], [days], [numOfWeeks], [startDate], [endDate], [maximum], [cutoff], [created], [creatorId], [modified], [modifierId], [archived], [archiverId], [reminder_num], [reminder_sent]) VALUES (97, N'Summer Session: General discussion', N'5', 3, CAST(N'2014-02-13' AS Date), CAST(N'2014-03-05' AS Date), 35, 24, CAST(N'2014-01-20 12:26:33.857' AS DateTime), 2560, CAST(N'2014-02-24 23:30:00.427' AS DateTime), 1864, NULL, NULL, 1, 1)
INSERT [dbo].[programs] ([id], [name], [days], [numOfWeeks], [startDate], [endDate], [maximum], [cutoff], [created], [creatorId], [modified], [modifierId], [archived], [archiverId], [reminder_num], [reminder_sent]) VALUES (98, N'Summer Session: General discussion', N'5', 3, CAST(N'2014-02-13' AS Date), CAST(N'2014-03-05' AS Date), 35, 24, CAST(N'2014-01-20 12:28:36.713' AS DateTime), 2560, CAST(N'2014-02-24 23:30:00.457' AS DateTime), 1864, NULL, NULL, 1, 1)
INSERT [dbo].[programs] ([id], [name], [days], [numOfWeeks], [startDate], [endDate], [maximum], [cutoff], [created], [creatorId], [modified], [modifierId], [archived], [archiverId], [reminder_num], [reminder_sent]) VALUES (99, N'U:PASSwrite for MPO students ONLY', N'3', 10, CAST(N'2014-02-11' AS Date), CAST(N'2014-04-21' AS Date), 20, 24, CAST(N'2014-02-19 14:08:38.510' AS DateTime), 2186, NULL, NULL, CAST(N'2014-02-19 14:10:38.023' AS DateTime), 2186, 9999, 0)
GO
INSERT [dbo].[programs] ([id], [name], [days], [numOfWeeks], [startDate], [endDate], [maximum], [cutoff], [created], [creatorId], [modified], [modifierId], [archived], [archiverId], [reminder_num], [reminder_sent]) VALUES (100, N'U:PASSwrite for MPO students ONLY', N'3', 10, CAST(N'2014-03-11' AS Date), CAST(N'2014-05-19' AS Date), 20, 24, CAST(N'2014-02-19 14:11:06.850' AS DateTime), 2186, NULL, NULL, CAST(N'2014-02-19 14:15:03.517' AS DateTime), 2186, 9999, 0)
INSERT [dbo].[programs] ([id], [name], [days], [numOfWeeks], [startDate], [endDate], [maximum], [cutoff], [created], [creatorId], [modified], [modifierId], [archived], [archiverId], [reminder_num], [reminder_sent]) VALUES (101, N'U:PASSwrite for MPO students ONLY', N'3', 12, CAST(N'2014-03-11' AS Date), CAST(N'2014-06-02' AS Date), 20, 24, CAST(N'2014-02-19 14:15:25.097' AS DateTime), 2186, CAST(N'2014-05-10 23:30:03.790' AS DateTime), 1864, NULL, NULL, 9999, 8)
INSERT [dbo].[programs] ([id], [name], [days], [numOfWeeks], [startDate], [endDate], [maximum], [cutoff], [created], [creatorId], [modified], [modifierId], [archived], [archiverId], [reminder_num], [reminder_sent]) VALUES (102, N'U:PASSwrite for MPO students ONLY', N'3', 12, CAST(N'2014-03-11' AS Date), CAST(N'2014-06-02' AS Date), 20, 24, CAST(N'2014-02-19 14:17:50.703' AS DateTime), 2186, CAST(N'2014-05-10 23:30:05.167' AS DateTime), 1864, NULL, NULL, 9999, 8)
INSERT [dbo].[programs] ([id], [name], [days], [numOfWeeks], [startDate], [endDate], [maximum], [cutoff], [created], [creatorId], [modified], [modifierId], [archived], [archiverId], [reminder_num], [reminder_sent]) VALUES (103, N'U:PASSwrite for MPO students ONLY', N'3', 12, CAST(N'2014-03-11' AS Date), CAST(N'2014-06-02' AS Date), 20, 24, CAST(N'2014-02-19 14:26:04.430' AS DateTime), 2186, CAST(N'2014-05-10 23:30:06.527' AS DateTime), 1864, NULL, NULL, 9999, 8)
INSERT [dbo].[programs] ([id], [name], [days], [numOfWeeks], [startDate], [endDate], [maximum], [cutoff], [created], [creatorId], [modified], [modifierId], [archived], [archiverId], [reminder_num], [reminder_sent]) VALUES (104, N'U:PASSwrite for MPO students ONLY', N'3', 12, CAST(N'2014-03-11' AS Date), CAST(N'2014-06-02' AS Date), 20, 24, CAST(N'2014-02-19 14:29:17.600' AS DateTime), 2186, CAST(N'2014-05-10 23:30:07.853' AS DateTime), 1864, NULL, NULL, 9999, 8)
INSERT [dbo].[programs] ([id], [name], [days], [numOfWeeks], [startDate], [endDate], [maximum], [cutoff], [created], [creatorId], [modified], [modifierId], [archived], [archiverId], [reminder_num], [reminder_sent]) VALUES (105, N'U:PASSwrite for EngComm Students', N'2', 12, CAST(N'2014-02-10' AS Date), CAST(N'2014-05-04' AS Date), 20, 24, CAST(N'2014-02-19 14:37:51.330' AS DateTime), 2186, NULL, NULL, CAST(N'2014-02-19 15:36:29.360' AS DateTime), 2186, 9999, 0)
INSERT [dbo].[programs] ([id], [name], [days], [numOfWeeks], [startDate], [endDate], [maximum], [cutoff], [created], [creatorId], [modified], [modifierId], [archived], [archiverId], [reminder_num], [reminder_sent]) VALUES (106, N'U:PASSwrite for EngComm Students', N'2', 12, CAST(N'2014-03-10' AS Date), CAST(N'2014-06-01' AS Date), 20, 24, CAST(N'2014-02-19 14:39:27.483' AS DateTime), 2186, CAST(N'2014-05-23 23:30:02.083' AS DateTime), 1864, NULL, NULL, 9999, 10)
INSERT [dbo].[programs] ([id], [name], [days], [numOfWeeks], [startDate], [endDate], [maximum], [cutoff], [created], [creatorId], [modified], [modifierId], [archived], [archiverId], [reminder_num], [reminder_sent]) VALUES (107, N'U:PASSwrite for EngComm Students', N'3', 12, CAST(N'2014-03-11' AS Date), CAST(N'2014-06-02' AS Date), 20, 24, CAST(N'2014-02-19 14:45:52.103' AS DateTime), 2186, CAST(N'2014-05-24 23:30:01.717' AS DateTime), 1864, NULL, NULL, 9999, 10)
INSERT [dbo].[programs] ([id], [name], [days], [numOfWeeks], [startDate], [endDate], [maximum], [cutoff], [created], [creatorId], [modified], [modifierId], [archived], [archiverId], [reminder_num], [reminder_sent]) VALUES (108, N'U:PASSwrite for EngComm Students', N'6', 12, CAST(N'2014-03-14' AS Date), CAST(N'2014-06-05' AS Date), 20, 24, CAST(N'2014-02-19 14:55:03.410' AS DateTime), 2186, CAST(N'2014-02-19 15:02:52.253' AS DateTime), 2186, CAST(N'2014-03-10 13:38:15.437' AS DateTime), 1614, 9999, 0)
INSERT [dbo].[programs] ([id], [name], [days], [numOfWeeks], [startDate], [endDate], [maximum], [cutoff], [created], [creatorId], [modified], [modifierId], [archived], [archiverId], [reminder_num], [reminder_sent]) VALUES (109, N'U:PASSwrite for EngComm students ONLY', N'6', 12, CAST(N'2014-02-14' AS Date), CAST(N'2014-05-08' AS Date), 20, 24, CAST(N'2014-02-19 15:03:38.360' AS DateTime), 2186, NULL, NULL, CAST(N'2014-02-19 15:06:48.973' AS DateTime), 2186, 9999, 0)
INSERT [dbo].[programs] ([id], [name], [days], [numOfWeeks], [startDate], [endDate], [maximum], [cutoff], [created], [creatorId], [modified], [modifierId], [archived], [archiverId], [reminder_num], [reminder_sent]) VALUES (110, N'U:PASSwrite for EngComm students ONLY', N'6', 12, CAST(N'2014-03-14' AS Date), CAST(N'2014-06-05' AS Date), 20, 24, CAST(N'2014-02-19 15:14:59.690' AS DateTime), 2186, CAST(N'2014-05-27 23:30:02.007' AS DateTime), 1864, NULL, NULL, 9999, 10)
INSERT [dbo].[programs] ([id], [name], [days], [numOfWeeks], [startDate], [endDate], [maximum], [cutoff], [created], [creatorId], [modified], [modifierId], [archived], [archiverId], [reminder_num], [reminder_sent]) VALUES (111, N'U:PASSwrite for EngComm students ONLY', N'6', 12, CAST(N'2014-03-14' AS Date), CAST(N'2014-06-05' AS Date), 20, 24, CAST(N'2014-02-19 15:17:13.783' AS DateTime), 2186, NULL, NULL, CAST(N'2014-03-10 13:38:04.923' AS DateTime), 1614, 9999, 0)
INSERT [dbo].[programs] ([id], [name], [days], [numOfWeeks], [startDate], [endDate], [maximum], [cutoff], [created], [creatorId], [modified], [modifierId], [archived], [archiverId], [reminder_num], [reminder_sent]) VALUES (112, N'U:PASSwrite for CITP students ONLY', N'3', 12, CAST(N'2014-03-11' AS Date), CAST(N'2014-06-02' AS Date), 20, 24, CAST(N'2014-02-19 15:35:07.440' AS DateTime), 2186, CAST(N'2014-05-24 23:30:02.937' AS DateTime), 1864, NULL, NULL, 9999, 10)
INSERT [dbo].[programs] ([id], [name], [days], [numOfWeeks], [startDate], [endDate], [maximum], [cutoff], [created], [creatorId], [modified], [modifierId], [archived], [archiverId], [reminder_num], [reminder_sent]) VALUES (113, N'U:PASSwrite for CITP students ONLY', N'4', 12, CAST(N'2014-03-12' AS Date), CAST(N'2014-06-03' AS Date), 20, 24, CAST(N'2014-02-19 15:49:22.133' AS DateTime), 2186, CAST(N'2014-03-16 23:30:03.910' AS DateTime), 1864, CAST(N'2014-03-17 13:12:37.790' AS DateTime), 1614, 9999, 2)
INSERT [dbo].[programs] ([id], [name], [days], [numOfWeeks], [startDate], [endDate], [maximum], [cutoff], [created], [creatorId], [modified], [modifierId], [archived], [archiverId], [reminder_num], [reminder_sent]) VALUES (114, N'U:PASSwrite for CITP students ONLY', N'4', 12, CAST(N'2014-03-12' AS Date), CAST(N'2014-06-03' AS Date), 20, 24, CAST(N'2014-02-19 15:56:05.470' AS DateTime), 2186, CAST(N'2014-05-25 23:30:02.107' AS DateTime), 1864, NULL, NULL, 9999, 10)
INSERT [dbo].[programs] ([id], [name], [days], [numOfWeeks], [startDate], [endDate], [maximum], [cutoff], [created], [creatorId], [modified], [modifierId], [archived], [archiverId], [reminder_num], [reminder_sent]) VALUES (115, N'U:PASSwrite for CITP students ONLY', N'4', 12, CAST(N'2014-03-12' AS Date), CAST(N'2014-06-03' AS Date), 20, 24, CAST(N'2014-02-19 15:57:27.527' AS DateTime), 2186, NULL, NULL, CAST(N'2014-03-07 16:08:25.700' AS DateTime), 1614, 9999, 0)
INSERT [dbo].[programs] ([id], [name], [days], [numOfWeeks], [startDate], [endDate], [maximum], [cutoff], [created], [creatorId], [modified], [modifierId], [archived], [archiverId], [reminder_num], [reminder_sent]) VALUES (116, N'U:PASSwrite for CITP students ONLY', N'5', 12, CAST(N'2014-03-13' AS Date), CAST(N'2014-06-04' AS Date), 20, 24, CAST(N'2014-02-19 16:00:50.647' AS DateTime), 2186, CAST(N'2014-04-07 23:30:01.247' AS DateTime), 1864, NULL, NULL, 9999, 5)
INSERT [dbo].[programs] ([id], [name], [days], [numOfWeeks], [startDate], [endDate], [maximum], [cutoff], [created], [creatorId], [modified], [modifierId], [archived], [archiverId], [reminder_num], [reminder_sent]) VALUES (117, N'U:PASSwrite for First Year Nursing students ONLY', N'2', 12, CAST(N'2014-03-10' AS Date), CAST(N'2014-06-01' AS Date), 20, 24, CAST(N'2014-02-19 16:08:54.697' AS DateTime), 2186, CAST(N'2014-04-04 23:30:03.277' AS DateTime), 1864, NULL, NULL, 9999, 3)
INSERT [dbo].[programs] ([id], [name], [days], [numOfWeeks], [startDate], [endDate], [maximum], [cutoff], [created], [creatorId], [modified], [modifierId], [archived], [archiverId], [reminder_num], [reminder_sent]) VALUES (118, N'U:PASSwrite for First Year Nursing students ONLY', N'2', 13, CAST(N'2014-03-17' AS Date), CAST(N'2014-06-15' AS Date), 20, 24, CAST(N'2014-02-19 16:17:34.140' AS DateTime), 2186, CAST(N'2014-04-25 23:30:03.010' AS DateTime), 1864, NULL, NULL, 9999, 3)
INSERT [dbo].[programs] ([id], [name], [days], [numOfWeeks], [startDate], [endDate], [maximum], [cutoff], [created], [creatorId], [modified], [modifierId], [archived], [archiverId], [reminder_num], [reminder_sent]) VALUES (119, N'U:PASSwrite for First Year Nursing students ONLY', N'3', 12, CAST(N'2014-03-11' AS Date), CAST(N'2014-06-02' AS Date), 20, 24, CAST(N'2014-02-19 16:19:52.437' AS DateTime), 2186, CAST(N'2014-04-05 23:30:10.547' AS DateTime), 1864, NULL, NULL, 9999, 3)
INSERT [dbo].[programs] ([id], [name], [days], [numOfWeeks], [startDate], [endDate], [maximum], [cutoff], [created], [creatorId], [modified], [modifierId], [archived], [archiverId], [reminder_num], [reminder_sent]) VALUES (120, N'U:PASSwrite for First Year Nursing students ONLY', N'3', 12, CAST(N'2014-03-18' AS Date), CAST(N'2014-06-09' AS Date), 20, 24, CAST(N'2014-02-19 16:23:22.437' AS DateTime), 2186, CAST(N'2014-04-26 23:30:11.417' AS DateTime), 1864, NULL, NULL, 9999, 3)
INSERT [dbo].[programs] ([id], [name], [days], [numOfWeeks], [startDate], [endDate], [maximum], [cutoff], [created], [creatorId], [modified], [modifierId], [archived], [archiverId], [reminder_num], [reminder_sent]) VALUES (121, N'U:PASSwrite for First Year Nursing students ONLY', N'3', 12, CAST(N'2014-03-11' AS Date), CAST(N'2014-06-02' AS Date), 20, 24, CAST(N'2014-02-19 16:25:40.340' AS DateTime), 2186, CAST(N'2014-04-05 23:30:11.907' AS DateTime), 1864, NULL, NULL, 9999, 3)
INSERT [dbo].[programs] ([id], [name], [days], [numOfWeeks], [startDate], [endDate], [maximum], [cutoff], [created], [creatorId], [modified], [modifierId], [archived], [archiverId], [reminder_num], [reminder_sent]) VALUES (122, N'U:PASSwrite for First Year Nursing students ONLY', N'3', 12, CAST(N'2014-03-18' AS Date), CAST(N'2014-06-09' AS Date), 20, 24, CAST(N'2014-02-19 16:27:26.480' AS DateTime), 2186, CAST(N'2014-04-26 23:30:12.293' AS DateTime), 1864, NULL, NULL, 9999, 3)
INSERT [dbo].[programs] ([id], [name], [days], [numOfWeeks], [startDate], [endDate], [maximum], [cutoff], [created], [creatorId], [modified], [modifierId], [archived], [archiverId], [reminder_num], [reminder_sent]) VALUES (123, N'Conversations: Monday afternoon', N'2', 13, CAST(N'2014-03-10' AS Date), CAST(N'2014-06-08' AS Date), 25, 24, CAST(N'2014-03-03 11:40:33.677' AS DateTime), 2560, CAST(N'2014-05-30 23:30:02.190' AS DateTime), 1864, NULL, NULL, 1, 1)
INSERT [dbo].[programs] ([id], [name], [days], [numOfWeeks], [startDate], [endDate], [maximum], [cutoff], [created], [creatorId], [modified], [modifierId], [archived], [archiverId], [reminder_num], [reminder_sent]) VALUES (124, N'Conversations: Monday evening', N'2', 13, CAST(N'2014-03-10' AS Date), CAST(N'2014-06-08' AS Date), 20, 24, CAST(N'2014-03-03 11:45:21.983' AS DateTime), 2560, CAST(N'2014-05-30 23:30:02.223' AS DateTime), 1864, NULL, NULL, 1, 1)
INSERT [dbo].[programs] ([id], [name], [days], [numOfWeeks], [startDate], [endDate], [maximum], [cutoff], [created], [creatorId], [modified], [modifierId], [archived], [archiverId], [reminder_num], [reminder_sent]) VALUES (125, N'Conversations: Tuesday morning', N'3', 13, CAST(N'2014-03-11' AS Date), CAST(N'2014-06-09' AS Date), 20, 24, CAST(N'2014-03-03 11:49:57.917' AS DateTime), 2560, CAST(N'2014-05-31 23:30:00.853' AS DateTime), 1864, NULL, NULL, 1, 1)
INSERT [dbo].[programs] ([id], [name], [days], [numOfWeeks], [startDate], [endDate], [maximum], [cutoff], [created], [creatorId], [modified], [modifierId], [archived], [archiverId], [reminder_num], [reminder_sent]) VALUES (126, N'Conversations: Tuesday afternoon', N'3', 13, CAST(N'2014-03-11' AS Date), CAST(N'2014-06-09' AS Date), 20, 24, CAST(N'2014-03-03 11:52:59.477' AS DateTime), 2560, CAST(N'2014-05-31 23:30:00.867' AS DateTime), 1864, NULL, NULL, 1, 1)
INSERT [dbo].[programs] ([id], [name], [days], [numOfWeeks], [startDate], [endDate], [maximum], [cutoff], [created], [creatorId], [modified], [modifierId], [archived], [archiverId], [reminder_num], [reminder_sent]) VALUES (127, N'Conversations: Wednesday morning', N'4', 13, CAST(N'2014-03-12' AS Date), CAST(N'2014-06-10' AS Date), 27, 24, CAST(N'2014-03-03 11:56:23.940' AS DateTime), 2560, CAST(N'2014-06-01 23:30:01.023' AS DateTime), 1864, NULL, NULL, 1, 1)
INSERT [dbo].[programs] ([id], [name], [days], [numOfWeeks], [startDate], [endDate], [maximum], [cutoff], [created], [creatorId], [modified], [modifierId], [archived], [archiverId], [reminder_num], [reminder_sent]) VALUES (128, N'Conversations: Wednesday afternoon', N'4', 13, CAST(N'2014-03-12' AS Date), CAST(N'2014-06-10' AS Date), 25, 24, CAST(N'2014-03-03 11:58:39.173' AS DateTime), 2560, CAST(N'2014-06-01 23:30:01.023' AS DateTime), 1864, NULL, NULL, 1, 1)
INSERT [dbo].[programs] ([id], [name], [days], [numOfWeeks], [startDate], [endDate], [maximum], [cutoff], [created], [creatorId], [modified], [modifierId], [archived], [archiverId], [reminder_num], [reminder_sent]) VALUES (129, N'Conversations: Wednesday evening', N'4', 13, CAST(N'2014-03-12' AS Date), CAST(N'2014-06-10' AS Date), 30, 24, CAST(N'2014-03-03 12:00:53.580' AS DateTime), 2560, CAST(N'2014-06-01 23:30:01.023' AS DateTime), 1864, NULL, NULL, 1, 1)
INSERT [dbo].[programs] ([id], [name], [days], [numOfWeeks], [startDate], [endDate], [maximum], [cutoff], [created], [creatorId], [modified], [modifierId], [archived], [archiverId], [reminder_num], [reminder_sent]) VALUES (130, N'Conversations: Thursday morning', N'5', 13, CAST(N'2014-03-13' AS Date), CAST(N'2014-06-11' AS Date), 20, 24, CAST(N'2014-03-03 12:04:49.687' AS DateTime), 2560, CAST(N'2014-06-02 23:30:00.993' AS DateTime), 1864, NULL, NULL, 1, 1)
INSERT [dbo].[programs] ([id], [name], [days], [numOfWeeks], [startDate], [endDate], [maximum], [cutoff], [created], [creatorId], [modified], [modifierId], [archived], [archiverId], [reminder_num], [reminder_sent]) VALUES (131, N'Conversations: Thursday afternoon', N'5', 13, CAST(N'2014-03-13' AS Date), CAST(N'2014-06-11' AS Date), 23, 24, CAST(N'2014-03-03 12:13:24.757' AS DateTime), 2560, CAST(N'2014-06-02 23:30:00.993' AS DateTime), 1864, NULL, NULL, 1, 1)
INSERT [dbo].[programs] ([id], [name], [days], [numOfWeeks], [startDate], [endDate], [maximum], [cutoff], [created], [creatorId], [modified], [modifierId], [archived], [archiverId], [reminder_num], [reminder_sent]) VALUES (132, N'Conversations: Thursday evening', N'5', 13, CAST(N'2014-03-13' AS Date), CAST(N'2014-06-11' AS Date), 21, 24, CAST(N'2014-03-03 12:22:08.183' AS DateTime), 2560, CAST(N'2014-06-02 23:30:01.007' AS DateTime), 1864, NULL, NULL, 1, 1)
INSERT [dbo].[programs] ([id], [name], [days], [numOfWeeks], [startDate], [endDate], [maximum], [cutoff], [created], [creatorId], [modified], [modifierId], [archived], [archiverId], [reminder_num], [reminder_sent]) VALUES (133, N'Conversations: Friday morning', N'6', 13, CAST(N'2014-03-14' AS Date), CAST(N'2014-06-12' AS Date), 30, 24, CAST(N'2014-03-03 12:24:57.727' AS DateTime), 2560, CAST(N'2014-06-03 23:30:00.877' AS DateTime), 1864, NULL, NULL, 1, 1)
INSERT [dbo].[programs] ([id], [name], [days], [numOfWeeks], [startDate], [endDate], [maximum], [cutoff], [created], [creatorId], [modified], [modifierId], [archived], [archiverId], [reminder_num], [reminder_sent]) VALUES (134, N'U:PASSwrite for MPO students only', N'3', 12, CAST(N'2014-03-10' AS Date), CAST(N'2014-06-01' AS Date), 20, 0, CAST(N'2014-03-10 14:35:59.810' AS DateTime), 1614, CAST(N'2014-05-10 23:30:11.573' AS DateTime), 1864, NULL, NULL, 9999, 7)
INSERT [dbo].[programs] ([id], [name], [days], [numOfWeeks], [startDate], [endDate], [maximum], [cutoff], [created], [creatorId], [modified], [modifierId], [archived], [archiverId], [reminder_num], [reminder_sent]) VALUES (135, N'Conversations: Tuesday afternoon', N'3', 7, CAST(N'2014-06-10' AS Date), CAST(N'2014-07-28' AS Date), 35, 24, CAST(N'2014-06-10 13:19:46.667' AS DateTime), 2186, CAST(N'2014-07-19 23:30:01.747' AS DateTime), 1864, NULL, NULL, 9999, 6)
INSERT [dbo].[programs] ([id], [name], [days], [numOfWeeks], [startDate], [endDate], [maximum], [cutoff], [created], [creatorId], [modified], [modifierId], [archived], [archiverId], [reminder_num], [reminder_sent]) VALUES (136, N'Conversations: Wednesday mornings', N'4', 7, CAST(N'2014-06-11' AS Date), CAST(N'2014-07-29' AS Date), 35, 24, CAST(N'2014-06-10 13:21:45.013' AS DateTime), 2186, CAST(N'2014-07-20 23:30:01.417' AS DateTime), 1864, NULL, NULL, 9999, 6)
INSERT [dbo].[programs] ([id], [name], [days], [numOfWeeks], [startDate], [endDate], [maximum], [cutoff], [created], [creatorId], [modified], [modifierId], [archived], [archiverId], [reminder_num], [reminder_sent]) VALUES (137, N'Conversations: Wednesday afternoon', N'4', 7, CAST(N'2014-06-11' AS Date), CAST(N'2014-07-29' AS Date), 35, 24, CAST(N'2014-06-10 13:23:48.997' AS DateTime), 2186, CAST(N'2014-07-20 23:30:02.227' AS DateTime), 1864, NULL, NULL, 9999, 6)
INSERT [dbo].[programs] ([id], [name], [days], [numOfWeeks], [startDate], [endDate], [maximum], [cutoff], [created], [creatorId], [modified], [modifierId], [archived], [archiverId], [reminder_num], [reminder_sent]) VALUES (138, N'Conversations: Thursday afternoon', N'5', 7, CAST(N'2014-06-12' AS Date), CAST(N'2014-07-30' AS Date), 35, 24, CAST(N'2014-06-10 14:38:04.383' AS DateTime), 2186, CAST(N'2014-06-10 14:41:48.507' AS DateTime), 2186, CAST(N'2014-06-10 14:42:17.880' AS DateTime), 2186, 9999, 0)
INSERT [dbo].[programs] ([id], [name], [days], [numOfWeeks], [startDate], [endDate], [maximum], [cutoff], [created], [creatorId], [modified], [modifierId], [archived], [archiverId], [reminder_num], [reminder_sent]) VALUES (139, N'Conversations: Thursday morning', N'5', 7, CAST(N'2014-06-12' AS Date), CAST(N'2014-07-30' AS Date), 35, 24, CAST(N'2014-06-10 14:40:30.537' AS DateTime), 2186, CAST(N'2014-07-21 23:30:01.207' AS DateTime), 1864, NULL, NULL, 9999, 6)
INSERT [dbo].[programs] ([id], [name], [days], [numOfWeeks], [startDate], [endDate], [maximum], [cutoff], [created], [creatorId], [modified], [modifierId], [archived], [archiverId], [reminder_num], [reminder_sent]) VALUES (140, N'Conversation:  Thursdayafternoon', N'5', 7, CAST(N'2014-06-12' AS Date), CAST(N'2014-07-30' AS Date), 35, 24, CAST(N'2014-06-10 14:43:19.677' AS DateTime), 2186, NULL, NULL, CAST(N'2014-06-10 14:44:28.007' AS DateTime), 2186, 9999, 0)
INSERT [dbo].[programs] ([id], [name], [days], [numOfWeeks], [startDate], [endDate], [maximum], [cutoff], [created], [creatorId], [modified], [modifierId], [archived], [archiverId], [reminder_num], [reminder_sent]) VALUES (141, N'Conversations: Thursday afternoon', N'5', 7, CAST(N'2014-06-12' AS Date), CAST(N'2014-07-30' AS Date), 35, 24, CAST(N'2014-06-10 14:45:40.083' AS DateTime), 2186, CAST(N'2014-07-21 23:30:01.893' AS DateTime), 1864, NULL, NULL, 9999, 6)
INSERT [dbo].[programs] ([id], [name], [days], [numOfWeeks], [startDate], [endDate], [maximum], [cutoff], [created], [creatorId], [modified], [modifierId], [archived], [archiverId], [reminder_num], [reminder_sent]) VALUES (142, N'Conversations: Friday morning', N'6', 7, CAST(N'2014-06-13' AS Date), CAST(N'2014-07-31' AS Date), 35, 24, CAST(N'2014-06-10 14:47:12.770' AS DateTime), 2186, CAST(N'2014-07-22 23:30:03.097' AS DateTime), 1864, NULL, NULL, 9999, 6)
INSERT [dbo].[programs] ([id], [name], [days], [numOfWeeks], [startDate], [endDate], [maximum], [cutoff], [created], [creatorId], [modified], [modifierId], [archived], [archiverId], [reminder_num], [reminder_sent]) VALUES (143, N'Conversations: Monday afternoon', N'2', 6, CAST(N'2014-06-16' AS Date), CAST(N'2014-07-27' AS Date), 35, 24, CAST(N'2014-06-10 14:48:52.943' AS DateTime), 2186, CAST(N'2014-07-18 23:30:00.900' AS DateTime), 1864, NULL, NULL, 9999, 4)
INSERT [dbo].[programs] ([id], [name], [days], [numOfWeeks], [startDate], [endDate], [maximum], [cutoff], [created], [creatorId], [modified], [modifierId], [archived], [archiverId], [reminder_num], [reminder_sent]) VALUES (144, N'Academic Writing  Day1', N'2,3,4,5,6', 1, CAST(N'2014-07-07' AS Date), CAST(N'2014-07-13' AS Date), 35, 24, CAST(N'2014-06-17 10:27:51.517' AS DateTime), 2186, CAST(N'2014-06-17 10:33:59.267' AS DateTime), 2186, CAST(N'2014-06-17 10:34:48.560' AS DateTime), 2186, 1, 0)
INSERT [dbo].[programs] ([id], [name], [days], [numOfWeeks], [startDate], [endDate], [maximum], [cutoff], [created], [creatorId], [modified], [modifierId], [archived], [archiverId], [reminder_num], [reminder_sent]) VALUES (145, N'Intensive Academic Writing Day class 1', N'2,3,4,5,6', 1, CAST(N'2014-07-07' AS Date), CAST(N'2014-07-13' AS Date), 35, 90, CAST(N'2014-06-17 10:40:47.497' AS DateTime), 2186, CAST(N'2014-07-08 23:30:02.913' AS DateTime), 1864, NULL, NULL, 9999, 4)
INSERT [dbo].[programs] ([id], [name], [days], [numOfWeeks], [startDate], [endDate], [maximum], [cutoff], [created], [creatorId], [modified], [modifierId], [archived], [archiverId], [reminder_num], [reminder_sent]) VALUES (146, N'Intensive Academic Writing Day class 2', N'2,3,4,5,6', 1, CAST(N'2014-07-07' AS Date), CAST(N'2014-07-13' AS Date), 35, 90, CAST(N'2014-06-17 11:14:50.467' AS DateTime), 2186, CAST(N'2014-07-08 23:30:05.007' AS DateTime), 1864, NULL, NULL, 9999, 3)
INSERT [dbo].[programs] ([id], [name], [days], [numOfWeeks], [startDate], [endDate], [maximum], [cutoff], [created], [creatorId], [modified], [modifierId], [archived], [archiverId], [reminder_num], [reminder_sent]) VALUES (147, N'ntensive Academic Writing Day class 3', N'2,3,4,5,6', 1, CAST(N'2014-07-07' AS Date), CAST(N'2014-07-13' AS Date), 35, 90, CAST(N'2014-06-17 11:54:58.933' AS DateTime), 2186, CAST(N'2014-07-08 23:30:07.290' AS DateTime), 1864, NULL, NULL, 9999, 3)
INSERT [dbo].[programs] ([id], [name], [days], [numOfWeeks], [startDate], [endDate], [maximum], [cutoff], [created], [creatorId], [modified], [modifierId], [archived], [archiverId], [reminder_num], [reminder_sent]) VALUES (148, N'Intensive Academic Writing Day class 4', N'2,3,4,5,6', 1, CAST(N'2014-07-07' AS Date), CAST(N'2014-07-13' AS Date), 35, 90, CAST(N'2014-06-17 12:12:41.177' AS DateTime), 2186, CAST(N'2014-07-09 12:28:16.177' AS DateTime), 2186, NULL, NULL, 9999, 3)
INSERT [dbo].[programs] ([id], [name], [days], [numOfWeeks], [startDate], [endDate], [maximum], [cutoff], [created], [creatorId], [modified], [modifierId], [archived], [archiverId], [reminder_num], [reminder_sent]) VALUES (149, N'Intensive Academic Writing Day class 5', N'2,3,4,5,6', 1, CAST(N'2014-07-07' AS Date), CAST(N'2014-07-13' AS Date), 35, 90, CAST(N'2014-06-17 12:52:51.780' AS DateTime), 2186, CAST(N'2014-07-08 23:30:11.993' AS DateTime), 1864, NULL, NULL, 9999, 3)
INSERT [dbo].[programs] ([id], [name], [days], [numOfWeeks], [startDate], [endDate], [maximum], [cutoff], [created], [creatorId], [modified], [modifierId], [archived], [archiverId], [reminder_num], [reminder_sent]) VALUES (150, N'Intensive Academic Writing Evening class 1', N'2,3,4,5,6', 1, CAST(N'2014-07-07' AS Date), CAST(N'2014-07-13' AS Date), 35, 90, CAST(N'2014-06-17 13:42:36.553' AS DateTime), 2186, CAST(N'2014-07-08 23:30:14.040' AS DateTime), 1864, NULL, NULL, 9999, 3)
INSERT [dbo].[programs] ([id], [name], [days], [numOfWeeks], [startDate], [endDate], [maximum], [cutoff], [created], [creatorId], [modified], [modifierId], [archived], [archiverId], [reminder_num], [reminder_sent]) VALUES (151, N'Intensive Academic Writing Evening class 2', N'2,3,4,5,6', 1, CAST(N'2014-07-07' AS Date), CAST(N'2014-07-13' AS Date), 35, 90, CAST(N'2014-06-17 13:55:20.440' AS DateTime), 2186, CAST(N'2014-07-08 23:30:16.197' AS DateTime), 1864, NULL, NULL, 9999, 3)
INSERT [dbo].[programs] ([id], [name], [days], [numOfWeeks], [startDate], [endDate], [maximum], [cutoff], [created], [creatorId], [modified], [modifierId], [archived], [archiverId], [reminder_num], [reminder_sent]) VALUES (152, N'Intensive Academic Writing Evening class 3', N'2,3,4,5,6', 1, CAST(N'2014-07-07' AS Date), CAST(N'2014-07-13' AS Date), 34, 90, CAST(N'2014-06-17 14:12:48.823' AS DateTime), 2186, CAST(N'2014-07-08 23:30:18.197' AS DateTime), 1864, NULL, NULL, 9999, 3)
INSERT [dbo].[programs] ([id], [name], [days], [numOfWeeks], [startDate], [endDate], [maximum], [cutoff], [created], [creatorId], [modified], [modifierId], [archived], [archiverId], [reminder_num], [reminder_sent]) VALUES (153, N'Intensive Academic Writing Evening class 4', N'2,3,4,5,6', 1, CAST(N'2014-07-07' AS Date), CAST(N'2014-07-13' AS Date), 35, 90, CAST(N'2014-06-17 14:34:26.393' AS DateTime), 2186, CAST(N'2014-07-08 23:30:19.680' AS DateTime), 1864, NULL, NULL, 9999, 3)
INSERT [dbo].[programs] ([id], [name], [days], [numOfWeeks], [startDate], [endDate], [maximum], [cutoff], [created], [creatorId], [modified], [modifierId], [archived], [archiverId], [reminder_num], [reminder_sent]) VALUES (154, N'Seminar Presentation Day class 1', N'2,3,4,5,6', 1, CAST(N'2014-07-14' AS Date), CAST(N'2014-07-20' AS Date), 25, 24, CAST(N'2014-06-17 16:02:18.663' AS DateTime), 2186, NULL, NULL, CAST(N'2014-06-17 16:04:47.227' AS DateTime), 2186, 9999, 0)
INSERT [dbo].[programs] ([id], [name], [days], [numOfWeeks], [startDate], [endDate], [maximum], [cutoff], [created], [creatorId], [modified], [modifierId], [archived], [archiverId], [reminder_num], [reminder_sent]) VALUES (155, N'Intensive Seminar Presentation Day class 1', N'2,3,4,5,6', 1, CAST(N'2014-07-14' AS Date), CAST(N'2014-07-20' AS Date), 25, 180, CAST(N'2014-06-17 16:05:31.837' AS DateTime), 2186, CAST(N'2014-07-15 23:30:02.357' AS DateTime), 1864, NULL, NULL, 1, 1)
INSERT [dbo].[programs] ([id], [name], [days], [numOfWeeks], [startDate], [endDate], [maximum], [cutoff], [created], [creatorId], [modified], [modifierId], [archived], [archiverId], [reminder_num], [reminder_sent]) VALUES (156, N'Intensive Seminar Presentation Day class 2', N'2,3,4,5,6', 1, CAST(N'2014-07-14' AS Date), CAST(N'2014-07-20' AS Date), 20, 180, CAST(N'2014-06-17 16:23:50.343' AS DateTime), 2186, CAST(N'2014-07-15 23:30:02.357' AS DateTime), 1864, NULL, NULL, 1, 1)
INSERT [dbo].[programs] ([id], [name], [days], [numOfWeeks], [startDate], [endDate], [maximum], [cutoff], [created], [creatorId], [modified], [modifierId], [archived], [archiverId], [reminder_num], [reminder_sent]) VALUES (157, N'Intensive Seminar Presentation Day class 3', N'2,3,4,5,6', 1, CAST(N'2014-07-14' AS Date), CAST(N'2014-07-20' AS Date), 25, 180, CAST(N'2014-06-17 16:33:11.403' AS DateTime), 2186, CAST(N'2014-07-15 23:30:02.370' AS DateTime), 1864, NULL, NULL, 1, 1)
INSERT [dbo].[programs] ([id], [name], [days], [numOfWeeks], [startDate], [endDate], [maximum], [cutoff], [created], [creatorId], [modified], [modifierId], [archived], [archiverId], [reminder_num], [reminder_sent]) VALUES (158, N'Intensive Seminar Presentation Evening Class 1', N'2,3,4,5,6', 1, CAST(N'2014-07-14' AS Date), CAST(N'2014-07-20' AS Date), 35, 180, CAST(N'2014-06-18 10:26:49.823' AS DateTime), 2186, CAST(N'2014-07-15 23:30:02.387' AS DateTime), 1864, NULL, NULL, 1, 1)
INSERT [dbo].[programs] ([id], [name], [days], [numOfWeeks], [startDate], [endDate], [maximum], [cutoff], [created], [creatorId], [modified], [modifierId], [archived], [archiverId], [reminder_num], [reminder_sent]) VALUES (159, N'Intensive Seminar Presentation Evening class 2', N'2,3,4,5,6', 1, CAST(N'2014-07-14' AS Date), CAST(N'2014-07-20' AS Date), 35, 180, CAST(N'2014-06-18 11:02:19.843' AS DateTime), 2186, CAST(N'2014-07-15 23:30:02.403' AS DateTime), 1864, NULL, NULL, 1, 1)
INSERT [dbo].[programs] ([id], [name], [days], [numOfWeeks], [startDate], [endDate], [maximum], [cutoff], [created], [creatorId], [modified], [modifierId], [archived], [archiverId], [reminder_num], [reminder_sent]) VALUES (160, N'Intensive Pronunciation Day class 1', N'2,3,4,5,6', 1, CAST(N'2014-07-14' AS Date), CAST(N'2014-07-20' AS Date), 34, 180, CAST(N'2014-06-18 11:20:05.890' AS DateTime), 2186, CAST(N'2014-07-16 11:00:35.393' AS DateTime), 2186, NULL, NULL, 1, 1)
INSERT [dbo].[programs] ([id], [name], [days], [numOfWeeks], [startDate], [endDate], [maximum], [cutoff], [created], [creatorId], [modified], [modifierId], [archived], [archiverId], [reminder_num], [reminder_sent]) VALUES (161, N'Intensive Pronunciation Day class 2', N'2,3,4,5,6', 1, CAST(N'2014-07-14' AS Date), CAST(N'2014-07-20' AS Date), 34, 180, CAST(N'2014-06-18 11:30:59.390' AS DateTime), 2186, CAST(N'2014-07-15 23:30:02.417' AS DateTime), 1864, NULL, NULL, 1, 1)
INSERT [dbo].[programs] ([id], [name], [days], [numOfWeeks], [startDate], [endDate], [maximum], [cutoff], [created], [creatorId], [modified], [modifierId], [archived], [archiverId], [reminder_num], [reminder_sent]) VALUES (162, N'Intensive Pronunciation Day class 3', N'2,3,4,5,6', 1, CAST(N'2014-07-14' AS Date), CAST(N'2014-07-20' AS Date), 35, 180, CAST(N'2014-06-18 11:54:49.407' AS DateTime), 2186, CAST(N'2014-07-15 23:30:02.433' AS DateTime), 1864, NULL, NULL, 1, 1)
INSERT [dbo].[programs] ([id], [name], [days], [numOfWeeks], [startDate], [endDate], [maximum], [cutoff], [created], [creatorId], [modified], [modifierId], [archived], [archiverId], [reminder_num], [reminder_sent]) VALUES (163, N'Intensive Pronunciation Day class 4', N'2,3,4,5,6', 1, CAST(N'2014-07-14' AS Date), CAST(N'2014-07-20' AS Date), 33, 180, CAST(N'2014-06-18 12:02:28.280' AS DateTime), 2186, CAST(N'2014-07-16 09:54:21.890' AS DateTime), 2186, NULL, NULL, 1, 1)
INSERT [dbo].[programs] ([id], [name], [days], [numOfWeeks], [startDate], [endDate], [maximum], [cutoff], [created], [creatorId], [modified], [modifierId], [archived], [archiverId], [reminder_num], [reminder_sent]) VALUES (164, N'U:PASSwrite for MPO students ONLY', N'2', 12, CAST(N'2014-08-11' AS Date), CAST(N'2014-11-02' AS Date), 35, 24, CAST(N'2014-07-23 16:26:00.547' AS DateTime), 2186, CAST(N'2014-10-10 23:30:03.787' AS DateTime), 1864, NULL, NULL, 9999, 6)
INSERT [dbo].[programs] ([id], [name], [days], [numOfWeeks], [startDate], [endDate], [maximum], [cutoff], [created], [creatorId], [modified], [modifierId], [archived], [archiverId], [reminder_num], [reminder_sent]) VALUES (165, N'U:PASSwrite for MPO students ONLY', N'2', 12, CAST(N'2014-08-11' AS Date), CAST(N'2014-11-02' AS Date), 35, 24, CAST(N'2014-07-23 16:37:55.120' AS DateTime), 2186, CAST(N'2014-10-10 23:30:06.553' AS DateTime), 1864, NULL, NULL, 9999, 6)
INSERT [dbo].[programs] ([id], [name], [days], [numOfWeeks], [startDate], [endDate], [maximum], [cutoff], [created], [creatorId], [modified], [modifierId], [archived], [archiverId], [reminder_num], [reminder_sent]) VALUES (166, N'U:PASSwrite for MPO students ONLY', N'4', 12, CAST(N'2014-08-13' AS Date), CAST(N'2014-11-04' AS Date), 35, 24, CAST(N'2014-07-23 16:40:13.573' AS DateTime), 2186, CAST(N'2014-10-12 23:30:04.967' AS DateTime), 1864, NULL, NULL, 9999, 7)
INSERT [dbo].[programs] ([id], [name], [days], [numOfWeeks], [startDate], [endDate], [maximum], [cutoff], [created], [creatorId], [modified], [modifierId], [archived], [archiverId], [reminder_num], [reminder_sent]) VALUES (167, N'U:PASSwrite for MPO students ONLY', N'4', 12, CAST(N'2014-08-13' AS Date), CAST(N'2014-11-04' AS Date), 35, 24, CAST(N'2014-07-25 10:01:00.907' AS DateTime), 2186, CAST(N'2014-10-12 23:30:07.357' AS DateTime), 1864, NULL, NULL, 9999, 7)
INSERT [dbo].[programs] ([id], [name], [days], [numOfWeeks], [startDate], [endDate], [maximum], [cutoff], [created], [creatorId], [modified], [modifierId], [archived], [archiverId], [reminder_num], [reminder_sent]) VALUES (168, N'U:PASSwrite for CITP students ONLY', N'3', 12, CAST(N'2014-08-12' AS Date), CAST(N'2014-11-03' AS Date), 35, 24, CAST(N'2014-07-25 10:11:38.760' AS DateTime), 2186, NULL, NULL, CAST(N'2014-07-25 10:13:09.933' AS DateTime), 2186, 9999, 0)
INSERT [dbo].[programs] ([id], [name], [days], [numOfWeeks], [startDate], [endDate], [maximum], [cutoff], [created], [creatorId], [modified], [modifierId], [archived], [archiverId], [reminder_num], [reminder_sent]) VALUES (169, N'U:PASSwrite for CITP students ONLY', N'3', 12, CAST(N'2014-08-12' AS Date), CAST(N'2014-11-03' AS Date), 35, 24, CAST(N'2014-07-25 10:13:30.497' AS DateTime), 2186, NULL, NULL, CAST(N'2014-07-25 10:14:29.040' AS DateTime), 2186, 9999, 0)
INSERT [dbo].[programs] ([id], [name], [days], [numOfWeeks], [startDate], [endDate], [maximum], [cutoff], [created], [creatorId], [modified], [modifierId], [archived], [archiverId], [reminder_num], [reminder_sent]) VALUES (170, N'U:PASSwrite for CITP students ONLY', N'3', 12, CAST(N'2014-08-12' AS Date), CAST(N'2014-11-03' AS Date), 35, 24, CAST(N'2014-07-25 10:14:49.230' AS DateTime), 2186, CAST(N'2014-10-25 23:30:02.760' AS DateTime), 1864, NULL, NULL, 9999, 9)
INSERT [dbo].[programs] ([id], [name], [days], [numOfWeeks], [startDate], [endDate], [maximum], [cutoff], [created], [creatorId], [modified], [modifierId], [archived], [archiverId], [reminder_num], [reminder_sent]) VALUES (171, N'U:PASSwrite for CITP students ONLY', N'6', 12, CAST(N'2014-08-15' AS Date), CAST(N'2014-11-06' AS Date), 35, 24, CAST(N'2014-07-25 10:17:10.917' AS DateTime), 2186, CAST(N'2014-10-28 23:30:03.987' AS DateTime), 1864, NULL, NULL, 9999, 9)
INSERT [dbo].[programs] ([id], [name], [days], [numOfWeeks], [startDate], [endDate], [maximum], [cutoff], [created], [creatorId], [modified], [modifierId], [archived], [archiverId], [reminder_num], [reminder_sent]) VALUES (172, N'U:PASSwrite for EngComm students ONLY', N'6', 12, CAST(N'2014-08-15' AS Date), CAST(N'2014-11-06' AS Date), 35, 24, CAST(N'2014-07-25 10:27:58.473' AS DateTime), 2186, CAST(N'2014-09-09 23:30:03.587' AS DateTime), 1864, NULL, NULL, 9999, 5)
INSERT [dbo].[programs] ([id], [name], [days], [numOfWeeks], [startDate], [endDate], [maximum], [cutoff], [created], [creatorId], [modified], [modifierId], [archived], [archiverId], [reminder_num], [reminder_sent]) VALUES (173, N'U:PASSwrite for EngComm students ONLY', N'6', 12, CAST(N'2014-08-15' AS Date), CAST(N'2014-11-06' AS Date), 35, 24, CAST(N'2014-07-25 10:55:54.130' AS DateTime), 2186, CAST(N'2014-10-28 23:30:04.380' AS DateTime), 1864, NULL, NULL, 9999, 9)
INSERT [dbo].[programs] ([id], [name], [days], [numOfWeeks], [startDate], [endDate], [maximum], [cutoff], [created], [creatorId], [modified], [modifierId], [archived], [archiverId], [reminder_num], [reminder_sent]) VALUES (174, N'U:PASSwrite for First Year Nursing students ONLY', N'3', 12, CAST(N'2014-08-12' AS Date), CAST(N'2014-11-03' AS Date), 35, 24, CAST(N'2014-07-25 10:59:52.733' AS DateTime), 2186, CAST(N'2014-10-11 23:30:04.567' AS DateTime), 1864, NULL, NULL, 9999, 7)
INSERT [dbo].[programs] ([id], [name], [days], [numOfWeeks], [startDate], [endDate], [maximum], [cutoff], [created], [creatorId], [modified], [modifierId], [archived], [archiverId], [reminder_num], [reminder_sent]) VALUES (175, N'U:PASSwrite for First Year Nursing students ONLY', N'4', 12, CAST(N'2014-08-13' AS Date), CAST(N'2014-11-04' AS Date), 35, 24, CAST(N'2014-07-25 11:03:03.880' AS DateTime), 2186, CAST(N'2014-10-12 23:30:07.950' AS DateTime), 1864, NULL, NULL, 9999, 7)
INSERT [dbo].[programs] ([id], [name], [days], [numOfWeeks], [startDate], [endDate], [maximum], [cutoff], [created], [creatorId], [modified], [modifierId], [archived], [archiverId], [reminder_num], [reminder_sent]) VALUES (176, N'U:PASSwrite for First Year Nursing students ONLY', N'6', 12, CAST(N'2014-08-15' AS Date), CAST(N'2014-11-06' AS Date), 35, 24, CAST(N'2014-07-25 11:10:43.043' AS DateTime), 2186, CAST(N'2014-10-14 23:30:04.643' AS DateTime), 1864, NULL, NULL, 9999, 7)
INSERT [dbo].[programs] ([id], [name], [days], [numOfWeeks], [startDate], [endDate], [maximum], [cutoff], [created], [creatorId], [modified], [modifierId], [archived], [archiverId], [reminder_num], [reminder_sent]) VALUES (177, N'Conversations: Morning sessions', N'2,4,5,6', 13, CAST(N'2014-08-04' AS Date), CAST(N'2014-11-02' AS Date), 200, 0, CAST(N'2014-07-25 16:26:10.460' AS DateTime), 2560, CAST(N'2014-10-31 23:30:00.773' AS DateTime), 1864, NULL, NULL, 1, 1)
INSERT [dbo].[programs] ([id], [name], [days], [numOfWeeks], [startDate], [endDate], [maximum], [cutoff], [created], [creatorId], [modified], [modifierId], [archived], [archiverId], [reminder_num], [reminder_sent]) VALUES (178, N'Conversations: Afternoon sessions', N'2,3,4,5,6', 13, CAST(N'2014-08-04' AS Date), CAST(N'2014-11-02' AS Date), 200, 0, CAST(N'2014-07-25 17:04:01.607' AS DateTime), 2560, CAST(N'2014-10-31 23:30:00.807' AS DateTime), 1864, NULL, NULL, 1, 1)
INSERT [dbo].[programs] ([id], [name], [days], [numOfWeeks], [startDate], [endDate], [maximum], [cutoff], [created], [creatorId], [modified], [modifierId], [archived], [archiverId], [reminder_num], [reminder_sent]) VALUES (179, N'Conversations: Evening sessions', N'2,4,5', 14, CAST(N'2014-08-04' AS Date), CAST(N'2014-11-09' AS Date), 200, 0, CAST(N'2014-07-25 17:07:40.543' AS DateTime), 2560, CAST(N'2014-11-03 23:30:01.890' AS DateTime), 1864, NULL, NULL, 1, 1)
INSERT [dbo].[programs] ([id], [name], [days], [numOfWeeks], [startDate], [endDate], [maximum], [cutoff], [created], [creatorId], [modified], [modifierId], [archived], [archiverId], [reminder_num], [reminder_sent]) VALUES (180, N'TEsting', N'2', 5, CAST(N'2014-10-16' AS Date), CAST(N'2014-11-19' AS Date), 35, 0, CAST(N'2014-10-09 11:54:10.587' AS DateTime), 1337, NULL, NULL, NULL, NULL, 9999, 0)
INSERT [dbo].[programs] ([id], [name], [days], [numOfWeeks], [startDate], [endDate], [maximum], [cutoff], [created], [creatorId], [modified], [modifierId], [archived], [archiverId], [reminder_num], [reminder_sent]) VALUES (181, N'U:PASSwrite for Engineering Practice Review 1', N'4', 9, CAST(N'2015-03-11' AS Date), CAST(N'2015-05-12' AS Date), 20, 24, CAST(N'2015-02-10 10:04:53.127' AS DateTime), 2186, CAST(N'2015-04-26 23:30:05.120' AS DateTime), 1864, NULL, NULL, 9999, 6)
INSERT [dbo].[programs] ([id], [name], [days], [numOfWeeks], [startDate], [endDate], [maximum], [cutoff], [created], [creatorId], [modified], [modifierId], [archived], [archiverId], [reminder_num], [reminder_sent]) VALUES (182, N'U:PASSwrite for Engineering Practice Review 1', N'6', 11, CAST(N'2015-03-13' AS Date), CAST(N'2015-05-28' AS Date), 20, 24, CAST(N'2015-02-10 10:23:22.357' AS DateTime), 2186, CAST(N'2015-04-28 23:30:03.717' AS DateTime), 1864, NULL, NULL, 9999, 5)
INSERT [dbo].[programs] ([id], [name], [days], [numOfWeeks], [startDate], [endDate], [maximum], [cutoff], [created], [creatorId], [modified], [modifierId], [archived], [archiverId], [reminder_num], [reminder_sent]) VALUES (183, N'First Year Nursing', N'2', 12, CAST(N'2015-03-09' AS Date), CAST(N'2015-05-31' AS Date), 20, 24, CAST(N'2015-02-10 10:36:40.933' AS DateTime), 2186, CAST(N'2015-02-10 10:38:36.440' AS DateTime), 2186, NULL, NULL, 9999, 0)
INSERT [dbo].[programs] ([id], [name], [days], [numOfWeeks], [startDate], [endDate], [maximum], [cutoff], [created], [creatorId], [modified], [modifierId], [archived], [archiverId], [reminder_num], [reminder_sent]) VALUES (184, N'First Year Nursing students ONLY workshops', N'2', 12, CAST(N'2015-03-09' AS Date), CAST(N'2015-05-31' AS Date), 20, 24, CAST(N'2015-02-10 10:39:46.850' AS DateTime), 2186, NULL, NULL, NULL, NULL, 9999, 0)
INSERT [dbo].[programs] ([id], [name], [days], [numOfWeeks], [startDate], [endDate], [maximum], [cutoff], [created], [creatorId], [modified], [modifierId], [archived], [archiverId], [reminder_num], [reminder_sent]) VALUES (185, N'U:PASSwrite for First Year Nursing students ONLY workshops', N'3', 11, CAST(N'2015-03-10' AS Date), CAST(N'2015-05-25' AS Date), 20, 24, CAST(N'2015-02-10 10:46:42.637' AS DateTime), 2186, NULL, NULL, NULL, NULL, 9999, 0)
INSERT [dbo].[programs] ([id], [name], [days], [numOfWeeks], [startDate], [endDate], [maximum], [cutoff], [created], [creatorId], [modified], [modifierId], [archived], [archiverId], [reminder_num], [reminder_sent]) VALUES (186, N'U:PASSwrite for First Year Nursing students ONLY workshops', N'3', 11, CAST(N'2015-03-10' AS Date), CAST(N'2015-05-25' AS Date), 20, 24, CAST(N'2015-02-10 10:49:39.293' AS DateTime), 2186, NULL, NULL, NULL, NULL, 9999, 0)
INSERT [dbo].[programs] ([id], [name], [days], [numOfWeeks], [startDate], [endDate], [maximum], [cutoff], [created], [creatorId], [modified], [modifierId], [archived], [archiverId], [reminder_num], [reminder_sent]) VALUES (187, N'U:PASSwrite Communication for IT Professionals (31265)', N'2', 12, CAST(N'2015-03-09' AS Date), CAST(N'2015-05-31' AS Date), 25, 24, CAST(N'2015-02-20 15:56:39.030' AS DateTime), 2186, NULL, NULL, CAST(N'2015-02-20 16:02:17.767' AS DateTime), 2186, 9999, 0)
INSERT [dbo].[programs] ([id], [name], [days], [numOfWeeks], [startDate], [endDate], [maximum], [cutoff], [created], [creatorId], [modified], [modifierId], [archived], [archiverId], [reminder_num], [reminder_sent]) VALUES (188, N'U:PASSwrite for "31265 Communication for IT Professionals', N'2', 12, CAST(N'2015-03-09' AS Date), CAST(N'2015-05-31' AS Date), 25, 24, CAST(N'2015-02-20 16:03:39.077' AS DateTime), 2186, NULL, NULL, CAST(N'2015-02-20 16:11:25.610' AS DateTime), 2186, 9999, 0)
INSERT [dbo].[programs] ([id], [name], [days], [numOfWeeks], [startDate], [endDate], [maximum], [cutoff], [created], [creatorId], [modified], [modifierId], [archived], [archiverId], [reminder_num], [reminder_sent]) VALUES (189, N'U:PASSwrite for "31265 Communication for IT Professionals"', N'2', 12, CAST(N'2015-03-09' AS Date), CAST(N'2015-05-31' AS Date), 25, 24, CAST(N'2015-02-20 16:05:39.030' AS DateTime), 2186, NULL, NULL, CAST(N'2015-02-20 16:11:28.843' AS DateTime), 2186, 9999, 0)
INSERT [dbo].[programs] ([id], [name], [days], [numOfWeeks], [startDate], [endDate], [maximum], [cutoff], [created], [creatorId], [modified], [modifierId], [archived], [archiverId], [reminder_num], [reminder_sent]) VALUES (190, N'U:PASSwrite for 31265 Communication for IT Professionals', N'2', 12, CAST(N'2015-03-09' AS Date), CAST(N'2015-05-31' AS Date), 25, 24, CAST(N'2015-02-20 16:12:16.077' AS DateTime), 2186, CAST(N'2015-05-15 23:30:02.730' AS DateTime), 1864, NULL, NULL, 9999, 8)
INSERT [dbo].[programs] ([id], [name], [days], [numOfWeeks], [startDate], [endDate], [maximum], [cutoff], [created], [creatorId], [modified], [modifierId], [archived], [archiverId], [reminder_num], [reminder_sent]) VALUES (191, N'U:PASSwrite for 31265 Communication for IT Professionals', N'2', 12, CAST(N'2015-03-09' AS Date), CAST(N'2015-05-31' AS Date), 25, 24, CAST(N'2015-02-20 16:13:30.687' AS DateTime), 2186, CAST(N'2015-05-15 23:30:03.463' AS DateTime), 1864, NULL, NULL, 9999, 8)
INSERT [dbo].[programs] ([id], [name], [days], [numOfWeeks], [startDate], [endDate], [maximum], [cutoff], [created], [creatorId], [modified], [modifierId], [archived], [archiverId], [reminder_num], [reminder_sent]) VALUES (192, N'U:PASSwrite for 21129 - Managing People & Organisation', N'3', 12, CAST(N'2015-03-10' AS Date), CAST(N'2015-06-01' AS Date), 25, 24, CAST(N'2015-02-20 16:18:09.110' AS DateTime), 2186, CAST(N'2015-05-16 23:30:05.243' AS DateTime), 1864, NULL, NULL, 9999, 9)
INSERT [dbo].[programs] ([id], [name], [days], [numOfWeeks], [startDate], [endDate], [maximum], [cutoff], [created], [creatorId], [modified], [modifierId], [archived], [archiverId], [reminder_num], [reminder_sent]) VALUES (193, N'U:PASSwrite for 21129 - Managing People & Organisation', N'3', 12, CAST(N'2015-03-10' AS Date), CAST(N'2015-06-01' AS Date), 25, 24, CAST(N'2015-02-20 16:26:02.483' AS DateTime), 2186, CAST(N'2015-05-16 23:30:07.807' AS DateTime), 1864, NULL, NULL, 9999, 9)
INSERT [dbo].[programs] ([id], [name], [days], [numOfWeeks], [startDate], [endDate], [maximum], [cutoff], [created], [creatorId], [modified], [modifierId], [archived], [archiverId], [reminder_num], [reminder_sent]) VALUES (194, N'U:PASSwrite for 21129 - Managing People & Organisation', N'3', 12, CAST(N'2015-03-10' AS Date), CAST(N'2015-06-01' AS Date), 25, 24, CAST(N'2015-02-20 16:27:41.093' AS DateTime), 2186, CAST(N'2015-05-16 23:30:09.183' AS DateTime), 1864, NULL, NULL, 9999, 9)
INSERT [dbo].[programs] ([id], [name], [days], [numOfWeeks], [startDate], [endDate], [maximum], [cutoff], [created], [creatorId], [modified], [modifierId], [archived], [archiverId], [reminder_num], [reminder_sent]) VALUES (195, N'U:PASSwrite for 21129 - Managing People & Organisation', N'3', 12, CAST(N'2015-03-10' AS Date), CAST(N'2015-06-01' AS Date), 25, 24, CAST(N'2015-02-20 16:34:04.547' AS DateTime), 2186, CAST(N'2015-05-09 23:30:10.063' AS DateTime), 1864, NULL, NULL, 9999, 8)
INSERT [dbo].[programs] ([id], [name], [days], [numOfWeeks], [startDate], [endDate], [maximum], [cutoff], [created], [creatorId], [modified], [modifierId], [archived], [archiverId], [reminder_num], [reminder_sent]) VALUES (196, N'u:PASSwrite for First Year Nursing students ONLY', N'2', 12, CAST(N'2015-03-09' AS Date), CAST(N'2015-05-31' AS Date), 25, 24, CAST(N'2015-02-20 16:46:45.203' AS DateTime), 2186, NULL, NULL, CAST(N'2015-02-20 16:47:03.390' AS DateTime), 2186, 9999, 0)
INSERT [dbo].[programs] ([id], [name], [days], [numOfWeeks], [startDate], [endDate], [maximum], [cutoff], [created], [creatorId], [modified], [modifierId], [archived], [archiverId], [reminder_num], [reminder_sent]) VALUES (197, N'U:PASSwrite for First Year Nursing students ONLY', N'2', 12, CAST(N'2015-03-09' AS Date), CAST(N'2015-05-31' AS Date), 25, 24, CAST(N'2015-02-20 16:47:25.767' AS DateTime), 2186, CAST(N'2015-05-01 23:30:06.180' AS DateTime), 1864, NULL, NULL, 9999, 6)
INSERT [dbo].[programs] ([id], [name], [days], [numOfWeeks], [startDate], [endDate], [maximum], [cutoff], [created], [creatorId], [modified], [modifierId], [archived], [archiverId], [reminder_num], [reminder_sent]) VALUES (198, N'U:PASSwrite for First Year Nursing students ONLY', N'3', 12, CAST(N'2015-03-10' AS Date), CAST(N'2015-06-01' AS Date), 25, 24, CAST(N'2015-02-20 16:49:08.780' AS DateTime), 2186, CAST(N'2015-05-02 23:30:10.480' AS DateTime), 1864, NULL, NULL, 9999, 7)
INSERT [dbo].[programs] ([id], [name], [days], [numOfWeeks], [startDate], [endDate], [maximum], [cutoff], [created], [creatorId], [modified], [modifierId], [archived], [archiverId], [reminder_num], [reminder_sent]) VALUES (199, N'U:PASSwrite for First Year Nursing students ONLY', N'3', 12, CAST(N'2015-03-10' AS Date), CAST(N'2015-06-01' AS Date), 25, 24, CAST(N'2015-02-20 16:51:03.297' AS DateTime), 2186, CAST(N'2015-05-02 23:30:12.357' AS DateTime), 1864, NULL, NULL, 9999, 7)
GO
INSERT [dbo].[programs] ([id], [name], [days], [numOfWeeks], [startDate], [endDate], [maximum], [cutoff], [created], [creatorId], [modified], [modifierId], [archived], [archiverId], [reminder_num], [reminder_sent]) VALUES (200, N'U:PASSwrite for First Year Nursing students ONLY', N'4', 12, CAST(N'2015-03-11' AS Date), CAST(N'2015-06-02' AS Date), 25, 24, CAST(N'2015-02-20 16:56:33.043' AS DateTime), 2186, CAST(N'2015-05-03 23:30:04.533' AS DateTime), 1864, NULL, NULL, 9999, 7)
INSERT [dbo].[programs] ([id], [name], [days], [numOfWeeks], [startDate], [endDate], [maximum], [cutoff], [created], [creatorId], [modified], [modifierId], [archived], [archiverId], [reminder_num], [reminder_sent]) VALUES (201, N'U:PASSwrite for First Year Nursing students ONLY', N'4', 12, CAST(N'2015-03-11' AS Date), CAST(N'2015-06-02' AS Date), 25, 24, CAST(N'2015-02-20 16:58:36.293' AS DateTime), 2186, CAST(N'2015-05-03 23:30:06.393' AS DateTime), 1864, NULL, NULL, 9999, 7)
INSERT [dbo].[programs] ([id], [name], [days], [numOfWeeks], [startDate], [endDate], [maximum], [cutoff], [created], [creatorId], [modified], [modifierId], [archived], [archiverId], [reminder_num], [reminder_sent]) VALUES (202, N'U:PASSwrite for First Year Nursing students ONLY', N'5', 12, CAST(N'2015-03-12' AS Date), CAST(N'2015-06-03' AS Date), 25, 24, CAST(N'2015-02-20 16:59:58.840' AS DateTime), 2186, CAST(N'2015-05-04 23:30:02.370' AS DateTime), 1864, NULL, NULL, 1, 2)
INSERT [dbo].[programs] ([id], [name], [days], [numOfWeeks], [startDate], [endDate], [maximum], [cutoff], [created], [creatorId], [modified], [modifierId], [archived], [archiverId], [reminder_num], [reminder_sent]) VALUES (203, N'U:PASSwrite for 31265 Communication for IT Professionals', N'3', 12, CAST(N'2015-03-10' AS Date), CAST(N'2015-06-01' AS Date), 25, 24, CAST(N'2015-02-24 15:05:59.987' AS DateTime), 2186, CAST(N'2015-05-16 23:30:10.433' AS DateTime), 1864, NULL, NULL, 9999, 9)
INSERT [dbo].[programs] ([id], [name], [days], [numOfWeeks], [startDate], [endDate], [maximum], [cutoff], [created], [creatorId], [modified], [modifierId], [archived], [archiverId], [reminder_num], [reminder_sent]) VALUES (204, N'U:PASSwrite for 31265 Communication for IT Professionals', N'3', 12, CAST(N'2015-03-10' AS Date), CAST(N'2015-06-01' AS Date), 25, 24, CAST(N'2015-02-24 15:10:10.597' AS DateTime), 2186, NULL, NULL, CAST(N'2015-02-24 15:10:40.300' AS DateTime), 2186, 9999, 0)
INSERT [dbo].[programs] ([id], [name], [days], [numOfWeeks], [startDate], [endDate], [maximum], [cutoff], [created], [creatorId], [modified], [modifierId], [archived], [archiverId], [reminder_num], [reminder_sent]) VALUES (205, N'U:PASSwrite Communication for IT Professionals (31265)', N'6', 12, CAST(N'2015-03-13' AS Date), CAST(N'2015-06-04' AS Date), 25, 24, CAST(N'2015-02-24 15:11:18.753' AS DateTime), 2186, CAST(N'2015-05-19 23:30:04.107' AS DateTime), 1864, NULL, NULL, 9999, 8)
INSERT [dbo].[programs] ([id], [name], [days], [numOfWeeks], [startDate], [endDate], [maximum], [cutoff], [created], [creatorId], [modified], [modifierId], [archived], [archiverId], [reminder_num], [reminder_sent]) VALUES (206, N'Assignment writing workshop: 1st year and accelerated B.Nursing students', N'3', 9, CAST(N'2015-03-10' AS Date), CAST(N'2015-05-11' AS Date), 35, 24, CAST(N'2015-03-09 12:27:43.590' AS DateTime), 2560, NULL, NULL, NULL, NULL, 1, 0)
INSERT [dbo].[programs] ([id], [name], [days], [numOfWeeks], [startDate], [endDate], [maximum], [cutoff], [created], [creatorId], [modified], [modifierId], [archived], [archiverId], [reminder_num], [reminder_sent]) VALUES (207, N'Assignment writing workshop: 1st year and accelerated B.Nursing students', N'3', 9, CAST(N'2015-03-10' AS Date), CAST(N'2015-05-11' AS Date), 35, 24, CAST(N'2015-03-09 12:31:02.373' AS DateTime), 2560, CAST(N'2015-05-02 23:30:13.450' AS DateTime), 1864, NULL, NULL, 1, 1)
INSERT [dbo].[programs] ([id], [name], [days], [numOfWeeks], [startDate], [endDate], [maximum], [cutoff], [created], [creatorId], [modified], [modifierId], [archived], [archiverId], [reminder_num], [reminder_sent]) VALUES (208, N'Assignment writing workshop: 1st year and accelerated B.Nursing students', N'5', 9, CAST(N'2015-03-12' AS Date), CAST(N'2015-05-13' AS Date), 35, 24, CAST(N'2015-03-09 12:32:58.500' AS DateTime), 2560, CAST(N'2015-05-04 23:30:02.387' AS DateTime), 1864, NULL, NULL, 1, 1)
INSERT [dbo].[programs] ([id], [name], [days], [numOfWeeks], [startDate], [endDate], [maximum], [cutoff], [created], [creatorId], [modified], [modifierId], [archived], [archiverId], [reminder_num], [reminder_sent]) VALUES (209, N'Assignment writing workshop: 1st year and accelerated B.Nursing students', N'4', 9, CAST(N'2015-03-11' AS Date), CAST(N'2015-05-12' AS Date), 35, 24, CAST(N'2015-03-09 12:44:30.837' AS DateTime), 2560, CAST(N'2015-05-03 23:30:06.410' AS DateTime), 1864, NULL, NULL, 1, 1)
INSERT [dbo].[programs] ([id], [name], [days], [numOfWeeks], [startDate], [endDate], [maximum], [cutoff], [created], [creatorId], [modified], [modifierId], [archived], [archiverId], [reminder_num], [reminder_sent]) VALUES (210, N'Academic Writing - Day 1', N'2,3,4,5,6', 1, CAST(N'2015-07-06' AS Date), CAST(N'2015-07-12' AS Date), 29, 24, CAST(N'2015-07-08 10:14:11.010' AS DateTime), 2186, CAST(N'2015-07-13 10:28:33.227' AS DateTime), 2186, NULL, NULL, 1, 0)
INSERT [dbo].[programs] ([id], [name], [days], [numOfWeeks], [startDate], [endDate], [maximum], [cutoff], [created], [creatorId], [modified], [modifierId], [archived], [archiverId], [reminder_num], [reminder_sent]) VALUES (211, N'Academic Writing - Day 2', N'2,3,4,5,6', 1, CAST(N'2015-07-06' AS Date), CAST(N'2015-07-12' AS Date), 35, 90, CAST(N'2015-07-08 10:22:05.573' AS DateTime), 2186, NULL, NULL, NULL, NULL, 9999, 0)
INSERT [dbo].[programs] ([id], [name], [days], [numOfWeeks], [startDate], [endDate], [maximum], [cutoff], [created], [creatorId], [modified], [modifierId], [archived], [archiverId], [reminder_num], [reminder_sent]) VALUES (212, N'Academic Writing - Day 2', N'2,3,4,5,6,7,1', 1, CAST(N'2015-07-06' AS Date), CAST(N'2015-07-12' AS Date), 35, 90, CAST(N'2015-07-08 10:23:22.807' AS DateTime), 2186, NULL, NULL, NULL, NULL, 1, 0)
INSERT [dbo].[programs] ([id], [name], [days], [numOfWeeks], [startDate], [endDate], [maximum], [cutoff], [created], [creatorId], [modified], [modifierId], [archived], [archiverId], [reminder_num], [reminder_sent]) VALUES (213, N'Academic Writing - Day 3', N'2,3,4,5,6', 1, CAST(N'2015-07-06' AS Date), CAST(N'2015-07-12' AS Date), 35, 90, CAST(N'2015-07-08 10:24:14.290' AS DateTime), 2186, NULL, NULL, NULL, NULL, 1, 0)
INSERT [dbo].[programs] ([id], [name], [days], [numOfWeeks], [startDate], [endDate], [maximum], [cutoff], [created], [creatorId], [modified], [modifierId], [archived], [archiverId], [reminder_num], [reminder_sent]) VALUES (214, N'Academic Writing - Day 4', N'2,3,4,5,6', 1, CAST(N'2015-07-06' AS Date), CAST(N'2015-07-12' AS Date), 35, 90, CAST(N'2015-07-08 10:25:24.307' AS DateTime), 2186, NULL, NULL, NULL, NULL, 1, 0)
INSERT [dbo].[programs] ([id], [name], [days], [numOfWeeks], [startDate], [endDate], [maximum], [cutoff], [created], [creatorId], [modified], [modifierId], [archived], [archiverId], [reminder_num], [reminder_sent]) VALUES (215, N'Academic Writing - Day 5', N'2,3,4,5,6', 1, CAST(N'2015-07-06' AS Date), CAST(N'2015-07-12' AS Date), 35, 90, CAST(N'2015-07-08 10:26:15.667' AS DateTime), 2186, NULL, NULL, NULL, NULL, 1, 0)
INSERT [dbo].[programs] ([id], [name], [days], [numOfWeeks], [startDate], [endDate], [maximum], [cutoff], [created], [creatorId], [modified], [modifierId], [archived], [archiverId], [reminder_num], [reminder_sent]) VALUES (216, N'Academic Writing - Evening 1', N'2,3,4,5,6', 1, CAST(N'2015-07-06' AS Date), CAST(N'2015-07-12' AS Date), 35, 90, CAST(N'2015-07-08 10:36:16.963' AS DateTime), 2186, CAST(N'2015-07-13 10:31:16.743' AS DateTime), 2186, NULL, NULL, 1, 0)
INSERT [dbo].[programs] ([id], [name], [days], [numOfWeeks], [startDate], [endDate], [maximum], [cutoff], [created], [creatorId], [modified], [modifierId], [archived], [archiverId], [reminder_num], [reminder_sent]) VALUES (217, N'Academic Writing - Evening 2', N'2,3,4,5,6', 1, CAST(N'2015-07-06' AS Date), CAST(N'2015-07-12' AS Date), 35, 90, CAST(N'2015-07-08 10:39:03.573' AS DateTime), 2186, NULL, NULL, NULL, NULL, 1, 0)
INSERT [dbo].[programs] ([id], [name], [days], [numOfWeeks], [startDate], [endDate], [maximum], [cutoff], [created], [creatorId], [modified], [modifierId], [archived], [archiverId], [reminder_num], [reminder_sent]) VALUES (218, N'Academic Writing - Evening 3', N'2,3,4,5,6', 1, CAST(N'2015-07-06' AS Date), CAST(N'2015-07-12' AS Date), 35, 90, CAST(N'2015-07-08 10:40:29.290' AS DateTime), 2186, NULL, NULL, NULL, NULL, 1, 0)
INSERT [dbo].[programs] ([id], [name], [days], [numOfWeeks], [startDate], [endDate], [maximum], [cutoff], [created], [creatorId], [modified], [modifierId], [archived], [archiverId], [reminder_num], [reminder_sent]) VALUES (219, N'Academic Writing - Evening 4', N'2,3,4,5,6', 1, CAST(N'2015-07-06' AS Date), CAST(N'2015-07-12' AS Date), 35, 90, CAST(N'2015-07-08 10:41:50.573' AS DateTime), 2186, NULL, NULL, NULL, NULL, 1, 0)
INSERT [dbo].[programs] ([id], [name], [days], [numOfWeeks], [startDate], [endDate], [maximum], [cutoff], [created], [creatorId], [modified], [modifierId], [archived], [archiverId], [reminder_num], [reminder_sent]) VALUES (220, N'Academic Writing - Evening 2', N'2,3,4,5,6', 1, CAST(N'2015-07-06' AS Date), CAST(N'2015-07-12' AS Date), 31, 24, CAST(N'2015-07-08 15:41:05.600' AS DateTime), 2186, CAST(N'2015-07-13 10:28:53.273' AS DateTime), 2186, NULL, NULL, 1, 0)
INSERT [dbo].[programs] ([id], [name], [days], [numOfWeeks], [startDate], [endDate], [maximum], [cutoff], [created], [creatorId], [modified], [modifierId], [archived], [archiverId], [reminder_num], [reminder_sent]) VALUES (221, N'Academic Writing - Evening 3', N'2,3,4,5,6', 1, CAST(N'2015-07-06' AS Date), CAST(N'2015-07-12' AS Date), 32, 24, CAST(N'2015-07-08 15:45:54.600' AS DateTime), 2186, CAST(N'2015-07-13 10:29:14.930' AS DateTime), 2186, NULL, NULL, 1, 0)
INSERT [dbo].[programs] ([id], [name], [days], [numOfWeeks], [startDate], [endDate], [maximum], [cutoff], [created], [creatorId], [modified], [modifierId], [archived], [archiverId], [reminder_num], [reminder_sent]) VALUES (222, N'Academic Writing - Evening 4', N'2,3,4,5,6', 1, CAST(N'2015-07-06' AS Date), CAST(N'2015-07-12' AS Date), 28, 24, CAST(N'2015-07-08 15:47:05.257' AS DateTime), 2186, CAST(N'2015-07-13 10:29:27.087' AS DateTime), 2186, NULL, NULL, 1, 0)
INSERT [dbo].[programs] ([id], [name], [days], [numOfWeeks], [startDate], [endDate], [maximum], [cutoff], [created], [creatorId], [modified], [modifierId], [archived], [archiverId], [reminder_num], [reminder_sent]) VALUES (223, N'Pronunciation - Day 1', N'2,3,4,5,6', 1, CAST(N'2015-07-13' AS Date), CAST(N'2015-07-19' AS Date), 29, 24, CAST(N'2015-07-10 15:51:06.360' AS DateTime), 2186, CAST(N'2015-07-14 23:30:00.560' AS DateTime), 1864, NULL, NULL, 1, 1)
INSERT [dbo].[programs] ([id], [name], [days], [numOfWeeks], [startDate], [endDate], [maximum], [cutoff], [created], [creatorId], [modified], [modifierId], [archived], [archiverId], [reminder_num], [reminder_sent]) VALUES (224, N'Pronunciation - Day 2', N'2,3,4,5,6', 1, CAST(N'2015-07-13' AS Date), CAST(N'2015-07-19' AS Date), 25, 24, CAST(N'2015-07-10 15:52:35.753' AS DateTime), 2186, CAST(N'2015-07-14 23:30:00.607' AS DateTime), 1864, NULL, NULL, 1, 1)
INSERT [dbo].[programs] ([id], [name], [days], [numOfWeeks], [startDate], [endDate], [maximum], [cutoff], [created], [creatorId], [modified], [modifierId], [archived], [archiverId], [reminder_num], [reminder_sent]) VALUES (225, N'Pronunciation - Day 3', N'2,3,4,5,6', 1, CAST(N'2015-07-13' AS Date), CAST(N'2015-07-19' AS Date), 24, 24, CAST(N'2015-07-10 15:56:32.743' AS DateTime), 2186, CAST(N'2015-07-14 23:30:00.623' AS DateTime), 1864, NULL, NULL, 1, 1)
INSERT [dbo].[programs] ([id], [name], [days], [numOfWeeks], [startDate], [endDate], [maximum], [cutoff], [created], [creatorId], [modified], [modifierId], [archived], [archiverId], [reminder_num], [reminder_sent]) VALUES (226, N'Pronunciation - Day 4', N'2,3,4,5,6', 1, CAST(N'2015-07-13' AS Date), CAST(N'2015-07-19' AS Date), 26, 24, CAST(N'2015-07-10 15:59:53.560' AS DateTime), 2186, CAST(N'2015-07-14 23:30:00.640' AS DateTime), 1864, NULL, NULL, 1, 1)
INSERT [dbo].[programs] ([id], [name], [days], [numOfWeeks], [startDate], [endDate], [maximum], [cutoff], [created], [creatorId], [modified], [modifierId], [archived], [archiverId], [reminder_num], [reminder_sent]) VALUES (227, N'Sem Presentation Day class 1', N'2,3,4,5,6', 1, CAST(N'2015-07-13' AS Date), CAST(N'2015-07-19' AS Date), 24, 24, CAST(N'2015-07-10 16:03:42.227' AS DateTime), 2186, CAST(N'2015-07-14 23:30:00.657' AS DateTime), 1864, NULL, NULL, 1, 1)
INSERT [dbo].[programs] ([id], [name], [days], [numOfWeeks], [startDate], [endDate], [maximum], [cutoff], [created], [creatorId], [modified], [modifierId], [archived], [archiverId], [reminder_num], [reminder_sent]) VALUES (228, N'Sem Presentation Day class 2', N'2,3,4,5,6', 1, CAST(N'2015-07-13' AS Date), CAST(N'2015-07-19' AS Date), 26, 24, CAST(N'2015-07-10 16:06:37.037' AS DateTime), 2186, CAST(N'2015-07-14 23:30:00.670' AS DateTime), 1864, NULL, NULL, 1, 1)
INSERT [dbo].[programs] ([id], [name], [days], [numOfWeeks], [startDate], [endDate], [maximum], [cutoff], [created], [creatorId], [modified], [modifierId], [archived], [archiverId], [reminder_num], [reminder_sent]) VALUES (229, N'Sem Presentation Day class 3', N'2,3,4,5,6', 1, CAST(N'2015-07-13' AS Date), CAST(N'2015-07-19' AS Date), 22, 24, CAST(N'2015-07-10 16:09:22.757' AS DateTime), 2186, CAST(N'2015-07-14 23:30:00.687' AS DateTime), 1864, NULL, NULL, 1, 1)
INSERT [dbo].[programs] ([id], [name], [days], [numOfWeeks], [startDate], [endDate], [maximum], [cutoff], [created], [creatorId], [modified], [modifierId], [archived], [archiverId], [reminder_num], [reminder_sent]) VALUES (230, N'Sem Presentation Eve class 1', N'2,3,4,5,6', 1, CAST(N'2015-07-13' AS Date), CAST(N'2015-07-19' AS Date), 30, 24, CAST(N'2015-07-10 16:10:42.067' AS DateTime), 2186, CAST(N'2015-07-14 23:30:00.703' AS DateTime), 1864, NULL, NULL, 1, 1)
INSERT [dbo].[programs] ([id], [name], [days], [numOfWeeks], [startDate], [endDate], [maximum], [cutoff], [created], [creatorId], [modified], [modifierId], [archived], [archiverId], [reminder_num], [reminder_sent]) VALUES (231, N'Sem Presentation Eve class 2', N'2,3,4,5,6', 1, CAST(N'2015-07-13' AS Date), CAST(N'2015-07-19' AS Date), 29, 0, CAST(N'2015-07-10 16:11:56.740' AS DateTime), 2186, NULL, NULL, CAST(N'2015-07-10 16:24:59.537' AS DateTime), 2186, 1, 0)
INSERT [dbo].[programs] ([id], [name], [days], [numOfWeeks], [startDate], [endDate], [maximum], [cutoff], [created], [creatorId], [modified], [modifierId], [archived], [archiverId], [reminder_num], [reminder_sent]) VALUES (232, N'Sem Presentation Eve class 2', N'2,3,4,5,6', 1, CAST(N'2015-07-13' AS Date), CAST(N'2015-07-19' AS Date), 29, 24, CAST(N'2015-07-10 16:25:56.663' AS DateTime), 2186, CAST(N'2015-07-14 23:30:00.717' AS DateTime), 1864, NULL, NULL, 1, 1)
INSERT [dbo].[programs] ([id], [name], [days], [numOfWeeks], [startDate], [endDate], [maximum], [cutoff], [created], [creatorId], [modified], [modifierId], [archived], [archiverId], [reminder_num], [reminder_sent]) VALUES (233, N'U:PASSwrite for 21129 Managing People & Organisations', N'2', 10, CAST(N'2015-08-10' AS Date), CAST(N'2015-10-18' AS Date), 35, 24, CAST(N'2015-07-27 09:49:40.467' AS DateTime), 1614, NULL, NULL, CAST(N'2015-07-27 10:03:22.090' AS DateTime), 1614, 9999, 0)
INSERT [dbo].[programs] ([id], [name], [days], [numOfWeeks], [startDate], [endDate], [maximum], [cutoff], [created], [creatorId], [modified], [modifierId], [archived], [archiverId], [reminder_num], [reminder_sent]) VALUES (234, N'U:PASSwrite for 21129 Managing People & Organisations', N'2', 12, CAST(N'2015-08-10' AS Date), CAST(N'2015-11-01' AS Date), 25, 24, CAST(N'2015-07-27 10:03:57.217' AS DateTime), 1614, NULL, NULL, NULL, NULL, 9999, 0)
INSERT [dbo].[programs] ([id], [name], [days], [numOfWeeks], [startDate], [endDate], [maximum], [cutoff], [created], [creatorId], [modified], [modifierId], [archived], [archiverId], [reminder_num], [reminder_sent]) VALUES (235, N'U:PASSwrite for 21129 Managing People & Organisations', N'2', 12, CAST(N'2015-08-10' AS Date), CAST(N'2015-11-01' AS Date), 25, 24, CAST(N'2015-07-27 10:07:43.247' AS DateTime), 1614, NULL, NULL, NULL, NULL, 9999, 0)
INSERT [dbo].[programs] ([id], [name], [days], [numOfWeeks], [startDate], [endDate], [maximum], [cutoff], [created], [creatorId], [modified], [modifierId], [archived], [archiverId], [reminder_num], [reminder_sent]) VALUES (236, N'U:PASSwrite for 21129 Managing People & Organisations', N'4', 12, CAST(N'2015-08-12' AS Date), CAST(N'2015-11-03' AS Date), 25, 24, CAST(N'2015-07-27 10:10:04.010' AS DateTime), 1614, NULL, NULL, NULL, NULL, 9999, 0)
INSERT [dbo].[programs] ([id], [name], [days], [numOfWeeks], [startDate], [endDate], [maximum], [cutoff], [created], [creatorId], [modified], [modifierId], [archived], [archiverId], [reminder_num], [reminder_sent]) VALUES (237, N'U:PASSwrite for 21129 Managing People & Organisations', N'4', 12, CAST(N'2015-08-12' AS Date), CAST(N'2015-11-03' AS Date), 25, 24, CAST(N'2015-07-27 10:15:03.480' AS DateTime), 1614, NULL, NULL, NULL, NULL, 9999, 0)
INSERT [dbo].[programs] ([id], [name], [days], [numOfWeeks], [startDate], [endDate], [maximum], [cutoff], [created], [creatorId], [modified], [modifierId], [archived], [archiverId], [reminder_num], [reminder_sent]) VALUES (238, N'U:PASSwrite for 31265 Communication for IT Professionals', N'4', 12, CAST(N'2015-08-12' AS Date), CAST(N'2015-11-03' AS Date), 25, 24, CAST(N'2015-07-27 10:19:33.853' AS DateTime), 1614, NULL, NULL, CAST(N'2015-07-27 10:24:05.603' AS DateTime), 1614, 9999, 0)
INSERT [dbo].[programs] ([id], [name], [days], [numOfWeeks], [startDate], [endDate], [maximum], [cutoff], [created], [creatorId], [modified], [modifierId], [archived], [archiverId], [reminder_num], [reminder_sent]) VALUES (239, N'U:PASSwrite for 31265 Communication for IT Professionals', N'4', 12, CAST(N'2015-08-12' AS Date), CAST(N'2015-11-03' AS Date), 25, 24, CAST(N'2015-07-27 10:22:01.963' AS DateTime), 1614, NULL, NULL, CAST(N'2015-07-27 10:23:03.183' AS DateTime), 1614, 9999, 0)
INSERT [dbo].[programs] ([id], [name], [days], [numOfWeeks], [startDate], [endDate], [maximum], [cutoff], [created], [creatorId], [modified], [modifierId], [archived], [archiverId], [reminder_num], [reminder_sent]) VALUES (240, N'U:PASSwrite for 31265 Communication for IT Professionals', N'4', 12, CAST(N'2015-08-12' AS Date), CAST(N'2015-11-03' AS Date), 25, 24, CAST(N'2015-07-27 10:24:50.370' AS DateTime), 1614, NULL, NULL, NULL, NULL, 9999, 0)
INSERT [dbo].[programs] ([id], [name], [days], [numOfWeeks], [startDate], [endDate], [maximum], [cutoff], [created], [creatorId], [modified], [modifierId], [archived], [archiverId], [reminder_num], [reminder_sent]) VALUES (241, N'U:PASSwrite for 31265 Communication for IT Professionals', N'4', 12, CAST(N'2015-08-12' AS Date), CAST(N'2015-11-03' AS Date), 25, 24, CAST(N'2015-07-27 10:26:03.027' AS DateTime), 1614, NULL, NULL, NULL, NULL, 9999, 0)
INSERT [dbo].[programs] ([id], [name], [days], [numOfWeeks], [startDate], [endDate], [maximum], [cutoff], [created], [creatorId], [modified], [modifierId], [archived], [archiverId], [reminder_num], [reminder_sent]) VALUES (242, N'U:PASSwrite for 48122 Engineering Practice Review 1', N'2', 10, CAST(N'2015-08-10' AS Date), CAST(N'2015-10-18' AS Date), 25, 24, CAST(N'2015-07-27 10:38:11.433' AS DateTime), 1614, NULL, NULL, NULL, NULL, 9999, 0)
INSERT [dbo].[programs] ([id], [name], [days], [numOfWeeks], [startDate], [endDate], [maximum], [cutoff], [created], [creatorId], [modified], [modifierId], [archived], [archiverId], [reminder_num], [reminder_sent]) VALUES (243, N'U:PASSwrite for 48122 Engineering Practice Review 1', N'3', 10, CAST(N'2015-08-11' AS Date), CAST(N'2015-10-19' AS Date), 25, 24, CAST(N'2015-07-27 10:40:52.870' AS DateTime), 1614, NULL, NULL, NULL, NULL, 9999, 0)
INSERT [dbo].[programs] ([id], [name], [days], [numOfWeeks], [startDate], [endDate], [maximum], [cutoff], [created], [creatorId], [modified], [modifierId], [archived], [archiverId], [reminder_num], [reminder_sent]) VALUES (244, N'U:PASSwrite for First Year Nursing students ONLY', N'2', 13, CAST(N'2015-08-10' AS Date), CAST(N'2015-11-08' AS Date), 25, 24, CAST(N'2015-07-27 10:52:54.120' AS DateTime), 1614, NULL, NULL, NULL, NULL, 9999, 0)
INSERT [dbo].[programs] ([id], [name], [days], [numOfWeeks], [startDate], [endDate], [maximum], [cutoff], [created], [creatorId], [modified], [modifierId], [archived], [archiverId], [reminder_num], [reminder_sent]) VALUES (245, N'U:PASSwrite for First Year Nursing students ONLY', N'3', 13, CAST(N'2015-08-11' AS Date), CAST(N'2015-11-09' AS Date), 25, 24, CAST(N'2015-07-27 10:54:31.527' AS DateTime), 1614, NULL, NULL, NULL, NULL, 9999, 0)
INSERT [dbo].[programs] ([id], [name], [days], [numOfWeeks], [startDate], [endDate], [maximum], [cutoff], [created], [creatorId], [modified], [modifierId], [archived], [archiverId], [reminder_num], [reminder_sent]) VALUES (246, N'U:PASSwrite for First Year Nursing students ONLY', N'4', 13, CAST(N'2015-08-12' AS Date), CAST(N'2015-11-10' AS Date), 25, 24, CAST(N'2015-07-27 10:56:41.370' AS DateTime), 1614, NULL, NULL, NULL, NULL, 9999, 0)
INSERT [dbo].[programs] ([id], [name], [days], [numOfWeeks], [startDate], [endDate], [maximum], [cutoff], [created], [creatorId], [modified], [modifierId], [archived], [archiverId], [reminder_num], [reminder_sent]) VALUES (247, N'U:PASSwrite for First Year Nursing students ONLY', N'5', 13, CAST(N'2015-08-13' AS Date), CAST(N'2015-11-11' AS Date), 25, 24, CAST(N'2015-07-27 11:34:11.047' AS DateTime), 1614, NULL, NULL, NULL, NULL, 9999, 0)
INSERT [dbo].[programs] ([id], [name], [days], [numOfWeeks], [startDate], [endDate], [maximum], [cutoff], [created], [creatorId], [modified], [modifierId], [archived], [archiverId], [reminder_num], [reminder_sent]) VALUES (248, N'U:PASSwrite for First Year Nursing students ONLY', N'6', 13, CAST(N'2015-08-14' AS Date), CAST(N'2015-11-12' AS Date), 25, 24, CAST(N'2015-07-27 11:35:43.483' AS DateTime), 1614, NULL, NULL, NULL, NULL, 9999, 0)
SET IDENTITY_INSERT [dbo].[programs] OFF
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (1, 95)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (1, 96)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (1, 97)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (1, 98)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (1, 99)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (1, 100)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (2, 101)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (2, 102)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (2, 103)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (2, 104)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (2, 105)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (2, 106)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (2, 107)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (2, 108)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (2, 109)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (2, 110)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (2, 111)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (2, 112)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (2, 113)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (2, 114)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (3, 115)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (3, 116)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (3, 117)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (3, 118)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (3, 119)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (3, 120)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (3, 121)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (3, 122)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (3, 123)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (3, 124)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (3, 125)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (3, 126)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (3, 127)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (4, 128)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (4, 129)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (4, 130)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (4, 131)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (4, 132)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (5, 133)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (5, 134)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (5, 135)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (5, 136)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (5, 137)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (5, 138)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (5, 139)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (5, 140)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (5, 141)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (5, 142)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (5, 143)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (5, 144)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (5, 145)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (6, 146)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (6, 147)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (6, 148)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (6, 149)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (6, 150)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (6, 151)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (6, 152)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (6, 153)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (6, 154)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (6, 155)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (6, 156)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (6, 157)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (6, 158)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (7, 159)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (7, 160)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (7, 161)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (7, 162)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (7, 163)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (7, 164)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (7, 165)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (7, 166)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (7, 167)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (7, 168)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (7, 169)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (7, 170)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (7, 171)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (7, 172)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (8, 173)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (8, 174)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (8, 175)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (8, 176)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (8, 177)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (8, 178)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (8, 179)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (8, 180)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (8, 181)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (8, 182)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (8, 183)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (8, 184)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (8, 185)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (8, 186)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (9, 187)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (9, 188)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (9, 189)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (9, 190)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (9, 191)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (9, 192)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (9, 193)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (9, 194)
GO
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (9, 195)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (9, 196)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (9, 197)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (9, 198)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (9, 199)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (9, 200)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (10, 201)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (10, 202)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (10, 203)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (10, 204)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (10, 205)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (10, 206)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (10, 207)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (10, 208)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (10, 209)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (10, 210)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (10, 211)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (10, 212)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (10, 213)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (10, 214)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (11, 215)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (11, 216)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (11, 217)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (11, 218)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (11, 219)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (11, 220)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (11, 221)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (11, 222)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (11, 223)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (11, 224)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (11, 225)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (11, 226)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (11, 227)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (11, 228)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (12, 229)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (12, 230)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (12, 231)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (12, 232)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (12, 233)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (12, 234)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (12, 235)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (12, 236)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (12, 237)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (12, 238)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (12, 239)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (12, 240)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (12, 241)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (12, 242)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (13, 243)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (13, 244)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (13, 245)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (13, 246)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (13, 247)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (13, 248)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (13, 249)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (13, 250)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (13, 251)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (13, 252)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (13, 253)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (13, 254)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (13, 255)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (14, 256)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (14, 257)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (14, 258)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (14, 259)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (14, 260)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (14, 261)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (14, 262)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (14, 263)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (14, 264)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (14, 265)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (14, 266)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (14, 267)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (14, 268)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (15, 269)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (15, 270)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (15, 271)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (15, 272)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (15, 273)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (15, 274)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (15, 275)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (15, 276)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (15, 277)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (15, 278)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (15, 279)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (15, 280)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (15, 281)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (16, 282)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (16, 283)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (16, 284)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (16, 285)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (16, 286)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (16, 287)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (16, 288)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (16, 289)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (16, 290)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (16, 291)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (16, 292)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (16, 293)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (16, 294)
GO
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (17, 295)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (17, 296)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (17, 297)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (19, 334)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (19, 335)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (19, 336)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (19, 337)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (20, 338)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (20, 339)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (21, 358)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (21, 359)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (21, 360)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (21, 361)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (22, 362)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (22, 363)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (22, 364)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (22, 365)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (23, 366)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (23, 367)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (23, 368)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (23, 369)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (24, 370)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (24, 371)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (24, 372)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (24, 373)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (25, 374)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (25, 375)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (25, 376)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (25, 377)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (26, 378)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (26, 379)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (26, 380)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (26, 381)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (28, 387)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (29, 388)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (29, 389)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (29, 390)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (29, 391)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (29, 392)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (29, 393)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (29, 394)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (29, 395)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (30, 396)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (30, 397)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (30, 398)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (30, 399)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (30, 400)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (30, 401)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (30, 402)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (30, 403)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (31, 404)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (31, 405)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (31, 406)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (31, 407)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (31, 408)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (31, 409)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (31, 410)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (31, 411)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (32, 412)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (32, 413)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (32, 414)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (33, 415)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (33, 416)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (33, 417)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (34, 418)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (34, 419)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (34, 420)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (34, 421)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (34, 422)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (35, 423)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (35, 424)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (35, 425)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (35, 426)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (35, 427)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (36, 428)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (36, 429)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (36, 430)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (36, 431)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (36, 432)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (37, 433)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (37, 434)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (37, 435)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (37, 436)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (37, 437)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (38, 438)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (38, 439)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (38, 440)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (38, 441)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (38, 442)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (38, 443)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (38, 444)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (38, 445)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (38, 446)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (38, 447)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (39, 448)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (39, 449)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (39, 450)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (39, 451)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (39, 452)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (39, 453)
GO
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (39, 454)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (39, 455)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (40, 456)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (41, 458)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (59, 544)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (59, 545)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (59, 546)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (59, 547)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (59, 548)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (59, 549)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (59, 550)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (59, 551)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (59, 552)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (62, 595)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (62, 597)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (62, 598)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (62, 599)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (62, 600)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (62, 601)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (62, 602)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (63, 603)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (63, 604)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (63, 605)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (63, 606)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (64, 607)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (64, 608)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (64, 609)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (64, 610)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (65, 611)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (65, 612)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (65, 613)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (65, 614)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (66, 615)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (66, 616)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (66, 617)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (66, 618)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (67, 619)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (67, 620)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (67, 621)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (67, 622)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (67, 623)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (67, 624)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (67, 625)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (67, 626)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (67, 627)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (67, 628)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (68, 629)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (68, 630)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (68, 631)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (68, 632)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (68, 633)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (68, 634)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (68, 635)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (68, 636)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (68, 637)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (68, 638)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (69, 639)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (69, 640)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (69, 641)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (69, 642)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (69, 643)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (69, 644)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (69, 645)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (69, 646)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (69, 647)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (69, 648)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (70, 649)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (70, 650)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (70, 651)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (70, 652)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (70, 653)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (70, 654)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (70, 655)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (70, 656)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (70, 657)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (70, 658)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (71, 659)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (71, 660)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (71, 661)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (71, 662)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (71, 663)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (71, 664)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (71, 665)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (71, 666)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (71, 667)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (71, 668)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (72, 669)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (72, 670)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (72, 671)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (72, 672)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (72, 673)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (72, 674)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (72, 675)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (72, 676)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (72, 677)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (72, 678)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (73, 679)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (73, 680)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (73, 681)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (73, 682)
GO
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (73, 683)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (73, 684)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (74, 685)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (74, 686)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (74, 687)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (74, 688)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (74, 689)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (74, 690)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (75, 691)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (75, 692)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (75, 693)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (75, 694)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (75, 695)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (75, 696)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (76, 697)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (76, 698)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (76, 699)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (76, 700)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (76, 701)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (76, 702)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (77, 703)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (77, 704)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (77, 705)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (77, 706)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (77, 707)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (77, 708)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (78, 737)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (78, 738)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (78, 739)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (78, 740)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (78, 741)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (78, 742)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (78, 743)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (78, 744)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (78, 745)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (78, 746)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (78, 747)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (78, 748)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (78, 749)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (78, 750)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (79, 751)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (79, 752)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (79, 753)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (79, 754)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (79, 755)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (79, 756)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (79, 757)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (79, 758)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (79, 759)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (79, 760)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (79, 761)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (79, 762)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (79, 763)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (17, 298)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (17, 299)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (17, 300)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (17, 301)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (17, 302)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (17, 303)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (17, 304)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (17, 305)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (17, 306)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (17, 307)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (18, 308)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (18, 309)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (18, 310)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (18, 311)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (18, 312)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (18, 313)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (18, 314)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (18, 315)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (18, 316)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (18, 317)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (18, 318)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (18, 319)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (18, 320)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (40, 457)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (42, 459)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (42, 460)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (42, 461)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (42, 462)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (42, 463)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (60, 553)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (60, 554)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (60, 555)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (60, 556)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (60, 557)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (60, 558)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (60, 559)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (60, 560)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (60, 561)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (60, 562)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (60, 563)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (60, 564)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (60, 565)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (60, 566)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (60, 567)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (60, 568)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (60, 569)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (60, 570)
GO
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (60, 571)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (60, 572)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (60, 573)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (60, 574)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (60, 575)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (60, 576)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (60, 577)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (60, 578)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (60, 579)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (61, 580)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (61, 581)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (61, 582)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (61, 583)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (61, 584)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (61, 585)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (61, 586)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (61, 587)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (61, 588)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (61, 589)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (61, 590)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (61, 591)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (61, 592)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (61, 593)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (61, 594)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (62, 596)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (79, 764)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (80, 765)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (80, 766)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (80, 767)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (80, 768)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (80, 769)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (80, 770)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (80, 771)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (80, 772)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (80, 773)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (80, 774)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (80, 775)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (80, 776)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (80, 777)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (80, 778)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (81, 779)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (81, 780)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (81, 781)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (81, 782)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (81, 783)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (81, 784)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (81, 785)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (81, 786)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (81, 787)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (81, 788)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (81, 789)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (81, 790)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (81, 791)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (81, 792)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (82, 793)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (82, 794)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (82, 795)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (82, 796)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (82, 797)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (82, 798)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (82, 799)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (82, 800)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (82, 801)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (82, 802)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (82, 803)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (82, 804)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (82, 805)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (82, 806)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (83, 807)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (83, 808)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (83, 809)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (83, 810)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (83, 811)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (83, 812)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (83, 813)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (83, 814)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (83, 815)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (83, 816)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (83, 817)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (83, 818)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (83, 819)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (83, 820)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (84, 821)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (84, 822)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (84, 823)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (84, 824)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (84, 825)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (84, 826)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (84, 827)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (84, 828)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (84, 829)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (84, 830)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (84, 831)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (84, 832)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (84, 833)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (84, 834)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (85, 835)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (85, 836)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (85, 837)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (85, 838)
GO
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (85, 839)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (85, 840)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (85, 841)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (85, 842)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (85, 843)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (85, 844)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (85, 845)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (85, 846)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (85, 847)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (85, 848)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (86, 849)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (86, 850)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (86, 851)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (86, 852)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (86, 853)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (86, 854)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (86, 855)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (86, 856)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (86, 857)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (86, 858)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (86, 859)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (86, 860)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (86, 861)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (86, 862)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (87, 863)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (87, 864)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (87, 865)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (87, 866)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (87, 867)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (87, 868)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (87, 869)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (87, 870)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (87, 871)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (87, 872)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (87, 873)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (87, 874)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (87, 875)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (87, 876)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (88, 877)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (88, 878)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (88, 879)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (88, 880)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (88, 881)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (88, 882)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (88, 883)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (88, 884)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (88, 885)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (88, 886)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (88, 887)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (88, 888)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (88, 889)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (88, 890)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (89, 891)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (89, 892)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (89, 893)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (89, 894)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (89, 895)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (89, 896)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (89, 897)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (89, 898)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (89, 899)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (89, 900)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (89, 901)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (89, 902)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (89, 903)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (89, 904)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (90, 905)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (90, 906)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (90, 907)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (90, 908)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (90, 909)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (90, 910)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (90, 911)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (90, 912)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (90, 913)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (90, 914)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (90, 915)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (90, 916)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (90, 917)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (90, 918)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (91, 919)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (91, 920)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (91, 921)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (91, 922)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (91, 923)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (91, 924)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (91, 925)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (91, 926)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (91, 927)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (91, 928)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (91, 929)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (91, 930)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (91, 931)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (91, 932)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (92, 937)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (92, 938)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (92, 939)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (92, 940)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (92, 941)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (92, 942)
GO
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (92, 943)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (92, 944)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (92, 945)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (92, 946)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (92, 947)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (92, 948)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (93, 964)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (93, 965)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (93, 966)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (94, 967)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (94, 968)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (94, 969)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (95, 970)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (95, 971)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (95, 972)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (96, 973)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (96, 974)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (96, 975)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (97, 976)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (97, 977)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (97, 978)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (98, 979)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (98, 980)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (98, 981)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (99, 1011)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (99, 1012)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (99, 1013)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (99, 1014)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (99, 1015)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (99, 1016)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (99, 1017)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (99, 1018)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (99, 1019)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (99, 1020)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (100, 1021)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (100, 1022)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (100, 1023)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (100, 1024)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (100, 1025)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (100, 1026)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (100, 1027)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (100, 1028)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (100, 1029)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (100, 1030)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (101, 1031)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (101, 1032)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (101, 1033)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (101, 1034)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (101, 1035)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (101, 1036)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (101, 1037)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (101, 1038)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (101, 1039)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (101, 1040)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (101, 1041)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (101, 1042)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (102, 1043)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (102, 1044)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (102, 1045)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (102, 1046)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (102, 1047)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (102, 1048)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (102, 1049)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (102, 1050)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (102, 1051)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (102, 1052)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (102, 1053)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (102, 1054)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (103, 1055)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (103, 1056)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (103, 1057)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (103, 1058)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (103, 1059)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (103, 1060)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (103, 1061)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (103, 1062)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (103, 1063)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (103, 1064)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (103, 1065)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (103, 1066)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (104, 1067)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (104, 1068)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (104, 1069)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (104, 1070)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (104, 1071)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (104, 1072)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (104, 1073)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (104, 1074)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (104, 1075)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (104, 1076)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (104, 1077)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (104, 1078)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (105, 1079)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (105, 1080)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (105, 1081)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (105, 1082)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (105, 1083)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (105, 1084)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (105, 1085)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (105, 1086)
GO
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (105, 1087)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (105, 1088)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (105, 1089)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (105, 1090)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (106, 1091)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (106, 1092)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (106, 1093)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (106, 1094)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (106, 1095)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (106, 1096)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (106, 1097)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (106, 1098)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (106, 1099)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (106, 1100)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (106, 1101)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (106, 1102)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (107, 1103)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (107, 1104)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (107, 1105)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (107, 1106)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (107, 1107)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (107, 1108)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (107, 1109)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (107, 1110)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (107, 1111)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (107, 1112)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (107, 1113)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (107, 1114)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (108, 1115)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (108, 1116)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (108, 1117)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (108, 1118)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (108, 1119)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (108, 1120)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (108, 1121)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (108, 1122)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (108, 1123)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (108, 1124)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (108, 1125)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (108, 1126)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (109, 1127)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (109, 1128)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (109, 1129)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (109, 1130)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (109, 1131)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (109, 1132)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (109, 1133)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (109, 1134)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (109, 1135)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (109, 1136)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (109, 1137)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (109, 1138)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (110, 1139)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (110, 1140)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (110, 1141)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (110, 1142)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (110, 1143)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (110, 1144)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (110, 1145)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (110, 1146)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (110, 1147)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (110, 1148)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (110, 1149)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (110, 1150)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (111, 1151)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (111, 1152)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (111, 1153)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (111, 1154)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (111, 1155)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (111, 1156)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (111, 1157)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (111, 1158)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (111, 1159)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (111, 1160)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (111, 1161)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (111, 1162)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (112, 1163)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (112, 1164)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (112, 1165)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (112, 1166)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (112, 1167)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (112, 1168)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (112, 1169)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (112, 1170)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (112, 1171)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (112, 1172)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (112, 1173)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (112, 1174)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (113, 1177)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (113, 1178)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (113, 1179)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (113, 1180)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (113, 1181)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (113, 1182)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (113, 1183)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (113, 1184)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (113, 1185)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (113, 1186)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (114, 1187)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (114, 1188)
GO
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (114, 1189)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (114, 1190)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (114, 1191)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (114, 1192)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (114, 1193)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (114, 1194)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (27, 386)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (113, 1175)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (113, 1176)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (114, 1195)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (114, 1196)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (114, 1197)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (114, 1198)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (115, 1199)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (115, 1200)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (115, 1201)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (115, 1202)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (115, 1203)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (115, 1204)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (115, 1205)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (115, 1206)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (115, 1207)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (115, 1208)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (115, 1209)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (115, 1210)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (116, 1211)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (116, 1212)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (116, 1213)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (116, 1214)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (116, 1215)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (116, 1216)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (116, 1217)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (116, 1218)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (116, 1219)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (116, 1220)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (116, 1221)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (116, 1222)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (117, 1223)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (117, 1224)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (117, 1225)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (117, 1226)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (117, 1227)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (117, 1228)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (117, 1229)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (117, 1230)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (117, 1231)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (117, 1232)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (117, 1233)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (117, 1234)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (118, 1235)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (118, 1236)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (118, 1237)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (118, 1238)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (118, 1239)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (118, 1240)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (118, 1241)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (118, 1242)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (118, 1243)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (118, 1244)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (118, 1245)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (118, 1246)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (118, 1247)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (119, 1248)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (119, 1249)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (119, 1250)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (119, 1251)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (119, 1252)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (119, 1253)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (119, 1254)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (119, 1255)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (119, 1256)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (119, 1257)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (119, 1258)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (119, 1259)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (120, 1260)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (120, 1261)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (120, 1262)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (120, 1263)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (120, 1264)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (120, 1265)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (120, 1266)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (120, 1267)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (120, 1268)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (120, 1269)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (120, 1270)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (120, 1271)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (121, 1272)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (121, 1273)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (121, 1274)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (121, 1275)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (121, 1276)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (121, 1277)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (121, 1278)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (121, 1279)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (121, 1280)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (121, 1281)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (121, 1282)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (121, 1283)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (122, 1284)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (122, 1285)
GO
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (122, 1286)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (122, 1287)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (122, 1288)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (122, 1289)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (122, 1290)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (122, 1291)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (122, 1292)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (122, 1293)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (122, 1294)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (122, 1295)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (123, 1303)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (123, 1304)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (123, 1305)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (123, 1306)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (123, 1307)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (123, 1308)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (123, 1309)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (123, 1310)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (123, 1311)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (123, 1312)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (123, 1313)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (123, 1314)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (123, 1315)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (124, 1316)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (124, 1317)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (124, 1318)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (124, 1319)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (124, 1320)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (124, 1321)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (124, 1322)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (124, 1323)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (124, 1324)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (124, 1325)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (124, 1326)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (124, 1327)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (124, 1328)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (125, 1329)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (125, 1330)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (125, 1331)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (125, 1332)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (125, 1333)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (125, 1334)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (125, 1335)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (125, 1336)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (125, 1337)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (125, 1338)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (125, 1339)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (125, 1340)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (125, 1341)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (126, 1342)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (126, 1343)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (126, 1344)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (126, 1345)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (126, 1346)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (126, 1347)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (126, 1348)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (126, 1349)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (126, 1350)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (126, 1351)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (126, 1352)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (126, 1353)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (126, 1354)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (127, 1355)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (127, 1356)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (127, 1357)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (127, 1358)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (127, 1359)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (127, 1360)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (127, 1361)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (127, 1362)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (127, 1363)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (127, 1364)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (127, 1365)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (127, 1366)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (127, 1367)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (128, 1368)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (128, 1369)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (128, 1370)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (128, 1371)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (128, 1372)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (128, 1373)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (128, 1374)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (128, 1375)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (128, 1376)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (128, 1377)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (128, 1378)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (128, 1379)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (128, 1380)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (129, 1381)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (129, 1382)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (129, 1383)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (129, 1384)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (129, 1385)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (129, 1386)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (129, 1387)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (129, 1388)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (129, 1389)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (129, 1390)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (129, 1391)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (129, 1392)
GO
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (129, 1393)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (130, 1394)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (130, 1395)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (130, 1396)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (130, 1397)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (130, 1398)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (130, 1399)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (130, 1400)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (130, 1401)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (130, 1402)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (130, 1403)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (130, 1404)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (130, 1405)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (130, 1406)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (131, 1407)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (131, 1408)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (131, 1409)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (131, 1410)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (131, 1411)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (131, 1412)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (131, 1413)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (131, 1414)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (131, 1415)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (131, 1416)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (131, 1417)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (131, 1418)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (131, 1419)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (132, 1420)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (132, 1421)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (132, 1422)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (132, 1423)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (132, 1424)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (132, 1425)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (132, 1426)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (132, 1427)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (132, 1428)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (132, 1429)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (132, 1430)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (132, 1431)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (132, 1432)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (133, 1433)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (133, 1434)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (133, 1435)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (133, 1436)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (133, 1437)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (133, 1438)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (133, 1439)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (133, 1440)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (133, 1441)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (133, 1442)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (133, 1443)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (133, 1444)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (133, 1445)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (134, 1446)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (134, 1447)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (134, 1448)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (134, 1449)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (134, 1450)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (134, 1451)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (134, 1452)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (134, 1453)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (134, 1454)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (134, 1455)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (134, 1456)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (134, 1457)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (135, 1494)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (135, 1495)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (135, 1496)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (135, 1497)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (135, 1498)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (135, 1499)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (135, 1500)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (136, 1501)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (136, 1502)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (136, 1503)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (136, 1504)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (136, 1505)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (136, 1506)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (136, 1507)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (137, 1508)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (137, 1509)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (137, 1510)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (137, 1511)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (137, 1512)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (137, 1513)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (137, 1514)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (144, 1562)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (144, 1563)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (144, 1564)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (144, 1565)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (144, 1566)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (145, 1567)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (145, 1568)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (145, 1569)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (145, 1570)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (145, 1571)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (146, 1572)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (146, 1573)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (146, 1574)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (146, 1575)
GO
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (146, 1576)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (147, 1577)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (147, 1578)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (147, 1579)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (147, 1580)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (147, 1581)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (148, 1582)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (158, 1632)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (158, 1633)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (158, 1634)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (158, 1635)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (158, 1636)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (159, 1637)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (159, 1638)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (159, 1639)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (159, 1640)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (159, 1641)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (160, 1642)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (160, 1643)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (160, 1644)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (160, 1645)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (160, 1646)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (161, 1647)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (161, 1648)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (161, 1649)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (161, 1650)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (161, 1651)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (162, 1652)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (162, 1653)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (162, 1654)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (162, 1655)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (162, 1656)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (163, 1657)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (163, 1658)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (163, 1659)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (163, 1660)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (163, 1661)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (164, 1678)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (164, 1679)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (164, 1680)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (164, 1681)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (164, 1682)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (164, 1683)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (164, 1684)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (164, 1685)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (164, 1686)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (164, 1687)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (164, 1688)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (164, 1689)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (165, 1690)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (165, 1691)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (165, 1692)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (165, 1693)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (165, 1694)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (165, 1695)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (165, 1696)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (165, 1697)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (165, 1698)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (165, 1699)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (165, 1700)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (165, 1701)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (166, 1702)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (166, 1703)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (166, 1704)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (166, 1705)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (166, 1706)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (166, 1707)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (166, 1708)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (166, 1709)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (166, 1710)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (166, 1711)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (166, 1712)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (166, 1713)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (167, 1714)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (167, 1716)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (167, 1717)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (167, 1718)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (167, 1719)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (167, 1720)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (167, 1721)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (167, 1722)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (167, 1723)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (167, 1724)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (167, 1725)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (168, 1726)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (168, 1727)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (168, 1728)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (168, 1729)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (168, 1730)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (168, 1731)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (168, 1732)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (168, 1733)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (168, 1734)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (168, 1735)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (168, 1736)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (168, 1737)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (169, 1738)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (169, 1739)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (169, 1740)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (169, 1741)
GO
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (169, 1742)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (169, 1743)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (169, 1744)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (169, 1745)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (169, 1746)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (169, 1747)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (169, 1748)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (169, 1749)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (170, 1750)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (170, 1751)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (170, 1752)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (170, 1753)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (170, 1754)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (170, 1755)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (170, 1756)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (170, 1757)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (170, 1758)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (170, 1759)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (170, 1760)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (170, 1761)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (171, 1762)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (171, 1763)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (171, 1764)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (171, 1765)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (171, 1766)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (171, 1767)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (171, 1768)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (171, 1769)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (171, 1770)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (171, 1771)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (171, 1772)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (171, 1773)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (172, 1774)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (172, 1775)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (172, 1776)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (172, 1777)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (172, 1778)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (172, 1779)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (172, 1780)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (172, 1781)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (172, 1782)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (172, 1783)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (172, 1784)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (172, 1785)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (173, 1786)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (173, 1787)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (173, 1788)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (173, 1789)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (173, 1790)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (173, 1791)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (173, 1792)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (173, 1793)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (173, 1794)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (173, 1795)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (173, 1796)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (173, 1797)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (174, 1798)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (174, 1799)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (174, 1800)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (43, 464)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (43, 465)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (43, 466)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (43, 467)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (43, 468)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (44, 469)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (44, 470)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (44, 471)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (44, 472)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (44, 473)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (45, 474)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (45, 475)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (45, 476)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (45, 477)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (45, 478)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (46, 479)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (46, 480)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (46, 481)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (46, 482)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (46, 483)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (47, 484)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (47, 485)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (47, 486)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (47, 487)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (47, 488)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (48, 489)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (48, 490)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (48, 491)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (48, 492)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (48, 493)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (49, 494)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (49, 495)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (49, 496)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (49, 497)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (49, 498)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (50, 499)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (50, 500)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (50, 501)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (50, 502)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (50, 503)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (51, 504)
GO
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (51, 505)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (51, 506)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (51, 507)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (51, 508)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (52, 509)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (52, 510)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (52, 511)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (52, 512)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (52, 513)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (53, 514)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (53, 515)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (53, 516)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (53, 517)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (53, 518)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (54, 519)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (54, 520)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (54, 521)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (54, 522)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (54, 523)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (55, 524)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (55, 525)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (55, 526)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (55, 527)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (55, 528)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (56, 529)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (56, 530)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (56, 531)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (56, 532)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (56, 533)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (57, 534)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (57, 535)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (57, 536)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (57, 537)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (57, 538)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (58, 539)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (58, 540)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (58, 541)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (58, 542)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (58, 543)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (138, 1515)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (138, 1516)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (138, 1517)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (138, 1518)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (138, 1519)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (138, 1520)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (138, 1521)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (139, 1522)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (139, 1523)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (139, 1524)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (139, 1525)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (139, 1526)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (139, 1527)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (139, 1528)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (140, 1529)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (140, 1530)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (140, 1531)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (140, 1532)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (140, 1533)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (140, 1534)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (140, 1535)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (141, 1536)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (141, 1537)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (141, 1538)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (141, 1539)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (141, 1540)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (141, 1541)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (141, 1542)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (142, 1543)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (142, 1544)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (142, 1545)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (142, 1546)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (142, 1547)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (142, 1548)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (142, 1549)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (143, 1550)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (143, 1551)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (143, 1552)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (143, 1553)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (143, 1554)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (143, 1555)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (148, 1583)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (154, 1612)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (154, 1613)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (154, 1614)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (154, 1615)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (154, 1616)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (155, 1617)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (155, 1618)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (155, 1619)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (155, 1620)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (155, 1621)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (156, 1622)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (156, 1623)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (156, 1624)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (156, 1625)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (156, 1626)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (157, 1627)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (157, 1628)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (157, 1629)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (157, 1630)
GO
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (157, 1631)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (167, 1715)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (174, 1801)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (174, 1802)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (174, 1803)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (174, 1804)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (174, 1805)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (174, 1806)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (174, 1807)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (174, 1808)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (174, 1809)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (175, 1810)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (175, 1811)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (175, 1812)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (175, 1813)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (175, 1814)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (175, 1815)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (175, 1816)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (175, 1817)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (175, 1818)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (175, 1819)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (175, 1820)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (175, 1821)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (176, 1822)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (176, 1823)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (176, 1824)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (176, 1825)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (176, 1826)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (176, 1827)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (176, 1828)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (176, 1829)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (176, 1830)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (176, 1831)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (176, 1832)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (176, 1833)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (177, 1846)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (177, 1847)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (177, 1848)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (177, 1849)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (177, 1850)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (177, 1851)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (177, 1852)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (177, 1853)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (177, 1854)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (177, 1855)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (177, 1856)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (177, 1857)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (177, 1858)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (177, 1859)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (177, 1860)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (177, 1861)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (177, 1862)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (177, 1863)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (177, 1864)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (177, 1865)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (177, 1866)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (177, 1867)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (177, 1868)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (177, 1869)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (177, 1870)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (177, 1871)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (177, 1872)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (177, 1873)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (177, 1874)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (177, 1875)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (177, 1876)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (177, 1877)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (177, 1878)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (177, 1879)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (177, 1880)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (177, 1881)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (177, 1882)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (177, 1883)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (177, 1884)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (177, 1885)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (177, 1886)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (177, 1887)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (177, 1888)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (177, 1889)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (177, 1890)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (177, 1891)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (177, 1892)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (177, 1893)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (177, 1894)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (177, 1895)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (177, 1896)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (177, 1897)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (178, 1898)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (178, 1899)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (178, 1900)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (178, 1901)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (178, 1902)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (178, 1903)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (178, 1904)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (178, 1905)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (178, 1906)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (178, 1907)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (178, 1908)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (178, 1909)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (178, 1910)
GO
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (178, 1911)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (178, 1912)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (178, 1913)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (178, 1914)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (178, 1915)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (178, 1916)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (178, 1917)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (178, 1918)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (178, 1919)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (178, 1920)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (178, 1921)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (178, 1922)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (178, 1923)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (178, 1924)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (178, 1925)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (178, 1926)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (178, 1927)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (178, 1928)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (178, 1929)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (178, 1930)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (178, 1931)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (178, 1932)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (178, 1933)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (178, 1934)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (178, 1935)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (178, 1936)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (178, 1937)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (178, 1938)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (178, 1939)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (178, 1940)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (178, 1941)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (178, 1942)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (178, 1943)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (178, 1944)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (178, 1945)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (178, 1946)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (178, 1947)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (178, 1948)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (178, 1949)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (178, 1950)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (178, 1951)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (178, 1952)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (178, 1953)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (178, 1954)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (178, 1955)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (178, 1956)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (178, 1957)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (178, 1958)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (178, 1959)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (178, 1960)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (178, 1961)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (178, 1962)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (179, 1963)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (179, 1964)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (179, 1965)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (179, 1966)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (179, 1967)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (179, 1968)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (179, 1969)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (179, 1970)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (179, 1971)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (179, 1972)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (179, 1973)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (179, 1974)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (179, 1975)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (179, 1976)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (179, 1977)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (179, 1978)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (179, 1979)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (179, 1980)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (179, 1981)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (179, 1982)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (179, 1983)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (179, 1984)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (179, 1985)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (179, 1986)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (179, 1987)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (179, 1988)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (179, 1989)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (179, 1990)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (179, 1991)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (179, 1992)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (179, 1993)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (179, 1994)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (179, 1995)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (179, 1996)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (179, 1997)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (179, 1998)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (179, 1999)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (179, 2000)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (179, 2001)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (179, 2002)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (179, 2003)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (179, 2004)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (180, 2033)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (180, 2034)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (180, 2035)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (180, 2036)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (180, 2037)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (181, 2039)
GO
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (181, 2040)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (181, 2041)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (181, 2042)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (181, 2043)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (181, 2044)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (181, 2045)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (181, 2046)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (181, 2047)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (182, 2048)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (183, 2059)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (183, 2060)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (183, 2061)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (183, 2062)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (183, 2063)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (183, 2064)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (183, 2065)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (183, 2066)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (183, 2067)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (183, 2068)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (183, 2069)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (183, 2070)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (184, 2071)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (184, 2072)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (184, 2073)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (184, 2074)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (184, 2075)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (184, 2076)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (184, 2077)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (184, 2078)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (184, 2079)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (184, 2080)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (184, 2081)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (184, 2082)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (185, 2083)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (185, 2084)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (185, 2085)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (185, 2086)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (185, 2087)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (185, 2088)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (185, 2089)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (185, 2090)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (185, 2091)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (185, 2092)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (185, 2093)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (186, 2094)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (186, 2095)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (186, 2096)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (186, 2097)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (186, 2098)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (186, 2099)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (186, 2100)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (186, 2101)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (186, 2102)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (186, 2103)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (186, 2104)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (187, 2127)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (187, 2128)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (187, 2129)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (187, 2130)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (187, 2131)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (187, 2132)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (187, 2133)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (187, 2134)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (187, 2135)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (187, 2136)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (187, 2137)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (187, 2138)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (206, 2370)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (206, 2371)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (206, 2372)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (206, 2373)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (206, 2374)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (206, 2375)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (206, 2376)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (206, 2377)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (206, 2378)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (207, 2379)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (207, 2380)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (207, 2381)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (207, 2382)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (207, 2383)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (207, 2384)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (207, 2385)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (207, 2386)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (207, 2387)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (208, 2388)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (208, 2389)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (208, 2390)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (208, 2391)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (208, 2392)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (208, 2393)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (208, 2394)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (208, 2395)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (208, 2396)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (210, 2598)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (210, 2599)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (210, 2600)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (210, 2601)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (210, 2602)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (211, 2603)
GO
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (211, 2604)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (211, 2605)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (211, 2606)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (211, 2607)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (212, 2608)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (212, 2609)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (212, 2610)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (212, 2611)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (212, 2612)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (212, 2613)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (213, 2614)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (213, 2615)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (148, 1584)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (148, 1585)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (148, 1586)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (149, 1587)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (149, 1588)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (149, 1589)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (149, 1590)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (149, 1591)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (152, 1602)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (152, 1603)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (152, 1604)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (152, 1605)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (152, 1606)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (153, 1607)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (153, 1608)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (153, 1609)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (153, 1610)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (153, 1611)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (182, 2049)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (188, 2139)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (188, 2140)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (213, 2616)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (213, 2617)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (213, 2618)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (214, 2619)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (214, 2620)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (214, 2621)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (214, 2622)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (214, 2623)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (215, 2624)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (215, 2625)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (215, 2626)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (215, 2627)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (215, 2628)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (216, 2629)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (216, 2630)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (216, 2631)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (216, 2632)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (216, 2633)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (217, 2634)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (217, 2635)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (217, 2636)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (217, 2637)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (217, 2638)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (218, 2639)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (218, 2640)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (218, 2641)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (218, 2642)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (218, 2643)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (219, 2644)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (219, 2645)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (219, 2646)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (219, 2647)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (219, 2648)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (220, 2649)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (220, 2650)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (220, 2651)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (220, 2652)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (220, 2653)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (221, 2654)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (221, 2655)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (221, 2656)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (221, 2657)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (221, 2658)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (222, 2659)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (222, 2660)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (222, 2661)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (222, 2662)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (222, 2663)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (223, 2699)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (223, 2700)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (223, 2701)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (223, 2702)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (223, 2703)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (224, 2704)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (224, 2705)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (224, 2706)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (224, 2707)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (224, 2708)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (225, 2709)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (225, 2710)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (225, 2711)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (225, 2712)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (225, 2713)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (226, 2714)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (226, 2715)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (226, 2716)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (226, 2717)
GO
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (226, 2718)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (227, 2719)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (227, 2720)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (227, 2721)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (227, 2722)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (227, 2723)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (228, 2724)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (228, 2725)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (228, 2726)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (228, 2727)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (228, 2728)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (229, 2729)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (229, 2730)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (229, 2731)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (229, 2732)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (229, 2733)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (230, 2734)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (230, 2735)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (230, 2736)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (230, 2737)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (230, 2738)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (231, 2739)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (231, 2740)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (231, 2741)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (231, 2742)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (231, 2743)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (232, 2744)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (232, 2745)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (232, 2746)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (232, 2747)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (232, 2748)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (233, 2784)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (233, 2785)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (233, 2786)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (233, 2787)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (233, 2788)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (233, 2789)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (233, 2790)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (233, 2791)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (233, 2792)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (233, 2793)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (234, 2794)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (234, 2795)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (234, 2796)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (234, 2797)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (234, 2798)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (234, 2799)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (234, 2800)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (234, 2801)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (234, 2802)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (234, 2803)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (234, 2804)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (234, 2805)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (235, 2806)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (235, 2807)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (235, 2808)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (235, 2809)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (235, 2810)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (235, 2811)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (235, 2812)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (235, 2813)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (235, 2814)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (235, 2815)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (235, 2816)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (235, 2817)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (236, 2818)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (236, 2819)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (236, 2820)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (236, 2821)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (236, 2822)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (236, 2823)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (236, 2824)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (236, 2825)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (236, 2826)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (236, 2827)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (236, 2828)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (236, 2829)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (237, 2830)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (237, 2831)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (237, 2832)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (237, 2833)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (237, 2834)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (237, 2835)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (237, 2836)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (237, 2837)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (237, 2838)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (237, 2839)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (237, 2840)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (237, 2841)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (238, 2842)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (238, 2843)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (238, 2844)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (238, 2845)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (238, 2846)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (238, 2847)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (238, 2848)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (238, 2849)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (238, 2850)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (238, 2851)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (238, 2852)
GO
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (238, 2853)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (239, 2854)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (239, 2855)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (239, 2856)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (239, 2857)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (239, 2858)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (239, 2859)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (239, 2860)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (239, 2861)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (239, 2862)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (239, 2863)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (239, 2864)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (239, 2865)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (240, 2866)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (240, 2867)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (240, 2868)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (240, 2869)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (240, 2870)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (240, 2871)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (240, 2872)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (240, 2873)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (240, 2874)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (240, 2875)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (240, 2876)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (240, 2877)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (241, 2878)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (241, 2879)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (241, 2880)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (241, 2881)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (241, 2882)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (241, 2883)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (241, 2884)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (241, 2885)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (241, 2886)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (241, 2887)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (241, 2888)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (241, 2889)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (242, 2890)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (242, 2891)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (242, 2892)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (242, 2893)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (242, 2894)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (242, 2895)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (242, 2896)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (242, 2897)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (242, 2898)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (242, 2899)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (243, 2900)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (243, 2901)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (243, 2902)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (243, 2903)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (243, 2904)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (243, 2905)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (243, 2906)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (243, 2907)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (243, 2908)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (243, 2909)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (244, 2910)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (244, 2911)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (244, 2912)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (244, 2913)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (244, 2914)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (244, 2915)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (244, 2916)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (244, 2917)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (244, 2918)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (244, 2919)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (244, 2920)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (244, 2921)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (244, 2922)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (245, 2923)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (245, 2924)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (245, 2925)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (245, 2926)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (245, 2927)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (245, 2928)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (245, 2929)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (245, 2930)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (245, 2931)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (245, 2932)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (245, 2933)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (245, 2934)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (245, 2935)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (246, 2936)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (246, 2937)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (246, 2938)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (246, 2939)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (246, 2940)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (246, 2941)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (246, 2942)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (246, 2943)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (246, 2944)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (246, 2945)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (246, 2946)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (246, 2947)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (246, 2948)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (247, 2949)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (247, 2950)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (247, 2951)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (247, 2952)
GO
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (247, 2953)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (247, 2954)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (247, 2955)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (247, 2956)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (247, 2957)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (247, 2958)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (247, 2959)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (247, 2960)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (247, 2961)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (248, 2962)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (248, 2963)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (248, 2964)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (248, 2965)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (248, 2966)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (248, 2967)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (248, 2968)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (248, 2969)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (248, 2970)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (248, 2971)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (248, 2972)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (248, 2973)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (248, 2974)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (150, 1592)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (150, 1593)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (150, 1594)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (150, 1595)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (150, 1596)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (151, 1597)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (151, 1598)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (151, 1599)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (151, 1600)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (151, 1601)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (209, 2397)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (209, 2398)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (209, 2399)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (209, 2400)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (209, 2401)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (209, 2402)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (209, 2403)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (209, 2404)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (209, 2405)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (182, 2050)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (182, 2051)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (182, 2052)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (182, 2053)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (182, 2054)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (182, 2055)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (182, 2056)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (182, 2057)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (182, 2058)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (188, 2141)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (188, 2142)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (188, 2143)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (188, 2144)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (188, 2145)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (188, 2146)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (188, 2147)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (188, 2148)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (188, 2149)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (188, 2150)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (189, 2151)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (189, 2152)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (189, 2153)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (189, 2154)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (189, 2155)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (189, 2156)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (189, 2157)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (189, 2158)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (189, 2159)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (189, 2160)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (189, 2161)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (189, 2162)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (190, 2163)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (190, 2164)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (190, 2165)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (190, 2166)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (190, 2167)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (190, 2168)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (190, 2169)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (190, 2170)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (190, 2171)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (190, 2172)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (190, 2173)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (190, 2174)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (191, 2175)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (191, 2176)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (191, 2177)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (191, 2178)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (191, 2179)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (191, 2180)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (191, 2181)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (191, 2182)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (191, 2183)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (191, 2184)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (191, 2185)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (191, 2186)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (192, 2187)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (192, 2188)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (192, 2189)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (192, 2190)
GO
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (192, 2191)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (192, 2192)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (192, 2193)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (192, 2194)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (192, 2195)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (192, 2196)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (192, 2197)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (192, 2198)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (193, 2199)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (193, 2200)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (193, 2201)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (193, 2202)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (193, 2203)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (193, 2204)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (193, 2205)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (193, 2206)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (193, 2207)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (193, 2208)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (193, 2209)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (193, 2210)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (194, 2211)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (194, 2212)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (194, 2213)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (194, 2214)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (194, 2215)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (194, 2216)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (194, 2217)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (194, 2218)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (194, 2219)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (194, 2220)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (194, 2221)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (194, 2222)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (195, 2223)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (195, 2224)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (195, 2225)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (195, 2226)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (195, 2227)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (195, 2228)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (195, 2229)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (195, 2230)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (195, 2231)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (195, 2232)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (195, 2233)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (195, 2234)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (196, 2235)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (196, 2236)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (196, 2237)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (196, 2238)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (196, 2239)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (196, 2240)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (196, 2241)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (196, 2242)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (196, 2243)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (196, 2244)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (196, 2245)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (196, 2246)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (197, 2247)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (197, 2248)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (197, 2249)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (197, 2250)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (197, 2251)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (197, 2252)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (197, 2253)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (197, 2254)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (197, 2255)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (197, 2256)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (197, 2257)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (197, 2258)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (198, 2259)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (198, 2260)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (198, 2261)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (198, 2262)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (198, 2263)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (198, 2264)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (198, 2265)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (198, 2266)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (198, 2267)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (198, 2268)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (198, 2269)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (198, 2270)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (199, 2271)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (199, 2272)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (199, 2273)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (199, 2274)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (199, 2275)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (199, 2276)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (199, 2277)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (199, 2278)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (199, 2279)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (199, 2280)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (199, 2281)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (199, 2282)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (200, 2283)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (200, 2284)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (200, 2285)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (200, 2286)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (200, 2287)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (200, 2288)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (200, 2289)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (200, 2290)
GO
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (200, 2291)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (200, 2292)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (200, 2293)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (200, 2294)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (201, 2295)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (201, 2296)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (201, 2297)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (201, 2298)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (201, 2299)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (201, 2300)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (201, 2301)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (201, 2302)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (201, 2303)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (201, 2304)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (201, 2305)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (201, 2306)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (202, 2307)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (202, 2308)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (202, 2309)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (202, 2310)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (202, 2311)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (202, 2312)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (202, 2313)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (202, 2314)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (202, 2315)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (202, 2316)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (202, 2317)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (202, 2318)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (203, 2319)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (203, 2320)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (203, 2321)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (203, 2322)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (203, 2323)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (203, 2324)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (203, 2325)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (203, 2326)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (203, 2327)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (203, 2328)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (203, 2329)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (203, 2330)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (204, 2331)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (204, 2332)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (204, 2333)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (204, 2334)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (204, 2335)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (204, 2336)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (204, 2337)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (204, 2338)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (204, 2339)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (204, 2340)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (204, 2341)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (204, 2342)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (205, 2343)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (205, 2344)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (205, 2345)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (205, 2346)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (205, 2347)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (205, 2348)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (205, 2349)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (205, 2350)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (205, 2351)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (205, 2352)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (205, 2353)
INSERT [dbo].[programWorkshops] ([programId], [workshopId]) VALUES (205, 2354)
