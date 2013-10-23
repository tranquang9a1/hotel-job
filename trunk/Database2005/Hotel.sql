USE [Hotel]
GO
/****** Object:  Table [dbo].[Companies]    Script Date: 10/23/2013 13:12:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Companies](
	[companyID] [nvarchar](5) NOT NULL,
	[companyName] [nvarchar](50) NOT NULL,
	[information] [nvarchar](200) NULL,
	[address] [nvarchar](200) NULL,
	[contact] [nvarchar](200) NOT NULL,
 CONSTRAINT [PK_Companies] PRIMARY KEY CLUSTERED 
(
	[companyID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Areas]    Script Date: 10/23/2013 13:12:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Areas](
	[areaID] [nvarchar](5) NOT NULL,
	[areaName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Areas] PRIMARY KEY CLUSTERED 
(
	[areaID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Time]    Script Date: 10/23/2013 13:12:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Time](
	[timeID] [nvarchar](5) NOT NULL,
	[timeInfo] [nvarchar](200) NOT NULL,
 CONSTRAINT [PK_Time] PRIMARY KEY CLUSTERED 
(
	[timeID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Positions]    Script Date: 10/23/2013 13:12:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Positions](
	[positionID] [nvarchar](5) NOT NULL,
	[positionName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Positions] PRIMARY KEY CLUSTERED 
(
	[positionID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Places]    Script Date: 10/23/2013 13:12:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Places](
	[placeID] [nvarchar](5) NOT NULL,
	[placeName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Places] PRIMARY KEY CLUSTERED 
(
	[placeID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Job]    Script Date: 10/23/2013 13:12:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Job](
	[jobID] [nvarchar](5) NOT NULL,
	[jobName] [nvarchar](50) NULL,
	[salary] [nvarchar](50) NULL,
	[description] [nvarchar](50) NULL,
	[requied] [nvarchar](50) NULL,
	[deadline] [datetime] NULL,
	[areaID] [nvarchar](5) NULL,
	[number] [int] NULL,
	[companyID] [nvarchar](5) NULL,
	[placeID] [nvarchar](5) NULL,
	[positionID] [nvarchar](5) NULL,
	[timeID] [nvarchar](5) NULL,
 CONSTRAINT [PK_Job] PRIMARY KEY CLUSTERED 
(
	[jobID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  ForeignKey [FK_Job_Areas]    Script Date: 10/23/2013 13:12:21 ******/
ALTER TABLE [dbo].[Job]  WITH CHECK ADD  CONSTRAINT [FK_Job_Areas] FOREIGN KEY([areaID])
REFERENCES [dbo].[Areas] ([areaID])
GO
ALTER TABLE [dbo].[Job] CHECK CONSTRAINT [FK_Job_Areas]
GO
/****** Object:  ForeignKey [FK_Job_Companies]    Script Date: 10/23/2013 13:12:22 ******/
ALTER TABLE [dbo].[Job]  WITH CHECK ADD  CONSTRAINT [FK_Job_Companies] FOREIGN KEY([companyID])
REFERENCES [dbo].[Companies] ([companyID])
GO
ALTER TABLE [dbo].[Job] CHECK CONSTRAINT [FK_Job_Companies]
GO
/****** Object:  ForeignKey [FK_Job_Places]    Script Date: 10/23/2013 13:12:22 ******/
ALTER TABLE [dbo].[Job]  WITH CHECK ADD  CONSTRAINT [FK_Job_Places] FOREIGN KEY([placeID])
REFERENCES [dbo].[Places] ([placeID])
GO
ALTER TABLE [dbo].[Job] CHECK CONSTRAINT [FK_Job_Places]
GO
/****** Object:  ForeignKey [FK_Job_Positions]    Script Date: 10/23/2013 13:12:22 ******/
ALTER TABLE [dbo].[Job]  WITH CHECK ADD  CONSTRAINT [FK_Job_Positions] FOREIGN KEY([positionID])
REFERENCES [dbo].[Positions] ([positionID])
GO
ALTER TABLE [dbo].[Job] CHECK CONSTRAINT [FK_Job_Positions]
GO
/****** Object:  ForeignKey [FK_Job_Time]    Script Date: 10/23/2013 13:12:22 ******/
ALTER TABLE [dbo].[Job]  WITH CHECK ADD  CONSTRAINT [FK_Job_Time] FOREIGN KEY([timeID])
REFERENCES [dbo].[Time] ([timeID])
GO
ALTER TABLE [dbo].[Job] CHECK CONSTRAINT [FK_Job_Time]
GO
