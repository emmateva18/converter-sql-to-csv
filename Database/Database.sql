USE [master]
GO
/****** Object:  Database [ExampleDatabase]    Script Date: 7/7/2021 12:45:07 PM ******/
CREATE DATABASE [ExampleDatabase]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ExampleDatabase', FILENAME = N'C:\Users\emmateva18\ExampleDatabase.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'ExampleDatabase_log', FILENAME = N'C:\Users\emmateva18\ExampleDatabase_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ExampleDatabase].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ExampleDatabase] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ExampleDatabase] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ExampleDatabase] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ExampleDatabase] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ExampleDatabase] SET ARITHABORT OFF 
GO
ALTER DATABASE [ExampleDatabase] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [ExampleDatabase] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ExampleDatabase] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ExampleDatabase] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ExampleDatabase] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ExampleDatabase] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ExampleDatabase] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ExampleDatabase] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ExampleDatabase] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ExampleDatabase] SET  DISABLE_BROKER 
GO
ALTER DATABASE [ExampleDatabase] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ExampleDatabase] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ExampleDatabase] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ExampleDatabase] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ExampleDatabase] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ExampleDatabase] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ExampleDatabase] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ExampleDatabase] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [ExampleDatabase] SET  MULTI_USER 
GO
ALTER DATABASE [ExampleDatabase] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ExampleDatabase] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ExampleDatabase] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ExampleDatabase] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [ExampleDatabase] SET DELAYED_DURABILITY = DISABLED 
GO
USE [ExampleDatabase]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 7/7/2021 12:45:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Username] [nvarchar](32) NOT NULL,
	[FirstName] [nvarchar](16) NOT NULL,
	[LastName] [nvarchar](16) NOT NULL,
	[Email] [varchar](320) NOT NULL,
	[Address] [nvarchar](64) NOT NULL,
	[City] [nvarchar](32) NOT NULL,
	[Age] [int] NOT NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Users] ON 
