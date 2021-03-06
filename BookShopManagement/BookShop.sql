USE [BookShop]
GO
/****** Object:  Table [dbo].[book]    Script Date: 24-Sep-20 12:36:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[book](
	[bookid] [varchar](10) NOT NULL,
	[bookname] [varchar](50) NULL,
	[author] [varchar](50) NULL,
	[genre] [varchar](20) NOT NULL,
	[noofcopy] [int] NULL,
	[publisheddate] [date] NOT NULL,
	[price] [decimal](7, 2) NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[login]    Script Date: 24-Sep-20 12:36:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[login](
	[userId] [varchar](10) NOT NULL,
	[password] [varchar](20) NOT NULL,
	[type] [varchar](10) NOT NULL,
	[username] [varchar](25) NULL,
	[phone] [varchar](11) NULL,
	[location] [varchar](20) NULL,
	[salary] [decimal](7, 2) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[records]    Script Date: 24-Sep-20 12:36:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[records](
	[serial] [int] NOT NULL,
	[orderid] [varchar](10) NOT NULL,
	[bookid] [varchar](10) NOT NULL,
	[bookname] [varchar](50) NOT NULL,
	[customername] [varchar](30) NULL,
	[quantity] [int] NULL,
	[price] [decimal](10, 2) NULL,
	[userid] [varchar](10) NULL,
	[orderdate] [datetime] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[book] ([bookid], [bookname], [author], [genre], [noofcopy], [publisheddate], [price]) VALUES (N'b001', N'Theory of Computation', N'Michael Sipser', N'TextBook', 7, CAST(0xFB1F0B00 AS Date), CAST(400.00 AS Decimal(7, 2)))
INSERT [dbo].[book] ([bookid], [bookname], [author], [genre], [noofcopy], [publisheddate], [price]) VALUES (N'b002', N'Intro. to Algorithm', N'Thomas H. Cormen', N'TextBook', 6, CAST(0xBA140B00 AS Date), CAST(600.00 AS Decimal(7, 2)))
INSERT [dbo].[book] ([bookid], [bookname], [author], [genre], [noofcopy], [publisheddate], [price]) VALUES (N'b003', N'Harry Potter & The Cursed Child', N'J.K.Rowling', N'advanture', 4, CAST(0x903B0B00 AS Date), CAST(800.00 AS Decimal(7, 2)))
INSERT [dbo].[book] ([bookid], [bookname], [author], [genre], [noofcopy], [publisheddate], [price]) VALUES (N'b004', N'Sherlock Holmes', N'Arthur Conan Dyle', N'detective', 6, CAST(0x46160B00 AS Date), CAST(200.00 AS Decimal(7, 2)))
INSERT [dbo].[book] ([bookid], [bookname], [author], [genre], [noofcopy], [publisheddate], [price]) VALUES (N'b005', N'A Dance with Dragons', N'George R.R. Martin', N'fantasy ', 4, CAST(0xB02B0B00 AS Date), CAST(500.00 AS Decimal(7, 2)))
INSERT [dbo].[book] ([bookid], [bookname], [author], [genre], [noofcopy], [publisheddate], [price]) VALUES (N'b006', N'Murder on the Orient Express', N'Agatha Christie', N'novel', 2, CAST(0xB91F0B00 AS Date), CAST(1000.00 AS Decimal(7, 2)))
INSERT [dbo].[book] ([bookid], [bookname], [author], [genre], [noofcopy], [publisheddate], [price]) VALUES (N'b007', N'3 a.m.', N'Nick Pirog', N'detective', 5, CAST(0x513F0B00 AS Date), CAST(200.00 AS Decimal(7, 2)))
INSERT [dbo].[book] ([bookid], [bookname], [author], [genre], [noofcopy], [publisheddate], [price]) VALUES (N'b008', N'Tin Goyenda', N'Rakib Hasan', N'detective', 2, CAST(0xD0240B00 AS Date), CAST(150.00 AS Decimal(7, 2)))
INSERT [dbo].[book] ([bookid], [bookname], [author], [genre], [noofcopy], [publisheddate], [price]) VALUES (N'b009', N'The Martian ', N'Andy Weir', N'science fiction', 2, CAST(0xE3330B00 AS Date), CAST(600.00 AS Decimal(7, 2)))
INSERT [dbo].[book] ([bookid], [bookname], [author], [genre], [noofcopy], [publisheddate], [price]) VALUES (N'b010', N'The Alchemist', N'Paulo Coelho', N'fantasy', 5, CAST(0x68160B00 AS Date), CAST(450.00 AS Decimal(7, 2)))
INSERT [dbo].[book] ([bookid], [bookname], [author], [genre], [noofcopy], [publisheddate], [price]) VALUES (N'b011', N'Cosmos', N'Carl Sagan', N'science fiction', 5, CAST(0xBD080B00 AS Date), CAST(700.00 AS Decimal(7, 2)))
INSERT [dbo].[book] ([bookid], [bookname], [author], [genre], [noofcopy], [publisheddate], [price]) VALUES (N'b012', N'Theory of everything', N'Stephen Hawking', N'Science', 4, CAST(0xD6270B00 AS Date), CAST(600.00 AS Decimal(7, 2)))
INSERT [dbo].[login] ([userId], [password], [type], [username], [phone], [location], [salary]) VALUES (N'm-001', N'12345', N'manager', N'Harry', N'01700000002', N'Jatrabari', CAST(10000.00 AS Decimal(7, 2)))
INSERT [dbo].[login] ([userId], [password], [type], [username], [phone], [location], [salary]) VALUES (N'm-002', N'456', N'manager', N'Richard', N'01700000001', N'Jatrabari', CAST(10000.00 AS Decimal(7, 2)))
INSERT [dbo].[login] ([userId], [password], [type], [username], [phone], [location], [salary]) VALUES (N's-001', N'7899', N'seller', N'Tom', N'01700000005', N'Mugda', CAST(5000.00 AS Decimal(7, 2)))
INSERT [dbo].[login] ([userId], [password], [type], [username], [phone], [location], [salary]) VALUES (N's-002', N'13149041', N'seller', N'James', N'0190000564', N'Puran Dhaka', CAST(2000.00 AS Decimal(7, 2)))
INSERT [dbo].[login] ([userId], [password], [type], [username], [phone], [location], [salary]) VALUES (N's-003', N'1071528', N'seller', N'Koushik', N'01800000051', N'Mirpur-10', CAST(6000.00 AS Decimal(7, 2)))
INSERT [dbo].[records] ([serial], [orderid], [bookid], [bookname], [customername], [quantity], [price], [userid], [orderdate]) VALUES (1, N'o-001', N'b004', N'Sherlock Holmes', N'Thor', 1, CAST(200.00 AS Decimal(10, 2)), N's-003', CAST(0x0000AC8F00956D84 AS DateTime))
INSERT [dbo].[records] ([serial], [orderid], [bookid], [bookname], [customername], [quantity], [price], [userid], [orderdate]) VALUES (4, N'o-004', N'b002', N'Intro. to Algorithm', N'kakon', 1, CAST(600.00 AS Decimal(10, 2)), N's-002', CAST(0x0000AC3F012EFAE4 AS DateTime))
INSERT [dbo].[records] ([serial], [orderid], [bookid], [bookname], [customername], [quantity], [price], [userid], [orderdate]) VALUES (11, N'o-009', N'b002', N'Intro. to Algorithm', N'Zero', 1, CAST(600.00 AS Decimal(10, 2)), N's-001', CAST(0x0000AC40001CDF04 AS DateTime))
INSERT [dbo].[records] ([serial], [orderid], [bookid], [bookname], [customername], [quantity], [price], [userid], [orderdate]) VALUES (12, N'o-010', N'b003', N'Harry Potter & The Cursed Child', N'Shihab', 1, CAST(720.00 AS Decimal(10, 2)), N's-001', CAST(0x0000AC4000344928 AS DateTime))
INSERT [dbo].[records] ([serial], [orderid], [bookid], [bookname], [customername], [quantity], [price], [userid], [orderdate]) VALUES (13, N'o-010', N'b007', N'3 a.m.', N'Shihab', 1, CAST(170.00 AS Decimal(10, 2)), N's-001', CAST(0x0000AC4000344928 AS DateTime))
INSERT [dbo].[records] ([serial], [orderid], [bookid], [bookname], [customername], [quantity], [price], [userid], [orderdate]) VALUES (2, N'o-002', N'b004', N'Sherlock Holmes', N'kakon', 2, CAST(380.00 AS Decimal(10, 2)), N's-002', CAST(0x0000AC3F01876B84 AS DateTime))
INSERT [dbo].[records] ([serial], [orderid], [bookid], [bookname], [customername], [quantity], [price], [userid], [orderdate]) VALUES (3, N'o-003', N'b001', N'Theory of Computation', N'kakon', 1, CAST(380.00 AS Decimal(10, 2)), N's-001', CAST(0x0000AC3F01458084 AS DateTime))
INSERT [dbo].[records] ([serial], [orderid], [bookid], [bookname], [customername], [quantity], [price], [userid], [orderdate]) VALUES (5, N'o-005', N'b003', N'Harry Potter & The Cursed Child', N'ck', 1, CAST(800.00 AS Decimal(10, 2)), N's-001', CAST(0x0000AC3F01458084 AS DateTime))
INSERT [dbo].[records] ([serial], [orderid], [bookid], [bookname], [customername], [quantity], [price], [userid], [orderdate]) VALUES (6, N'o-006', N'b002', N'Intro. to Algorithm', N'k', 1, CAST(600.00 AS Decimal(10, 2)), N's-003', CAST(0x0000AC3F01458084 AS DateTime))
INSERT [dbo].[records] ([serial], [orderid], [bookid], [bookname], [customername], [quantity], [price], [userid], [orderdate]) VALUES (7, N'o-007', N'b002', N'Intro. to Algorithm', N'iron man', 1, CAST(510.00 AS Decimal(10, 2)), N's-001', CAST(0x0000AC3F01458084 AS DateTime))
INSERT [dbo].[records] ([serial], [orderid], [bookid], [bookname], [customername], [quantity], [price], [userid], [orderdate]) VALUES (8, N'o-007', N'b004', N'Sherlock Holmes', N'iron man', 1, CAST(180.00 AS Decimal(10, 2)), N's-001', CAST(0x0000AC3F01458084 AS DateTime))
INSERT [dbo].[records] ([serial], [orderid], [bookid], [bookname], [customername], [quantity], [price], [userid], [orderdate]) VALUES (9, N'o-008', N'b003', N'Harry Potter & The Cursed Child', N'koushik', 2, CAST(1120.00 AS Decimal(10, 2)), N's-002', CAST(0x0000AC3F0155FB44 AS DateTime))
INSERT [dbo].[records] ([serial], [orderid], [bookid], [bookname], [customername], [quantity], [price], [userid], [orderdate]) VALUES (10, N'o-008', N'b008', N'Tin Goyenda', N'koushik', 1, CAST(135.00 AS Decimal(10, 2)), N's-002', CAST(0x0000AC3F012EFAE4 AS DateTime))
INSERT [dbo].[records] ([serial], [orderid], [bookid], [bookname], [customername], [quantity], [price], [userid], [orderdate]) VALUES (14, N'o-011', N'b007', N'3 a.m.', N'Captain ', 1, CAST(180.00 AS Decimal(10, 2)), N's-001', CAST(0x0000AC4000382638 AS DateTime))
INSERT [dbo].[records] ([serial], [orderid], [bookid], [bookname], [customername], [quantity], [price], [userid], [orderdate]) VALUES (15, N'o-012', N'b007', N'3 a.m.', N'Zeref', 1, CAST(160.00 AS Decimal(10, 2)), N's-001', CAST(0x0000AC40003A23FC AS DateTime))
INSERT [dbo].[records] ([serial], [orderid], [bookid], [bookname], [customername], [quantity], [price], [userid], [orderdate]) VALUES (16, N'o-012', N'b012', N'Theory of everything', N'Zeref', 1, CAST(420.00 AS Decimal(10, 2)), N's-001', CAST(0x0000AC40003A23FC AS DateTime))
