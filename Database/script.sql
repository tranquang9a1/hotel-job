USE [HotelJob]
GO
/****** Object:  Table [dbo].[Companies]    Script Date: 10/31/2013 16:32:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Companies](
	[companyID] [nvarchar](5) NOT NULL,
	[companyName] [nvarchar](50) NOT NULL,
	[information] [nvarchar](200) NULL,
	[address] [nvarchar](200) NULL,
	[contact] [nvarchar](50) NULL,
	[email] [nvarchar](50) NULL,
 CONSTRAINT [PK_Companies] PRIMARY KEY CLUSTERED 
(
	[companyID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Areas]    Script Date: 10/31/2013 16:32:34 ******/
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
/****** Object:  Table [dbo].[Time]    Script Date: 10/31/2013 16:32:34 ******/
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
/****** Object:  Table [dbo].[Positions]    Script Date: 10/31/2013 16:32:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Positions](
	[positionID] [nvarchar](5) NOT NULL,
	[positionName] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_Positions] PRIMARY KEY CLUSTERED 
(
	[positionID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Places]    Script Date: 10/31/2013 16:32:34 ******/
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
/****** Object:  Table [dbo].[Job]    Script Date: 10/31/2013 16:32:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Job](
	[jobID] [int] NOT NULL,
	[jobName] [nvarchar](100) NULL,
	[salary] [nvarchar](100) NULL,
	[description] [nvarchar](1000) NULL,
	[required] [nvarchar](500) NULL,
	[deadline] [datetime] NULL,
	[domainID] [nvarchar](5) NULL,
	[domainName] [nvarchar](50) NULL,
	[number] [int] NULL,
	[companyID] [nvarchar](5) NULL,
	[cityID] [nvarchar](5) NULL,
	[cityName] [nvarchar](50) NULL,
	[positionName] [nvarchar](100) NULL,
	[positionID] [nvarchar](5) NULL,
	[timeID] [nvarchar](5) NULL,
	[timeInfo] [nchar](200) NULL,
 CONSTRAINT [PK_Job] PRIMARY KEY CLUSTERED 
(
	[jobID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  ForeignKey [FK_Job_Areas]    Script Date: 10/31/2013 16:32:34 ******/
ALTER TABLE [dbo].[Job]  WITH CHECK ADD  CONSTRAINT [FK_Job_Areas] FOREIGN KEY([domainID])
REFERENCES [dbo].[Areas] ([areaID])
GO
ALTER TABLE [dbo].[Job] CHECK CONSTRAINT [FK_Job_Areas]
GO
/****** Object:  ForeignKey [FK_Job_Companies]    Script Date: 10/31/2013 16:32:34 ******/
ALTER TABLE [dbo].[Job]  WITH CHECK ADD  CONSTRAINT [FK_Job_Companies] FOREIGN KEY([companyID])
REFERENCES [dbo].[Companies] ([companyID])
GO
ALTER TABLE [dbo].[Job] CHECK CONSTRAINT [FK_Job_Companies]
GO
/****** Object:  ForeignKey [FK_Job_Places]    Script Date: 10/31/2013 16:32:34 ******/
ALTER TABLE [dbo].[Job]  WITH CHECK ADD  CONSTRAINT [FK_Job_Places] FOREIGN KEY([cityID])
REFERENCES [dbo].[Places] ([placeID])
GO
ALTER TABLE [dbo].[Job] CHECK CONSTRAINT [FK_Job_Places]
GO
/****** Object:  ForeignKey [FK_Job_Positions]    Script Date: 10/31/2013 16:32:34 ******/
ALTER TABLE [dbo].[Job]  WITH CHECK ADD  CONSTRAINT [FK_Job_Positions] FOREIGN KEY([positionID])
REFERENCES [dbo].[Positions] ([positionID])
GO
ALTER TABLE [dbo].[Job] CHECK CONSTRAINT [FK_Job_Positions]
GO
/****** Object:  ForeignKey [FK_Job_Time]    Script Date: 10/31/2013 16:32:34 ******/
ALTER TABLE [dbo].[Job]  WITH CHECK ADD  CONSTRAINT [FK_Job_Time] FOREIGN KEY([timeID])
REFERENCES [dbo].[Time] ([timeID])
GO
ALTER TABLE [dbo].[Job] CHECK CONSTRAINT [FK_Job_Time]
GO
