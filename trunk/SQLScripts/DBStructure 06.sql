USE [OpenConfigurator_DEV]
GO
/****** Object:  Table [dbo].[Attribute_Types]    Script Date: 01/05/2012 00:48:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Attribute_Types](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_Attribute_Types] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Attribute_Types] ON
INSERT [dbo].[Attribute_Types] ([ID], [Name]) VALUES (1, N'Constant')
INSERT [dbo].[Attribute_Types] ([ID], [Name]) VALUES (2, N'Dynamic')
INSERT [dbo].[Attribute_Types] ([ID], [Name]) VALUES (3, N'UserInput')
SET IDENTITY_INSERT [dbo].[Attribute_Types] OFF
/****** Object:  Table [dbo].[Attribute_DataTypes]    Script Date: 01/05/2012 00:48:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Attribute_DataTypes](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_Attribute_DataTypes] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Attribute_DataTypes] ON
INSERT [dbo].[Attribute_DataTypes] ([ID], [Name]) VALUES (1, N'Integer')
INSERT [dbo].[Attribute_DataTypes] ([ID], [Name]) VALUES (2, N'Boolean')
INSERT [dbo].[Attribute_DataTypes] ([ID], [Name]) VALUES (3, N'String')
SET IDENTITY_INSERT [dbo].[Attribute_DataTypes] OFF
/****** Object:  Table [dbo].[CompositionRule_Types]    Script Date: 01/05/2012 00:48:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CompositionRule_Types](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_CompositionRule_Types] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[CompositionRule_Types] ON
INSERT [dbo].[CompositionRule_Types] ([ID], [Name]) VALUES (1, N'Dependency')
INSERT [dbo].[CompositionRule_Types] ([ID], [Name]) VALUES (2, N'Mutual Dependency')
INSERT [dbo].[CompositionRule_Types] ([ID], [Name]) VALUES (3, N'Mutual Exclusion')
SET IDENTITY_INSERT [dbo].[CompositionRule_Types] OFF
/****** Object:  Table [dbo].[CustomRule_Types]    Script Date: 01/05/2012 00:48:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CustomRule_Types](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_Rule_Types] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[CustomRule_Types] ON
INSERT [dbo].[CustomRule_Types] ([ID], [Name]) VALUES (1, N'Composition Rules')
INSERT [dbo].[CustomRule_Types] ([ID], [Name]) VALUES (2, N'Consequence Rules')
INSERT [dbo].[CustomRule_Types] ([ID], [Name]) VALUES (3, N'Global Constraints')
SET IDENTITY_INSERT [dbo].[CustomRule_Types] OFF
/****** Object:  Table [dbo].[GroupRelation_Types]    Script Date: 01/05/2012 00:48:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GroupRelation_Types](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[FixedLowerBound] [int] NULL,
	[FixedUpperBound] [int] NULL,
 CONSTRAINT [PK_FeatureGroup_Types] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[GroupRelation_Types] ON
INSERT [dbo].[GroupRelation_Types] ([ID], [Name], [FixedLowerBound], [FixedUpperBound]) VALUES (1, N'OR', 1, NULL)
INSERT [dbo].[GroupRelation_Types] ([ID], [Name], [FixedLowerBound], [FixedUpperBound]) VALUES (2, N'XOR', 1, 1)
INSERT [dbo].[GroupRelation_Types] ([ID], [Name], [FixedLowerBound], [FixedUpperBound]) VALUES (3, N'Custom OR', NULL, NULL)
SET IDENTITY_INSERT [dbo].[GroupRelation_Types] OFF
/****** Object:  Table [dbo].[Users]    Script Date: 01/05/2012 00:48:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Email] [nvarchar](50) NULL,
	[Password] [nvarchar](50) NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Users] ON
INSERT [dbo].[Users] ([ID], [Email], [Password]) VALUES (1, N'Radu', N'hej123!')
SET IDENTITY_INSERT [dbo].[Users] OFF
/****** Object:  Table [dbo].[SelectionStates]    Script Date: 01/05/2012 00:48:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SelectionStates](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_SelectionStates] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[SelectionStates] ON
INSERT [dbo].[SelectionStates] ([ID], [Name]) VALUES (1, N'Selected')
INSERT [dbo].[SelectionStates] ([ID], [Name]) VALUES (2, N'Deselected')
INSERT [dbo].[SelectionStates] ([ID], [Name]) VALUES (3, N'Unselected')
SET IDENTITY_INSERT [dbo].[SelectionStates] OFF
/****** Object:  Table [dbo].[Relation_Types]    Script Date: 01/05/2012 00:48:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Relation_Types](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[FixedLowerBound] [int] NULL,
	[FixedUpperBound] [int] NULL,
 CONSTRAINT [PK_Feature_Types] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Relation_Types] ON
INSERT [dbo].[Relation_Types] ([ID], [Name], [FixedLowerBound], [FixedUpperBound]) VALUES (1, N'Mandatory', 1, 1)
INSERT [dbo].[Relation_Types] ([ID], [Name], [FixedLowerBound], [FixedUpperBound]) VALUES (2, N'Optional', 0, 1)
INSERT [dbo].[Relation_Types] ([ID], [Name], [FixedLowerBound], [FixedUpperBound]) VALUES (3, N'Cloneable', 0, NULL)
SET IDENTITY_INSERT [dbo].[Relation_Types] OFF
/****** Object:  Table [dbo].[Models]    Script Date: 01/05/2012 00:48:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Models](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [int] NOT NULL,
	[Name] [nvarchar](50) NULL,
	[CreatedDate] [datetime] NULL,
	[LastModifiedDate] [datetime] NULL,
 CONSTRAINT [PK_Models] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Models] ON
INSERT [dbo].[Models] ([ID], [UserID], [Name], [CreatedDate], [LastModifiedDate]) VALUES (44, 1, N'Laptop ', CAST(0x00009F8B01446AE7 AS DateTime), CAST(0x00009FCE013A6B80 AS DateTime))
INSERT [dbo].[Models] ([ID], [UserID], [Name], [CreatedDate], [LastModifiedDate]) VALUES (78, 1, N'Bicycle model', CAST(0x00009F8E00B08A24 AS DateTime), CAST(0x00009FCE00E6A081 AS DateTime))
INSERT [dbo].[Models] ([ID], [UserID], [Name], [CreatedDate], [LastModifiedDate]) VALUES (96, 1, N'Vacation model', CAST(0x00009F9000D1D848 AS DateTime), CAST(0x00009FCF0003A1A4 AS DateTime))
INSERT [dbo].[Models] ([ID], [UserID], [Name], [CreatedDate], [LastModifiedDate]) VALUES (111, 1, N'Flyttefirma', CAST(0x00009FCE013AAFB1 AS DateTime), CAST(0x00009FCF00082E6E AS DateTime))
SET IDENTITY_INSERT [dbo].[Models] OFF
/****** Object:  Table [dbo].[GroupRelations]    Script Date: 01/05/2012 00:48:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GroupRelations](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ModelID] [int] NOT NULL,
	[GroupRelationTypeID] [int] NOT NULL,
	[LowerBound] [int] NULL,
	[UpperBound] [int] NULL,
 CONSTRAINT [PK_FeatureGroups] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[GroupRelations] ON
INSERT [dbo].[GroupRelations] ([ID], [ModelID], [GroupRelationTypeID], [LowerBound], [UpperBound]) VALUES (15, 44, 2, 1, 1)
INSERT [dbo].[GroupRelations] ([ID], [ModelID], [GroupRelationTypeID], [LowerBound], [UpperBound]) VALUES (16, 44, 2, 1, 1)
INSERT [dbo].[GroupRelations] ([ID], [ModelID], [GroupRelationTypeID], [LowerBound], [UpperBound]) VALUES (17, 44, 3, 1, 3)
INSERT [dbo].[GroupRelations] ([ID], [ModelID], [GroupRelationTypeID], [LowerBound], [UpperBound]) VALUES (18, 44, 2, 1, 1)
INSERT [dbo].[GroupRelations] ([ID], [ModelID], [GroupRelationTypeID], [LowerBound], [UpperBound]) VALUES (19, 44, 2, 1, 1)
INSERT [dbo].[GroupRelations] ([ID], [ModelID], [GroupRelationTypeID], [LowerBound], [UpperBound]) VALUES (20, 44, 1, 0, 1)
INSERT [dbo].[GroupRelations] ([ID], [ModelID], [GroupRelationTypeID], [LowerBound], [UpperBound]) VALUES (21, 96, 2, 1, 1)
INSERT [dbo].[GroupRelations] ([ID], [ModelID], [GroupRelationTypeID], [LowerBound], [UpperBound]) VALUES (22, 96, 3, 1, 3)
INSERT [dbo].[GroupRelations] ([ID], [ModelID], [GroupRelationTypeID], [LowerBound], [UpperBound]) VALUES (23, 96, 2, 1, 1)
INSERT [dbo].[GroupRelations] ([ID], [ModelID], [GroupRelationTypeID], [LowerBound], [UpperBound]) VALUES (24, 96, 2, 1, 1)
INSERT [dbo].[GroupRelations] ([ID], [ModelID], [GroupRelationTypeID], [LowerBound], [UpperBound]) VALUES (25, 78, 2, 1, 1)
INSERT [dbo].[GroupRelations] ([ID], [ModelID], [GroupRelationTypeID], [LowerBound], [UpperBound]) VALUES (26, 78, 2, 1, 1)
INSERT [dbo].[GroupRelations] ([ID], [ModelID], [GroupRelationTypeID], [LowerBound], [UpperBound]) VALUES (27, 78, 2, 1, 1)
INSERT [dbo].[GroupRelations] ([ID], [ModelID], [GroupRelationTypeID], [LowerBound], [UpperBound]) VALUES (28, 78, 1, 0, 1)
INSERT [dbo].[GroupRelations] ([ID], [ModelID], [GroupRelationTypeID], [LowerBound], [UpperBound]) VALUES (29, 111, 1, 0, 1)
SET IDENTITY_INSERT [dbo].[GroupRelations] OFF
/****** Object:  Table [dbo].[Features]    Script Date: 01/05/2012 00:48:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Features](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ModelID] [int] NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Description] [nvarchar](max) NULL,
	[IsRoot] [bit] NULL,
	[XPos] [float] NULL,
	[YPos] [float] NULL,
 CONSTRAINT [PK_Features] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Features] ON
INSERT [dbo].[Features] ([ID], [ModelID], [Name], [Description], [IsRoot], [XPos], [YPos]) VALUES (74, 44, N'Laptop', NULL, NULL, 885.5, 44.5)
INSERT [dbo].[Features] ([ID], [ModelID], [Name], [Description], [IsRoot], [XPos], [YPos]) VALUES (75, 44, N'Hardware', NULL, NULL, 435.5, 256.5)
INSERT [dbo].[Features] ([ID], [ModelID], [Name], [Description], [IsRoot], [XPos], [YPos]) VALUES (76, 44, N'Software', NULL, NULL, 1327.5, 251.5)
INSERT [dbo].[Features] ([ID], [ModelID], [Name], [Description], [IsRoot], [XPos], [YPos]) VALUES (77, 44, N'Operating System', NULL, NULL, 1373.5, 561.5)
INSERT [dbo].[Features] ([ID], [ModelID], [Name], [Description], [IsRoot], [XPos], [YPos]) VALUES (78, 44, N'Office tools', NULL, NULL, 1538.5, 481.5)
INSERT [dbo].[Features] ([ID], [ModelID], [Name], [Description], [IsRoot], [XPos], [YPos]) VALUES (82, 78, N'Bicycle', NULL, NULL, 830.5, 26.5)
INSERT [dbo].[Features] ([ID], [ModelID], [Name], [Description], [IsRoot], [XPos], [YPos]) VALUES (83, 78, N'Parts', NULL, NULL, 412.5, 293.5)
INSERT [dbo].[Features] ([ID], [ModelID], [Name], [Description], [IsRoot], [XPos], [YPos]) VALUES (84, 78, N'Preferences', NULL, NULL, 1158.5, 225.5)
INSERT [dbo].[Features] ([ID], [ModelID], [Name], [Description], [IsRoot], [XPos], [YPos]) VALUES (90, 78, N'Gear', NULL, NULL, 307.5, 450.5)
INSERT [dbo].[Features] ([ID], [ModelID], [Name], [Description], [IsRoot], [XPos], [YPos]) VALUES (94, 44, N'Monitor', NULL, NULL, 1067.5, 549.5)
INSERT [dbo].[Features] ([ID], [ModelID], [Name], [Description], [IsRoot], [XPos], [YPos]) VALUES (95, 44, N'GPU', NULL, NULL, 147.5, 492.5)
INSERT [dbo].[Features] ([ID], [ModelID], [Name], [Description], [IsRoot], [XPos], [YPos]) VALUES (96, 44, N'Keyboard & Mouse', NULL, NULL, 847.5, 539.5)
INSERT [dbo].[Features] ([ID], [ModelID], [Name], [Description], [IsRoot], [XPos], [YPos]) VALUES (97, 44, N'HDD', NULL, NULL, 294.5, 799.5)
INSERT [dbo].[Features] ([ID], [ModelID], [Name], [Description], [IsRoot], [XPos], [YPos]) VALUES (98, 44, N'CPU', NULL, NULL, 463.5, 545.5)
INSERT [dbo].[Features] ([ID], [ModelID], [Name], [Description], [IsRoot], [XPos], [YPos]) VALUES (99, 44, N'RAM', NULL, NULL, 673.5, 571.5)
INSERT [dbo].[Features] ([ID], [ModelID], [Name], [Description], [IsRoot], [XPos], [YPos]) VALUES (100, 44, N'1 GB Slot', NULL, NULL, 685.5, 658.5)
INSERT [dbo].[Features] ([ID], [ModelID], [Name], [Description], [IsRoot], [XPos], [YPos]) VALUES (101, 44, N'Intel i3', NULL, NULL, 409.5, 916.5)
INSERT [dbo].[Features] ([ID], [ModelID], [Name], [Description], [IsRoot], [XPos], [YPos]) VALUES (102, 44, N'Intel i5', NULL, NULL, 497.5, 954.5)
INSERT [dbo].[Features] ([ID], [ModelID], [Name], [Description], [IsRoot], [XPos], [YPos]) VALUES (103, 44, N'Intel i7', NULL, NULL, 620.5, 948.5)
INSERT [dbo].[Features] ([ID], [ModelID], [Name], [Description], [IsRoot], [XPos], [YPos]) VALUES (104, 44, N'AMD x9', NULL, NULL, 726.5, 915.5)
INSERT [dbo].[Features] ([ID], [ModelID], [Name], [Description], [IsRoot], [XPos], [YPos]) VALUES (105, 44, N'Microsoft Keyboard', NULL, NULL, 816.5, 704.5)
INSERT [dbo].[Features] ([ID], [ModelID], [Name], [Description], [IsRoot], [XPos], [YPos]) VALUES (106, 44, N'Microsoft Mouse', NULL, NULL, 895.5, 743.5)
INSERT [dbo].[Features] ([ID], [ModelID], [Name], [Description], [IsRoot], [XPos], [YPos]) VALUES (107, 44, N'Insurance', NULL, NULL, 893.5, 206.5)
INSERT [dbo].[Features] ([ID], [ModelID], [Name], [Description], [IsRoot], [XPos], [YPos]) VALUES (108, 44, N'Windows XP', NULL, NULL, 1254.5, 765.5)
INSERT [dbo].[Features] ([ID], [ModelID], [Name], [Description], [IsRoot], [XPos], [YPos]) VALUES (109, 44, N'Windows 7', NULL, NULL, 1361.5, 783.5)
INSERT [dbo].[Features] ([ID], [ModelID], [Name], [Description], [IsRoot], [XPos], [YPos]) VALUES (110, 44, N'Complete', NULL, NULL, 795.5, 348.5)
INSERT [dbo].[Features] ([ID], [ModelID], [Name], [Description], [IsRoot], [XPos], [YPos]) VALUES (111, 44, N'Damage', NULL, NULL, 908.5, 364.5)
INSERT [dbo].[Features] ([ID], [ModelID], [Name], [Description], [IsRoot], [XPos], [YPos]) VALUES (112, 44, N'Theft', NULL, NULL, 1027.5, 351.5)
INSERT [dbo].[Features] ([ID], [ModelID], [Name], [Description], [IsRoot], [XPos], [YPos]) VALUES (113, 44, N'Windows Vista', NULL, NULL, 1471.5, 786.5)
INSERT [dbo].[Features] ([ID], [ModelID], [Name], [Description], [IsRoot], [XPos], [YPos]) VALUES (114, 44, N'Linux Debian', NULL, NULL, 1586.5, 764.5)
INSERT [dbo].[Features] ([ID], [ModelID], [Name], [Description], [IsRoot], [XPos], [YPos]) VALUES (115, 44, N'Samsung 19"', NULL, NULL, 981.5, 692.5)
INSERT [dbo].[Features] ([ID], [ModelID], [Name], [Description], [IsRoot], [XPos], [YPos]) VALUES (116, 44, N'Sony 25"', NULL, NULL, 1066.5, 735.5)
INSERT [dbo].[Features] ([ID], [ModelID], [Name], [Description], [IsRoot], [XPos], [YPos]) VALUES (117, 44, N'LG 30"', NULL, NULL, 1153.5, 689.5)
INSERT [dbo].[Features] ([ID], [ModelID], [Name], [Description], [IsRoot], [XPos], [YPos]) VALUES (118, 44, N'Westgate SCSI', NULL, NULL, 230.5, 1025.5)
INSERT [dbo].[Features] ([ID], [ModelID], [Name], [Description], [IsRoot], [XPos], [YPos]) VALUES (119, 44, N'VNI RADX', NULL, NULL, 352.5, 1032.5)
INSERT [dbo].[Features] ([ID], [ModelID], [Name], [Description], [IsRoot], [XPos], [YPos]) VALUES (120, 44, N'Nvidia 5700m', NULL, NULL, 46.5, 725.5)
INSERT [dbo].[Features] ([ID], [ModelID], [Name], [Description], [IsRoot], [XPos], [YPos]) VALUES (121, 44, N'Ati Radeon 5650', NULL, NULL, 169.5, 729.5)
INSERT [dbo].[Features] ([ID], [ModelID], [Name], [Description], [IsRoot], [XPos], [YPos]) VALUES (122, 96, N'Vacation', NULL, NULL, 749.5, 14.5)
INSERT [dbo].[Features] ([ID], [ModelID], [Name], [Description], [IsRoot], [XPos], [YPos]) VALUES (124, 96, N'Destination', NULL, NULL, 404.5, 298.5)
INSERT [dbo].[Features] ([ID], [ModelID], [Name], [Description], [IsRoot], [XPos], [YPos]) VALUES (125, 96, N'Insurance', NULL, NULL, 1368.5, 270.5)
INSERT [dbo].[Features] ([ID], [ModelID], [Name], [Description], [IsRoot], [XPos], [YPos]) VALUES (126, 96, N'Accommodation', NULL, NULL, 668.5, 444.5)
INSERT [dbo].[Features] ([ID], [ModelID], [Name], [Description], [IsRoot], [XPos], [YPos]) VALUES (128, 96, N'Hotel', NULL, NULL, 632.5, 707.5)
INSERT [dbo].[Features] ([ID], [ModelID], [Name], [Description], [IsRoot], [XPos], [YPos]) VALUES (134, 96, N'Thailand', NULL, NULL, 35.5, 494.5)
INSERT [dbo].[Features] ([ID], [ModelID], [Name], [Description], [IsRoot], [XPos], [YPos]) VALUES (135, 96, N'India', NULL, NULL, 168.5, 559.5)
INSERT [dbo].[Features] ([ID], [ModelID], [Name], [Description], [IsRoot], [XPos], [YPos]) VALUES (136, 96, N'Greece', NULL, NULL, 300.5, 587.5)
INSERT [dbo].[Features] ([ID], [ModelID], [Name], [Description], [IsRoot], [XPos], [YPos]) VALUES (137, 96, N'Spain', NULL, NULL, 461.5, 552.5)
INSERT [dbo].[Features] ([ID], [ModelID], [Name], [Description], [IsRoot], [XPos], [YPos]) VALUES (138, 96, N'Travel', NULL, NULL, 1518.5, 479.5)
INSERT [dbo].[Features] ([ID], [ModelID], [Name], [Description], [IsRoot], [XPos], [YPos]) VALUES (139, 96, N'Medical', NULL, NULL, 1389.5, 480.5)
INSERT [dbo].[Features] ([ID], [ModelID], [Name], [Description], [IsRoot], [XPos], [YPos]) VALUES (140, 96, N'Theft', NULL, NULL, 1279.5, 446.5)
INSERT [dbo].[Features] ([ID], [ModelID], [Name], [Description], [IsRoot], [XPos], [YPos]) VALUES (141, 96, N'Hostel', NULL, NULL, 786.5, 704.5)
INSERT [dbo].[Features] ([ID], [ModelID], [Name], [Description], [IsRoot], [XPos], [YPos]) VALUES (142, 96, N'Transportation', NULL, NULL, 899.5, 262.5)
INSERT [dbo].[Features] ([ID], [ModelID], [Name], [Description], [IsRoot], [XPos], [YPos]) VALUES (143, 96, N'Holiday House', NULL, NULL, 901.5, 710.5)
INSERT [dbo].[Features] ([ID], [ModelID], [Name], [Description], [IsRoot], [XPos], [YPos]) VALUES (144, 96, N'Plane', NULL, NULL, 898.5, 412.5)
INSERT [dbo].[Features] ([ID], [ModelID], [Name], [Description], [IsRoot], [XPos], [YPos]) VALUES (145, 96, N'Coach', NULL, NULL, 1113.5, 415.5)
INSERT [dbo].[Features] ([ID], [ModelID], [Name], [Description], [IsRoot], [XPos], [YPos]) VALUES (146, 96, N'Train', NULL, NULL, 1004.5, 449.5)
INSERT [dbo].[Features] ([ID], [ModelID], [Name], [Description], [IsRoot], [XPos], [YPos]) VALUES (147, 78, N'Frame Type', NULL, NULL, 921.5, 427.5)
INSERT [dbo].[Features] ([ID], [ModelID], [Name], [Description], [IsRoot], [XPos], [YPos]) VALUES (148, 78, N'City Bike', NULL, NULL, 720.5, 627.5)
INSERT [dbo].[Features] ([ID], [ModelID], [Name], [Description], [IsRoot], [XPos], [YPos]) VALUES (149, 78, N'Classic', NULL, NULL, 768.5, 670.5)
INSERT [dbo].[Features] ([ID], [ModelID], [Name], [Description], [IsRoot], [XPos], [YPos]) VALUES (150, 78, N'Mountain Bike', NULL, NULL, 824.5, 713.5)
INSERT [dbo].[Features] ([ID], [ModelID], [Name], [Description], [IsRoot], [XPos], [YPos]) VALUES (151, 78, N'Racer bike', NULL, NULL, 895.5, 750.5)
INSERT [dbo].[Features] ([ID], [ModelID], [Name], [Description], [IsRoot], [XPos], [YPos]) VALUES (152, 78, N'Female', NULL, NULL, 1040.5, 689.5)
INSERT [dbo].[Features] ([ID], [ModelID], [Name], [Description], [IsRoot], [XPos], [YPos]) VALUES (153, 78, N'Male', NULL, NULL, 1157.5, 654.5)
INSERT [dbo].[Features] ([ID], [ModelID], [Name], [Description], [IsRoot], [XPos], [YPos]) VALUES (154, 78, N'Height', NULL, NULL, 1443.5, 396.5)
INSERT [dbo].[Features] ([ID], [ModelID], [Name], [Description], [IsRoot], [XPos], [YPos]) VALUES (155, 78, N'150-160', NULL, NULL, 1310.5, 633.5)
INSERT [dbo].[Features] ([ID], [ModelID], [Name], [Description], [IsRoot], [XPos], [YPos]) VALUES (156, 78, N'160-170', NULL, NULL, 1392.5, 670.5)
INSERT [dbo].[Features] ([ID], [ModelID], [Name], [Description], [IsRoot], [XPos], [YPos]) VALUES (157, 78, N'170-180', NULL, NULL, 1482.5, 716.5)
INSERT [dbo].[Features] ([ID], [ModelID], [Name], [Description], [IsRoot], [XPos], [YPos]) VALUES (158, 78, N'180+', NULL, NULL, 1599.5, 706.5)
INSERT [dbo].[Features] ([ID], [ModelID], [Name], [Description], [IsRoot], [XPos], [YPos]) VALUES (159, 78, N'Avg. driving dist.', NULL, NULL, 1187.5, 340.5)
INSERT [dbo].[Features] ([ID], [ModelID], [Name], [Description], [IsRoot], [XPos], [YPos]) VALUES (160, 78, N'Less than 50/week', NULL, NULL, 1136.5, 480.5)
INSERT [dbo].[Features] ([ID], [ModelID], [Name], [Description], [IsRoot], [XPos], [YPos]) VALUES (161, 78, N'More than 50/week', NULL, NULL, 1255.5, 479.5)
INSERT [dbo].[Features] ([ID], [ModelID], [Name], [Description], [IsRoot], [XPos], [YPos]) VALUES (162, 78, N'Extras', NULL, NULL, 1702.5, 220.5)
INSERT [dbo].[Features] ([ID], [ModelID], [Name], [Description], [IsRoot], [XPos], [YPos]) VALUES (163, 78, N'Frame colour', NULL, NULL, 435.5, 448.5)
INSERT [dbo].[Features] ([ID], [ModelID], [Name], [Description], [IsRoot], [XPos], [YPos]) VALUES (164, 96, N'Stars', NULL, NULL, 582.5, 877.5)
INSERT [dbo].[Features] ([ID], [ModelID], [Name], [Description], [IsRoot], [XPos], [YPos]) VALUES (165, 111, N'Sal', NULL, NULL, 403.5, 271.5)
INSERT [dbo].[Features] ([ID], [ModelID], [Name], [Description], [IsRoot], [XPos], [YPos]) VALUES (166, 111, N'New Feature', NULL, NULL, 175.5, 385.5)
INSERT [dbo].[Features] ([ID], [ModelID], [Name], [Description], [IsRoot], [XPos], [YPos]) VALUES (167, 111, N'New Feature', NULL, NULL, 271.5, 461.5)
INSERT [dbo].[Features] ([ID], [ModelID], [Name], [Description], [IsRoot], [XPos], [YPos]) VALUES (168, 111, N'New Feature', NULL, NULL, 401.5, 505.5)
INSERT [dbo].[Features] ([ID], [ModelID], [Name], [Description], [IsRoot], [XPos], [YPos]) VALUES (169, 111, N'New Feature', NULL, NULL, 627.5, 419.5)
INSERT [dbo].[Features] ([ID], [ModelID], [Name], [Description], [IsRoot], [XPos], [YPos]) VALUES (170, 111, N'Flytte Firma', NULL, NULL, 581.5, 44.5)
SET IDENTITY_INSERT [dbo].[Features] OFF
/****** Object:  Table [dbo].[CustomRules]    Script Date: 01/05/2012 00:48:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CustomRules](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ModelID] [int] NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Expression] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
 CONSTRAINT [PK_Rules] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[CustomRules] ON
INSERT [dbo].[CustomRules] ([ID], [ModelID], [Name], [Expression], [Description]) VALUES (2, 44, N'PriceCalcRule', N'sdsdsd', N'Special rule used for calculating the Total Price
')
INSERT [dbo].[CustomRules] ([ID], [ModelID], [Name], [Expression], [Description]) VALUES (4, 44, N'RamConstraint', N'If Hardware.Ram.TotalChosenRam == 6gb Then', NULL)
SET IDENTITY_INSERT [dbo].[CustomRules] OFF
/****** Object:  Table [dbo].[Configurations]    Script Date: 01/05/2012 00:48:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Configurations](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ModelID] [int] NOT NULL,
	[Name] [nvarchar](50) NULL,
	[CreatedDate] [datetime] NULL,
	[LastModifiedDate] [datetime] NULL,
 CONSTRAINT [PK_Configurations] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Configurations] ON
INSERT [dbo].[Configurations] ([ID], [ModelID], [Name], [CreatedDate], [LastModifiedDate]) VALUES (1, 44, N'Instance 01', CAST(0x00009F8B01446AE7 AS DateTime), CAST(0x00009F8B01446AE7 AS DateTime))
SET IDENTITY_INSERT [dbo].[Configurations] OFF
/****** Object:  Table [dbo].[CompositionRules]    Script Date: 01/05/2012 00:48:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CompositionRules](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ModelID] [int] NOT NULL,
	[CompositionRuleTypeID] [int] NOT NULL,
	[FirstFeatureID] [int] NOT NULL,
	[SecondFeatureID] [int] NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Description] [nvarchar](max) NULL,
 CONSTRAINT [PK_CompositionRules] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[CompositionRules] ON
INSERT [dbo].[CompositionRules] ([ID], [ModelID], [CompositionRuleTypeID], [FirstFeatureID], [SecondFeatureID], [Name], [Description]) VALUES (3, 44, 1, 112, 76, N'Default rule', NULL)
INSERT [dbo].[CompositionRules] ([ID], [ModelID], [CompositionRuleTypeID], [FirstFeatureID], [SecondFeatureID], [Name], [Description]) VALUES (4, 44, 3, 108, 104, N'Default rule', NULL)
INSERT [dbo].[CompositionRules] ([ID], [ModelID], [CompositionRuleTypeID], [FirstFeatureID], [SecondFeatureID], [Name], [Description]) VALUES (10, 96, 3, 137, 144, N'Default rule', NULL)
INSERT [dbo].[CompositionRules] ([ID], [ModelID], [CompositionRuleTypeID], [FirstFeatureID], [SecondFeatureID], [Name], [Description]) VALUES (11, 96, 3, 137, 146, N'Default rule', NULL)
SET IDENTITY_INSERT [dbo].[CompositionRules] OFF
/****** Object:  Table [dbo].[Relations]    Script Date: 01/05/2012 00:48:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Relations](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ModelID] [int] NOT NULL,
	[RelationTypeID] [int] NOT NULL,
	[ParentFeatureID] [int] NOT NULL,
	[ChildFeatureID] [int] NOT NULL,
	[LowerBound] [int] NULL,
	[UpperBound] [int] NULL,
 CONSTRAINT [PK_Relations] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Relations] ON
INSERT [dbo].[Relations] ([ID], [ModelID], [RelationTypeID], [ParentFeatureID], [ChildFeatureID], [LowerBound], [UpperBound]) VALUES (16, 44, 1, 76, 77, 1, 1)
INSERT [dbo].[Relations] ([ID], [ModelID], [RelationTypeID], [ParentFeatureID], [ChildFeatureID], [LowerBound], [UpperBound]) VALUES (17, 44, 2, 76, 78, 0, 1)
INSERT [dbo].[Relations] ([ID], [ModelID], [RelationTypeID], [ParentFeatureID], [ChildFeatureID], [LowerBound], [UpperBound]) VALUES (34, 44, 1, 74, 75, 1, 1)
INSERT [dbo].[Relations] ([ID], [ModelID], [RelationTypeID], [ParentFeatureID], [ChildFeatureID], [LowerBound], [UpperBound]) VALUES (35, 44, 1, 74, 76, 1, 1)
INSERT [dbo].[Relations] ([ID], [ModelID], [RelationTypeID], [ParentFeatureID], [ChildFeatureID], [LowerBound], [UpperBound]) VALUES (36, 78, 1, 82, 83, 1, 1)
INSERT [dbo].[Relations] ([ID], [ModelID], [RelationTypeID], [ParentFeatureID], [ChildFeatureID], [LowerBound], [UpperBound]) VALUES (37, 78, 1, 82, 84, 1, 1)
INSERT [dbo].[Relations] ([ID], [ModelID], [RelationTypeID], [ParentFeatureID], [ChildFeatureID], [LowerBound], [UpperBound]) VALUES (40, 78, 1, 83, 90, 1, 1)
INSERT [dbo].[Relations] ([ID], [ModelID], [RelationTypeID], [ParentFeatureID], [ChildFeatureID], [LowerBound], [UpperBound]) VALUES (41, 44, 2, 75, 94, 0, 1)
INSERT [dbo].[Relations] ([ID], [ModelID], [RelationTypeID], [ParentFeatureID], [ChildFeatureID], [LowerBound], [UpperBound]) VALUES (42, 44, 2, 75, 96, 0, 1)
INSERT [dbo].[Relations] ([ID], [ModelID], [RelationTypeID], [ParentFeatureID], [ChildFeatureID], [LowerBound], [UpperBound]) VALUES (43, 44, 1, 75, 95, 1, 1)
INSERT [dbo].[Relations] ([ID], [ModelID], [RelationTypeID], [ParentFeatureID], [ChildFeatureID], [LowerBound], [UpperBound]) VALUES (44, 44, 1, 75, 97, 1, 1)
INSERT [dbo].[Relations] ([ID], [ModelID], [RelationTypeID], [ParentFeatureID], [ChildFeatureID], [LowerBound], [UpperBound]) VALUES (45, 44, 1, 75, 98, 1, 1)
INSERT [dbo].[Relations] ([ID], [ModelID], [RelationTypeID], [ParentFeatureID], [ChildFeatureID], [LowerBound], [UpperBound]) VALUES (46, 44, 1, 75, 99, 1, 1)
INSERT [dbo].[Relations] ([ID], [ModelID], [RelationTypeID], [ParentFeatureID], [ChildFeatureID], [LowerBound], [UpperBound]) VALUES (47, 44, 3, 99, 100, 1, 8)
INSERT [dbo].[Relations] ([ID], [ModelID], [RelationTypeID], [ParentFeatureID], [ChildFeatureID], [LowerBound], [UpperBound]) VALUES (48, 44, 1, 96, 105, 1, 1)
INSERT [dbo].[Relations] ([ID], [ModelID], [RelationTypeID], [ParentFeatureID], [ChildFeatureID], [LowerBound], [UpperBound]) VALUES (49, 44, 1, 96, 106, 1, 1)
INSERT [dbo].[Relations] ([ID], [ModelID], [RelationTypeID], [ParentFeatureID], [ChildFeatureID], [LowerBound], [UpperBound]) VALUES (50, 44, 2, 74, 107, 0, 1)
INSERT [dbo].[Relations] ([ID], [ModelID], [RelationTypeID], [ParentFeatureID], [ChildFeatureID], [LowerBound], [UpperBound]) VALUES (51, 96, 1, 122, 125, 1, 1)
INSERT [dbo].[Relations] ([ID], [ModelID], [RelationTypeID], [ParentFeatureID], [ChildFeatureID], [LowerBound], [UpperBound]) VALUES (52, 96, 1, 122, 124, 1, 1)
INSERT [dbo].[Relations] ([ID], [ModelID], [RelationTypeID], [ParentFeatureID], [ChildFeatureID], [LowerBound], [UpperBound]) VALUES (53, 96, 1, 122, 126, 1, 1)
INSERT [dbo].[Relations] ([ID], [ModelID], [RelationTypeID], [ParentFeatureID], [ChildFeatureID], [LowerBound], [UpperBound]) VALUES (54, 96, 1, 122, 142, 1, 1)
INSERT [dbo].[Relations] ([ID], [ModelID], [RelationTypeID], [ParentFeatureID], [ChildFeatureID], [LowerBound], [UpperBound]) VALUES (55, 78, 2, 84, 147, 0, 1)
INSERT [dbo].[Relations] ([ID], [ModelID], [RelationTypeID], [ParentFeatureID], [ChildFeatureID], [LowerBound], [UpperBound]) VALUES (56, 78, 1, 84, 154, 1, 1)
INSERT [dbo].[Relations] ([ID], [ModelID], [RelationTypeID], [ParentFeatureID], [ChildFeatureID], [LowerBound], [UpperBound]) VALUES (57, 78, 1, 84, 159, 1, 1)
INSERT [dbo].[Relations] ([ID], [ModelID], [RelationTypeID], [ParentFeatureID], [ChildFeatureID], [LowerBound], [UpperBound]) VALUES (58, 78, 1, 82, 162, 1, 1)
INSERT [dbo].[Relations] ([ID], [ModelID], [RelationTypeID], [ParentFeatureID], [ChildFeatureID], [LowerBound], [UpperBound]) VALUES (59, 78, 1, 83, 163, 1, 1)
INSERT [dbo].[Relations] ([ID], [ModelID], [RelationTypeID], [ParentFeatureID], [ChildFeatureID], [LowerBound], [UpperBound]) VALUES (60, 96, 3, 128, 164, 1, 5)
INSERT [dbo].[Relations] ([ID], [ModelID], [RelationTypeID], [ParentFeatureID], [ChildFeatureID], [LowerBound], [UpperBound]) VALUES (61, 111, 2, 170, 165, 0, 1)
SET IDENTITY_INSERT [dbo].[Relations] OFF
/****** Object:  Table [dbo].[FeatureSelections]    Script Date: 01/05/2012 00:48:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FeatureSelections](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ConfigurationID] [int] NOT NULL,
	[FeatureID] [int] NOT NULL,
	[SelectionStateID] [int] NOT NULL,
	[Disabled] [bit] NULL,
 CONSTRAINT [PK_FeatureSelections] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GroupRelations_To_Features]    Script Date: 01/05/2012 00:48:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GroupRelations_To_Features](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[GroupRelationID] [int] NOT NULL,
	[ParentFeatureID] [int] NOT NULL,
	[ChildFeatureID] [int] NOT NULL,
 CONSTRAINT [PK_GroupRelations_To_Features] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[GroupRelations_To_Features] ON
INSERT [dbo].[GroupRelations_To_Features] ([ID], [GroupRelationID], [ParentFeatureID], [ChildFeatureID]) VALUES (17, 15, 98, 101)
INSERT [dbo].[GroupRelations_To_Features] ([ID], [GroupRelationID], [ParentFeatureID], [ChildFeatureID]) VALUES (18, 15, 98, 102)
INSERT [dbo].[GroupRelations_To_Features] ([ID], [GroupRelationID], [ParentFeatureID], [ChildFeatureID]) VALUES (19, 15, 98, 103)
INSERT [dbo].[GroupRelations_To_Features] ([ID], [GroupRelationID], [ParentFeatureID], [ChildFeatureID]) VALUES (20, 15, 98, 104)
INSERT [dbo].[GroupRelations_To_Features] ([ID], [GroupRelationID], [ParentFeatureID], [ChildFeatureID]) VALUES (21, 16, 107, 110)
INSERT [dbo].[GroupRelations_To_Features] ([ID], [GroupRelationID], [ParentFeatureID], [ChildFeatureID]) VALUES (22, 16, 107, 111)
INSERT [dbo].[GroupRelations_To_Features] ([ID], [GroupRelationID], [ParentFeatureID], [ChildFeatureID]) VALUES (23, 16, 107, 112)
INSERT [dbo].[GroupRelations_To_Features] ([ID], [GroupRelationID], [ParentFeatureID], [ChildFeatureID]) VALUES (24, 17, 77, 108)
INSERT [dbo].[GroupRelations_To_Features] ([ID], [GroupRelationID], [ParentFeatureID], [ChildFeatureID]) VALUES (25, 17, 77, 109)
INSERT [dbo].[GroupRelations_To_Features] ([ID], [GroupRelationID], [ParentFeatureID], [ChildFeatureID]) VALUES (26, 17, 77, 113)
INSERT [dbo].[GroupRelations_To_Features] ([ID], [GroupRelationID], [ParentFeatureID], [ChildFeatureID]) VALUES (27, 17, 77, 114)
INSERT [dbo].[GroupRelations_To_Features] ([ID], [GroupRelationID], [ParentFeatureID], [ChildFeatureID]) VALUES (28, 18, 94, 115)
INSERT [dbo].[GroupRelations_To_Features] ([ID], [GroupRelationID], [ParentFeatureID], [ChildFeatureID]) VALUES (29, 18, 94, 116)
INSERT [dbo].[GroupRelations_To_Features] ([ID], [GroupRelationID], [ParentFeatureID], [ChildFeatureID]) VALUES (30, 18, 94, 117)
INSERT [dbo].[GroupRelations_To_Features] ([ID], [GroupRelationID], [ParentFeatureID], [ChildFeatureID]) VALUES (31, 19, 97, 118)
INSERT [dbo].[GroupRelations_To_Features] ([ID], [GroupRelationID], [ParentFeatureID], [ChildFeatureID]) VALUES (32, 19, 97, 119)
INSERT [dbo].[GroupRelations_To_Features] ([ID], [GroupRelationID], [ParentFeatureID], [ChildFeatureID]) VALUES (33, 20, 95, 120)
INSERT [dbo].[GroupRelations_To_Features] ([ID], [GroupRelationID], [ParentFeatureID], [ChildFeatureID]) VALUES (34, 20, 95, 121)
INSERT [dbo].[GroupRelations_To_Features] ([ID], [GroupRelationID], [ParentFeatureID], [ChildFeatureID]) VALUES (35, 21, 124, 134)
INSERT [dbo].[GroupRelations_To_Features] ([ID], [GroupRelationID], [ParentFeatureID], [ChildFeatureID]) VALUES (36, 21, 124, 135)
INSERT [dbo].[GroupRelations_To_Features] ([ID], [GroupRelationID], [ParentFeatureID], [ChildFeatureID]) VALUES (37, 21, 124, 136)
INSERT [dbo].[GroupRelations_To_Features] ([ID], [GroupRelationID], [ParentFeatureID], [ChildFeatureID]) VALUES (38, 21, 124, 137)
INSERT [dbo].[GroupRelations_To_Features] ([ID], [GroupRelationID], [ParentFeatureID], [ChildFeatureID]) VALUES (39, 22, 125, 140)
INSERT [dbo].[GroupRelations_To_Features] ([ID], [GroupRelationID], [ParentFeatureID], [ChildFeatureID]) VALUES (40, 22, 125, 139)
INSERT [dbo].[GroupRelations_To_Features] ([ID], [GroupRelationID], [ParentFeatureID], [ChildFeatureID]) VALUES (41, 22, 125, 138)
INSERT [dbo].[GroupRelations_To_Features] ([ID], [GroupRelationID], [ParentFeatureID], [ChildFeatureID]) VALUES (42, 23, 126, 128)
INSERT [dbo].[GroupRelations_To_Features] ([ID], [GroupRelationID], [ParentFeatureID], [ChildFeatureID]) VALUES (43, 23, 126, 141)
INSERT [dbo].[GroupRelations_To_Features] ([ID], [GroupRelationID], [ParentFeatureID], [ChildFeatureID]) VALUES (44, 23, 126, 143)
INSERT [dbo].[GroupRelations_To_Features] ([ID], [GroupRelationID], [ParentFeatureID], [ChildFeatureID]) VALUES (45, 24, 142, 144)
INSERT [dbo].[GroupRelations_To_Features] ([ID], [GroupRelationID], [ParentFeatureID], [ChildFeatureID]) VALUES (46, 24, 142, 146)
INSERT [dbo].[GroupRelations_To_Features] ([ID], [GroupRelationID], [ParentFeatureID], [ChildFeatureID]) VALUES (47, 24, 142, 145)
INSERT [dbo].[GroupRelations_To_Features] ([ID], [GroupRelationID], [ParentFeatureID], [ChildFeatureID]) VALUES (48, 25, 147, 148)
INSERT [dbo].[GroupRelations_To_Features] ([ID], [GroupRelationID], [ParentFeatureID], [ChildFeatureID]) VALUES (49, 25, 147, 149)
INSERT [dbo].[GroupRelations_To_Features] ([ID], [GroupRelationID], [ParentFeatureID], [ChildFeatureID]) VALUES (50, 25, 147, 150)
INSERT [dbo].[GroupRelations_To_Features] ([ID], [GroupRelationID], [ParentFeatureID], [ChildFeatureID]) VALUES (51, 25, 147, 151)
INSERT [dbo].[GroupRelations_To_Features] ([ID], [GroupRelationID], [ParentFeatureID], [ChildFeatureID]) VALUES (52, 26, 147, 152)
INSERT [dbo].[GroupRelations_To_Features] ([ID], [GroupRelationID], [ParentFeatureID], [ChildFeatureID]) VALUES (53, 26, 147, 153)
INSERT [dbo].[GroupRelations_To_Features] ([ID], [GroupRelationID], [ParentFeatureID], [ChildFeatureID]) VALUES (54, 27, 154, 155)
INSERT [dbo].[GroupRelations_To_Features] ([ID], [GroupRelationID], [ParentFeatureID], [ChildFeatureID]) VALUES (55, 27, 154, 156)
INSERT [dbo].[GroupRelations_To_Features] ([ID], [GroupRelationID], [ParentFeatureID], [ChildFeatureID]) VALUES (56, 27, 154, 157)
INSERT [dbo].[GroupRelations_To_Features] ([ID], [GroupRelationID], [ParentFeatureID], [ChildFeatureID]) VALUES (57, 27, 154, 158)
INSERT [dbo].[GroupRelations_To_Features] ([ID], [GroupRelationID], [ParentFeatureID], [ChildFeatureID]) VALUES (58, 28, 159, 160)
INSERT [dbo].[GroupRelations_To_Features] ([ID], [GroupRelationID], [ParentFeatureID], [ChildFeatureID]) VALUES (59, 28, 159, 161)
INSERT [dbo].[GroupRelations_To_Features] ([ID], [GroupRelationID], [ParentFeatureID], [ChildFeatureID]) VALUES (60, 29, 165, 166)
INSERT [dbo].[GroupRelations_To_Features] ([ID], [GroupRelationID], [ParentFeatureID], [ChildFeatureID]) VALUES (61, 29, 165, 167)
INSERT [dbo].[GroupRelations_To_Features] ([ID], [GroupRelationID], [ParentFeatureID], [ChildFeatureID]) VALUES (62, 29, 165, 168)
INSERT [dbo].[GroupRelations_To_Features] ([ID], [GroupRelationID], [ParentFeatureID], [ChildFeatureID]) VALUES (63, 29, 165, 169)
SET IDENTITY_INSERT [dbo].[GroupRelations_To_Features] OFF
/****** Object:  Table [dbo].[Attributes]    Script Date: 01/05/2012 00:48:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Attributes](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[FeatureID] [int] NOT NULL,
	[AttributeTypeID] [int] NOT NULL,
	[DataTypeID] [int] NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Description] [nvarchar](max) NULL,
 CONSTRAINT [PK_Attributes] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Attributes] ON
INSERT [dbo].[Attributes] ([ID], [FeatureID], [AttributeTypeID], [DataTypeID], [Name], [Description]) VALUES (6, 122, 3, 1, N'Total Price', NULL)
INSERT [dbo].[Attributes] ([ID], [FeatureID], [AttributeTypeID], [DataTypeID], [Name], [Description]) VALUES (7, 74, 2, 1, N'Total Price', NULL)
INSERT [dbo].[Attributes] ([ID], [FeatureID], [AttributeTypeID], [DataTypeID], [Name], [Description]) VALUES (8, 124, 3, 1, N'New Attribute', NULL)
SET IDENTITY_INSERT [dbo].[Attributes] OFF
/****** Object:  Table [dbo].[AttributeValues]    Script Date: 01/05/2012 00:48:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AttributeValues](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[FeatureSelectionID] [int] NOT NULL,
	[AttributeID] [int] NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AttributeValues] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  ForeignKey [FK_Attributes_Attribute_DataTypes]    Script Date: 01/05/2012 00:48:35 ******/
