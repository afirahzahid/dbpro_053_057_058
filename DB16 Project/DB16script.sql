USE [DB16]
GO
/****** Object:  Table [dbo].[Administrator]    Script Date: 5/4/2019 5:35:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Administrator](
	[Id] [int] NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Administrator] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Brands]    Script Date: 5/4/2019 5:35:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Brands](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Country] [nvarchar](50) NOT NULL,
	[Image] [nvarchar](500) NOT NULL,
	[Description] [nvarchar](max) NULL,
 CONSTRAINT [PK_Brands] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Mobile]    Script Date: 5/4/2019 5:35:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Mobile](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](500) NOT NULL,
	[OS] [nvarchar](200) NULL,
	[UI] [nvarchar](200) NULL,
	[Dimensions] [nvarchar](200) NULL,
	[Weight] [nvarchar](200) NULL,
	[SIM] [nvarchar](300) NULL,
	[Colors] [nvarchar](1000) NULL,
	[2G Band] [nvarchar](max) NULL,
	[3G Band] [nvarchar](max) NULL,
	[4G Band] [nvarchar](max) NULL,
	[CPU] [nvarchar](max) NULL,
	[Chipset] [nvarchar](max) NULL,
	[GPU] [nvarchar](max) NULL,
	[Technology] [nvarchar](max) NULL,
	[Size] [nvarchar](50) NULL,
	[Resolution] [nvarchar](200) NULL,
	[Built-in Memory] [nvarchar](100) NULL,
	[Card] [nvarchar](200) NULL,
	[Main Camera] [nvarchar](max) NULL,
	[Features] [nvarchar](max) NULL,
	[Front Camera] [nvarchar](max) NULL,
	[WLAN] [nvarchar](max) NULL,
	[Bluetooth] [nvarchar](200) NULL,
	[GPS] [nvarchar](200) NULL,
	[USB] [nvarchar](200) NULL,
	[NFC] [nvarchar](50) NULL,
	[Data] [nvarchar](max) NULL,
	[Sensors] [nvarchar](max) NULL,
	[Audio] [nvarchar](500) NULL,
	[Browser] [nvarchar](100) NULL,
	[Messaging] [nvarchar](200) NULL,
	[Games] [nvarchar](200) NULL,
	[Torch] [nvarchar](10) NULL,
	[Extra] [nvarchar](max) NULL,
	[Battery] [nvarchar](max) NULL,
	[Price] [bigint] NOT NULL,
	[Announced On] [date] NULL,
	[Status] [nvarchar](20) NULL,
	[Description] [nvarchar](max) NULL,
	[BrandId] [int] NOT NULL,
	[Picture] [nvarchar](500) NOT NULL,
 CONSTRAINT [PK_Mobile] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Pictures]    Script Date: 5/4/2019 5:35:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pictures](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[MobileId] [int] NOT NULL,
	[Image] [nvarchar](500) NOT NULL,
 CONSTRAINT [PK_Pictures] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Reviews]    Script Date: 5/4/2019 5:35:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Reviews](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](200) NOT NULL,
	[Email] [nvarchar](100) NOT NULL,
	[Stars] [int] NOT NULL,
	[Opinion] [nvarchar](max) NULL,
	[MobileId] [int] NOT NULL,
	[RDate] [date] NULL,
 CONSTRAINT [PK_Reviews] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Brands] ON 

INSERT [dbo].[Brands] ([Id], [Name], [Country], [Image], [Description]) VALUES (1, N'Samsung', N'South Korea', N'~/Image/samsung193457536.jpg', N'Samsung Electric is a South Korean company based in Seoul and was founded in 1969. Samsung Electronics is known for producing some world class products ranging from Semiconductors to LEDs, quantum dot TVs and from notebooks to the Android tablets. Since releasing its debut Android smartphone in 2009 The company now holds the lion''s share in the smartphone and Phablet market not just in Pakistan but around the world. From feature phones to Windows handsets and from smart phones running on Tizen OS to Android-based smartphones. Samsung''s latest mobile phones need no introduction, Whether it be the Galaxy range or Note, or J series, Samsung offers a reliable multifunctional cell phone soup at different price ranges.')
INSERT [dbo].[Brands] ([Id], [Name], [Country], [Image], [Description]) VALUES (4, N'HTC', N'Taiwan', N'~/Image/wp2611756193705248.jpg', NULL)
INSERT [dbo].[Brands] ([Id], [Name], [Country], [Image], [Description]) VALUES (5, N'Lenovo', N'Hong Kong', N'~/Image/Lenovo193752419.jpg', NULL)
INSERT [dbo].[Brands] ([Id], [Name], [Country], [Image], [Description]) VALUES (6, N'Oppo', N'China', N'~/Image/oppo193935261.jpg', NULL)
INSERT [dbo].[Brands] ([Id], [Name], [Country], [Image], [Description]) VALUES (8, N'Haier', N'China', N'~/Image/haier194005472.png', NULL)
INSERT [dbo].[Brands] ([Id], [Name], [Country], [Image], [Description]) VALUES (9, N'Sony', N'Japan', N'~/Image/hqdefault194047624.jpg', NULL)
INSERT [dbo].[Brands] ([Id], [Name], [Country], [Image], [Description]) VALUES (10, N'Apple', N'United States', N'~/Image/unnamed194111951.jpg', NULL)
INSERT [dbo].[Brands] ([Id], [Name], [Country], [Image], [Description]) VALUES (12, N'QMobile', N'Pakistan', N'~/Image/qmobile194136379.jpg', NULL)
INSERT [dbo].[Brands] ([Id], [Name], [Country], [Image], [Description]) VALUES (14, N'Huawei', N'China', N'~/Image/huawei194209889.jpg', NULL)
INSERT [dbo].[Brands] ([Id], [Name], [Country], [Image], [Description]) VALUES (15, N'Xiaomi', N'China', N'~/Image/xiaomi194233596.jpg', NULL)
INSERT [dbo].[Brands] ([Id], [Name], [Country], [Image], [Description]) VALUES (16, N'Infinix', N'China', N'~/Image/infinix194311621.jpg', NULL)
INSERT [dbo].[Brands] ([Id], [Name], [Country], [Image], [Description]) VALUES (17, N'Vivo', N'China', N'~/Image/vivo194332132.png', NULL)
SET IDENTITY_INSERT [dbo].[Brands] OFF
SET IDENTITY_INSERT [dbo].[Mobile] ON 

INSERT [dbo].[Mobile] ([Id], [Name], [OS], [UI], [Dimensions], [Weight], [SIM], [Colors], [2G Band], [3G Band], [4G Band], [CPU], [Chipset], [GPU], [Technology], [Size], [Resolution], [Built-in Memory], [Card], [Main Camera], [Features], [Front Camera], [WLAN], [Bluetooth], [GPS], [USB], [NFC], [Data], [Sensors], [Audio], [Browser], [Messaging], [Games], [Torch], [Extra], [Battery], [Price], [Announced On], [Status], [Description], [BrandId], [Picture]) VALUES (1, N'Samsung Galaxy S10 Plus 512 GB', N'Android 9.0 (Pie)  ', N'One UI ', N'157.6 x 74.1 x 7.8 mm  ', N'175 g  ', N'Hybrid Dual SIM, Dual Standby, (Nano-SIM)  ', N'Prism White, Prism Black, Prism Green, Prism Blue, Canary Yellow, Flamingo Pink, Ceramic Black, Ceramic White  ', N'SIM1: GSM 850 / 900 / 1800 / 1900
SIM2: GSM 850 / 900 / 1800 / 1900  ', N'HSDPA 850 / 900 / 1700(AWS) / 1900 / 2100  ', N'LTE band 1(2100), 2(1900), 3(1800), 4(1700/2100), 5(850), 7(2600), 8(900), 12(700), 13(700), 17(700), 18(800), 19(800), 20(800), 25(1900), 26(850), 28(700), 32(1500), 38(2600), 39(1900), 40(2300), 41(2500), 66(1700/2100) ', N'Octa-core (2 x 2.7 GHz Mongoose M4 + 2 x 2.3 GHz Cortex-A75 + 4 x 1.9 GHz Cortex-A55)  ', N'Exynos 9820 Octa (8 nm)  ', N'Mali-G76 MP12  ', N'Dynamic AMOLED capacitive touchscreen, 16M colors, Multitouch  ', N'6.4 Inches  ', N'1440 x 3040 Pixels (~526 PPI)  ', N'in	512GB Built-in, 8GB RAM', N'microSD Card, (supports up to 512GB) (uses SIM 2 slot) - dual SIM model only ', N'Triple Camera: 12 MP, f/1.5-2.4, 26mm (wide), 1/2.55", Dual Pixel PDAF, OIS + 12 MP, f/2.4, 52mm (telephoto), 1/3.6", AF, OIS, 2x optical zoom + 16 MP, f/2.2, 12mm (ultrawide), LED Flash  ', N'OIS, Geo-tagging, face/smile detection, Auto HDR, panorama, Video (2160p@60fps, 1080p@240fps, 720p@960fps, HDR, dual-video rec)  ', N'Dual 10 MP, f/1.9, Dual Pixel PDAF + 8 MP, f/2.2, depth sensor, Dual video call, Auto-HDR, Video (2160p@30fps, 1080p@30fps)  ', N'Wi-Fi 802.11 a/b/g/n/ac, dual-band, Wi-Fi Direct, hotspot  ', N'v5.0 with A2DP, LE  ', N'Yes + A-GPS support & Glonass, BDS, GALILEO  ', N'3.1, Type-C 1.0 reversible connector  ', N'Yes  ', N'GPRS, Edge, 3G (HSPA 42.2/5.76 Mbps), 4G (LLTE-A (7CA) Cat20 2000/150 Mbps)  ', N'Accelerometer, Compass, Fingeprint (under display), Gyro, HeartRate, Proximity, SpO2  ', N'3.5mm Audio Jack, MP4/DivX/XviD/WMV/H.265 player, MP3/WAV/WMA/eAAC+/FLAC player, Speaker Phone  ', N'	HTML5 ', N'NULLSMS(threaded view), MMS, Email, Push Mail, IM  ', N'	Built-in + Downloadable', N'	Yes', N'Active noise cancellation with dedicated mic, Samsung Pay (Visa, MasterCard certified), IP68 dust/water proof (up to 1.5m for 30 mins), ANT+, Bixby natural language commands and dictation, Samsung DeX (desktop experience support), Document viewer, Photo/video editor ', N'(Li-ion Non removable), 4100 mAh  ', 219999, NULL, NULL, N'Samsung Galaxy S10 Plus 512GB - Powerful Phone With Huge Storage!
Samsung has showed its powerful Galaxy S10 but yet bigger version with Plus 512GB ROM is on its way to higher the stakes for its rivals. This year, the company is not limited to a simple cosmetic update and offered a more ambitious updates in the Samsung Galaxy S10 Plus 512GB. The 50th anniversary of the brand itself obliged to demonstrate a qualitative leap forward and shows that who is the technology leader in the market. Samsung''s Galaxy S10 Plus 512GB carries 6.4 inches of screen size which has Dynamic AMOLED HDR 10+ display with the screen resolution of 1440 x 3040 pixels. If you wish to reduce Samsung Galaxy S10''s battery than you can also choose the resolution of 1080 x 2280 pixels and even HD +720 x 1520 pixels. Predictably, the smaller version has a larger screen size of 6.1 inches, but all other specs of Galaxy S10 Plus 512GB by Samsung are same. Company did not deviate from the tradition of using two hardware Chips. Europe and other countries will have a Exynos 9820 chipset, while in the US and China, will come with the Snapdragon 855. Samsung S10 Plus 512GB is also providing you the 3D facial recognition where it seems that iris scanner is also available in this gadget. Now there will be no storage trouble in the phone because it has got 512 GB of internal storage. 8 GB of RAM is used in Samsung Galaxy''s S10 Plus 512GB so that its user can get incredible speed while playing games. This smartphone comes with Triple camera setup 12 MP + 12 MP + 16 MP which can shoot your videos in super slow mode at 960fps. Galaxy S10 Plus 512GB has 10 MP selfie shooter on the front with Dual video call feature and Auto-HDR mode. Software of the smartphone is Android Pie 9.0 and on top of S10 Plus 512GB Experience UI is used to decorate the software', 1, N'~/homephotos/s10plus.jpg')
INSERT [dbo].[Mobile] ([Id], [Name], [OS], [UI], [Dimensions], [Weight], [SIM], [Colors], [2G Band], [3G Band], [4G Band], [CPU], [Chipset], [GPU], [Technology], [Size], [Resolution], [Built-in Memory], [Card], [Main Camera], [Features], [Front Camera], [WLAN], [Bluetooth], [GPS], [USB], [NFC], [Data], [Sensors], [Audio], [Browser], [Messaging], [Games], [Torch], [Extra], [Battery], [Price], [Announced On], [Status], [Description], [BrandId], [Picture]) VALUES (2, N'Samsung Galaxy Note 9 512 GB', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'4.0 inches', N'256GB Built-in, 4GB RAM ', N'256GB Built-in, 2GB RAM ', NULL, N'Dual 20 MP + 12 MP, laser autofocus, (dual-LED + dual tone) flash ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 40000, NULL, NULL, NULL, 1, N'~/homephotos/note9.jpg')
INSERT [dbo].[Mobile] ([Id], [Name], [OS], [UI], [Dimensions], [Weight], [SIM], [Colors], [2G Band], [3G Band], [4G Band], [CPU], [Chipset], [GPU], [Technology], [Size], [Resolution], [Built-in Memory], [Card], [Main Camera], [Features], [Front Camera], [WLAN], [Bluetooth], [GPS], [USB], [NFC], [Data], [Sensors], [Audio], [Browser], [Messaging], [Games], [Torch], [Extra], [Battery], [Price], [Announced On], [Status], [Description], [BrandId], [Picture]) VALUES (7, N'Samsun Galaxy S10 Plus', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 159999, NULL, NULL, NULL, 1, N'~/homephotos/s10plus.jpg')
INSERT [dbo].[Mobile] ([Id], [Name], [OS], [UI], [Dimensions], [Weight], [SIM], [Colors], [2G Band], [3G Band], [4G Band], [CPU], [Chipset], [GPU], [Technology], [Size], [Resolution], [Built-in Memory], [Card], [Main Camera], [Features], [Front Camera], [WLAN], [Bluetooth], [GPS], [USB], [NFC], [Data], [Sensors], [Audio], [Browser], [Messaging], [Games], [Torch], [Extra], [Battery], [Price], [Announced On], [Status], [Description], [BrandId], [Picture]) VALUES (8, N'Samsung Galaxy Note 9', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 139999, NULL, NULL, NULL, 1, N'~/homephotos/note9.jpg')
INSERT [dbo].[Mobile] ([Id], [Name], [OS], [UI], [Dimensions], [Weight], [SIM], [Colors], [2G Band], [3G Band], [4G Band], [CPU], [Chipset], [GPU], [Technology], [Size], [Resolution], [Built-in Memory], [Card], [Main Camera], [Features], [Front Camera], [WLAN], [Bluetooth], [GPS], [USB], [NFC], [Data], [Sensors], [Audio], [Browser], [Messaging], [Games], [Torch], [Extra], [Battery], [Price], [Announced On], [Status], [Description], [BrandId], [Picture]) VALUES (10, N'Samsung Galaxy S10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 139999, NULL, NULL, NULL, 1, N'~/homephotos/s10.png')
INSERT [dbo].[Mobile] ([Id], [Name], [OS], [UI], [Dimensions], [Weight], [SIM], [Colors], [2G Band], [3G Band], [4G Band], [CPU], [Chipset], [GPU], [Technology], [Size], [Resolution], [Built-in Memory], [Card], [Main Camera], [Features], [Front Camera], [WLAN], [Bluetooth], [GPS], [USB], [NFC], [Data], [Sensors], [Audio], [Browser], [Messaging], [Games], [Torch], [Extra], [Battery], [Price], [Announced On], [Status], [Description], [BrandId], [Picture]) VALUES (11, N'Samsung Galaxy S9Plus 128GB', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 111999, NULL, NULL, NULL, 1, N'~/homephotos/s9plus.jpg')
INSERT [dbo].[Mobile] ([Id], [Name], [OS], [UI], [Dimensions], [Weight], [SIM], [Colors], [2G Band], [3G Band], [4G Band], [CPU], [Chipset], [GPU], [Technology], [Size], [Resolution], [Built-in Memory], [Card], [Main Camera], [Features], [Front Camera], [WLAN], [Bluetooth], [GPS], [USB], [NFC], [Data], [Sensors], [Audio], [Browser], [Messaging], [Games], [Torch], [Extra], [Battery], [Price], [Announced On], [Status], [Description], [BrandId], [Picture]) VALUES (12, N'Samsung Galaxy Fold', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 299999, NULL, NULL, NULL, 1, N'~/homephotos/galaxyfold.jpg')
INSERT [dbo].[Mobile] ([Id], [Name], [OS], [UI], [Dimensions], [Weight], [SIM], [Colors], [2G Band], [3G Band], [4G Band], [CPU], [Chipset], [GPU], [Technology], [Size], [Resolution], [Built-in Memory], [Card], [Main Camera], [Features], [Front Camera], [WLAN], [Bluetooth], [GPS], [USB], [NFC], [Data], [Sensors], [Audio], [Browser], [Messaging], [Games], [Torch], [Extra], [Battery], [Price], [Announced On], [Status], [Description], [BrandId], [Picture]) VALUES (15, N'Samsung Galaxy S9 Plus', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 110999, NULL, NULL, NULL, 1, N'~/homephotos/s9plus.jpg')
INSERT [dbo].[Mobile] ([Id], [Name], [OS], [UI], [Dimensions], [Weight], [SIM], [Colors], [2G Band], [3G Band], [4G Band], [CPU], [Chipset], [GPU], [Technology], [Size], [Resolution], [Built-in Memory], [Card], [Main Camera], [Features], [Front Camera], [WLAN], [Bluetooth], [GPS], [USB], [NFC], [Data], [Sensors], [Audio], [Browser], [Messaging], [Games], [Torch], [Extra], [Battery], [Price], [Announced On], [Status], [Description], [BrandId], [Picture]) VALUES (18, N'Samsung Galaxy S9', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 91000, NULL, NULL, NULL, 1, N'~/homephotos/s9.jpg')
INSERT [dbo].[Mobile] ([Id], [Name], [OS], [UI], [Dimensions], [Weight], [SIM], [Colors], [2G Band], [3G Band], [4G Band], [CPU], [Chipset], [GPU], [Technology], [Size], [Resolution], [Built-in Memory], [Card], [Main Camera], [Features], [Front Camera], [WLAN], [Bluetooth], [GPS], [USB], [NFC], [Data], [Sensors], [Audio], [Browser], [Messaging], [Games], [Torch], [Extra], [Battery], [Price], [Announced On], [Status], [Description], [BrandId], [Picture]) VALUES (19, N'Samsung Galaxy Note 8', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 89999, NULL, NULL, NULL, 1, N'~/homephotos/note8.jpg')
INSERT [dbo].[Mobile] ([Id], [Name], [OS], [UI], [Dimensions], [Weight], [SIM], [Colors], [2G Band], [3G Band], [4G Band], [CPU], [Chipset], [GPU], [Technology], [Size], [Resolution], [Built-in Memory], [Card], [Main Camera], [Features], [Front Camera], [WLAN], [Bluetooth], [GPS], [USB], [NFC], [Data], [Sensors], [Audio], [Browser], [Messaging], [Games], [Torch], [Extra], [Battery], [Price], [Announced On], [Status], [Description], [BrandId], [Picture]) VALUES (20, N'Samsung Galaxy S8 Plus', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 100000, NULL, NULL, NULL, 1, N'~/Image/samsung galaxy S8192606025.jpg')
INSERT [dbo].[Mobile] ([Id], [Name], [OS], [UI], [Dimensions], [Weight], [SIM], [Colors], [2G Band], [3G Band], [4G Band], [CPU], [Chipset], [GPU], [Technology], [Size], [Resolution], [Built-in Memory], [Card], [Main Camera], [Features], [Front Camera], [WLAN], [Bluetooth], [GPS], [USB], [NFC], [Data], [Sensors], [Audio], [Browser], [Messaging], [Games], [Torch], [Extra], [Battery], [Price], [Announced On], [Status], [Description], [BrandId], [Picture]) VALUES (21, N'Samsung Galaxy S8', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 79999, NULL, NULL, NULL, 1, N'~/homephotos/s8.jpg')
INSERT [dbo].[Mobile] ([Id], [Name], [OS], [UI], [Dimensions], [Weight], [SIM], [Colors], [2G Band], [3G Band], [4G Band], [CPU], [Chipset], [GPU], [Technology], [Size], [Resolution], [Built-in Memory], [Card], [Main Camera], [Features], [Front Camera], [WLAN], [Bluetooth], [GPS], [USB], [NFC], [Data], [Sensors], [Audio], [Browser], [Messaging], [Games], [Torch], [Extra], [Battery], [Price], [Announced On], [Status], [Description], [BrandId], [Picture]) VALUES (22, N'Samsung Galaxy A9 2018', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 79999, NULL, NULL, NULL, 1, N'~/homephotos/a92018.jpg')
INSERT [dbo].[Mobile] ([Id], [Name], [OS], [UI], [Dimensions], [Weight], [SIM], [Colors], [2G Band], [3G Band], [4G Band], [CPU], [Chipset], [GPU], [Technology], [Size], [Resolution], [Built-in Memory], [Card], [Main Camera], [Features], [Front Camera], [WLAN], [Bluetooth], [GPS], [USB], [NFC], [Data], [Sensors], [Audio], [Browser], [Messaging], [Games], [Torch], [Extra], [Battery], [Price], [Announced On], [Status], [Description], [BrandId], [Picture]) VALUES (23, N'Samsung Galaxy A8 Plus 2018', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 63999, NULL, NULL, NULL, 1, N'~/homephotos/a8plus2018.jpg')
INSERT [dbo].[Mobile] ([Id], [Name], [OS], [UI], [Dimensions], [Weight], [SIM], [Colors], [2G Band], [3G Band], [4G Band], [CPU], [Chipset], [GPU], [Technology], [Size], [Resolution], [Built-in Memory], [Card], [Main Camera], [Features], [Front Camera], [WLAN], [Bluetooth], [GPS], [USB], [NFC], [Data], [Sensors], [Audio], [Browser], [Messaging], [Games], [Torch], [Extra], [Battery], [Price], [Announced On], [Status], [Description], [BrandId], [Picture]) VALUES (27, N'Samsung Galaxy S10 Plus 512 GB', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 769009, NULL, NULL, NULL, 16, N'~/Image/infinix192928370.jpg')
INSERT [dbo].[Mobile] ([Id], [Name], [OS], [UI], [Dimensions], [Weight], [SIM], [Colors], [2G Band], [3G Band], [4G Band], [CPU], [Chipset], [GPU], [Technology], [Size], [Resolution], [Built-in Memory], [Card], [Main Camera], [Features], [Front Camera], [WLAN], [Bluetooth], [GPS], [USB], [NFC], [Data], [Sensors], [Audio], [Browser], [Messaging], [Games], [Torch], [Extra], [Battery], [Price], [Announced On], [Status], [Description], [BrandId], [Picture]) VALUES (28, N'oppoF5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 25000, NULL, NULL, NULL, 6, N'~/Image/OPPO-F5-Product192441384.jpg')
INSERT [dbo].[Mobile] ([Id], [Name], [OS], [UI], [Dimensions], [Weight], [SIM], [Colors], [2G Band], [3G Band], [4G Band], [CPU], [Chipset], [GPU], [Technology], [Size], [Resolution], [Built-in Memory], [Card], [Main Camera], [Features], [Front Camera], [WLAN], [Bluetooth], [GPS], [USB], [NFC], [Data], [Sensors], [Audio], [Browser], [Messaging], [Games], [Torch], [Extra], [Battery], [Price], [Announced On], [Status], [Description], [BrandId], [Picture]) VALUES (29, N'Huawei Nva 3i', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 45200, NULL, NULL, NULL, 14, N'~/Image/Huawei-Nva-3i192908617.jpg')
INSERT [dbo].[Mobile] ([Id], [Name], [OS], [UI], [Dimensions], [Weight], [SIM], [Colors], [2G Band], [3G Band], [4G Band], [CPU], [Chipset], [GPU], [Technology], [Size], [Resolution], [Built-in Memory], [Card], [Main Camera], [Features], [Front Camera], [WLAN], [Bluetooth], [GPS], [USB], [NFC], [Data], [Sensors], [Audio], [Browser], [Messaging], [Games], [Torch], [Extra], [Battery], [Price], [Announced On], [Status], [Description], [BrandId], [Picture]) VALUES (30, N'Lenovo Z6 Pro', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 30400, NULL, NULL, NULL, 5, N'~/Image/lenovo-z5-1193156531.jpg')
SET IDENTITY_INSERT [dbo].[Mobile] OFF
SET IDENTITY_INSERT [dbo].[Pictures] ON 

INSERT [dbo].[Pictures] ([Id], [MobileId], [Image]) VALUES (1, 1, N'~/Image/s10plus1190437855.jpg')
INSERT [dbo].[Pictures] ([Id], [MobileId], [Image]) VALUES (2, 1, N'~/homephotos/s10plus2.jpg')
INSERT [dbo].[Pictures] ([Id], [MobileId], [Image]) VALUES (4, 1, N'~/homephotos/s10plus3.jpg')
INSERT [dbo].[Pictures] ([Id], [MobileId], [Image]) VALUES (5, 1, N'~/homephotos/s10plus4.jpg')
INSERT [dbo].[Pictures] ([Id], [MobileId], [Image]) VALUES (6, 2, N'~/homephotos/note9-1.jpg')
INSERT [dbo].[Pictures] ([Id], [MobileId], [Image]) VALUES (8, 2, N'~/homephotos/note9-2.jpg')
INSERT [dbo].[Pictures] ([Id], [MobileId], [Image]) VALUES (9, 2, N'~/homephotos/note9-3.jpg')
INSERT [dbo].[Pictures] ([Id], [MobileId], [Image]) VALUES (10, 2, N'~/homephotos/note9-4.jpg')
INSERT [dbo].[Pictures] ([Id], [MobileId], [Image]) VALUES (12, 22, N'~/Image/samsung191411967.jpg')
SET IDENTITY_INSERT [dbo].[Pictures] OFF
SET IDENTITY_INSERT [dbo].[Reviews] ON 

INSERT [dbo].[Reviews] ([Id], [Name], [Email], [Stars], [Opinion], [MobileId], [RDate]) VALUES (1, N'Alishba Rauf', N'alishbarauf98@gmail.com', 4, N'very beautiful mobile', 1, NULL)
INSERT [dbo].[Reviews] ([Id], [Name], [Email], [Stars], [Opinion], [MobileId], [RDate]) VALUES (2, N'Arslan Murad Zabiullah Majal', N'arslanmurad@gmail.com', 5, N'Awesome Mobile. Specs are very cool.', 1, NULL)
INSERT [dbo].[Reviews] ([Id], [Name], [Email], [Stars], [Opinion], [MobileId], [RDate]) VALUES (3, N'Afirah', N'afirahzahid@gmail.com', 3, N'A very beautiful mobile with awesome specs!!!', 1, CAST(0x993F0B00 AS Date))
SET IDENTITY_INSERT [dbo].[Reviews] OFF
ALTER TABLE [dbo].[Mobile]  WITH CHECK ADD  CONSTRAINT [FK_Mobile_Brands] FOREIGN KEY([BrandId])
REFERENCES [dbo].[Brands] ([Id])
GO
ALTER TABLE [dbo].[Mobile] CHECK CONSTRAINT [FK_Mobile_Brands]
GO
ALTER TABLE [dbo].[Pictures]  WITH CHECK ADD  CONSTRAINT [FK_Pictures_Mobile] FOREIGN KEY([MobileId])
REFERENCES [dbo].[Mobile] ([Id])
GO
ALTER TABLE [dbo].[Pictures] CHECK CONSTRAINT [FK_Pictures_Mobile]
GO
ALTER TABLE [dbo].[Reviews]  WITH CHECK ADD  CONSTRAINT [FK_Reviews_Mobile] FOREIGN KEY([MobileId])
REFERENCES [dbo].[Mobile] ([Id])
GO
ALTER TABLE [dbo].[Reviews] CHECK CONSTRAINT [FK_Reviews_Mobile]
GO
