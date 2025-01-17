USE [Biere_BDD]
GO
/****** Object:  Table [dbo].[Biere]    Script Date: 21/02/2022 11:18:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Biere](
	[NomMarque] [varchar](50) NOT NULL,
	[Version] [varchar](50) NOT NULL,
	[NumType] [int] NULL,
	[CouleurBiere] [char](10) NULL,
	[TauxAlcool] [real] NULL,
	[Caracteristiques] [nvarchar](500) NULL,
	[DateCreation] [date] NULL,
 CONSTRAINT [pk_Biere] PRIMARY KEY CLUSTERED 
(
	[NomMarque] ASC,
	[Version] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Brasserie]    Script Date: 21/02/2022 11:18:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Brasserie](
	[CodeBrasserie] [varchar](50) NOT NULL,
	[NomBrasserie] [nvarchar](45) NULL,
	[Ville] [nvarchar](50) NULL,
	[NomRegion] [varchar](50) NOT NULL,
 CONSTRAINT [PK_BRASSERIE] PRIMARY KEY CLUSTERED 
(
	[CodeBrasserie] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Marque]    Script Date: 21/02/2022 11:18:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Marque](
	[NomMarque] [varchar](50) NOT NULL,
	[CodeBrasserie] [varchar](50) NOT NULL,
 CONSTRAINT [pk_NomMarque] PRIMARY KEY CLUSTERED 
(
	[NomMarque] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pays]    Script Date: 21/02/2022 11:18:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pays](
	[NomPays] [nvarchar](20) NOT NULL,
	[Consommation] [float] NULL,
	[Production] [float] NULL,
 CONSTRAINT [PK_PAYS] PRIMARY KEY CLUSTERED 
(
	[NomPays] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PaysType]    Script Date: 21/02/2022 11:18:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PaysType](
	[NomType] [nvarchar](20) NOT NULL,
	[NroType] [int] NOT NULL,
 CONSTRAINT [PK_PaysType] PRIMARY KEY CLUSTERED 
(
	[NomType] ASC,
	[NroType] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Region]    Script Date: 21/02/2022 11:18:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Region](
	[NomRegion] [varchar](50) NOT NULL,
	[NomPays] [nvarchar](20) NOT NULL,
 CONSTRAINT [PK_REGION] PRIMARY KEY CLUSTERED 
(
	[NomRegion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Type]    Script Date: 21/02/2022 11:18:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Type](
	[NroType] [int] NOT NULL,
	[NomType] [nvarchar](200) NULL,
	[Description] [nvarchar](200) NULL,
	[Fermentation] [nvarchar](10) NULL,
	[Commentaire] [nvarchar](80) NULL,
 CONSTRAINT [PK_TYPE] PRIMARY KEY CLUSTERED 
(
	[NroType] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Biere] ([NomMarque], [Version], [NumType], [CouleurBiere], [TauxAlcool], [Caracteristiques], [DateCreation]) VALUES (N'1664', N'1664', 1, N'blonde    ', 6.3, N'date de la fondation de la Brasserie', CAST(N'2006-01-01' AS Date))
INSERT [dbo].[Biere] ([NomMarque], [Version], [NumType], [CouleurBiere], [TauxAlcool], [Caracteristiques], [DateCreation]) VALUES (N'Affligem', N'Blonde', 4, N'brune     ', 7, N'', CAST(N'2006-02-01' AS Date))
INSERT [dbo].[Biere] ([NomMarque], [Version], [NumType], [CouleurBiere], [TauxAlcool], [Caracteristiques], [DateCreation]) VALUES (N'Affligem', N'Double', 4, N'rousse    ', 7, N'', CAST(N'2006-03-01' AS Date))
INSERT [dbo].[Biere] ([NomMarque], [Version], [NumType], [CouleurBiere], [TauxAlcool], [Caracteristiques], [DateCreation]) VALUES (N'Affligem', N'Triple', 4, N'blonde    ', 8.5, N'', CAST(N'2006-04-01' AS Date))
INSERT [dbo].[Biere] ([NomMarque], [Version], [NumType], [CouleurBiere], [TauxAlcool], [Caracteristiques], [DateCreation]) VALUES (N'Angelus', N'Angelus', 5, N'brune     ', 7, N'Biere de garde au froment', CAST(N'2006-05-01' AS Date))
INSERT [dbo].[Biere] ([NomMarque], [Version], [NumType], [CouleurBiere], [TauxAlcool], [Caracteristiques], [DateCreation]) VALUES (N'Ayinger', N'Bräu-Weisse', 6, N'rousse    ', 5, N'', CAST(N'2006-06-01' AS Date))
INSERT [dbo].[Biere] ([NomMarque], [Version], [NumType], [CouleurBiere], [TauxAlcool], [Caracteristiques], [DateCreation]) VALUES (N'Ayinger', N'Fortunator Doppelbock Dunkel', 2, N'blonde    ', 7.5, N'vendue en France sous le nom de celebrator', CAST(N'2006-07-01' AS Date))
INSERT [dbo].[Biere] ([NomMarque], [Version], [NumType], [CouleurBiere], [TauxAlcool], [Caracteristiques], [DateCreation]) VALUES (N'Ayinger', N'Jahrhundert-Bier', 10, N'brune     ', 5.5, N'plaisante biere de soif', CAST(N'2006-08-01' AS Date))
INSERT [dbo].[Biere] ([NomMarque], [Version], [NumType], [CouleurBiere], [TauxAlcool], [Caracteristiques], [DateCreation]) VALUES (N'Bass', N'Pale Ale', 3, N'rousse    ', 5, N'peinte dans un tableau de Manet  "Un bar aux Folies-Bergeres"', CAST(N'2006-09-01' AS Date))
INSERT [dbo].[Biere] ([NomMarque], [Version], [NumType], [CouleurBiere], [TauxAlcool], [Caracteristiques], [DateCreation]) VALUES (N'Batemans', N'India Pale Ale', 3, N'blonde    ', 3.8, N'cette appellation renvoie à l''epoque de l''Empire des Indes', CAST(N'2006-10-01' AS Date))
INSERT [dbo].[Biere] ([NomMarque], [Version], [NumType], [CouleurBiere], [TauxAlcool], [Caracteristiques], [DateCreation]) VALUES (N'Batemans', N'Triple XB.  Ale', 3, N'brune     ', 5.5, N'bitter ale', CAST(N'2006-11-01' AS Date))
INSERT [dbo].[Biere] ([NomMarque], [Version], [NumType], [CouleurBiere], [TauxAlcool], [Caracteristiques], [DateCreation]) VALUES (N'Beck''s', N'Beck''s Bier', 1, N'rousse    ', 4.5, N'', CAST(N'2006-12-01' AS Date))
INSERT [dbo].[Biere] ([NomMarque], [Version], [NumType], [CouleurBiere], [TauxAlcool], [Caracteristiques], [DateCreation]) VALUES (N'Belhaven', N'Scottish Ale', 3, N'blonde    ', 4.5, N'', CAST(N'2006-01-13' AS Date))
INSERT [dbo].[Biere] ([NomMarque], [Version], [NumType], [CouleurBiere], [TauxAlcool], [Caracteristiques], [DateCreation]) VALUES (N'Berliner Kindl', N'Weisse', 6, N'brune     ', 2.5, N'les blanches berlinoises sont moins fortes que celles de Baviere', CAST(N'2006-01-14' AS Date))
INSERT [dbo].[Biere] ([NomMarque], [Version], [NumType], [CouleurBiere], [TauxAlcool], [Caracteristiques], [DateCreation]) VALUES (N'Black Stout', N'Black Stout', 7, N'rousse    ', 5, N'', CAST(N'2006-01-15' AS Date))
INSERT [dbo].[Biere] ([NomMarque], [Version], [NumType], [CouleurBiere], [TauxAlcool], [Caracteristiques], [DateCreation]) VALUES (N'Bombardier', N'Strong Ale', 3, N'blonde    ', 5.5, N'', CAST(N'2006-01-16' AS Date))
INSERT [dbo].[Biere] ([NomMarque], [Version], [NumType], [CouleurBiere], [TauxAlcool], [Caracteristiques], [DateCreation]) VALUES (N'Bonne Esperance', N'Abbaye de Bonne Esperance', 4, N'brune     ', 8, N'', CAST(N'2006-01-17' AS Date))
INSERT [dbo].[Biere] ([NomMarque], [Version], [NumType], [CouleurBiere], [TauxAlcool], [Caracteristiques], [DateCreation]) VALUES (N'Brand', N'Up (Urtyp)', 1, N'rousse    ', 5.5, N'une pils remarquable, non pasteurisee', CAST(N'2006-01-18' AS Date))
INSERT [dbo].[Biere] ([NomMarque], [Version], [NumType], [CouleurBiere], [TauxAlcool], [Caracteristiques], [DateCreation]) VALUES (N'Bruges', N'Blanche de Bruges', 6, N'blonde    ', 5, N'goût sec et rustique', CAST(N'2006-01-19' AS Date))
INSERT [dbo].[Biere] ([NomMarque], [Version], [NumType], [CouleurBiere], [TauxAlcool], [Caracteristiques], [DateCreation]) VALUES (N'Budweiser', N'Budvar', 1, N'brune     ', 5, N'l''authentique', CAST(N'2006-01-20' AS Date))
INSERT [dbo].[Biere] ([NomMarque], [Version], [NumType], [CouleurBiere], [TauxAlcool], [Caracteristiques], [DateCreation]) VALUES (N'Bush', N'Bush Beer', 10, N'rousse    ', 12, N'rien à voir avec la biere americaine legere', CAST(N'2006-01-21' AS Date))
INSERT [dbo].[Biere] ([NomMarque], [Version], [NumType], [CouleurBiere], [TauxAlcool], [Caracteristiques], [DateCreation]) VALUES (N'Carlsberg', N'Carlsberg', 1, N'blonde    ', 5.5, N'', CAST(N'2006-01-22' AS Date))
INSERT [dbo].[Biere] ([NomMarque], [Version], [NumType], [CouleurBiere], [TauxAlcool], [Caracteristiques], [DateCreation]) VALUES (N'Carlsberg', N'Elephant', 1, N'brune     ', 7.2, N'une amertune imperiale', CAST(N'2006-01-23' AS Date))
INSERT [dbo].[Biere] ([NomMarque], [Version], [NumType], [CouleurBiere], [TauxAlcool], [Caracteristiques], [DateCreation]) VALUES (N'Celta', N'Sans alcool', 1, N'rousse    ', 0, N'une des plus anciennes de France', CAST(N'2006-01-24' AS Date))
INSERT [dbo].[Biere] ([NomMarque], [Version], [NumType], [CouleurBiere], [TauxAlcool], [Caracteristiques], [DateCreation]) VALUES (N'Chambly', N'Eau Benite', 10, N'blonde    ', 7.7, N'Triple fermentation', CAST(N'2006-01-25' AS Date))
INSERT [dbo].[Biere] ([NomMarque], [Version], [NumType], [CouleurBiere], [TauxAlcool], [Caracteristiques], [DateCreation]) VALUES (N'Chambly', N'La Blanche de Chambly', 6, N'brune     ', 5, N'', CAST(N'2006-01-26' AS Date))
INSERT [dbo].[Biere] ([NomMarque], [Version], [NumType], [CouleurBiere], [TauxAlcool], [Caracteristiques], [DateCreation]) VALUES (N'Chambly', N'La Fin du Monde', 10, N'rousse    ', 9, N'Triple fermentation', CAST(N'2006-01-27' AS Date))
INSERT [dbo].[Biere] ([NomMarque], [Version], [NumType], [CouleurBiere], [TauxAlcool], [Caracteristiques], [DateCreation]) VALUES (N'Chester', N'Gold', 3, N'blonde    ', 6.5, N'brown strong ale', CAST(N'2006-01-28' AS Date))
INSERT [dbo].[Biere] ([NomMarque], [Version], [NumType], [CouleurBiere], [TauxAlcool], [Caracteristiques], [DateCreation]) VALUES (N'Chimay', N'Blanche(33cl), Cinq Cents(75cl)', 8, N'brune     ', 8, N'elle n''a rien de blanche, seule la capsule est blanche', CAST(N'2006-01-29' AS Date))
INSERT [dbo].[Biere] ([NomMarque], [Version], [NumType], [CouleurBiere], [TauxAlcool], [Caracteristiques], [DateCreation]) VALUES (N'Chimay', N'Bleue', 8, N'rousse    ', 9, N'bien charpentee', CAST(N'2006-01-30' AS Date))
INSERT [dbo].[Biere] ([NomMarque], [Version], [NumType], [CouleurBiere], [TauxAlcool], [Caracteristiques], [DateCreation]) VALUES (N'Chimay', N'Rouge (33cl), Premiere ( 75cl)', 8, N'blonde    ', 7, N'biere sur levure refermentee en bouteille', CAST(N'2006-01-31' AS Date))
INSERT [dbo].[Biere] ([NomMarque], [Version], [NumType], [CouleurBiere], [TauxAlcool], [Caracteristiques], [DateCreation]) VALUES (N'Crystal', N'Light Ale', 3, N'brune     ', 3, N'', CAST(N'2006-01-02' AS Date))
INSERT [dbo].[Biere] ([NomMarque], [Version], [NumType], [CouleurBiere], [TauxAlcool], [Caracteristiques], [DateCreation]) VALUES (N'De Koninck', N'De Koninck', 3, N'rousse    ', 5, N'aussi legere qu''une pils', CAST(N'2006-02-02' AS Date))
INSERT [dbo].[Biere] ([NomMarque], [Version], [NumType], [CouleurBiere], [TauxAlcool], [Caracteristiques], [DateCreation]) VALUES (N'Delirium Tremens', N'Delirium Tremens', 10, N'blonde    ', 9, N'à consommer avec moderation', CAST(N'2006-03-02' AS Date))
INSERT [dbo].[Biere] ([NomMarque], [Version], [NumType], [CouleurBiere], [TauxAlcool], [Caracteristiques], [DateCreation]) VALUES (N'Desperados', N'Desperados', 10, N'brune     ', 5.9, N'desesperante', CAST(N'2006-04-02' AS Date))
INSERT [dbo].[Biere] ([NomMarque], [Version], [NumType], [CouleurBiere], [TauxAlcool], [Caracteristiques], [DateCreation]) VALUES (N'Diekirch', N'Exclusive', 1, N'rousse    ', 5.2, N'', CAST(N'2006-05-02' AS Date))
INSERT [dbo].[Biere] ([NomMarque], [Version], [NumType], [CouleurBiere], [TauxAlcool], [Caracteristiques], [DateCreation]) VALUES (N'Diekirch', N'Grande reserve', 1, N'blonde    ', 6.9, N'', CAST(N'2006-06-02' AS Date))
INSERT [dbo].[Biere] ([NomMarque], [Version], [NumType], [CouleurBiere], [TauxAlcool], [Caracteristiques], [DateCreation]) VALUES (N'Diekirch', N'Premium', 1, N'brune     ', 4.8, N'', CAST(N'2006-07-02' AS Date))
INSERT [dbo].[Biere] ([NomMarque], [Version], [NumType], [CouleurBiere], [TauxAlcool], [Caracteristiques], [DateCreation]) VALUES (N'Douglas', N'Scotch Ale', 3, N'rousse    ', 8.6, N'Bitter ale', CAST(N'2006-08-02' AS Date))
INSERT [dbo].[Biere] ([NomMarque], [Version], [NumType], [CouleurBiere], [TauxAlcool], [Caracteristiques], [DateCreation]) VALUES (N'Duvel', N'Rouge', 10, N'blonde    ', 8.5, N'blonde au goût de brune de fermentation haute', CAST(N'2006-09-02' AS Date))
INSERT [dbo].[Biere] ([NomMarque], [Version], [NumType], [CouleurBiere], [TauxAlcool], [Caracteristiques], [DateCreation]) VALUES (N'Duvel', N'Verte', 10, N'brune     ', 7.5, N'', CAST(N'2006-10-02' AS Date))
INSERT [dbo].[Biere] ([NomMarque], [Version], [NumType], [CouleurBiere], [TauxAlcool], [Caracteristiques], [DateCreation]) VALUES (N'Edelweiss', N'Weizen', 6, N'rousse    ', 5, N'', CAST(N'2006-11-02' AS Date))
INSERT [dbo].[Biere] ([NomMarque], [Version], [NumType], [CouleurBiere], [TauxAlcool], [Caracteristiques], [DateCreation]) VALUES (N'Einbecker', N'Ur-Bock', 2, N'blonde    ', 6.5, N'suave, maltee, assez seche', CAST(N'2006-12-02' AS Date))
INSERT [dbo].[Biere] ([NomMarque], [Version], [NumType], [CouleurBiere], [TauxAlcool], [Caracteristiques], [DateCreation]) VALUES (N'Eku', N'Eku pils', 1, N'brune     ', 5, N'', CAST(N'2006-02-13' AS Date))
INSERT [dbo].[Biere] ([NomMarque], [Version], [NumType], [CouleurBiere], [TauxAlcool], [Caracteristiques], [DateCreation]) VALUES (N'Eku', N'Kulminator ou Eku 28', 2, N'rousse    ', 11, N'puissante, pour les amateurs de sensations fortes', CAST(N'2006-02-14' AS Date))
INSERT [dbo].[Biere] ([NomMarque], [Version], [NumType], [CouleurBiere], [TauxAlcool], [Caracteristiques], [DateCreation]) VALUES (N'Estrella', N'Estrella', 1, N'blonde    ', 5.4, N'', CAST(N'2006-02-15' AS Date))
INSERT [dbo].[Biere] ([NomMarque], [Version], [NumType], [CouleurBiere], [TauxAlcool], [Caracteristiques], [DateCreation]) VALUES (N'Faro', N'Faro Lambic', 9, N'brune     ', 4.7, N'boison legere et merveilleuse', CAST(N'2006-02-16' AS Date))
INSERT [dbo].[Biere] ([NomMarque], [Version], [NumType], [CouleurBiere], [TauxAlcool], [Caracteristiques], [DateCreation]) VALUES (N'Floreffe', N'Blonde', 4, N'rousse    ', 6.5, N'filtree et pasteurisee', CAST(N'2006-02-17' AS Date))
INSERT [dbo].[Biere] ([NomMarque], [Version], [NumType], [CouleurBiere], [TauxAlcool], [Caracteristiques], [DateCreation]) VALUES (N'Floreffe', N'Double', 4, N'blonde    ', 7, N'', CAST(N'2006-02-18' AS Date))
INSERT [dbo].[Biere] ([NomMarque], [Version], [NumType], [CouleurBiere], [TauxAlcool], [Caracteristiques], [DateCreation]) VALUES (N'Floreffe', N'La meilleure', 4, N'brune     ', 8, N'', CAST(N'2006-02-19' AS Date))
INSERT [dbo].[Biere] ([NomMarque], [Version], [NumType], [CouleurBiere], [TauxAlcool], [Caracteristiques], [DateCreation]) VALUES (N'Floreffe', N'Triple', 4, N'rousse    ', 7.5, N'', CAST(N'2006-02-20' AS Date))
INSERT [dbo].[Biere] ([NomMarque], [Version], [NumType], [CouleurBiere], [TauxAlcool], [Caracteristiques], [DateCreation]) VALUES (N'Foudroyante', N'Framboise', 9, N'blonde    ', 3.5, N'', CAST(N'2006-02-21' AS Date))
INSERT [dbo].[Biere] ([NomMarque], [Version], [NumType], [CouleurBiere], [TauxAlcool], [Caracteristiques], [DateCreation]) VALUES (N'Foudroyante', N'Gueuze', 9, N'brune     ', 5, N'', CAST(N'2006-02-22' AS Date))
INSERT [dbo].[Biere] ([NomMarque], [Version], [NumType], [CouleurBiere], [TauxAlcool], [Caracteristiques], [DateCreation]) VALUES (N'Foudroyante', N'Kriek', 9, N'rousse    ', 4, N'', CAST(N'2006-02-23' AS Date))
INSERT [dbo].[Biere] ([NomMarque], [Version], [NumType], [CouleurBiere], [TauxAlcool], [Caracteristiques], [DateCreation]) VALUES (N'Franziskaner', N'Club-Wieissbier', 6, N'blonde    ', 5, N'version sportive', CAST(N'2006-02-24' AS Date))
INSERT [dbo].[Biere] ([NomMarque], [Version], [NumType], [CouleurBiere], [TauxAlcool], [Caracteristiques], [DateCreation]) VALUES (N'Franziskaner', N'Hefe-Weissbier', 6, N'brune     ', 5, N'seche, mousseuse et pleine de corps', CAST(N'2006-02-25' AS Date))
INSERT [dbo].[Biere] ([NomMarque], [Version], [NumType], [CouleurBiere], [TauxAlcool], [Caracteristiques], [DateCreation]) VALUES (N'Franziskaner', N'Hefe-Weissbier Dunkel', 6, N'rousse    ', 5, N'version foncee de l''Heffe-Weissbier', CAST(N'2006-02-26' AS Date))
INSERT [dbo].[Biere] ([NomMarque], [Version], [NumType], [CouleurBiere], [TauxAlcool], [Caracteristiques], [DateCreation]) VALUES (N'Fruit Defendu', N'De Verboden Vrucht', 10, N'blonde    ', 8.8, N'une curiosite, tres gazeuse', CAST(N'2006-02-27' AS Date))
INSERT [dbo].[Biere] ([NomMarque], [Version], [NumType], [CouleurBiere], [TauxAlcool], [Caracteristiques], [DateCreation]) VALUES (N'Gold Fassl', N'Spezial', 1, N'brune     ', 5.6, N'', CAST(N'2006-02-28' AS Date))
INSERT [dbo].[Biere] ([NomMarque], [Version], [NumType], [CouleurBiere], [TauxAlcool], [Caracteristiques], [DateCreation]) VALUES (N'Grimbergem', N'Blonde', 4, N'rousse    ', 6.5, N'non refermentee', CAST(N'2006-01-03' AS Date))
INSERT [dbo].[Biere] ([NomMarque], [Version], [NumType], [CouleurBiere], [TauxAlcool], [Caracteristiques], [DateCreation]) VALUES (N'Grimbergem', N'Double', 4, N'blonde    ', 6.5, N'tres seche', CAST(N'2006-02-03' AS Date))
INSERT [dbo].[Biere] ([NomMarque], [Version], [NumType], [CouleurBiere], [TauxAlcool], [Caracteristiques], [DateCreation]) VALUES (N'Grimbergem', N'Optimo Bruno', 4, N'brune     ', 10, N'', CAST(N'2006-03-03' AS Date))
INSERT [dbo].[Biere] ([NomMarque], [Version], [NumType], [CouleurBiere], [TauxAlcool], [Caracteristiques], [DateCreation]) VALUES (N'Grimbergem', N'Triple', 4, N'rousse    ', 9, N'troisieme fermentation en bouteille', CAST(N'2006-04-03' AS Date))
INSERT [dbo].[Biere] ([NomMarque], [Version], [NumType], [CouleurBiere], [TauxAlcool], [Caracteristiques], [DateCreation]) VALUES (N'Grolsch', N'Herfst Bock', 2, N'blonde    ', 6.5, N'', CAST(N'2006-05-03' AS Date))
INSERT [dbo].[Biere] ([NomMarque], [Version], [NumType], [CouleurBiere], [TauxAlcool], [Caracteristiques], [DateCreation]) VALUES (N'Grolsch', N'Premium Pilsner', 1, N'brune     ', 5, N'', CAST(N'2006-06-03' AS Date))
INSERT [dbo].[Biere] ([NomMarque], [Version], [NumType], [CouleurBiere], [TauxAlcool], [Caracteristiques], [DateCreation]) VALUES (N'Guinness', N'Extra Stout', 7, N'rousse    ', 5.1, N'Etrange et bourratif breuvage', CAST(N'2006-07-03' AS Date))
INSERT [dbo].[Biere] ([NomMarque], [Version], [NumType], [CouleurBiere], [TauxAlcool], [Caracteristiques], [DateCreation]) VALUES (N'Hannen', N'Albier', 10, N'blonde    ', 4.8, N'biere à l''ancienne (altbier) de ferment. haute,  typique du bassin de la rhur', CAST(N'2006-08-03' AS Date))
INSERT [dbo].[Biere] ([NomMarque], [Version], [NumType], [CouleurBiere], [TauxAlcool], [Caracteristiques], [DateCreation]) VALUES (N'Heineken', N'Lager', 1, N'brune     ', 5, N'', CAST(N'2006-09-03' AS Date))
INSERT [dbo].[Biere] ([NomMarque], [Version], [NumType], [CouleurBiere], [TauxAlcool], [Caracteristiques], [DateCreation]) VALUES (N'Highlander', N'Traditionnal', 3, N'rousse    ', 4.5, N'', CAST(N'2006-10-03' AS Date))
INSERT [dbo].[Biere] ([NomMarque], [Version], [NumType], [CouleurBiere], [TauxAlcool], [Caracteristiques], [DateCreation]) VALUES (N'Hoegaarden', N'Blanche', 6, N'blonde    ', 5, N'', CAST(N'2006-11-03' AS Date))
INSERT [dbo].[Biere] ([NomMarque], [Version], [NumType], [CouleurBiere], [TauxAlcool], [Caracteristiques], [DateCreation]) VALUES (N'Hoegaarden', N'Grand Cru', 10, N'brune     ', 8.7, N'refermentee en bouteille et naturellement voilee', CAST(N'2006-12-03' AS Date))
INSERT [dbo].[Biere] ([NomMarque], [Version], [NumType], [CouleurBiere], [TauxAlcool], [Caracteristiques], [DateCreation]) VALUES (N'Hoegaarden', N'Julius', 10, N'rousse    ', 8.8, N'refermentee en bouteille', CAST(N'2006-03-13' AS Date))
INSERT [dbo].[Biere] ([NomMarque], [Version], [NumType], [CouleurBiere], [TauxAlcool], [Caracteristiques], [DateCreation]) VALUES (N'Imperial Stout', N'double malt', 7, N'blonde    ', 7.5, N'', CAST(N'2006-03-14' AS Date))
INSERT [dbo].[Biere] ([NomMarque], [Version], [NumType], [CouleurBiere], [TauxAlcool], [Caracteristiques], [DateCreation]) VALUES (N'Jenlain', N'Jenlain', 5, N'brune     ', 6, N'une valeur sure', CAST(N'2006-03-15' AS Date))
INSERT [dbo].[Biere] ([NomMarque], [Version], [NumType], [CouleurBiere], [TauxAlcool], [Caracteristiques], [DateCreation]) VALUES (N'John Martin''s', N'Pale Ale', 3, N'rousse    ', 5, N'', CAST(N'2006-03-16' AS Date))
INSERT [dbo].[Biere] ([NomMarque], [Version], [NumType], [CouleurBiere], [TauxAlcool], [Caracteristiques], [DateCreation]) VALUES (N'John Martin''s', N'Special', 3, N'blonde    ', 5.8, N'', CAST(N'2006-03-17' AS Date))
INSERT [dbo].[Biere] ([NomMarque], [Version], [NumType], [CouleurBiere], [TauxAlcool], [Caracteristiques], [DateCreation]) VALUES (N'Kloster', N'Sankt Bernhard', 1, N'brune     ', 7.5, N'à boire avec des bretzels geants', CAST(N'2006-03-18' AS Date))
INSERT [dbo].[Biere] ([NomMarque], [Version], [NumType], [CouleurBiere], [TauxAlcool], [Caracteristiques], [DateCreation]) VALUES (N'Kronenbourg', N'Kronenbourg', 1, N'rousse    ', 0, N'biere de grande diffusion', CAST(N'2006-03-19' AS Date))
INSERT [dbo].[Biere] ([NomMarque], [Version], [NumType], [CouleurBiere], [TauxAlcool], [Caracteristiques], [DateCreation]) VALUES (N'Kwak', N'Pauwel Kwak', 10, N'blonde    ', 8, N'à boire dans son verre: sorte de cornue accrochee à un support de bois', CAST(N'2006-03-20' AS Date))
INSERT [dbo].[Biere] ([NomMarque], [Version], [NumType], [CouleurBiere], [TauxAlcool], [Caracteristiques], [DateCreation]) VALUES (N'La Blanche Foudroyante', N'de Bruxelles', 6, N'brune     ', 4.5, N'', CAST(N'2006-03-21' AS Date))
INSERT [dbo].[Biere] ([NomMarque], [Version], [NumType], [CouleurBiere], [TauxAlcool], [Caracteristiques], [DateCreation]) VALUES (N'La Choulette', N'Ambree', 5, N'rousse    ', 7.5, N'biere artisanale', CAST(N'2006-03-22' AS Date))
INSERT [dbo].[Biere] ([NomMarque], [Version], [NumType], [CouleurBiere], [TauxAlcool], [Caracteristiques], [DateCreation]) VALUES (N'La Trappe', N'Double', 8, N'blonde    ', 6.5, N'', CAST(N'2006-03-23' AS Date))
INSERT [dbo].[Biere] ([NomMarque], [Version], [NumType], [CouleurBiere], [TauxAlcool], [Caracteristiques], [DateCreation]) VALUES (N'La Trappe', N'Quadruple', 8, N'brune     ', 10, N'', CAST(N'2006-03-24' AS Date))
INSERT [dbo].[Biere] ([NomMarque], [Version], [NumType], [CouleurBiere], [TauxAlcool], [Caracteristiques], [DateCreation]) VALUES (N'La Trappe', N'Triple', 8, N'rousse    ', 8, N'', CAST(N'2006-03-25' AS Date))
INSERT [dbo].[Biere] ([NomMarque], [Version], [NumType], [CouleurBiere], [TauxAlcool], [Caracteristiques], [DateCreation]) VALUES (N'Leffe', N'Blonde', 4, N'blonde    ', 6.5, N'', CAST(N'2006-03-26' AS Date))
INSERT [dbo].[Biere] ([NomMarque], [Version], [NumType], [CouleurBiere], [TauxAlcool], [Caracteristiques], [DateCreation]) VALUES (N'Leffe', N'Brune', 4, N'brune     ', 6.3, N'', CAST(N'2006-03-27' AS Date))
INSERT [dbo].[Biere] ([NomMarque], [Version], [NumType], [CouleurBiere], [TauxAlcool], [Caracteristiques], [DateCreation]) VALUES (N'Leffe', N'Radieuse', 4, N'rousse    ', 8.5, N'tres houblonnee', CAST(N'2006-03-28' AS Date))
INSERT [dbo].[Biere] ([NomMarque], [Version], [NumType], [CouleurBiere], [TauxAlcool], [Caracteristiques], [DateCreation]) VALUES (N'Leffe', N'Triple', 4, N'blonde    ', 8.4, N'refermentee en bouteille', CAST(N'2006-03-29' AS Date))
INSERT [dbo].[Biere] ([NomMarque], [Version], [NumType], [CouleurBiere], [TauxAlcool], [Caracteristiques], [DateCreation]) VALUES (N'Leffe', N'Vieille Cuvee', 4, N'brune     ', 8.2, N'aromatisee aux epices', CAST(N'2006-03-30' AS Date))
INSERT [dbo].[Biere] ([NomMarque], [Version], [NumType], [CouleurBiere], [TauxAlcool], [Caracteristiques], [DateCreation]) VALUES (N'Loburg', N'Pilsener', 1, N'rousse    ', 5.7, N'', CAST(N'2006-03-31' AS Date))
INSERT [dbo].[Biere] ([NomMarque], [Version], [NumType], [CouleurBiere], [TauxAlcool], [Caracteristiques], [DateCreation]) VALUES (N'Maes', N'Maes pils', 1, N'blonde    ', 5.1, N'', CAST(N'2006-01-04' AS Date))
INSERT [dbo].[Biere] ([NomMarque], [Version], [NumType], [CouleurBiere], [TauxAlcool], [Caracteristiques], [DateCreation]) VALUES (N'Mandubienne', N'bouteille33cl', 8, N'blonde    ', 7, NULL, CAST(N'2015-10-01' AS Date))
INSERT [dbo].[Biere] ([NomMarque], [Version], [NumType], [CouleurBiere], [TauxAlcool], [Caracteristiques], [DateCreation]) VALUES (N'Maredsous', N'Maredsous 10', 4, N'brune     ', 9.5, N'refermentee en bouteille', CAST(N'2006-02-04' AS Date))
INSERT [dbo].[Biere] ([NomMarque], [Version], [NumType], [CouleurBiere], [TauxAlcool], [Caracteristiques], [DateCreation]) VALUES (N'Maredsous', N'Maredsous 6', 4, N'rousse    ', 6.8, N'refermentee en bouteille', CAST(N'2006-03-04' AS Date))
INSERT [dbo].[Biere] ([NomMarque], [Version], [NumType], [CouleurBiere], [TauxAlcool], [Caracteristiques], [DateCreation]) VALUES (N'Maredsous', N'Maredsous 6 foncee', 4, N'blonde    ', 6.4, N'refermentee en bouteille', CAST(N'2006-04-04' AS Date))
INSERT [dbo].[Biere] ([NomMarque], [Version], [NumType], [CouleurBiere], [TauxAlcool], [Caracteristiques], [DateCreation]) VALUES (N'Maredsous', N'Maredsous 8', 4, N'brune     ', 8, N'refermentee en bouteille', CAST(N'2006-05-04' AS Date))
INSERT [dbo].[Biere] ([NomMarque], [Version], [NumType], [CouleurBiere], [TauxAlcool], [Caracteristiques], [DateCreation]) VALUES (N'Moinette', N'Moinette blonde', 4, N'rousse    ', 8.5, N'= Moinette des iguanodons de Bernissart ou Broqueroise de l''abbaye de St Denis', CAST(N'2006-06-04' AS Date))
INSERT [dbo].[Biere] ([NomMarque], [Version], [NumType], [CouleurBiere], [TauxAlcool], [Caracteristiques], [DateCreation]) VALUES (N'Mort Subite', N'Framboise', 9, N'blonde    ', 4, N'', CAST(N'2006-07-04' AS Date))
INSERT [dbo].[Biere] ([NomMarque], [Version], [NumType], [CouleurBiere], [TauxAlcool], [Caracteristiques], [DateCreation]) VALUES (N'Mort Subite', N'Gueuse Lambic', 9, N'brune     ', 4.5, N'coupage de jeunes et de vieux lambics', CAST(N'2006-08-04' AS Date))
INSERT [dbo].[Biere] ([NomMarque], [Version], [NumType], [CouleurBiere], [TauxAlcool], [Caracteristiques], [DateCreation]) VALUES (N'Mort Subite', N'Kriek', 9, N'rousse    ', 4.3, N'', CAST(N'2006-09-04' AS Date))
GO
INSERT [dbo].[Biere] ([NomMarque], [Version], [NumType], [CouleurBiere], [TauxAlcool], [Caracteristiques], [DateCreation]) VALUES (N'Nastro Azzuro', N'Premium', 1, N'blonde    ', 5.2, N'', CAST(N'2006-10-04' AS Date))
INSERT [dbo].[Biere] ([NomMarque], [Version], [NumType], [CouleurBiere], [TauxAlcool], [Caracteristiques], [DateCreation]) VALUES (N'Nessie', N'Mac Queen''s', 10, N'brune     ', 7.5, N'', CAST(N'2006-11-04' AS Date))
INSERT [dbo].[Biere] ([NomMarque], [Version], [NumType], [CouleurBiere], [TauxAlcool], [Caracteristiques], [DateCreation]) VALUES (N'Oatmeal', N'Stout', 7, N'rousse    ', 5, N'stout typique', CAST(N'2006-12-04' AS Date))
INSERT [dbo].[Biere] ([NomMarque], [Version], [NumType], [CouleurBiere], [TauxAlcool], [Caracteristiques], [DateCreation]) VALUES (N'Orval', N'Biere d''Orval', 8, N'blonde    ', 6.2, N'la visite de l''abbaye vaut le detour', CAST(N'2006-04-13' AS Date))
INSERT [dbo].[Biere] ([NomMarque], [Version], [NumType], [CouleurBiere], [TauxAlcool], [Caracteristiques], [DateCreation]) VALUES (N'Pastor Ale', N'Pastor Ale', 3, N'brune     ', 6.5, N'tres bonne imitation de ses voisines britanniques', CAST(N'2006-04-14' AS Date))
INSERT [dbo].[Biere] ([NomMarque], [Version], [NumType], [CouleurBiere], [TauxAlcool], [Caracteristiques], [DateCreation]) VALUES (N'Paulaner', N'Hefe-Weissbier', 6, N'rousse    ', 5, N'', CAST(N'2006-04-15' AS Date))
INSERT [dbo].[Biere] ([NomMarque], [Version], [NumType], [CouleurBiere], [TauxAlcool], [Caracteristiques], [DateCreation]) VALUES (N'Paulaner', N'Hefe-Weissbier Dunkel', 6, N'blonde    ', 5, N'', CAST(N'2006-04-16' AS Date))
INSERT [dbo].[Biere] ([NomMarque], [Version], [NumType], [CouleurBiere], [TauxAlcool], [Caracteristiques], [DateCreation]) VALUES (N'Paulaner', N'Oktoberfest', 10, N'brune     ', 0, N'', CAST(N'2006-04-17' AS Date))
INSERT [dbo].[Biere] ([NomMarque], [Version], [NumType], [CouleurBiere], [TauxAlcool], [Caracteristiques], [DateCreation]) VALUES (N'Paulaner', N'Premium pils', 1, N'rousse    ', 4.3, N'', CAST(N'2006-04-18' AS Date))
INSERT [dbo].[Biere] ([NomMarque], [Version], [NumType], [CouleurBiere], [TauxAlcool], [Caracteristiques], [DateCreation]) VALUES (N'Paulaner', N'Salvator', 2, N'blonde    ', 8, N'', CAST(N'2006-04-19' AS Date))
INSERT [dbo].[Biere] ([NomMarque], [Version], [NumType], [CouleurBiere], [TauxAlcool], [Caracteristiques], [DateCreation]) VALUES (N'Pilsner', N'Urquell', 1, N'brune     ', 4.4, N'une des meilleure pils du monde et historiquement la 1ere', CAST(N'2006-04-20' AS Date))
INSERT [dbo].[Biere] ([NomMarque], [Version], [NumType], [CouleurBiere], [TauxAlcool], [Caracteristiques], [DateCreation]) VALUES (N'Red Stripe +', N'lager', 1, N'rousse    ', 4, N'', CAST(N'2006-04-21' AS Date))
INSERT [dbo].[Biere] ([NomMarque], [Version], [NumType], [CouleurBiere], [TauxAlcool], [Caracteristiques], [DateCreation]) VALUES (N'Rochefort', N'Trappistes Rochefort 10', 8, N'blonde    ', 11.3, N'moelleuse, presque sirupeuse', CAST(N'2006-04-22' AS Date))
INSERT [dbo].[Biere] ([NomMarque], [Version], [NumType], [CouleurBiere], [TauxAlcool], [Caracteristiques], [DateCreation]) VALUES (N'Rochefort', N'Trappistes Rochefort 6', 8, N'brune     ', 7.5, N'goût voisin de la 10 mais moins alcoolise', CAST(N'2006-04-23' AS Date))
INSERT [dbo].[Biere] ([NomMarque], [Version], [NumType], [CouleurBiere], [TauxAlcool], [Caracteristiques], [DateCreation]) VALUES (N'Rochefort', N'Trappistes Rochefort 8', 8, N'rousse    ', 9.5, N'', CAST(N'2006-04-24' AS Date))
INSERT [dbo].[Biere] ([NomMarque], [Version], [NumType], [CouleurBiere], [TauxAlcool], [Caracteristiques], [DateCreation]) VALUES (N'Royal Oak', N'Ale', 3, N'blonde    ', 4.8, N'bitter ale', CAST(N'2006-04-25' AS Date))
INSERT [dbo].[Biere] ([NomMarque], [Version], [NumType], [CouleurBiere], [TauxAlcool], [Caracteristiques], [DateCreation]) VALUES (N'Saint-Andrew', N'Saint-Andrew''s Ale', 3, N'brune     ', 4.6, N'typique ale d''Ecosse', CAST(N'2006-04-26' AS Date))
INSERT [dbo].[Biere] ([NomMarque], [Version], [NumType], [CouleurBiere], [TauxAlcool], [Caracteristiques], [DateCreation]) VALUES (N'Saint-Landelin', N'Ambree', 4, N'rousse    ', 6.8, N'', CAST(N'2006-04-27' AS Date))
INSERT [dbo].[Biere] ([NomMarque], [Version], [NumType], [CouleurBiere], [TauxAlcool], [Caracteristiques], [DateCreation]) VALUES (N'Saint-Landelin', N'Blonde', 4, N'blonde    ', 5.9, N'produite autrefois à l''abbaye de St-Crespin', CAST(N'2006-04-28' AS Date))
INSERT [dbo].[Biere] ([NomMarque], [Version], [NumType], [CouleurBiere], [TauxAlcool], [Caracteristiques], [DateCreation]) VALUES (N'Saint-Landelin', N'Brune', 4, N'brune     ', 6.2, N'', CAST(N'2006-04-29' AS Date))
INSERT [dbo].[Biere] ([NomMarque], [Version], [NumType], [CouleurBiere], [TauxAlcool], [Caracteristiques], [DateCreation]) VALUES (N'Samuel Smith''s', N'Old Brewery Pale Ale', 3, N'rousse    ', 5, N'', CAST(N'2006-04-30' AS Date))
INSERT [dbo].[Biere] ([NomMarque], [Version], [NumType], [CouleurBiere], [TauxAlcool], [Caracteristiques], [DateCreation]) VALUES (N'San Miguel', N'Premium Lager', 1, N'blonde    ', 5.4, N'', CAST(N'2006-01-05' AS Date))
INSERT [dbo].[Biere] ([NomMarque], [Version], [NumType], [CouleurBiere], [TauxAlcool], [Caracteristiques], [DateCreation]) VALUES (N'Sans-Culottes', N'Biere des Sans-Culottes', 5, N'brune     ', 7, N'biere artisanale', CAST(N'2006-02-05' AS Date))
INSERT [dbo].[Biere] ([NomMarque], [Version], [NumType], [CouleurBiere], [TauxAlcool], [Caracteristiques], [DateCreation]) VALUES (N'Satan', N'Red', 10, N'rousse    ', 8, N'', CAST(N'2006-03-05' AS Date))
INSERT [dbo].[Biere] ([NomMarque], [Version], [NumType], [CouleurBiere], [TauxAlcool], [Caracteristiques], [DateCreation]) VALUES (N'Septante cinq', N'Septante cinq', 5, N'blonde    ', 7.5, N'', CAST(N'2006-04-05' AS Date))
INSERT [dbo].[Biere] ([NomMarque], [Version], [NumType], [CouleurBiere], [TauxAlcool], [Caracteristiques], [DateCreation]) VALUES (N'Sixtus', N'ABT (capsule jaune)', 8, N'brune     ', 11, N'', CAST(N'2006-05-05' AS Date))
INSERT [dbo].[Biere] ([NomMarque], [Version], [NumType], [CouleurBiere], [TauxAlcool], [Caracteristiques], [DateCreation]) VALUES (N'Sixtus', N'Extra  (capsule bleue)', 8, N'rousse    ', 8, N'', CAST(N'2006-06-05' AS Date))
INSERT [dbo].[Biere] ([NomMarque], [Version], [NumType], [CouleurBiere], [TauxAlcool], [Caracteristiques], [DateCreation]) VALUES (N'Sixtus', N'Speciale  (capsule rouge)', 8, N'blonde    ', 6.2, N'', CAST(N'2006-07-05' AS Date))
INSERT [dbo].[Biere] ([NomMarque], [Version], [NumType], [CouleurBiere], [TauxAlcool], [Caracteristiques], [DateCreation]) VALUES (N'Spaten', N'Optimator', 2, N'brune     ', 8, N'forte et maltee', CAST(N'2006-08-05' AS Date))
INSERT [dbo].[Biere] ([NomMarque], [Version], [NumType], [CouleurBiere], [TauxAlcool], [Caracteristiques], [DateCreation]) VALUES (N'Spaten', N'Pils', 1, N'rousse    ', 5, N'', CAST(N'2006-09-05' AS Date))
INSERT [dbo].[Biere] ([NomMarque], [Version], [NumType], [CouleurBiere], [TauxAlcool], [Caracteristiques], [DateCreation]) VALUES (N'Spaten', N'Premium Lager', 1, N'blonde    ', 5.2, N'blonde munichoise typique', CAST(N'2006-10-05' AS Date))
INSERT [dbo].[Biere] ([NomMarque], [Version], [NumType], [CouleurBiere], [TauxAlcool], [Caracteristiques], [DateCreation]) VALUES (N'Spaten', N'Ur-Märzen', 10, N'brune     ', 0, N'inventee en 1872 pour l''Oktoberfestbier', CAST(N'2006-11-05' AS Date))
INSERT [dbo].[Biere] ([NomMarque], [Version], [NumType], [CouleurBiere], [TauxAlcool], [Caracteristiques], [DateCreation]) VALUES (N'Stella', N'Club de Stella Artois', 1, N'rousse    ', 5.9, N'', CAST(N'2006-12-05' AS Date))
INSERT [dbo].[Biere] ([NomMarque], [Version], [NumType], [CouleurBiere], [TauxAlcool], [Caracteristiques], [DateCreation]) VALUES (N'Stella', N'Stella Artois', 1, N'blonde    ', 5.2, N'', CAST(N'2006-05-13' AS Date))
INSERT [dbo].[Biere] ([NomMarque], [Version], [NumType], [CouleurBiere], [TauxAlcool], [Caracteristiques], [DateCreation]) VALUES (N'Taddy', N'Porter', 7, N'brune     ', 4.6, N'un des quelques porter encore brasse en Angleterre', CAST(N'2006-05-14' AS Date))
INSERT [dbo].[Biere] ([NomMarque], [Version], [NumType], [CouleurBiere], [TauxAlcool], [Caracteristiques], [DateCreation]) VALUES (N'Tartan', N'Special Bitter', 3, N'rousse    ', 3.5, N'Bitter ale', CAST(N'2006-05-15' AS Date))
INSERT [dbo].[Biere] ([NomMarque], [Version], [NumType], [CouleurBiere], [TauxAlcool], [Caracteristiques], [DateCreation]) VALUES (N'Thomas Hardy''s', N'Ale', 3, N'blonde    ', 12, N'Old Ale,en  bouteille numerotee et millesimee', CAST(N'2006-05-16' AS Date))
INSERT [dbo].[Biere] ([NomMarque], [Version], [NumType], [CouleurBiere], [TauxAlcool], [Caracteristiques], [DateCreation]) VALUES (N'Tolly''s', N'Strong Ale', 3, N'brune     ', 4.6, N'', CAST(N'2006-05-17' AS Date))
INSERT [dbo].[Biere] ([NomMarque], [Version], [NumType], [CouleurBiere], [TauxAlcool], [Caracteristiques], [DateCreation]) VALUES (N'Trois Monts', N'Trois Monts', 5, N'rousse    ', 8.5, N'beneficie du Label "Qualite Nord Pas-de-Calais"', CAST(N'2006-05-18' AS Date))
INSERT [dbo].[Biere] ([NomMarque], [Version], [NumType], [CouleurBiere], [TauxAlcool], [Caracteristiques], [DateCreation]) VALUES (N'Urbock', N'Urbock 23°', 10, N'blonde    ', 9.9, N'la plus forte du Pays', CAST(N'2006-05-19' AS Date))
INSERT [dbo].[Biere] ([NomMarque], [Version], [NumType], [CouleurBiere], [TauxAlcool], [Caracteristiques], [DateCreation]) VALUES (N'Vieux Bruges', N'Blanche', 6, N'brune     ', 4.5, N'', CAST(N'2006-05-20' AS Date))
INSERT [dbo].[Biere] ([NomMarque], [Version], [NumType], [CouleurBiere], [TauxAlcool], [Caracteristiques], [DateCreation]) VALUES (N'Vieux Bruges', N'Framboise', 9, N'rousse    ', 4.5, N'commercialisee aussi sous la Marque St Louis', CAST(N'2006-05-21' AS Date))
INSERT [dbo].[Biere] ([NomMarque], [Version], [NumType], [CouleurBiere], [TauxAlcool], [Caracteristiques], [DateCreation]) VALUES (N'Vieux Bruges', N'Gueuze lambic', 9, N'blonde    ', 4.5, N'commercialisee aussi sous la Marque St Louis', CAST(N'2006-05-22' AS Date))
INSERT [dbo].[Biere] ([NomMarque], [Version], [NumType], [CouleurBiere], [TauxAlcool], [Caracteristiques], [DateCreation]) VALUES (N'Vieux Bruges', N'Kriek Lambic', 9, N'brune     ', 4.5, N'commercialisee aussi sous la Marque St Louis', CAST(N'2006-05-23' AS Date))
INSERT [dbo].[Biere] ([NomMarque], [Version], [NumType], [CouleurBiere], [TauxAlcool], [Caracteristiques], [DateCreation]) VALUES (N'Watou', N'Blanche de Watou', 6, N'rousse    ', 5, N'', CAST(N'2006-05-24' AS Date))
INSERT [dbo].[Biere] ([NomMarque], [Version], [NumType], [CouleurBiere], [TauxAlcool], [Caracteristiques], [DateCreation]) VALUES (N'Westmalle', N'Dubbel', 8, N'blonde    ', 7, N'', CAST(N'2006-05-25' AS Date))
INSERT [dbo].[Biere] ([NomMarque], [Version], [NumType], [CouleurBiere], [TauxAlcool], [Caracteristiques], [DateCreation]) VALUES (N'Westmalle', N'Single Extra', 8, N'brune     ', 6, N'', CAST(N'2006-05-26' AS Date))
INSERT [dbo].[Biere] ([NomMarque], [Version], [NumType], [CouleurBiere], [TauxAlcool], [Caracteristiques], [DateCreation]) VALUES (N'Westmalle', N'Tripel', 8, N'rousse    ', 9, N'', CAST(N'2006-05-27' AS Date))
INSERT [dbo].[Biere] ([NomMarque], [Version], [NumType], [CouleurBiere], [TauxAlcool], [Caracteristiques], [DateCreation]) VALUES (N'Zipfer', N'Urtyp', 1, N'blonde    ', 4.5, N'', CAST(N'2006-05-28' AS Date))
INSERT [dbo].[Biere] ([NomMarque], [Version], [NumType], [CouleurBiere], [TauxAlcool], [Caracteristiques], [DateCreation]) VALUES (N'Zywiec', N'bouteille 35,6 cl', 1, N'brune     ', 5, N'tres seche et tres amere', CAST(N'2006-05-29' AS Date))
GO
INSERT [dbo].[Brasserie] ([CodeBrasserie], [NomBrasserie], [Ville], [NomRegion]) VALUES (N'anne', N'Brasserie d''Annoeullin', N'Annoeullin', N'Nord-Pas-de-Calais')
INSERT [dbo].[Brasserie] ([CodeBrasserie], [NomBrasserie], [Ville], [NomRegion]) VALUES (N'arto', N'Brasseries Artois (Interbrew)', N'Leuwen', N'Flandre')
INSERT [dbo].[Brasserie] ([CodeBrasserie], [NomBrasserie], [Ville], [NomRegion]) VALUES (N'ayin', N'Brauerei Ayinger', N'Aying', N'Baviere')
INSERT [dbo].[Brasserie] ([CodeBrasserie], [NomBrasserie], [Ville], [NomRegion]) VALUES (N'bass', N'Bass Brewers ltd', N'Burton-upon-Trent', N'Grande-Bretagne')
INSERT [dbo].[Brasserie] ([CodeBrasserie], [NomBrasserie], [Ville], [NomRegion]) VALUES (N'bate', N'George Bateman & son', N'Wainfleet', N'Grande-Bretagne')
INSERT [dbo].[Brasserie] ([CodeBrasserie], [NomBrasserie], [Ville], [NomRegion]) VALUES (N'beck', N'Brauerei Beck', N'Bremen', N'Brême')
INSERT [dbo].[Brasserie] ([CodeBrasserie], [NomBrasserie], [Ville], [NomRegion]) VALUES (N'belh', N'Belhaven Brewery', N'Dumbar', N'Ecosse')
INSERT [dbo].[Brasserie] ([CodeBrasserie], [NomBrasserie], [Ville], [NomRegion]) VALUES (N'berl', N'Berliner Kindl Brauerei AG', N'Postdam', N'Berlin')
INSERT [dbo].[Brasserie] ([CodeBrasserie], [NomBrasserie], [Ville], [NomRegion]) VALUES (N'bost', N'Brasserie Bosteels', N'Buggenhout', N'Flandre')
INSERT [dbo].[Brasserie] ([CodeBrasserie], [NomBrasserie], [Ville], [NomRegion]) VALUES (N'bran', N'Brasserie Brand', N'Limbourg', N'Pays-Bas')
INSERT [dbo].[Brasserie] ([CodeBrasserie], [NomBrasserie], [Ville], [NomRegion]) VALUES (N'brau', N'Brau A.G.', N'Schwechat', N'Autriche')
INSERT [dbo].[Brasserie] ([CodeBrasserie], [NomBrasserie], [Ville], [NomRegion]) VALUES (N'budv', N'Budvar', N'Ceske Budejovice', N'Rep. Tcheque')
INSERT [dbo].[Brasserie] ([CodeBrasserie], [NomBrasserie], [Ville], [NomRegion]) VALUES (N'carl', N'Brasserie Carlsberg', N'Copenhague', N'Danemark')
INSERT [dbo].[Brasserie] ([CodeBrasserie], [NomBrasserie], [Ville], [NomRegion]) VALUES (N'chim', N'SA des bieres de Chimay, abb. de Scourmont', N'Chimay', N'Wallonie')
INSERT [dbo].[Brasserie] ([CodeBrasserie], [NomBrasserie], [Ville], [NomRegion]) VALUES (N'chou', N'Brasserie La Choulette', N'Hordain', N'Nord-Pas-de-Calais')
INSERT [dbo].[Brasserie] ([CodeBrasserie], [NomBrasserie], [Ville], [NomRegion]) VALUES (N'damm', N'S.A Damm', N'Barcelonne', N'Espagne')
INSERT [dbo].[Brasserie] ([CodeBrasserie], [NomBrasserie], [Ville], [NomRegion]) VALUES (N'debl', N'Brasserie De Block', N'Peizegem-Merchten', N'Flandre')
INSERT [dbo].[Brasserie] ([CodeBrasserie], [NomBrasserie], [Ville], [NomRegion]) VALUES (N'dego', N'Brasserie De Gouden Boom', N'Bruges', N'Flandre')
INSERT [dbo].[Brasserie] ([CodeBrasserie], [NomBrasserie], [Ville], [NomRegion]) VALUES (N'deke', N'Brasserie De Keersmaecker (Alken-Maes)', N'Kogbbegen', N'Flandre')
INSERT [dbo].[Brasserie] ([CodeBrasserie], [NomBrasserie], [Ville], [NomRegion]) VALUES (N'dekl', N'De Kluis Brouwerij van Hoegaarden (Interbrew)', N'Hoegaarden', N'Flandre')
INSERT [dbo].[Brasserie] ([CodeBrasserie], [NomBrasserie], [Ville], [NomRegion]) VALUES (N'diek', N'Brasserie Diekirch', N'Diekirch', N'Luxembourg')
INSERT [dbo].[Brasserie] ([CodeBrasserie], [NomBrasserie], [Ville], [NomRegion]) VALUES (N'dubu', N'Brasserie Dubuisson', N'Pipaix', N'Wallonie')
INSERT [dbo].[Brasserie] ([CodeBrasserie], [NomBrasserie], [Ville], [NomRegion]) VALUES (N'dupo', N'Brasserie Dupont', N'Tourpes-Leuze', N'Wallonie')
INSERT [dbo].[Brasserie] ([CodeBrasserie], [NomBrasserie], [Ville], [NomRegion]) VALUES (N'duyc', N'Brasserie Duyck', N'Jenlain-en-Avesnois', N'Nord-Pas-de-Calais')
INSERT [dbo].[Brasserie] ([CodeBrasserie], [NomBrasserie], [Ville], [NomRegion]) VALUES (N'eeck', N'Van Eecke', N'Watou', N'Flandre')
INSERT [dbo].[Brasserie] ([CodeBrasserie], [NomBrasserie], [Ville], [NomRegion]) VALUES (N'effe', N'Effes Pilsen Group', N'Istanbul', N'Turquie')
INSERT [dbo].[Brasserie] ([CodeBrasserie], [NomBrasserie], [Ville], [NomRegion]) VALUES (N'egge', N'Eggenberger Schlossbrauerei', N'Salzkammergut', N'Autriche')
INSERT [dbo].[Brasserie] ([CodeBrasserie], [NomBrasserie], [Ville], [NomRegion]) VALUES (N'einb', N'Einbecker Brauhaus A.G.', N'Einbeck', N'Basse-Saxe')
INSERT [dbo].[Brasserie] ([CodeBrasserie], [NomBrasserie], [Ville], [NomRegion]) VALUES (N'eku', N'Erste Kummelbacher Aktienbrauerei', N'Kulmbach', N'Baviere')
INSERT [dbo].[Brasserie] ([CodeBrasserie], [NomBrasserie], [Ville], [NomRegion]) VALUES (N'eldr', N'Eldridge Pope & Co', N'Dorchester', N'Grande-Bretagne')
INSERT [dbo].[Brasserie] ([CodeBrasserie], [NomBrasserie], [Ville], [NomRegion]) VALUES (N'enge', N'Engel Brauerei', N'Schwäbisch Gmünd', N'Bad-Wurtemberg')
INSERT [dbo].[Brasserie] ([CodeBrasserie], [NomBrasserie], [Ville], [NomRegion]) VALUES (N'fisc', N'Brasserie Fischer', N'Schiltigheim', N'Alsace-Lorraine')
INSERT [dbo].[Brasserie] ([CodeBrasserie], [NomBrasserie], [Ville], [NomRegion]) VALUES (N'gaya', N'Les Enfants de Gayant', N'Douai', N'Nord-Pas-de-Calais')
INSERT [dbo].[Brasserie] ([CodeBrasserie], [NomBrasserie], [Ville], [NomRegion]) VALUES (N'grol', N'Brasserie Grolsch', N'Enschede', N'Pays-Bas')
INSERT [dbo].[Brasserie] ([CodeBrasserie], [NomBrasserie], [Ville], [NomRegion]) VALUES (N'guib', N'Brasserie Saint-Guibert (Interbrew)', N'Mont-Saint-guibert', N'Wallonie')
INSERT [dbo].[Brasserie] ([CodeBrasserie], [NomBrasserie], [Ville], [NomRegion]) VALUES (N'guin', N'Brasserie Guinness', N'Dublin', N'Irlande')
INSERT [dbo].[Brasserie] ([CodeBrasserie], [NomBrasserie], [Ville], [NomRegion]) VALUES (N'hann', N'Hannen Brauerei', N'Mönchengladbar', N'Rhenanie-Westphalie')
INSERT [dbo].[Brasserie] ([CodeBrasserie], [NomBrasserie], [Ville], [NomRegion]) VALUES (N'hein', N'Brasserie Heineken', N'Amsterdam', N'Pays-Bas')
INSERT [dbo].[Brasserie] ([CodeBrasserie], [NomBrasserie], [Ville], [NomRegion]) VALUES (N'huyg', N'Brasserie  Huyghe', N'Melle', N'Bruxelles')
INSERT [dbo].[Brasserie] ([CodeBrasserie], [NomBrasserie], [Ville], [NomRegion]) VALUES (N'john', N'Brasserie John Martin', N'Genval', N'Wallonie')
INSERT [dbo].[Brasserie] ([CodeBrasserie], [NomBrasserie], [Ville], [NomRegion]) VALUES (N'kkbou', N'kkboudin', N'fezgg', N'Brême')
INSERT [dbo].[Brasserie] ([CodeBrasserie], [NomBrasserie], [Ville], [NomRegion]) VALUES (N'Koni', N'Browerij de Koninck', N'Anvers', N'Flandre')
INSERT [dbo].[Brasserie] ([CodeBrasserie], [NomBrasserie], [Ville], [NomRegion]) VALUES (N'kron', N'Brasseries Kronenbourg', N'Strasbourg', N'Alsace-Lorraine')
INSERT [dbo].[Brasserie] ([CodeBrasserie], [NomBrasserie], [Ville], [NomRegion]) VALUES (N'lefe', N'Brasserie Lefebvre', N'Quenast', N'Wallonie')
INSERT [dbo].[Brasserie] ([CodeBrasserie], [NomBrasserie], [Ville], [NomRegion]) VALUES (N'lind', N'Brasserie Lindemans', N'Vlezenbeeck', N'Flandre')
INSERT [dbo].[Brasserie] ([CodeBrasserie], [NomBrasserie], [Ville], [NomRegion]) VALUES (N'maes', N'Brasserie Maes (Alken-Maes)', N'Waarlos', N'Flandre')
INSERT [dbo].[Brasserie] ([CodeBrasserie], [NomBrasserie], [Ville], [NomRegion]) VALUES (N'moor', N'Brasserie Moorgat', N'Breendonk', N'Flandre')
INSERT [dbo].[Brasserie] ([CodeBrasserie], [NomBrasserie], [Ville], [NomRegion]) VALUES (N'newc', N'Scottish and Newcastle Breweries', N'Edimburg', N'Ecosse')
INSERT [dbo].[Brasserie] ([CodeBrasserie], [NomBrasserie], [Ville], [NomRegion]) VALUES (N'orva', N'Brasserie d''Orval, abbaye N-D d''Orval', N'Villers-devant-Orval', N'Wallonie')
INSERT [dbo].[Brasserie] ([CodeBrasserie], [NomBrasserie], [Ville], [NomRegion]) VALUES (N'otta', N'Ottakringer Harmer AG', N'Vienne', N'Autriche')
INSERT [dbo].[Brasserie] ([CodeBrasserie], [NomBrasserie], [Ville], [NomRegion]) VALUES (N'paul', N'Paulaner Bräuerei', N'Munich', N'Baviere')
INSERT [dbo].[Brasserie] ([CodeBrasserie], [NomBrasserie], [Ville], [NomRegion]) VALUES (N'pero', N'Birra Peroni Industriale Spa', N'Rome', N'Italie')
INSERT [dbo].[Brasserie] ([CodeBrasserie], [NomBrasserie], [Ville], [NomRegion]) VALUES (N'plze', N'Plzensky Prazdroj Urquel', N'Plzen', N'Rep. Tcheque')
INSERT [dbo].[Brasserie] ([CodeBrasserie], [NomBrasserie], [Ville], [NomRegion]) VALUES (N'roch', N'Abbaye N-D de St remy', N'Rochefort', N'Wallonie')
INSERT [dbo].[Brasserie] ([CodeBrasserie], [NomBrasserie], [Ville], [NomRegion]) VALUES (N'sanm', N'San Miguel Fabricadas de Cerveza y Malta', N'Madrid', N'Espagne')
INSERT [dbo].[Brasserie] ([CodeBrasserie], [NomBrasserie], [Ville], [NomRegion]) VALUES (N'scot', N'Scottish Brewers', N'Edimbourg', N'Ecosse')
INSERT [dbo].[Brasserie] ([CodeBrasserie], [NomBrasserie], [Ville], [NomRegion]) VALUES (N'smed', N'Brasserie De Smedt', N'Opwijk', N'Flandre')
INSERT [dbo].[Brasserie] ([CodeBrasserie], [NomBrasserie], [Ville], [NomRegion]) VALUES (N'smit', N'Samuel Smith The Old Brewery', N'Tadcaster', N'Grande-Bretagne')
INSERT [dbo].[Brasserie] ([CodeBrasserie], [NomBrasserie], [Ville], [NomRegion]) VALUES (N'spat', N'Spaten Franziskaner Brau', N'Munich', N'Baviere')
INSERT [dbo].[Brasserie] ([CodeBrasserie], [NomBrasserie], [Ville], [NomRegion]) VALUES (N'stsy', N'Brasserie de Saint-Sylvestre', N'Saint-Sylvestre', N'Nord-Pas-de-Calais')
INSERT [dbo].[Brasserie] ([CodeBrasserie], [NomBrasserie], [Ville], [NomRegion]) VALUES (N'terk', N'Grande Brasserie Moderne/Terken', N'Roubaix', N'Nord-Pas-de-Calais')
INSERT [dbo].[Brasserie] ([CodeBrasserie], [NomBrasserie], [Ville], [NomRegion]) VALUES (N'tolle', N'Tollemache & Cobbold Brewery', N'Ipswich', N'Grande-Bretagne')
INSERT [dbo].[Brasserie] ([CodeBrasserie], [NomBrasserie], [Ville], [NomRegion]) VALUES (N'trap', N'Abbaye de Koninghoeven', N'Tilburg', N'Pays-Bas')
INSERT [dbo].[Brasserie] ([CodeBrasserie], [NomBrasserie], [Ville], [NomRegion]) VALUES (N'troisFontaine', N'Brasserie des trois fontaines', N'Dijon', N'Bourgogne')
INSERT [dbo].[Brasserie] ([CodeBrasserie], [NomBrasserie], [Ville], [NomRegion]) VALUES (N'unib', N'Brasserie Unibroue', N'Chambly', N'Quebec')
INSERT [dbo].[Brasserie] ([CodeBrasserie], [NomBrasserie], [Ville], [NomRegion]) VALUES (N'unio', N'Brasserie de l''Union (Alken-Maes)', N'Jumet', N'Wallonie')
INSERT [dbo].[Brasserie] ([CodeBrasserie], [NomBrasserie], [Ville], [NomRegion]) VALUES (N'vanh', N'Brasserie Van Honsebrouck', N'IngelMunster', N'Flandre')
INSERT [dbo].[Brasserie] ([CodeBrasserie], [NomBrasserie], [Ville], [NomRegion]) VALUES (N'well', N'Charles Wells ltd', N'Bedford', N'Grande-Bretagne')
INSERT [dbo].[Brasserie] ([CodeBrasserie], [NomBrasserie], [Ville], [NomRegion]) VALUES (N'west', N'Brouwerj Abdij Trappisten', N'Westmalle', N'Flandre')
INSERT [dbo].[Brasserie] ([CodeBrasserie], [NomBrasserie], [Ville], [NomRegion]) VALUES (N'westv', N'Abbaye Saint-Sixte', N'Westvleteren', N'Flandre')
INSERT [dbo].[Brasserie] ([CodeBrasserie], [NomBrasserie], [Ville], [NomRegion]) VALUES (N'youn', N'Young & Co''s Brewery', N'London', N'Grande-Bretagne')
INSERT [dbo].[Brasserie] ([CodeBrasserie], [NomBrasserie], [Ville], [NomRegion]) VALUES (N'zywi', N'Brasserie de Zywiec', N'Zywiec', N'Pologne')
GO
INSERT [dbo].[Marque] ([NomMarque], [CodeBrasserie]) VALUES (N'1664', N'kron')
INSERT [dbo].[Marque] ([NomMarque], [CodeBrasserie]) VALUES (N'Affligem', N'smed')
INSERT [dbo].[Marque] ([NomMarque], [CodeBrasserie]) VALUES (N'Angelus', N'anne')
INSERT [dbo].[Marque] ([NomMarque], [CodeBrasserie]) VALUES (N'Ayinger', N'ayin')
INSERT [dbo].[Marque] ([NomMarque], [CodeBrasserie]) VALUES (N'Bass', N'bass')
INSERT [dbo].[Marque] ([NomMarque], [CodeBrasserie]) VALUES (N'Batemans', N'bate')
INSERT [dbo].[Marque] ([NomMarque], [CodeBrasserie]) VALUES (N'Beck''s', N'beck')
INSERT [dbo].[Marque] ([NomMarque], [CodeBrasserie]) VALUES (N'Belhaven', N'belh')
INSERT [dbo].[Marque] ([NomMarque], [CodeBrasserie]) VALUES (N'Berliner Kindl', N'berl')
INSERT [dbo].[Marque] ([NomMarque], [CodeBrasserie]) VALUES (N'Black Stout', N'youn')
INSERT [dbo].[Marque] ([NomMarque], [CodeBrasserie]) VALUES (N'Bombardier', N'well')
INSERT [dbo].[Marque] ([NomMarque], [CodeBrasserie]) VALUES (N'Bonne Esperance', N'lefe')
INSERT [dbo].[Marque] ([NomMarque], [CodeBrasserie]) VALUES (N'Brand', N'bran')
INSERT [dbo].[Marque] ([NomMarque], [CodeBrasserie]) VALUES (N'Bruges', N'dego')
INSERT [dbo].[Marque] ([NomMarque], [CodeBrasserie]) VALUES (N'Budweiser', N'budv')
INSERT [dbo].[Marque] ([NomMarque], [CodeBrasserie]) VALUES (N'Bush', N'dubu')
INSERT [dbo].[Marque] ([NomMarque], [CodeBrasserie]) VALUES (N'Carlsberg', N'carl')
INSERT [dbo].[Marque] ([NomMarque], [CodeBrasserie]) VALUES (N'Celta', N'gaya')
INSERT [dbo].[Marque] ([NomMarque], [CodeBrasserie]) VALUES (N'Chambly', N'unib')
INSERT [dbo].[Marque] ([NomMarque], [CodeBrasserie]) VALUES (N'Chester', N'well')
INSERT [dbo].[Marque] ([NomMarque], [CodeBrasserie]) VALUES (N'Chimay', N'chim')
INSERT [dbo].[Marque] ([NomMarque], [CodeBrasserie]) VALUES (N'Crystal', N'eldr')
INSERT [dbo].[Marque] ([NomMarque], [CodeBrasserie]) VALUES (N'De Koninck', N'koni')
INSERT [dbo].[Marque] ([NomMarque], [CodeBrasserie]) VALUES (N'Delirium Tremens', N'huyg')
INSERT [dbo].[Marque] ([NomMarque], [CodeBrasserie]) VALUES (N'Desperados', N'fisc')
INSERT [dbo].[Marque] ([NomMarque], [CodeBrasserie]) VALUES (N'Diekirch', N'diek')
INSERT [dbo].[Marque] ([NomMarque], [CodeBrasserie]) VALUES (N'Douglas', N'scot')
INSERT [dbo].[Marque] ([NomMarque], [CodeBrasserie]) VALUES (N'Duvel', N'moor')
INSERT [dbo].[Marque] ([NomMarque], [CodeBrasserie]) VALUES (N'Edelweiss', N'brau')
INSERT [dbo].[Marque] ([NomMarque], [CodeBrasserie]) VALUES (N'Effes Pilsener', N'effe')
INSERT [dbo].[Marque] ([NomMarque], [CodeBrasserie]) VALUES (N'Einbecker', N'einb')
INSERT [dbo].[Marque] ([NomMarque], [CodeBrasserie]) VALUES (N'Eku', N'eku')
INSERT [dbo].[Marque] ([NomMarque], [CodeBrasserie]) VALUES (N'Estrella', N'damm')
INSERT [dbo].[Marque] ([NomMarque], [CodeBrasserie]) VALUES (N'Faro', N'lind')
INSERT [dbo].[Marque] ([NomMarque], [CodeBrasserie]) VALUES (N'Floreffe', N'lefe')
INSERT [dbo].[Marque] ([NomMarque], [CodeBrasserie]) VALUES (N'Foudroyante', N'lind')
INSERT [dbo].[Marque] ([NomMarque], [CodeBrasserie]) VALUES (N'Franziskaner', N'spat')
INSERT [dbo].[Marque] ([NomMarque], [CodeBrasserie]) VALUES (N'Fruit Defendu', N'dekl')
INSERT [dbo].[Marque] ([NomMarque], [CodeBrasserie]) VALUES (N'Gold Fassl', N'otta')
INSERT [dbo].[Marque] ([NomMarque], [CodeBrasserie]) VALUES (N'Gordon', N'john')
INSERT [dbo].[Marque] ([NomMarque], [CodeBrasserie]) VALUES (N'Grimbergem', N'unio')
INSERT [dbo].[Marque] ([NomMarque], [CodeBrasserie]) VALUES (N'Grolsch', N'grol')
INSERT [dbo].[Marque] ([NomMarque], [CodeBrasserie]) VALUES (N'Guinness', N'guin')
INSERT [dbo].[Marque] ([NomMarque], [CodeBrasserie]) VALUES (N'Hannen', N'hann')
INSERT [dbo].[Marque] ([NomMarque], [CodeBrasserie]) VALUES (N'Heineken', N'hein')
INSERT [dbo].[Marque] ([NomMarque], [CodeBrasserie]) VALUES (N'Highlander', N'newc')
INSERT [dbo].[Marque] ([NomMarque], [CodeBrasserie]) VALUES (N'Hoegaarden', N'dekl')
INSERT [dbo].[Marque] ([NomMarque], [CodeBrasserie]) VALUES (N'Imperial Stout', N'smit')
INSERT [dbo].[Marque] ([NomMarque], [CodeBrasserie]) VALUES (N'Jenlain', N'duyc')
INSERT [dbo].[Marque] ([NomMarque], [CodeBrasserie]) VALUES (N'John Martin''s', N'john')
INSERT [dbo].[Marque] ([NomMarque], [CodeBrasserie]) VALUES (N'Kloster', N'enge')
INSERT [dbo].[Marque] ([NomMarque], [CodeBrasserie]) VALUES (N'Kronenbourg', N'kron')
INSERT [dbo].[Marque] ([NomMarque], [CodeBrasserie]) VALUES (N'Kwak', N'bost')
INSERT [dbo].[Marque] ([NomMarque], [CodeBrasserie]) VALUES (N'La Blanche Foudroyante', N'lefe')
INSERT [dbo].[Marque] ([NomMarque], [CodeBrasserie]) VALUES (N'La Choulette', N'chou')
INSERT [dbo].[Marque] ([NomMarque], [CodeBrasserie]) VALUES (N'La Guillotine', N'huyg')
INSERT [dbo].[Marque] ([NomMarque], [CodeBrasserie]) VALUES (N'La Poiluchette', N'huyg')
INSERT [dbo].[Marque] ([NomMarque], [CodeBrasserie]) VALUES (N'La Trappe', N'trap')
INSERT [dbo].[Marque] ([NomMarque], [CodeBrasserie]) VALUES (N'Leffe', N'guib')
INSERT [dbo].[Marque] ([NomMarque], [CodeBrasserie]) VALUES (N'Loburg', N'arto')
INSERT [dbo].[Marque] ([NomMarque], [CodeBrasserie]) VALUES (N'Maes', N'maes')
INSERT [dbo].[Marque] ([NomMarque], [CodeBrasserie]) VALUES (N'Mandubienne', N'troisFontaine')
INSERT [dbo].[Marque] ([NomMarque], [CodeBrasserie]) VALUES (N'Maredsous', N'moor')
INSERT [dbo].[Marque] ([NomMarque], [CodeBrasserie]) VALUES (N'Moinette', N'dupo')
INSERT [dbo].[Marque] ([NomMarque], [CodeBrasserie]) VALUES (N'Mort Subite', N'deke')
INSERT [dbo].[Marque] ([NomMarque], [CodeBrasserie]) VALUES (N'Nastro Azzuro', N'pero')
INSERT [dbo].[Marque] ([NomMarque], [CodeBrasserie]) VALUES (N'Nessie', N'egge')
INSERT [dbo].[Marque] ([NomMarque], [CodeBrasserie]) VALUES (N'Oatmeal', N'smit')
INSERT [dbo].[Marque] ([NomMarque], [CodeBrasserie]) VALUES (N'Orval', N'orva')
INSERT [dbo].[Marque] ([NomMarque], [CodeBrasserie]) VALUES (N'Pastor Ale', N'anne')
INSERT [dbo].[Marque] ([NomMarque], [CodeBrasserie]) VALUES (N'Paulaner', N'paul')
INSERT [dbo].[Marque] ([NomMarque], [CodeBrasserie]) VALUES (N'Pêcheresse', N'lind')
INSERT [dbo].[Marque] ([NomMarque], [CodeBrasserie]) VALUES (N'Pilsner', N'plze')
INSERT [dbo].[Marque] ([NomMarque], [CodeBrasserie]) VALUES (N'Red Stripe +', N'well')
INSERT [dbo].[Marque] ([NomMarque], [CodeBrasserie]) VALUES (N'Rochefort', N'roch')
INSERT [dbo].[Marque] ([NomMarque], [CodeBrasserie]) VALUES (N'Royal Oak', N'eldr')
INSERT [dbo].[Marque] ([NomMarque], [CodeBrasserie]) VALUES (N'Saint-Andrew', N'belh')
INSERT [dbo].[Marque] ([NomMarque], [CodeBrasserie]) VALUES (N'Saint-Landelin', N'gaya')
INSERT [dbo].[Marque] ([NomMarque], [CodeBrasserie]) VALUES (N'Samuel Smith''s', N'smit')
INSERT [dbo].[Marque] ([NomMarque], [CodeBrasserie]) VALUES (N'San Miguel', N'sanm')
INSERT [dbo].[Marque] ([NomMarque], [CodeBrasserie]) VALUES (N'Sans-Culottes', N'chou')
INSERT [dbo].[Marque] ([NomMarque], [CodeBrasserie]) VALUES (N'Satan', N'debl')
INSERT [dbo].[Marque] ([NomMarque], [CodeBrasserie]) VALUES (N'Septante cinq', N'terk')
INSERT [dbo].[Marque] ([NomMarque], [CodeBrasserie]) VALUES (N'Sixtus', N'westv')
INSERT [dbo].[Marque] ([NomMarque], [CodeBrasserie]) VALUES (N'Spaten', N'spat')
INSERT [dbo].[Marque] ([NomMarque], [CodeBrasserie]) VALUES (N'Stella', N'arto')
INSERT [dbo].[Marque] ([NomMarque], [CodeBrasserie]) VALUES (N'Taddy', N'smit')
INSERT [dbo].[Marque] ([NomMarque], [CodeBrasserie]) VALUES (N'Tartan', N'newc')
INSERT [dbo].[Marque] ([NomMarque], [CodeBrasserie]) VALUES (N'Terken', N'terk')
INSERT [dbo].[Marque] ([NomMarque], [CodeBrasserie]) VALUES (N'Thomas Hardy''s', N'eldr')
INSERT [dbo].[Marque] ([NomMarque], [CodeBrasserie]) VALUES (N'Tolly''s', N'tolle')
INSERT [dbo].[Marque] ([NomMarque], [CodeBrasserie]) VALUES (N'Trois Monts', N'stsy')
INSERT [dbo].[Marque] ([NomMarque], [CodeBrasserie]) VALUES (N'Tuborg', N'carl')
INSERT [dbo].[Marque] ([NomMarque], [CodeBrasserie]) VALUES (N'ufiozaçzefij', N'trap')
INSERT [dbo].[Marque] ([NomMarque], [CodeBrasserie]) VALUES (N'Urbock', N'egge')
INSERT [dbo].[Marque] ([NomMarque], [CodeBrasserie]) VALUES (N'Vieux Bruges', N'vanh')
INSERT [dbo].[Marque] ([NomMarque], [CodeBrasserie]) VALUES (N'Watou', N'eeck')
INSERT [dbo].[Marque] ([NomMarque], [CodeBrasserie]) VALUES (N'Westmalle', N'west')
INSERT [dbo].[Marque] ([NomMarque], [CodeBrasserie]) VALUES (N'Westvleteren', N'westv')
INSERT [dbo].[Marque] ([NomMarque], [CodeBrasserie]) VALUES (N'Zipfer', N'brau')
GO
INSERT [dbo].[Marque] ([NomMarque], [CodeBrasserie]) VALUES (N'Zywiec', N'zywi')
GO
INSERT [dbo].[Pays] ([NomPays], [Consommation], [Production]) VALUES (N'Allemagne', 148, 118)
INSERT [dbo].[Pays] ([NomPays], [Consommation], [Production]) VALUES (N'Amerique du nord', 178, 250)
INSERT [dbo].[Pays] ([NomPays], [Consommation], [Production]) VALUES (N'Belgique', 120, 14)
INSERT [dbo].[Pays] ([NomPays], [Consommation], [Production]) VALUES (N'Europe centrale', 95, 50)
INSERT [dbo].[Pays] ([NomPays], [Consommation], [Production]) VALUES (N'Europe du Nord', 120, 30)
INSERT [dbo].[Pays] ([NomPays], [Consommation], [Production]) VALUES (N'France', 40, 23)
INSERT [dbo].[Pays] ([NomPays], [Consommation], [Production]) VALUES (N'Iles Britanniques', 115, 65)
INSERT [dbo].[Pays] ([NomPays], [Consommation], [Production]) VALUES (N'Pays mediterraneen', 50, 45)
GO
INSERT [dbo].[Region] ([NomRegion], [NomPays]) VALUES (N'Alsace-Lorraine', N'France')
INSERT [dbo].[Region] ([NomRegion], [NomPays]) VALUES (N'Autriche', N'Europe centrale')
INSERT [dbo].[Region] ([NomRegion], [NomPays]) VALUES (N'Bad-Wurtemberg', N'Allemagne')
INSERT [dbo].[Region] ([NomRegion], [NomPays]) VALUES (N'Basse-Saxe', N'Allemagne')
INSERT [dbo].[Region] ([NomRegion], [NomPays]) VALUES (N'Baviere', N'Allemagne')
INSERT [dbo].[Region] ([NomRegion], [NomPays]) VALUES (N'Berlin', N'Allemagne')
INSERT [dbo].[Region] ([NomRegion], [NomPays]) VALUES (N'Bourgogne', N'France')
INSERT [dbo].[Region] ([NomRegion], [NomPays]) VALUES (N'Brême', N'Allemagne')
INSERT [dbo].[Region] ([NomRegion], [NomPays]) VALUES (N'Bruxelles', N'Belgique')
INSERT [dbo].[Region] ([NomRegion], [NomPays]) VALUES (N'Danemark', N'Europe du Nord')
INSERT [dbo].[Region] ([NomRegion], [NomPays]) VALUES (N'Ecosse', N'Iles Britanniques')
INSERT [dbo].[Region] ([NomRegion], [NomPays]) VALUES (N'Espagne', N'Pays mediterraneen')
INSERT [dbo].[Region] ([NomRegion], [NomPays]) VALUES (N'Etats-Unis', N'Amerique du nord')
INSERT [dbo].[Region] ([NomRegion], [NomPays]) VALUES (N'finlande', N'Europe du Nord')
INSERT [dbo].[Region] ([NomRegion], [NomPays]) VALUES (N'Flandre', N'Belgique')
INSERT [dbo].[Region] ([NomRegion], [NomPays]) VALUES (N'Grande-Bretagne', N'Iles Britanniques')
INSERT [dbo].[Region] ([NomRegion], [NomPays]) VALUES (N'Irlande', N'Iles Britanniques')
INSERT [dbo].[Region] ([NomRegion], [NomPays]) VALUES (N'Italie', N'Pays mediterraneen')
INSERT [dbo].[Region] ([NomRegion], [NomPays]) VALUES (N'Luxembourg', N'Belgique')
INSERT [dbo].[Region] ([NomRegion], [NomPays]) VALUES (N'Nord-Pas-de-Calais', N'France')
INSERT [dbo].[Region] ([NomRegion], [NomPays]) VALUES (N'Pays-Bas', N'Europe du Nord')
INSERT [dbo].[Region] ([NomRegion], [NomPays]) VALUES (N'Pologne', N'Europe centrale')
INSERT [dbo].[Region] ([NomRegion], [NomPays]) VALUES (N'Quebec', N'Amerique du nord')
INSERT [dbo].[Region] ([NomRegion], [NomPays]) VALUES (N'Rep. Tcheque', N'Europe centrale')
INSERT [dbo].[Region] ([NomRegion], [NomPays]) VALUES (N'Rhenanie-Westphalie', N'Allemagne')
INSERT [dbo].[Region] ([NomRegion], [NomPays]) VALUES (N'Turquie', N'Pays mediterraneen')
INSERT [dbo].[Region] ([NomRegion], [NomPays]) VALUES (N'Wallonie', N'Belgique')
GO
INSERT [dbo].[Type] ([NroType], [NomType], [Description], [Fermentation], [Commentaire]) VALUES (1, N'Pils', N'blondes, ameres, assez gazeuses, limpides', N'basse', N'ou pilsen, pilsner, (lager dans Pays anglo-saxons)')
INSERT [dbo].[Type] ([NroType], [NomType], [Description], [Fermentation], [Commentaire]) VALUES (2, N'bocks', N'bieres fortes souvent foncees', N'basse', N'les Double Bocks sont encore plus forts')
INSERT [dbo].[Type] ([NroType], [NomType], [Description], [Fermentation], [Commentaire]) VALUES (3, N'Ale', N'blondes, presque plates, manquant parfois de limpidite', N'haute', N'specialite britannique')
INSERT [dbo].[Type] ([NroType], [NomType], [Description], [Fermentation], [Commentaire]) VALUES (4, N'Abbaye', N'blondes, brunes, ambrees tres alcoolisees ou non', N'haute', N'de fabrication seculiere malgre leur nom')
INSERT [dbo].[Type] ([NroType], [NomType], [Description], [Fermentation], [Commentaire]) VALUES (5, N'Bieres de garde', N'gardees longtemps en cuve pour une fermentation prolongee', N'haute', N'bieres françaises')
INSERT [dbo].[Type] ([NroType], [NomType], [Description], [Fermentation], [Commentaire]) VALUES (6, N'Blanches', N'troubles, peu alcoolisees, à base d''orge et de froment', N'haute', N'ou Witte , Weisse')
INSERT [dbo].[Type] ([NroType], [NomType], [Description], [Fermentation], [Commentaire]) VALUES (7, N'Stouts', N'lourdes, couleur cafe ou chocolat, breuvage sec', N'haute', N'plus forte et moins amere que le traditionnel Porter devenu plus rare')
INSERT [dbo].[Type] ([NroType], [NomType], [Description], [Fermentation], [Commentaire]) VALUES (8, N'Trappistes', N'bieres foncees refermentees en bouteille', N'haute', N'produites dans de veritables abbayes')
INSERT [dbo].[Type] ([NroType], [NomType], [Description], [Fermentation], [Commentaire]) VALUES (9, N'Lambics et gueuzes', N'fermentation sans adjonction de levure', N'spontanee', N'gueuze: assemblage de lambics d''âges differents')
INSERT [dbo].[Type] ([NroType], [NomType], [Description], [Fermentation], [Commentaire]) VALUES (10, N'Specialites', N'Speciales et locales', NULL, N'innombrables')
GO
ALTER TABLE [dbo].[Biere]  WITH CHECK ADD  CONSTRAINT [FK_BIERE_TYPE] FOREIGN KEY([NumType])
REFERENCES [dbo].[Type] ([NroType])
GO
ALTER TABLE [dbo].[Biere] CHECK CONSTRAINT [FK_BIERE_TYPE]
GO
ALTER TABLE [dbo].[Biere]  WITH CHECK ADD  CONSTRAINT [fk_BiereMarque] FOREIGN KEY([NomMarque])
REFERENCES [dbo].[Marque] ([NomMarque])
GO
ALTER TABLE [dbo].[Biere] CHECK CONSTRAINT [fk_BiereMarque]
GO
ALTER TABLE [dbo].[Brasserie]  WITH CHECK ADD  CONSTRAINT [FK_BRASSERIE_REGION] FOREIGN KEY([NomRegion])
REFERENCES [dbo].[Region] ([NomRegion])
GO
ALTER TABLE [dbo].[Brasserie] CHECK CONSTRAINT [FK_BRASSERIE_REGION]
GO
ALTER TABLE [dbo].[Marque]  WITH CHECK ADD  CONSTRAINT [FK_MARQUE_BRASSERIE] FOREIGN KEY([CodeBrasserie])
REFERENCES [dbo].[Brasserie] ([CodeBrasserie])
GO
ALTER TABLE [dbo].[Marque] CHECK CONSTRAINT [FK_MARQUE_BRASSERIE]
GO
ALTER TABLE [dbo].[PaysType]  WITH CHECK ADD  CONSTRAINT [FK_PaysType_Pays] FOREIGN KEY([NomType])
REFERENCES [dbo].[Pays] ([NomPays])
GO
ALTER TABLE [dbo].[PaysType] CHECK CONSTRAINT [FK_PaysType_Pays]
GO
ALTER TABLE [dbo].[PaysType]  WITH CHECK ADD  CONSTRAINT [FK_PaysType_Type] FOREIGN KEY([NroType])
REFERENCES [dbo].[Type] ([NroType])
GO
ALTER TABLE [dbo].[PaysType] CHECK CONSTRAINT [FK_PaysType_Type]
GO
ALTER TABLE [dbo].[Region]  WITH CHECK ADD  CONSTRAINT [FK_REGION_PAYS] FOREIGN KEY([NomPays])
REFERENCES [dbo].[Pays] ([NomPays])
GO
ALTER TABLE [dbo].[Region] CHECK CONSTRAINT [FK_REGION_PAYS]
GO