ALTER TABLE [dbo].[Attributes]  WITH CHECK ADD  CONSTRAINT [FK_Attributes_Attribute_DataTypes] FOREIGN KEY([DataTypeID])
REFERENCES [dbo].[Attribute_DataTypes] ([ID])
GO
ALTER TABLE [dbo].[Attributes] CHECK CONSTRAINT [FK_Attributes_Attribute_DataTypes]
GO
/****** Object:  ForeignKey [FK_Attributes_Attribute_Types]    Script Date: 01/05/2012 00:48:35 ******/
ALTER TABLE [dbo].[Attributes]  WITH CHECK ADD  CONSTRAINT [FK_Attributes_Attribute_Types] FOREIGN KEY([AttributeTypeID])
REFERENCES [dbo].[Attribute_Types] ([ID])
GO
ALTER TABLE [dbo].[Attributes] CHECK CONSTRAINT [FK_Attributes_Attribute_Types]
GO
/****** Object:  ForeignKey [FK_Attributes_Features]    Script Date: 01/05/2012 00:48:35 ******/
ALTER TABLE [dbo].[Attributes]  WITH CHECK ADD  CONSTRAINT [FK_Attributes_Features] FOREIGN KEY([FeatureID])
REFERENCES [dbo].[Features] ([ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Attributes] CHECK CONSTRAINT [FK_Attributes_Features]
GO
/****** Object:  ForeignKey [FK_AttributeValues_Attributes]    Script Date: 01/05/2012 00:48:35 ******/
ALTER TABLE [dbo].[AttributeValues]  WITH NOCHECK ADD  CONSTRAINT [FK_AttributeValues_Attributes] FOREIGN KEY([AttributeID])
REFERENCES [dbo].[Attributes] ([ID])
GO
ALTER TABLE [dbo].[AttributeValues] NOCHECK CONSTRAINT [FK_AttributeValues_Attributes]
GO
/****** Object:  ForeignKey [FK_AttributeValues_FeatureSelections]    Script Date: 01/05/2012 00:48:35 ******/
ALTER TABLE [dbo].[AttributeValues]  WITH CHECK ADD  CONSTRAINT [FK_AttributeValues_FeatureSelections] FOREIGN KEY([FeatureSelectionID])
REFERENCES [dbo].[FeatureSelections] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AttributeValues] CHECK CONSTRAINT [FK_AttributeValues_FeatureSelections]
GO
/****** Object:  ForeignKey [FK_CompositionRules_CompositionRule_Types]    Script Date: 01/05/2012 00:48:35 ******/
ALTER TABLE [dbo].[CompositionRules]  WITH CHECK ADD  CONSTRAINT [FK_CompositionRules_CompositionRule_Types] FOREIGN KEY([CompositionRuleTypeID])
REFERENCES [dbo].[CompositionRule_Types] ([ID])
GO
ALTER TABLE [dbo].[CompositionRules] CHECK CONSTRAINT [FK_CompositionRules_CompositionRule_Types]
GO
/****** Object:  ForeignKey [FK_CompositionRules_Models]    Script Date: 01/05/2012 00:48:35 ******/
ALTER TABLE [dbo].[CompositionRules]  WITH CHECK ADD  CONSTRAINT [FK_CompositionRules_Models] FOREIGN KEY([ModelID])
REFERENCES [dbo].[Models] ([ID])
GO
ALTER TABLE [dbo].[CompositionRules] CHECK CONSTRAINT [FK_CompositionRules_Models]
GO
/****** Object:  ForeignKey [FK_Configurations_Models]    Script Date: 01/05/2012 00:48:35 ******/
ALTER TABLE [dbo].[Configurations]  WITH CHECK ADD  CONSTRAINT [FK_Configurations_Models] FOREIGN KEY([ModelID])
REFERENCES [dbo].[Models] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Configurations] CHECK CONSTRAINT [FK_Configurations_Models]
GO
/****** Object:  ForeignKey [FK_Rules_Models]    Script Date: 01/05/2012 00:48:35 ******/
ALTER TABLE [dbo].[CustomRules]  WITH CHECK ADD  CONSTRAINT [FK_Rules_Models] FOREIGN KEY([ModelID])
REFERENCES [dbo].[Models] ([ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CustomRules] CHECK CONSTRAINT [FK_Rules_Models]
GO
/****** Object:  ForeignKey [FK_Features_Models]    Script Date: 01/05/2012 00:48:35 ******/
ALTER TABLE [dbo].[Features]  WITH CHECK ADD  CONSTRAINT [FK_Features_Models] FOREIGN KEY([ModelID])
REFERENCES [dbo].[Models] ([ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Features] CHECK CONSTRAINT [FK_Features_Models]
GO
/****** Object:  ForeignKey [FK_FeatureSelections_Configurations]    Script Date: 01/05/2012 00:48:35 ******/
ALTER TABLE [dbo].[FeatureSelections]  WITH CHECK ADD  CONSTRAINT [FK_FeatureSelections_Configurations] FOREIGN KEY([ConfigurationID])
REFERENCES [dbo].[Configurations] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[FeatureSelections] CHECK CONSTRAINT [FK_FeatureSelections_Configurations]
GO
/****** Object:  ForeignKey [FK_FeatureSelections_Features]    Script Date: 01/05/2012 00:48:35 ******/
ALTER TABLE [dbo].[FeatureSelections]  WITH NOCHECK ADD  CONSTRAINT [FK_FeatureSelections_Features] FOREIGN KEY([FeatureID])
REFERENCES [dbo].[Features] ([ID])
GO
ALTER TABLE [dbo].[FeatureSelections] NOCHECK CONSTRAINT [FK_FeatureSelections_Features]
GO
/****** Object:  ForeignKey [FK_FeatureSelections_SelectionStates]    Script Date: 01/05/2012 00:48:35 ******/
ALTER TABLE [dbo].[FeatureSelections]  WITH CHECK ADD  CONSTRAINT [FK_FeatureSelections_SelectionStates] FOREIGN KEY([SelectionStateID])
REFERENCES [dbo].[SelectionStates] ([ID])
GO
ALTER TABLE [dbo].[FeatureSelections] CHECK CONSTRAINT [FK_FeatureSelections_SelectionStates]
GO
/****** Object:  ForeignKey [FK_FeatureGroups_Models]    Script Date: 01/05/2012 00:48:35 ******/
ALTER TABLE [dbo].[GroupRelations]  WITH CHECK ADD  CONSTRAINT [FK_FeatureGroups_Models] FOREIGN KEY([ModelID])
REFERENCES [dbo].[Models] ([ID])
GO
ALTER TABLE [dbo].[GroupRelations] CHECK CONSTRAINT [FK_FeatureGroups_Models]
GO
/****** Object:  ForeignKey [FK_GroupRelations_GroupRelation_Types]    Script Date: 01/05/2012 00:48:35 ******/
ALTER TABLE [dbo].[GroupRelations]  WITH CHECK ADD  CONSTRAINT [FK_GroupRelations_GroupRelation_Types] FOREIGN KEY([GroupRelationTypeID])
REFERENCES [dbo].[GroupRelation_Types] ([ID])
GO
ALTER TABLE [dbo].[GroupRelations] CHECK CONSTRAINT [FK_GroupRelations_GroupRelation_Types]
GO
/****** Object:  ForeignKey [FK_GroupRelations_To_Features_Features]    Script Date: 01/05/2012 00:48:35 ******/
ALTER TABLE [dbo].[GroupRelations_To_Features]  WITH NOCHECK ADD  CONSTRAINT [FK_GroupRelations_To_Features_Features] FOREIGN KEY([ParentFeatureID])
REFERENCES [dbo].[Features] ([ID])
GO
ALTER TABLE [dbo].[GroupRelations_To_Features] NOCHECK CONSTRAINT [FK_GroupRelations_To_Features_Features]
GO
/****** Object:  ForeignKey [FK_GroupRelations_To_Features_GroupRelations]    Script Date: 01/05/2012 00:48:35 ******/
ALTER TABLE [dbo].[GroupRelations_To_Features]  WITH CHECK ADD  CONSTRAINT [FK_GroupRelations_To_Features_GroupRelations] FOREIGN KEY([GroupRelationID])
REFERENCES [dbo].[GroupRelations] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[GroupRelations_To_Features] CHECK CONSTRAINT [FK_GroupRelations_To_Features_GroupRelations]
GO
/****** Object:  ForeignKey [FK_Models_Users]    Script Date: 01/05/2012 00:48:35 ******/
ALTER TABLE [dbo].[Models]  WITH CHECK ADD  CONSTRAINT [FK_Models_Users] FOREIGN KEY([UserID])
REFERENCES [dbo].[Users] ([ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Models] CHECK CONSTRAINT [FK_Models_Users]
GO
/****** Object:  ForeignKey [FK_Relations_Models]    Script Date: 01/05/2012 00:48:35 ******/
ALTER TABLE [dbo].[Relations]  WITH CHECK ADD  CONSTRAINT [FK_Relations_Models] FOREIGN KEY([ModelID])
REFERENCES [dbo].[Models] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Relations] CHECK CONSTRAINT [FK_Relations_Models]
GO
/****** Object:  ForeignKey [FK_Relations_Relation_Types]    Script Date: 01/05/2012 00:48:35 ******/
ALTER TABLE [dbo].[Relations]  WITH CHECK ADD  CONSTRAINT [FK_Relations_Relation_Types] FOREIGN KEY([RelationTypeID])
REFERENCES [dbo].[Relation_Types] ([ID])
GO
ALTER TABLE [dbo].[Relations] CHECK CONSTRAINT [FK_Relations_Relation_Types]
GO