GO
INSERT [dbo].[Users] ([Id], [Username], [FirstName], [LastName], [Email], [Address], [City], [Age]) VALUES (1, N'aheinecke0', N'Arther', N'Heinecke', N'aheinecke0@eventbrite.com', N'0 Hoard Court', N'Septfontaines', 49)
GO
INSERT [dbo].[Users] ([Id], [Username], [FirstName], [LastName], [Email], [Address], [City], [Age]) VALUES (2, N'rmchaffy1', N'Rasla', N'McHaffy', N'rmchaffy1@microsoft.com', N'0 Kinsman Way', N'Zhangjiayuan', 57)
GO
INSERT [dbo].[Users] ([Id], [Username], [FirstName], [LastName], [Email], [Address], [City], [Age]) VALUES (3, N'jcicculi2', N'Jerrold', N'Cicculi', N'jcicculi2@addtoany.com', N'522 Vidon Way', N'Ceres', 27)
GO
INSERT [dbo].[Users] ([Id], [Username], [FirstName], [LastName], [Email], [Address], [City], [Age]) VALUES (4, N'fmelhuish3', N'Friedrich', N'Melhuish', N'fmelhuish3@opera.com', N'78 Summerview Drive', N'Cali', 43)
GO
INSERT [dbo].[Users] ([Id], [Username], [FirstName], [LastName], [Email], [Address], [City], [Age]) VALUES (5, N'dimpson4', N'Dorine', N'Impson', N'dimpson4@dropbox.com', N'2335 Tomscot Crossing', N'Numan', 83)
GO
INSERT [dbo].[Users] ([Id], [Username], [FirstName], [LastName], [Email], [Address], [City], [Age]) VALUES (6, N'ebartozzi5', N'Emmie', N'Bartozzi', N'ebartozzi5@dmoz.org', N'20 Daystar Terrace', N'Beringinjaya', 53)
GO
INSERT [dbo].[Users] ([Id], [Username], [FirstName], [LastName], [Email], [Address], [City], [Age]) VALUES (7, N'mrosa6', N'Meaghan', N'Rosa', N'mrosa6@skype.com', N'6 Washington Park', N'San Pascual', 68)
GO
INSERT [dbo].[Users] ([Id], [Username], [FirstName], [LastName], [Email], [Address], [City], [Age]) VALUES (8, N'lbrelsford7', N'Lena', N'Brelsford', N'lbrelsford7@edublogs.org', N'4677 Charing Cross Circle', N'Phatthaya', 44)
GO
INSERT [dbo].[Users] ([Id], [Username], [FirstName], [LastName], [Email], [Address], [City], [Age]) VALUES (9, N'fhymans8', N'Fergus', N'Hymans', N'fhymans8@jiathis.com', N'80206 Pearson Park', N'Shangyu', 52)
GO
INSERT [dbo].[Users] ([Id], [Username], [FirstName], [LastName], [Email], [Address], [City], [Age]) VALUES (10, N'jstiddard9', N'Juieta', N'Stiddard', N'jstiddard9@wikimedia.org', N'94772 Melvin Crossing', N'Sa''dah', 43)
GO
INSERT [dbo].[Users] ([Id], [Username], [FirstName], [LastName], [Email], [Address], [City], [Age]) VALUES (11, N'cwoollarda', N'Carroll', N'Woollard', N'cwoollarda@google.cn', N'35756 Ruskin Lane', N'Krivyanskaya', 49)
GO
INSERT [dbo].[Users] ([Id], [Username], [FirstName], [LastName], [Email], [Address], [City], [Age]) VALUES (12, N'kmccrannb', N'Karlik', N'McCrann', N'kmccrannb@wikimedia.org', N'00 Saint Paul Trail', N'Hepang', 47)
GO
INSERT [dbo].[Users] ([Id], [Username], [FirstName], [LastName], [Email], [Address], [City], [Age]) VALUES (13, N'arapierc', N'Adham', N'Rapier', N'arapierc@ucla.edu', N'371 Lindbergh Lane', N'Freguesia do Ribeirao da Ilha', 65)
GO
INSERT [dbo].[Users] ([Id], [Username], [FirstName], [LastName], [Email], [Address], [City], [Age]) VALUES (14, N'pmerond', N'Pace', N'Meron', N'pmerond@opera.com', N'4 Stone Corner Parkway', N'Gafanha da EncarnaÃ§Ã£o', 42)
GO
INSERT [dbo].[Users] ([Id], [Username], [FirstName], [LastName], [Email], [Address], [City], [Age]) VALUES (15, N'mchalklye', N'Margalit', N'Chalkly', N'mchalklye@nsw.gov.au', N'62030 Eagle Crest Street', N'Fenjie', 24)
GO
INSERT [dbo].[Users] ([Id], [Username], [FirstName], [LastName], [Email], [Address], [City], [Age]) VALUES (16, N'lfredef', N'Lissi', N'Frede', N'lfredef@cloudflare.com', N'4 Pine View Drive', N'Al KhÄrijah', 70)
GO
INSERT [dbo].[Users] ([Id], [Username], [FirstName], [LastName], [Email], [Address], [City], [Age]) VALUES (17, N'jlabordeg', N'Job', N'Laborde', N'jlabordeg@vimeo.com', N'04366 Laurel Alley', N'Dian-ay', 84)
GO
INSERT [dbo].[Users] ([Id], [Username], [FirstName], [LastName], [Email], [Address], [City], [Age]) VALUES (18, N'ppurryh', N'Perkin', N'Purry', N'ppurryh@whitehouse.gov', N'752 Birchwood Street', N'SÆ¡n TrÃ ', 64)
GO
INSERT [dbo].[Users] ([Id], [Username], [FirstName], [LastName], [Email], [Address], [City], [Age]) VALUES (19, N'kquiddingtoni', N'Katuscha', N'Quiddington', N'kquiddingtoni@adobe.com', N'3980 Shelley Center', N'Mons', 30)
GO
INSERT [dbo].[Users] ([Id], [Username], [FirstName], [LastName], [Email], [Address], [City], [Age]) VALUES (20, N'sbardillj', N'Sullivan', N'Bardill', N'sbardillj@gov.uk', N'19 Kings Junction', N'Malati', 31)
GO
INSERT [dbo].[Users] ([Id], [Username], [FirstName], [LastName], [Email], [Address], [City], [Age]) VALUES (21, N'eghidellik', N'Emelita', N'Ghidelli', N'eghidellik@devhub.com', N'0 Gulseth Avenue', N'Ed', 37)
GO
INSERT [dbo].[Users] ([Id], [Username], [FirstName], [LastName], [Email], [Address], [City], [Age]) VALUES (22, N'dvalentellil', N'Doloritas', N'Valentelli', N'dvalentellil@exblog.jp', N'3 Scoville Road', N'Kalianda', 23)
GO
INSERT [dbo].[Users] ([Id], [Username], [FirstName], [LastName], [Email], [Address], [City], [Age]) VALUES (23, N'ocopcottm', N'Orsa', N'Copcott', N'ocopcottm@wufoo.com', N'64 Dexter Lane', N'Dzaoudzi', 89)
GO
INSERT [dbo].[Users] ([Id], [Username], [FirstName], [LastName], [Email], [Address], [City], [Age]) VALUES (24, N'nwileyn', N'Ninnetta', N'Wiley', N'nwileyn@huffingtonpost.com', N'8 Saint Paul Trail', N'Sidomekar', 37)
GO
INSERT [dbo].[Users] ([Id], [Username], [FirstName], [LastName], [Email], [Address], [City], [Age]) VALUES (25, N'asokaleo', N'Athena', N'Sokale', N'asokaleo@springer.com', N'5801 High Crossing Way', N'Braunschweig', 63)
GO
INSERT [dbo].[Users] ([Id], [Username], [FirstName], [LastName], [Email], [Address], [City], [Age]) VALUES (26, N'cduxbarryp', N'Consuelo', N'Duxbarry', N'cduxbarryp@dell.com', N'162 Calypso Avenue', N'StudÃ©nka', 55)
GO
INSERT [dbo].[Users] ([Id], [Username], [FirstName], [LastName], [Email], [Address], [City], [Age]) VALUES (27, N'bgorchq', N'Bobbette', N'Gorch', N'bgorchq@blogs.com', N'66666 Redwing Street', N'Lourdes', 56)
GO
INSERT [dbo].[Users] ([Id], [Username], [FirstName], [LastName], [Email], [Address], [City], [Age]) VALUES (28, N'hdakhnor', N'Hortense', N'Dakhno', N'hdakhnor@timesonline.co.uk', N'8299 North Lane', N'BÄ…kÃ³w', 85)
GO
INSERT [dbo].[Users] ([Id], [Username], [FirstName], [LastName], [Email], [Address], [City], [Age]) VALUES (29, N'pprebles', N'Pepi', N'Preble', N'pprebles@tripod.com', N'36569 Tony Circle', N'PoroÃ§an', 81)
GO
INSERT [dbo].[Users] ([Id], [Username], [FirstName], [LastName], [Email], [Address], [City], [Age]) VALUES (30, N'fcoppent', N'Farrel', N'Coppen', N'fcoppent@techcrunch.com', N'9 Goodland Center', N'Ban Phue', 36)
GO
INSERT [dbo].[Users] ([Id], [Username], [FirstName], [LastName], [Email], [Address], [City], [Age]) VALUES (31, N'kmclugishu', N'Kirsten', N'McLugish', N'kmclugishu@mac.com', N'027 Sachs Alley', N'Medvedovskaya', 70)
GO
INSERT [dbo].[Users] ([Id], [Username], [FirstName], [LastName], [Email], [Address], [City], [Age]) VALUES (32, N'sstokoev', N'Skip', N'Stokoe', N'sstokoev@sogou.com', N'4593 Vera Lane', N'Hezhi', 79)
GO
INSERT [dbo].[Users] ([Id], [Username], [FirstName], [LastName], [Email], [Address], [City], [Age]) VALUES (33, N'bcoulbeckw', N'Boy', N'Coulbeck', N'bcoulbeckw@list-manage.com', N'4251 Colorado Terrace', N'Nador', 28)
GO
INSERT [dbo].[Users] ([Id], [Username], [FirstName], [LastName], [Email], [Address], [City], [Age]) VALUES (34, N'bwiginx', N'Burty', N'Wigin', N'bwiginx@squarespace.com', N'76920 Heath Street', N'Maae', 46)
GO
INSERT [dbo].[Users] ([Id], [Username], [FirstName], [LastName], [Email], [Address], [City], [Age]) VALUES (35, N'fjarmainy', N'Florentia', N'Jarmain', N'fjarmainy@addthis.com', N'957 Nelson Street', N'Tsiombe', 76)
GO
INSERT [dbo].[Users] ([Id], [Username], [FirstName], [LastName], [Email], [Address], [City], [Age]) VALUES (36, N'hpurryz', N'Hilarius', N'Purry', N'hpurryz@storify.com', N'2 Spenser Hill', N'Kentville', 71)
GO
INSERT [dbo].[Users] ([Id], [Username], [FirstName], [LastName], [Email], [Address], [City], [Age]) VALUES (37, N'rpallasch10', N'Reagan', N'Pallasch', N'rpallasch10@businessweek.com', N'68 Anhalt Plaza', N'Sviadnov', 69)
GO
INSERT [dbo].[Users] ([Id], [Username], [FirstName], [LastName], [Email], [Address], [City], [Age]) VALUES (38, N'rantonias11', N'Roxanne', N'Antonias', N'rantonias11@sciencedirect.com', N'4363 Center Park', N'Hancheng', 48)
GO
INSERT [dbo].[Users] ([Id], [Username], [FirstName], [LastName], [Email], [Address], [City], [Age]) VALUES (39, N'brotherforth12', N'Baxie', N'Rotherforth', N'brotherforth12@mtv.com', N'9 Eliot Crossing', N'Gusâ€™-Zheleznyy', 66)
GO
INSERT [dbo].[Users] ([Id], [Username], [FirstName], [LastName], [Email], [Address], [City], [Age]) VALUES (40, N'slongwood13', N'Stesha', N'Longwood', N'slongwood13@scientificamerican.com', N'63 Schmedeman Way', N'Rouen', 31)
GO
INSERT [dbo].[Users] ([Id], [Username], [FirstName], [LastName], [Email], [Address], [City], [Age]) VALUES (41, N'akaufman14', N'Andromache', N'Kaufman', N'akaufman14@creativecommons.org', N'3 Transport Trail', N'Strawberry Hills', 20)
GO
INSERT [dbo].[Users] ([Id], [Username], [FirstName], [LastName], [Email], [Address], [City], [Age]) VALUES (42, N'eswalough15', N'Eda', N'Swalough', N'eswalough15@mtv.com', N'4036 Grayhawk Crossing', N'Fantino', 85)
GO
INSERT [dbo].[Users] ([Id], [Username], [FirstName], [LastName], [Email], [Address], [City], [Age]) VALUES (43, N'anecrews16', N'Alvis', N'Necrews', N'anecrews16@4shared.com', N'43 Mallard Center', N'Tayang', 37)
GO
INSERT [dbo].[Users] ([Id], [Username], [FirstName], [LastName], [Email], [Address], [City], [Age]) VALUES (44, N'mpoller17', N'Marya', N'Poller', N'mpoller17@ocn.ne.jp', N'162 Nova Center', N'Lyon', 57)
GO
INSERT [dbo].[Users] ([Id], [Username], [FirstName], [LastName], [Email], [Address], [City], [Age]) VALUES (45, N'mprobbing18', N'Maria', N'Probbing', N'mprobbing18@parallels.com', N'4853 Del Mar Hill', N'Quáº­n NÄƒm', 37)
GO
INSERT [dbo].[Users] ([Id], [Username], [FirstName], [LastName], [Email], [Address], [City], [Age]) VALUES (46, N'smatokhnin19', N'Serena', N'Matokhnin', N'smatokhnin19@deliciousdays.com', N'52483 David Road', N'Corujeira', 78)
GO
INSERT [dbo].[Users] ([Id], [Username], [FirstName], [LastName], [Email], [Address], [City], [Age]) VALUES (47, N'aquincey1a', N'Andrus', N'Quincey', N'aquincey1a@sciencedirect.com', N'0493 Oriole Drive', N'San Antonio', 38)
GO
INSERT [dbo].[Users] ([Id], [Username], [FirstName], [LastName], [Email], [Address], [City], [Age]) VALUES (48, N'clarne1b', N'Cody', N'Larne', N'clarne1b@japanpost.jp', N'580 Anzinger Plaza', N'Zhongxiang', 74)
GO
INSERT [dbo].[Users] ([Id], [Username], [FirstName], [LastName], [Email], [Address], [City], [Age]) VALUES (49, N'cwills1c', N'Cob', N'Wills', N'cwills1c@lulu.com', N'9802 High Crossing Street', N'Itabira', 65)
GO
INSERT [dbo].[Users] ([Id], [Username], [FirstName], [LastName], [Email], [Address], [City], [Age]) VALUES (50, N'jpudsall1d', N'Jennette', N'Pudsall', N'jpudsall1d@de.vu', N'037 Tomscot Hill', N'Bagangan', 55)
GO
INSERT [dbo].[Users] ([Id], [Username], [FirstName], [LastName], [Email], [Address], [City], [Age]) VALUES (51, N'aklimko1e', N'Alfonse', N'Klimko', N'aklimko1e@si.edu', N'2 Springs Alley', N'Koina', 25)
GO
INSERT [dbo].[Users] ([Id], [Username], [FirstName], [LastName], [Email], [Address], [City], [Age]) VALUES (52, N'vgrabham1f', N'Vincents', N'Grabham', N'vgrabham1f@purevolume.com', N'576 Blue Bill Park Circle', N'Berck', 27)
GO
INSERT [dbo].[Users] ([Id], [Username], [FirstName], [LastName], [Email], [Address], [City], [Age]) VALUES (53, N'ebracknall1g', N'Elmer', N'Bracknall', N'ebracknall1g@icio.us', N'86 Cambridge Way', N'Pedro GarcÃ­a', 62)
GO
INSERT [dbo].[Users] ([Id], [Username], [FirstName], [LastName], [Email], [Address], [City], [Age]) VALUES (54, N'meaglestone1h', N'Mort', N'Eaglestone', N'meaglestone1h@infoseek.co.jp', N'33 Spaight Way', N'Washington', 63)
GO
INSERT [dbo].[Users] ([Id], [Username], [FirstName], [LastName], [Email], [Address], [City], [Age]) VALUES (55, N'aswayton1i', N'Allissa', N'Swayton', N'aswayton1i@shareasale.com', N'34995 Del Sol Drive', N'Jales', 71)
GO
INSERT [dbo].[Users] ([Id], [Username], [FirstName], [LastName], [Email], [Address], [City], [Age]) VALUES (56, N'gplayhill1j', N'Gallagher', N'Playhill', N'gplayhill1j@instagram.com', N'6 Green Plaza', N'Goghtâ€™', 74)
GO
INSERT [dbo].[Users] ([Id], [Username], [FirstName], [LastName], [Email], [Address], [City], [Age]) VALUES (57, N'telcoate1k', N'Theodosia', N'Elcoate', N'telcoate1k@hc360.com', N'445 Straubel Plaza', N'Heka', 35)
GO
INSERT [dbo].[Users] ([Id], [Username], [FirstName], [LastName], [Email], [Address], [City], [Age]) VALUES (58, N'lshea1l', N'Leodora', N'Shea', N'lshea1l@blinklist.com', N'262 Helena Way', N'Gelan', 37)
GO
INSERT [dbo].[Users] ([Id], [Username], [FirstName], [LastName], [Email], [Address], [City], [Age]) VALUES (59, N'ywesker1m', N'Yuri', N'Wesker', N'ywesker1m@usgs.gov', N'07927 Hoffman Terrace', N'Tapakrejo', 72)
GO
INSERT [dbo].[Users] ([Id], [Username], [FirstName], [LastName], [Email], [Address], [City], [Age]) VALUES (60, N'vyerborn1n', N'Vale', N'Yerborn', N'vyerborn1n@unicef.org', N'86436 Holy Cross Court', N'Vila do Bispo', 40)
GO
INSERT [dbo].[Users] ([Id], [Username], [FirstName], [LastName], [Email], [Address], [City], [Age]) VALUES (61, N'bbazley1o', N'Bill', N'Bazley', N'bbazley1o@naver.com', N'28 Lawn Alley', N'Songdong', 67)
GO
INSERT [dbo].[Users] ([Id], [Username], [FirstName], [LastName], [Email], [Address], [City], [Age]) VALUES (62, N'rnaulty1p', N'Rosetta', N'Naulty', N'rnaulty1p@twitpic.com', N'383 Westridge Place', N'Gabahan', 63)
GO
INSERT [dbo].[Users] ([Id], [Username], [FirstName], [LastName], [Email], [Address], [City], [Age]) VALUES (63, N'mleander1q', N'Milli', N'Leander', N'mleander1q@networkadvertising.org', N'57 Brown Road', N'Patique', 72)
GO
INSERT [dbo].[Users] ([Id], [Username], [FirstName], [LastName], [Email], [Address], [City], [Age]) VALUES (64, N'tpohling1r', N'Talia', N'Pohling', N'tpohling1r@oaic.gov.au', N'642 Browning Center', N'SkÃ«nderbegas', 88)
GO
INSERT [dbo].[Users] ([Id], [Username], [FirstName], [LastName], [Email], [Address], [City], [Age]) VALUES (65, N'kspray1s', N'Kristofer', N'Spray', N'kspray1s@nydailynews.com', N'345 Farwell Hill', N'Alikalia', 60)
GO
INSERT [dbo].[Users] ([Id], [Username], [FirstName], [LastName], [Email], [Address], [City], [Age]) VALUES (66, N'gmadrell1t', N'Gaston', N'Madrell', N'gmadrell1t@4shared.com', N'05 Annamark Road', N'Lazaro Cardenas', 87)
GO
INSERT [dbo].[Users] ([Id], [Username], [FirstName], [LastName], [Email], [Address], [City], [Age]) VALUES (67, N'bdreger1u', N'Blakelee', N'Dreger', N'bdreger1u@jimdo.com', N'751 Meadow Valley Lane', N'Firovo', 85)
GO
INSERT [dbo].[Users] ([Id], [Username], [FirstName], [LastName], [Email], [Address], [City], [Age]) VALUES (68, N'nlevey1v', N'Noah', N'Levey', N'nlevey1v@cam.ac.uk', N'45 Jenna Crossing', N'Dalarik', 64)
GO
INSERT [dbo].[Users] ([Id], [Username], [FirstName], [LastName], [Email], [Address], [City], [Age]) VALUES (69, N'egouldthorpe1w', N'Erin', N'Gouldthorpe', N'egouldthorpe1w@va.gov', N'557 Graedel Terrace', N'Bezons', 66)
GO
INSERT [dbo].[Users] ([Id], [Username], [FirstName], [LastName], [Email], [Address], [City], [Age]) VALUES (70, N'bharlin1x', N'Bessie', N'Harlin', N'bharlin1x@xing.com', N'70163 Everett Crossing', N'Bundibugyo', 67)
GO
INSERT [dbo].[Users] ([Id], [Username], [FirstName], [LastName], [Email], [Address], [City], [Age]) VALUES (71, N'eseeking1y', N'Emilee', N'Seeking', N'eseeking1y@hostgator.com', N'7679 Annamark Pass', N'Banikoara', 62)
GO
INSERT [dbo].[Users] ([Id], [Username], [FirstName], [LastName], [Email], [Address], [City], [Age]) VALUES (72, N'eeden1z', N'Erv', N'Eden', N'eeden1z@networksolutions.com', N'712 Scott Alley', N'Alfena', 77)
GO
INSERT [dbo].[Users] ([Id], [Username], [FirstName], [LastName], [Email], [Address], [City], [Age]) VALUES (73, N'kmilligan20', N'Kamillah', N'Milligan', N'kmilligan20@dell.com', N'3 Amoth Plaza', N'Garibaldi', 72)
GO
INSERT [dbo].[Users] ([Id], [Username], [FirstName], [LastName], [Email], [Address], [City], [Age]) VALUES (74, N'okarchewski21', N'Octavius', N'Karchewski', N'okarchewski21@slideshare.net', N'5 Northwestern Pass', N'Shangyang', 56)
GO
INSERT [dbo].[Users] ([Id], [Username], [FirstName], [LastName], [Email], [Address], [City], [Age]) VALUES (75, N'jhelling22', N'Jolee', N'Helling', N'jhelling22@prweb.com', N'88 Morning Junction', N'Ãvato', 77)
GO
INSERT [dbo].[Users] ([Id], [Username], [FirstName], [LastName], [Email], [Address], [City], [Age]) VALUES (76, N'hosbourn23', N'Haydon', N'Osbourn', N'hosbourn23@bluehost.com', N'36931 Hermina Road', N'Adamstown', 52)
GO
INSERT [dbo].[Users] ([Id], [Username], [FirstName], [LastName], [Email], [Address], [City], [Age]) VALUES (77, N'espurdens24', N'Ed', N'Spurdens', N'espurdens24@bloglines.com', N'30219 Dwight Pass', N'Fengshan', 77)
GO
INSERT [dbo].[Users] ([Id], [Username], [FirstName], [LastName], [Email], [Address], [City], [Age]) VALUES (78, N'dmacnish25', N'Dulci', N'MacNish', N'dmacnish25@forbes.com', N'94 Clove Drive', N'Peruc', 62)
GO
INSERT [dbo].[Users] ([Id], [Username], [FirstName], [LastName], [Email], [Address], [City], [Age]) VALUES (79, N'sshropshire26', N'Sharron', N'Shropshire', N'sshropshire26@toplist.cz', N'09664 Harbort Park', N'Sabang', 44)
GO
INSERT [dbo].[Users] ([Id], [Username], [FirstName], [LastName], [Email], [Address], [City], [Age]) VALUES (80, N'dbradley27', N'Dell', N'Bradley', N'dbradley27@apache.org', N'78 Manley Lane', N'Jiagao', 56)
GO
INSERT [dbo].[Users] ([Id], [Username], [FirstName], [LastName], [Email], [Address], [City], [Age]) VALUES (81, N'hsanderson28', N'Hammad', N'Sanderson', N'hsanderson28@hibu.com', N'0869 Manufacturers Avenue', N'Gangshangji', 60)
GO
INSERT [dbo].[Users] ([Id], [Username], [FirstName], [LastName], [Email], [Address], [City], [Age]) VALUES (82, N'pminty29', N'Paulie', N'Minty', N'pminty29@sfgate.com', N'96105 Farwell Center', N'HÌ±olon', 64)
GO
INSERT [dbo].[Users] ([Id], [Username], [FirstName], [LastName], [Email], [Address], [City], [Age]) VALUES (83, N'cnisby2a', N'Creighton', N'Nisby', N'cnisby2a@bloomberg.com', N'58 Tennyson Place', N'Kuala Lumpur', 41)
GO
INSERT [dbo].[Users] ([Id], [Username], [FirstName], [LastName], [Email], [Address], [City], [Age]) VALUES (84, N'wtroillet2b', N'Wileen', N'Troillet', N'wtroillet2b@yolasite.com', N'13854 Mitchell Drive', N'Stupsk', 53)
GO
INSERT [dbo].[Users] ([Id], [Username], [FirstName], [LastName], [Email], [Address], [City], [Age]) VALUES (85, N'hdury2c', N'Hesther', N'Dury', N'hdury2c@reuters.com', N'391 Pine View Court', N'Boise', 24)
GO
INSERT [dbo].[Users] ([Id], [Username], [FirstName], [LastName], [Email], [Address], [City], [Age]) VALUES (86, N'sdarbon2d', N'Susie', N'Darbon', N'sdarbon2d@state.gov', N'4 Monument Street', N'Xinhua', 41)
GO
INSERT [dbo].[Users] ([Id], [Username], [FirstName], [LastName], [Email], [Address], [City], [Age]) VALUES (87, N'pstreeter2e', N'Prince', N'Streeter', N'pstreeter2e@deviantart.com', N'44 Doe Crossing Lane', N'Napu', 37)
GO
INSERT [dbo].[Users] ([Id], [Username], [FirstName], [LastName], [Email], [Address], [City], [Age]) VALUES (88, N'ncalder2f', N'Nester', N'Calder', N'ncalder2f@cdc.gov', N'6 Westridge Place', N'RibeirÃ£o Preto', 48)
GO
INSERT [dbo].[Users] ([Id], [Username], [FirstName], [LastName], [Email], [Address], [City], [Age]) VALUES (89, N'cscritch2g', N'Carmela', N'Scritch', N'cscritch2g@sciencedirect.com', N'16835 Porter Plaza', N'Eastern Suburbs Mc', 62)
GO
INSERT [dbo].[Users] ([Id], [Username], [FirstName], [LastName], [Email], [Address], [City], [Age]) VALUES (90, N'mhowler2h', N'Malinda', N'Howler', N'mhowler2h@ted.com', N'9 Warbler Plaza', N'Tanahwurung', 49)
GO
INSERT [dbo].[Users] ([Id], [Username], [FirstName], [LastName], [Email], [Address], [City], [Age]) VALUES (91, N'agristwood2i', N'Alard', N'Gristwood', N'agristwood2i@blogs.com', N'8 Waywood Junction', N'Soasio', 69)
GO
INSERT [dbo].[Users] ([Id], [Username], [FirstName], [LastName], [Email], [Address], [City], [Age]) VALUES (92, N'rshitliffe2j', N'Ruben', N'Shitliffe', N'rshitliffe2j@rediff.com', N'96345 Crownhardt Road', N'Tembilahan', 68)
GO
INSERT [dbo].[Users] ([Id], [Username], [FirstName], [LastName], [Email], [Address], [City], [Age]) VALUES (93, N'wchasemore2k', N'Wallis', N'Chasemore', N'wchasemore2k@wikispaces.com', N'2 Mitchell Hill', N'Kultayevo', 61)
GO
INSERT [dbo].[Users] ([Id], [Username], [FirstName], [LastName], [Email], [Address], [City], [Age]) VALUES (94, N'sbilham2l', N'Stacie', N'Bilham', N'sbilham2l@hatena.ne.jp', N'549 Hanover Drive', N'Zavetnoye', 30)
GO
INSERT [dbo].[Users] ([Id], [Username], [FirstName], [LastName], [Email], [Address], [City], [Age]) VALUES (95, N'alago2m', N'Auria', N'Lago', N'alago2m@drupal.org', N'737 Westport Crossing', N'Vsevolozhsk', 56)
GO
INSERT [dbo].[Users] ([Id], [Username], [FirstName], [LastName], [Email], [Address], [City], [Age]) VALUES (96, N'gpancast2n', N'Gustavus', N'Pancast', N'gpancast2n@reuters.com', N'34480 Sycamore Parkway', N'Rzhev', 46)
GO
INSERT [dbo].[Users] ([Id], [Username], [FirstName], [LastName], [Email], [Address], [City], [Age]) VALUES (97, N'lgoldsmith2o', N'Lorri', N'Goldsmith', N'lgoldsmith2o@bloglovin.com', N'2 Ohio Circle', N'Mtimbira', 63)
GO
INSERT [dbo].[Users] ([Id], [Username], [FirstName], [LastName], [Email], [Address], [City], [Age]) VALUES (98, N'tgoulstone2p', N'Thornton', N'Goulstone', N'tgoulstone2p@paginegialle.it', N'7 South Street', N'KlenÄÃ­ pod ÄŒerchovem', 34)
GO
INSERT [dbo].[Users] ([Id], [Username], [FirstName], [LastName], [Email], [Address], [City], [Age]) VALUES (99, N'dmctrustrie2q', N'Doyle', N'McTrustrie', N'dmctrustrie2q@answers.com', N'131 West Way', N'Vichy', 74)
GO
INSERT [dbo].[Users] ([Id], [Username], [FirstName], [LastName], [Email], [Address], [City], [Age]) VALUES (100, N'ckleeborn2r', N'Cody', N'Kleeborn', N'ckleeborn2r@abc.net.au', N'7 Loeprich Point', N'Bongbong', 67)
GO
SET IDENTITY_INSERT [dbo].[Users] OFF
GO
USE [master]
GO
ALTER DATABASE [ExampleDatabase] SET  READ_WRITE 
GO
