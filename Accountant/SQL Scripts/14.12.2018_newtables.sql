USE [CableMan]
GO
/****** Object:  Table [dbo].[Roles]    Script Date: 12/14/2018 6:04:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Roles](
	[RoleId] [int] IDENTITY(1,1) NOT NULL,
	[RoleName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Roles] PRIMARY KEY CLUSTERED 
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SuperUser]    Script Date: 12/14/2018 6:04:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SuperUser](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[SuperAdminName] [nvarchar](50) NOT NULL,
	[UserId] [int] NOT NULL,
 CONSTRAINT [PK_SuperUser] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[User]    Script Date: 12/14/2018 6:04:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[User](
	[UserId] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [varchar](100) NOT NULL,
	[IsConsumer] [int] NULL,
	[Password] [varchar](50) NOT NULL,
	[ActivationStartDate] [datetime] NOT NULL,
	[ActivationEndDate] [datetime] NOT NULL,
	[RoleId] [int] NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Roles] ON 

GO
INSERT [dbo].[Roles] ([RoleId], [RoleName]) VALUES (1, N'SuperAdmin')
GO
INSERT [dbo].[Roles] ([RoleId], [RoleName]) VALUES (2, N'Admin')
GO
INSERT [dbo].[Roles] ([RoleId], [RoleName]) VALUES (3, N'User')
GO
INSERT [dbo].[Roles] ([RoleId], [RoleName]) VALUES (4, N'Consumer')
GO
SET IDENTITY_INSERT [dbo].[Roles] OFF
GO
SET IDENTITY_INSERT [dbo].[SuperUser] ON 

GO
INSERT [dbo].[SuperUser] ([Id], [SuperAdminName], [UserId]) VALUES (1, N'Super Admin', 4)
GO
SET IDENTITY_INSERT [dbo].[SuperUser] OFF
GO
SET IDENTITY_INSERT [dbo].[User] ON 

GO
INSERT [dbo].[User] ([UserId], [UserName], [IsConsumer], [Password], [ActivationStartDate], [ActivationEndDate], [RoleId]) VALUES (1, N'sa', 1, N'12345', CAST(N'2018-12-14 00:00:00.000' AS DateTime), CAST(N'9999-12-31 00:00:00.000' AS DateTime), 2)
GO
INSERT [dbo].[User] ([UserId], [UserName], [IsConsumer], [Password], [ActivationStartDate], [ActivationEndDate], [RoleId]) VALUES (3, N'ca', 2, N'12345', CAST(N'2018-12-14 00:00:00.000' AS DateTime), CAST(N'9999-12-31 00:00:00.000' AS DateTime), 4)
GO
INSERT [dbo].[User] ([UserId], [UserName], [IsConsumer], [Password], [ActivationStartDate], [ActivationEndDate], [RoleId]) VALUES (4, N'super', 0, N'12345', CAST(N'2018-12-14 00:00:00.000' AS DateTime), CAST(N'9999-12-31 00:00:00.000' AS DateTime), 1)
GO
SET IDENTITY_INSERT [dbo].[User] OFF
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_User_Role] FOREIGN KEY([RoleId])
REFERENCES [dbo].[Roles] ([RoleId])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_User_Role]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'0 - Super Admin
1 - Owner /Admin
2 - Consumer
3 - Staff' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'User', @level2type=N'COLUMN',@level2name=N'IsConsumer'
GO
