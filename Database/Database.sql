USE [master]
GO
/****** Object:  Database [ExampleDatabase]    Script Date: 7/14/2021 10:16:11 AM ******/
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
/****** Object:  Table [dbo].[Cars]    Script Date: 7/14/2021 10:16:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cars](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Model] [varchar](64) NOT NULL,
	[Maker] [varchar](64) NOT NULL,
	[Year] [int] NOT NULL,
	[Price] [int] NOT NULL,
	[Color] [varchar](16) NULL,
 CONSTRAINT [PK_CarsMockData] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 7/14/2021 10:16:11 AM ******/
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
SET IDENTITY_INSERT [dbo].[Cars] ON 
GO
INSERT [dbo].[Cars] ([Id], [Model], [Maker], [Year], [Price], [Color]) VALUES (1, N'9-3', N'Saab', 2003, 7752, N'Purple')
GO
INSERT [dbo].[Cars] ([Id], [Model], [Maker], [Year], [Price], [Color]) VALUES (2, N'I', N'Infiniti', 1997, 4675, N'Aquamarine')
GO
INSERT [dbo].[Cars] ([Id], [Model], [Maker], [Year], [Price], [Color]) VALUES (3, N'Parisienne', N'Pontiac', 1984, 8260, N'Green')
GO
INSERT [dbo].[Cars] ([Id], [Model], [Maker], [Year], [Price], [Color]) VALUES (4, N'Monte Carlo', N'Chevrolet', 2004, 4659, N'Mauv')
GO
INSERT [dbo].[Cars] ([Id], [Model], [Maker], [Year], [Price], [Color]) VALUES (5, N'Summit', N'Eagle', 1992, 2688, N'Maroon')
GO
INSERT [dbo].[Cars] ([Id], [Model], [Maker], [Year], [Price], [Color]) VALUES (6, N'500E', N'Mercedes-Benz', 1993, 6153, N'Crimson')
GO
INSERT [dbo].[Cars] ([Id], [Model], [Maker], [Year], [Price], [Color]) VALUES (7, N'C-Class', N'Mercedes-Benz', 1997, 3925, N'Fuscia')
GO
INSERT [dbo].[Cars] ([Id], [Model], [Maker], [Year], [Price], [Color]) VALUES (8, N'Dakota', N'Dodge', 2005, 5823, N'Teal')
GO
INSERT [dbo].[Cars] ([Id], [Model], [Maker], [Year], [Price], [Color]) VALUES (9, N'Touareg 2', N'Volkswagen', 2009, 7933, N'Teal')
GO
INSERT [dbo].[Cars] ([Id], [Model], [Maker], [Year], [Price], [Color]) VALUES (10, N'Q5', N'Audi', 2009, 8271, N'Pink')
GO
INSERT [dbo].[Cars] ([Id], [Model], [Maker], [Year], [Price], [Color]) VALUES (11, N'F350', N'Ford', 2007, 8282, N'Orange')
GO
INSERT [dbo].[Cars] ([Id], [Model], [Maker], [Year], [Price], [Color]) VALUES (12, N'Econoline E150', N'Ford', 2002, 6905, N'Green')
GO
INSERT [dbo].[Cars] ([Id], [Model], [Maker], [Year], [Price], [Color]) VALUES (13, N'I', N'Infiniti', 1996, 7195, N'Mauv')
GO
INSERT [dbo].[Cars] ([Id], [Model], [Maker], [Year], [Price], [Color]) VALUES (14, N'del Sol', N'Honda', 1996, 9675, N'Fuscia')
GO
INSERT [dbo].[Cars] ([Id], [Model], [Maker], [Year], [Price], [Color]) VALUES (15, N'Viper', N'Dodge', 2004, 2011, N'Maroon')
GO
INSERT [dbo].[Cars] ([Id], [Model], [Maker], [Year], [Price], [Color]) VALUES (16, N'Grand Prix', N'Pontiac', 1968, 3863, N'Indigo')
GO
INSERT [dbo].[Cars] ([Id], [Model], [Maker], [Year], [Price], [Color]) VALUES (17, N'Matrix', N'Toyota', 2011, 3109, N'Purple')
GO
INSERT [dbo].[Cars] ([Id], [Model], [Maker], [Year], [Price], [Color]) VALUES (18, N'MPV', N'Mazda', 2005, 3348, N'Indigo')
GO
INSERT [dbo].[Cars] ([Id], [Model], [Maker], [Year], [Price], [Color]) VALUES (19, N'Tacoma Xtra', N'Toyota', 1996, 8254, N'Mauv')
GO
INSERT [dbo].[Cars] ([Id], [Model], [Maker], [Year], [Price], [Color]) VALUES (20, N'Sedona', N'Kia', 2012, 7276, N'Goldenrod')
GO
INSERT [dbo].[Cars] ([Id], [Model], [Maker], [Year], [Price], [Color]) VALUES (21, N'V70', N'Volvo', 2005, 6573, N'Blue')
GO
INSERT [dbo].[Cars] ([Id], [Model], [Maker], [Year], [Price], [Color]) VALUES (22, N'Forte', N'Kia', 2012, 7281, N'Khaki')
GO
INSERT [dbo].[Cars] ([Id], [Model], [Maker], [Year], [Price], [Color]) VALUES (23, N'GTI', N'Volkswagen', 2001, 3136, N'Maroon')
GO
INSERT [dbo].[Cars] ([Id], [Model], [Maker], [Year], [Price], [Color]) VALUES (24, N'Club Wagon', N'Ford', 1997, 5882, N'Aquamarine')
GO
INSERT [dbo].[Cars] ([Id], [Model], [Maker], [Year], [Price], [Color]) VALUES (25, N'GTI', N'Volkswagen', 2007, 4513, N'Purple')
GO
INSERT [dbo].[Cars] ([Id], [Model], [Maker], [Year], [Price], [Color]) VALUES (26, N'H1', N'Hummer', 1998, 3161, N'Orange')
GO
INSERT [dbo].[Cars] ([Id], [Model], [Maker], [Year], [Price], [Color]) VALUES (27, N'Aerostar', N'Ford', 1990, 7153, N'Teal')
GO
INSERT [dbo].[Cars] ([Id], [Model], [Maker], [Year], [Price], [Color]) VALUES (28, N'Land Cruiser', N'Toyota', 2005, 7451, N'Orange')
GO
INSERT [dbo].[Cars] ([Id], [Model], [Maker], [Year], [Price], [Color]) VALUES (29, N'Avalon', N'Toyota', 1999, 2943, N'Puce')
GO
INSERT [dbo].[Cars] ([Id], [Model], [Maker], [Year], [Price], [Color]) VALUES (30, N'MX-6', N'Mazda', 1997, 3000, N'Pink')
GO
INSERT [dbo].[Cars] ([Id], [Model], [Maker], [Year], [Price], [Color]) VALUES (31, N'Topaz', N'Mercury', 1991, 2582, N'Goldenrod')
GO
INSERT [dbo].[Cars] ([Id], [Model], [Maker], [Year], [Price], [Color]) VALUES (32, N'Sonoma', N'GMC', 2003, 8493, N'Indigo')
GO
INSERT [dbo].[Cars] ([Id], [Model], [Maker], [Year], [Price], [Color]) VALUES (33, N'Vigor', N'Acura', 1992, 8429, N'Puce')
GO
INSERT [dbo].[Cars] ([Id], [Model], [Maker], [Year], [Price], [Color]) VALUES (34, N'Justy', N'Subaru', 1989, 8443, N'Puce')
GO
INSERT [dbo].[Cars] ([Id], [Model], [Maker], [Year], [Price], [Color]) VALUES (35, N'SLR McLaren', N'Mercedes-Benz', 2008, 9713, N'Pink')
GO
INSERT [dbo].[Cars] ([Id], [Model], [Maker], [Year], [Price], [Color]) VALUES (36, N'Tredia', N'Mitsubishi', 1984, 5557, N'Green')
GO
INSERT [dbo].[Cars] ([Id], [Model], [Maker], [Year], [Price], [Color]) VALUES (37, N'L300', N'Mitsubishi', 1990, 8746, N'Crimson')
GO
INSERT [dbo].[Cars] ([Id], [Model], [Maker], [Year], [Price], [Color]) VALUES (38, N'EV1', N'GMC', 1999, 6923, N'Crimson')
GO
INSERT [dbo].[Cars] ([Id], [Model], [Maker], [Year], [Price], [Color]) VALUES (39, N'Outlook', N'Saturn', 2010, 6482, N'Mauv')
GO
INSERT [dbo].[Cars] ([Id], [Model], [Maker], [Year], [Price], [Color]) VALUES (40, N'Vision', N'Eagle', 1994, 9876, N'Puce')
GO
INSERT [dbo].[Cars] ([Id], [Model], [Maker], [Year], [Price], [Color]) VALUES (41, N'Sienna', N'Toyota', 1999, 2838, N'Purple')
GO
INSERT [dbo].[Cars] ([Id], [Model], [Maker], [Year], [Price], [Color]) VALUES (42, N'Mountaineer', N'Mercury', 2003, 9893, N'Green')
GO
INSERT [dbo].[Cars] ([Id], [Model], [Maker], [Year], [Price], [Color]) VALUES (43, N'XC70', N'Volvo', 2010, 2341, N'Orange')
GO
INSERT [dbo].[Cars] ([Id], [Model], [Maker], [Year], [Price], [Color]) VALUES (44, N'S-Series', N'Saturn', 1996, 4791, N'Pink')
GO
INSERT [dbo].[Cars] ([Id], [Model], [Maker], [Year], [Price], [Color]) VALUES (45, N'Ram Van 3500', N'Dodge', 2001, 8648, N'Orange')
GO
INSERT [dbo].[Cars] ([Id], [Model], [Maker], [Year], [Price], [Color]) VALUES (46, N'Silverado 1500', N'Chevrolet', 2008, 4284, N'Teal')
GO
INSERT [dbo].[Cars] ([Id], [Model], [Maker], [Year], [Price], [Color]) VALUES (47, N'Eurovan', N'Volkswagen', 1992, 9382, N'Red')
GO
INSERT [dbo].[Cars] ([Id], [Model], [Maker], [Year], [Price], [Color]) VALUES (48, N'A8', N'Audi', 2001, 7989, N'Orange')
GO
INSERT [dbo].[Cars] ([Id], [Model], [Maker], [Year], [Price], [Color]) VALUES (49, N'Ram 1500 Club', N'Dodge', 1995, 8256, N'Orange')
GO
INSERT [dbo].[Cars] ([Id], [Model], [Maker], [Year], [Price], [Color]) VALUES (50, N'XL-7', N'Suzuki', 2002, 5059, N'Maroon')
GO
INSERT [dbo].[Cars] ([Id], [Model], [Maker], [Year], [Price], [Color]) VALUES (51, N'Ram 1500', N'Dodge', 2000, 2744, N'Purple')
GO
INSERT [dbo].[Cars] ([Id], [Model], [Maker], [Year], [Price], [Color]) VALUES (52, N'Sentra', N'Nissan', 2002, 5942, N'Purple')
GO
INSERT [dbo].[Cars] ([Id], [Model], [Maker], [Year], [Price], [Color]) VALUES (53, N'del Sol', N'Honda', 1997, 5157, N'Green')
GO
INSERT [dbo].[Cars] ([Id], [Model], [Maker], [Year], [Price], [Color]) VALUES (54, N'Echo', N'Toyota', 2003, 6071, N'Aquamarine')
GO
INSERT [dbo].[Cars] ([Id], [Model], [Maker], [Year], [Price], [Color]) VALUES (55, N'Seville', N'Cadillac', 1994, 4856, N'Goldenrod')
GO
INSERT [dbo].[Cars] ([Id], [Model], [Maker], [Year], [Price], [Color]) VALUES (56, N'Ram', N'Dodge', 2007, 2248, N'Crimson')
GO
INSERT [dbo].[Cars] ([Id], [Model], [Maker], [Year], [Price], [Color]) VALUES (57, N'Villager', N'Mercury', 1994, 3488, N'Fuscia')
GO
INSERT [dbo].[Cars] ([Id], [Model], [Maker], [Year], [Price], [Color]) VALUES (58, N'LTD Crown Victoria', N'Ford', 1984, 7698, N'Mauv')
GO
INSERT [dbo].[Cars] ([Id], [Model], [Maker], [Year], [Price], [Color]) VALUES (59, N'Five Hundred', N'Ford', 2006, 9260, N'Puce')
GO
INSERT [dbo].[Cars] ([Id], [Model], [Maker], [Year], [Price], [Color]) VALUES (60, N'Park Avenue', N'Buick', 2001, 2123, N'Blue')
GO
INSERT [dbo].[Cars] ([Id], [Model], [Maker], [Year], [Price], [Color]) VALUES (61, N'PT Cruiser', N'Chrysler', 2007, 3608, N'Yellow')
GO
INSERT [dbo].[Cars] ([Id], [Model], [Maker], [Year], [Price], [Color]) VALUES (62, N'100', N'Audi', 1992, 4326, N'Indigo')
GO
INSERT [dbo].[Cars] ([Id], [Model], [Maker], [Year], [Price], [Color]) VALUES (63, N'E-Class', N'Mercedes-Benz', 1990, 8573, N'Orange')
GO
INSERT [dbo].[Cars] ([Id], [Model], [Maker], [Year], [Price], [Color]) VALUES (64, N'Wrangler', N'Jeep', 1992, 3122, N'Teal')
GO
INSERT [dbo].[Cars] ([Id], [Model], [Maker], [Year], [Price], [Color]) VALUES (65, N'Tacoma', N'Toyota', 2009, 9937, N'Goldenrod')
GO
INSERT [dbo].[Cars] ([Id], [Model], [Maker], [Year], [Price], [Color]) VALUES (66, N'Relay', N'Saturn', 2006, 2060, N'Blue')
GO
INSERT [dbo].[Cars] ([Id], [Model], [Maker], [Year], [Price], [Color]) VALUES (67, N'Protege5', N'Mazda', 2002, 8956, N'Orange')
GO
INSERT [dbo].[Cars] ([Id], [Model], [Maker], [Year], [Price], [Color]) VALUES (68, N'Z3', N'BMW', 1998, 5315, N'Puce')
GO
INSERT [dbo].[Cars] ([Id], [Model], [Maker], [Year], [Price], [Color]) VALUES (69, N'Pathfinder', N'Nissan', 2007, 7648, N'Puce')
GO
INSERT [dbo].[Cars] ([Id], [Model], [Maker], [Year], [Price], [Color]) VALUES (70, N'Exige', N'Lotus', 2005, 6689, N'Orange')
GO
INSERT [dbo].[Cars] ([Id], [Model], [Maker], [Year], [Price], [Color]) VALUES (71, N'Eclipse', N'Mitsubishi', 2005, 9370, N'Green')
GO
INSERT [dbo].[Cars] ([Id], [Model], [Maker], [Year], [Price], [Color]) VALUES (72, N'Escalade', N'Cadillac', 2010, 8679, N'Khaki')
GO
INSERT [dbo].[Cars] ([Id], [Model], [Maker], [Year], [Price], [Color]) VALUES (73, N'Econoline E250', N'Ford', 1999, 7266, N'Turquoise')
GO
INSERT [dbo].[Cars] ([Id], [Model], [Maker], [Year], [Price], [Color]) VALUES (74, N'DB9', N'Aston Martin', 2005, 2047, N'Goldenrod')
GO
INSERT [dbo].[Cars] ([Id], [Model], [Maker], [Year], [Price], [Color]) VALUES (75, N'Laser', N'Plymouth', 1991, 5473, N'Violet')
GO
INSERT [dbo].[Cars] ([Id], [Model], [Maker], [Year], [Price], [Color]) VALUES (76, N'Savana 2500', N'GMC', 2008, 4983, N'Aquamarine')
GO
INSERT [dbo].[Cars] ([Id], [Model], [Maker], [Year], [Price], [Color]) VALUES (77, N'Sidekick', N'Suzuki', 1996, 4023, N'Turquoise')
GO
INSERT [dbo].[Cars] ([Id], [Model], [Maker], [Year], [Price], [Color]) VALUES (78, N'Trans Sport', N'Pontiac', 1995, 3694, N'Pink')
GO
INSERT [dbo].[Cars] ([Id], [Model], [Maker], [Year], [Price], [Color]) VALUES (79, N'Accord', N'Honda', 1996, 6003, N'Maroon')
GO
INSERT [dbo].[Cars] ([Id], [Model], [Maker], [Year], [Price], [Color]) VALUES (80, N'Coupe GT', N'Audi', 1986, 2338, N'Blue')
GO
INSERT [dbo].[Cars] ([Id], [Model], [Maker], [Year], [Price], [Color]) VALUES (81, N'Celica', N'Toyota', 1976, 5058, N'Blue')
GO
INSERT [dbo].[Cars] ([Id], [Model], [Maker], [Year], [Price], [Color]) VALUES (82, N'Boxster', N'Porsche', 2005, 8241, N'Mauv')
GO
INSERT [dbo].[Cars] ([Id], [Model], [Maker], [Year], [Price], [Color]) VALUES (83, N'F-Series', N'Ford', 2011, 7891, N'Fuscia')
GO
INSERT [dbo].[Cars] ([Id], [Model], [Maker], [Year], [Price], [Color]) VALUES (84, N'Rio', N'Kia', 2009, 6063, N'Turquoise')
GO
INSERT [dbo].[Cars] ([Id], [Model], [Maker], [Year], [Price], [Color]) VALUES (85, N'Premier', N'Eagle', 1992, 7880, N'Mauv')
GO
INSERT [dbo].[Cars] ([Id], [Model], [Maker], [Year], [Price], [Color]) VALUES (86, N'Savana 1500', N'GMC', 2001, 8956, N'Yellow')
GO
INSERT [dbo].[Cars] ([Id], [Model], [Maker], [Year], [Price], [Color]) VALUES (87, N'Crown Victoria', N'Ford', 1992, 7503, N'Indigo')
GO
INSERT [dbo].[Cars] ([Id], [Model], [Maker], [Year], [Price], [Color]) VALUES (88, N'Expedition', N'Ford', 2012, 9574, N'Orange')
GO
INSERT [dbo].[Cars] ([Id], [Model], [Maker], [Year], [Price], [Color]) VALUES (89, N'ES', N'Lexus', 2002, 5469, N'Mauv')
GO
INSERT [dbo].[Cars] ([Id], [Model], [Maker], [Year], [Price], [Color]) VALUES (90, N'Montero', N'Mitsubishi', 1993, 2418, N'Blue')
GO
INSERT [dbo].[Cars] ([Id], [Model], [Maker], [Year], [Price], [Color]) VALUES (91, N'LeMans', N'Pontiac', 1968, 3047, N'Green')
GO
INSERT [dbo].[Cars] ([Id], [Model], [Maker], [Year], [Price], [Color]) VALUES (92, N'Concorde', N'Chrysler', 2001, 2148, N'Violet')
GO
INSERT [dbo].[Cars] ([Id], [Model], [Maker], [Year], [Price], [Color]) VALUES (93, N'Mentor', N'Kia', 1997, 6573, N'Khaki')
GO
INSERT [dbo].[Cars] ([Id], [Model], [Maker], [Year], [Price], [Color]) VALUES (94, N'E-Class', N'Mercedes-Benz', 1994, 8128, N'Yellow')
GO
INSERT [dbo].[Cars] ([Id], [Model], [Maker], [Year], [Price], [Color]) VALUES (95, N'CX-7', N'Mazda', 2012, 2186, N'Mauv')
GO
INSERT [dbo].[Cars] ([Id], [Model], [Maker], [Year], [Price], [Color]) VALUES (96, N'Grand Caravan', N'Dodge', 1997, 6830, N'Mauv')
GO
INSERT [dbo].[Cars] ([Id], [Model], [Maker], [Year], [Price], [Color]) VALUES (97, N'Mariner', N'Mercury', 2008, 4511, N'Orange')
GO
INSERT [dbo].[Cars] ([Id], [Model], [Maker], [Year], [Price], [Color]) VALUES (98, N'LS', N'Lexus', 2002, 8112, N'Orange')
GO
INSERT [dbo].[Cars] ([Id], [Model], [Maker], [Year], [Price], [Color]) VALUES (99, N'VUE', N'Saturn', 2005, 8003, N'Violet')
GO
INSERT [dbo].[Cars] ([Id], [Model], [Maker], [Year], [Price], [Color]) VALUES (100, N'Phantom', N'Rolls-Royce', 2006, 2404, N'Khaki')
GO
SET IDENTITY_INSERT [dbo].[Cars] OFF
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
