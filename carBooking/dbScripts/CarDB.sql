USE CarDB

CREATE TABLE [dbo].[Cars](
	[CarID] [int] IDENTITY(1,1)  NOT NULL PRIMARY KEY ,
	[CarModel] [varchar](50) NULL,
	[CarBrand] [varchar](50) NULL,
	[CarSeats] [int] NULL,
	[CarAvailability] [bit] NULL,
	[CarType] [varchar](50) NULL,
	[CarPrice] [money] NULL,
	[CarImage] [varchar](50) NULL,
)

CREATE TABLE [dbo].[City](
	[CityID] [int] IDENTITY(1,1) NOT NULL PRIMARY KEY,
	[CityName] [varchar](50) NULL,
)

CREATE TABLE [dbo].[Rental](
	[RentalID] [int] IDENTITY(1,1) NOT NULL PRIMARY KEY,
	[PickDate] [varchar](50) NULL,
	[ReturnDate] [varchar](50) NULL,
	[CarID] [int] NULL,
	[CustID] [int] NULL,
	[CityID] [int] NULL,
	[Amount] [money] NULL,
)

ALTER TABLE [dbo].[Rental]  WITH CHECK ADD FOREIGN KEY([CarID])
REFERENCES [dbo].[Cars] ([CarID])
GO
ALTER TABLE [dbo].[Rental]  WITH CHECK ADD FOREIGN KEY([CityID])
REFERENCES [dbo].[City] ([CityID])
GO

SET IDENTITY_INSERT [dbo].[City] ON 
GO
INSERT [dbo].[City] ([CityID], [CityName]) VALUES (1, N'Hyderabad')
GO
INSERT [dbo].[City] ([CityID], [CityName]) VALUES (2, N'Nellore')
GO
INSERT [dbo].[City] ([CityID], [CityName]) VALUES (3, N'Chennai')
GO
INSERT [dbo].[City] ([CityID], [CityName]) VALUES (4, N'Warangal')
GO
INSERT [dbo].[City] ([CityID], [CityName]) VALUES (5, N'Nizamabad')
GO
SET IDENTITY_INSERT [dbo].[City] OFF
GO


SET IDENTITY_INSERT [dbo].[Cars] ON 
GO
INSERT [dbo].[Cars] ([CarID], [CarModel], [CarBrand], [CarSeats], [CarAvailability], [CarType], [CarPrice], [CarImage]) VALUES (1, N'Ertiga', N'MARUTHI SUZUKI', 4, 0, N'SUV', 1000.0000, N'Car1.jpg')
GO
INSERT [dbo].[Cars] ([CarID], [CarModel], [CarBrand], [CarSeats], [CarAvailability], [CarType], [CarPrice], [CarImage]) VALUES (2, N'Brezza', N'MARUTHI SUZUKI', 5, 0, N'SEDAN', 1500.0000, N'Car2.jpg')
GO
INSERT [dbo].[Cars] ([CarID], [CarModel], [CarBrand], [CarSeats], [CarAvailability], [CarType], [CarPrice], [CarImage]) VALUES (3, N'Swift', N'MARUTHI SUZUKI', 5, 0, N'HATCHBACK', 2000.0000, N'Car3.jpg')
GO
INSERT [dbo].[Cars] ([CarID], [CarModel], [CarBrand], [CarSeats], [CarAvailability], [CarType], [CarPrice], [CarImage]) VALUES (4, N'Creta', N'HYUNDAI', 4, 0, N'SUV', 2500.0000, N'Car4.jpg')
GO
INSERT [dbo].[Cars] ([CarID], [CarModel], [CarBrand], [CarSeats], [CarAvailability], [CarType], [CarPrice], [CarImage]) VALUES (5, N'Venue', N'HYUNDAI', 5, 0, N'HATCHBACK', 1500.0000, N'Car5.jpg')
GO
INSERT [dbo].[Cars] ([CarID], [CarModel], [CarBrand], [CarSeats], [CarAvailability], [CarType], [CarPrice], [CarImage]) VALUES (6, N'Verna', N'HYUNDAI', 7, 0, N'SEDAN', 2000.0000, N'Car6.jpg')
GO
INSERT [dbo].[Cars] ([CarID], [CarModel], [CarBrand], [CarSeats], [CarAvailability], [CarType], [CarPrice], [CarImage]) VALUES (7, N'Aura', N'HYUNDAI', 5, 0, N'SUV', 1000.0000, N'Car7.jpg')
GO
INSERT [dbo].[Cars] ([CarID], [CarModel], [CarBrand], [CarSeats], [CarAvailability], [CarType], [CarPrice], [CarImage]) VALUES (8, N'Elite i20', N'HYUNDAI', 4, 1, N'SEDAN', 1500.0000, N'Car8.jpg')
GO
INSERT [dbo].[Cars] ([CarID], [CarModel], [CarBrand], [CarSeats], [CarAvailability], [CarType], [CarPrice], [CarImage]) VALUES (9, N'Seltos', N'KIA', 5, 0, N'HATCHBACK', 2500.0000, N'Car9.jpg')
GO
INSERT [dbo].[Cars] ([CarID], [CarModel], [CarBrand], [CarSeats], [CarAvailability], [CarType], [CarPrice], [CarImage]) VALUES (10, N'Carnval', N'KIA', 8, 1, N'SUV', 2500.0000, N'Car10.jpg')
GO
INSERT [dbo].[Cars] ([CarID], [CarModel], [CarBrand], [CarSeats], [CarAvailability], [CarType], [CarPrice], [CarImage]) VALUES (11, N'Seltos', N'KIA', 5, 0, N'SUV', 2000.0000, N'Car11.jpg')
GO
INSERT [dbo].[Cars] ([CarID], [CarModel], [CarBrand], [CarSeats], [CarAvailability], [CarType], [CarPrice], [CarImage]) VALUES (12, N'Carnval', N'KIA', 6, 1, N'HATCHBACK', 2000.0000, N'Car12.jpg')
GO
INSERT [dbo].[Cars] ([CarID], [CarModel], [CarBrand], [CarSeats], [CarAvailability], [CarType], [CarPrice], [CarImage]) VALUES (13, N'Carnval', N'KIA', 5, 1, N'SEDAN', 1500.0000, N'Car13.jpg')
GO
INSERT [dbo].[Cars] ([CarID], [CarModel], [CarBrand], [CarSeats], [CarAvailability], [CarType], [CarPrice], [CarImage]) VALUES (14, N'EcoSport', N'Ford', 6, 1, N'SUV', 1500.0000, N'Car14.jpg')
GO
INSERT [dbo].[Cars] ([CarID], [CarModel], [CarBrand], [CarSeats], [CarAvailability], [CarType], [CarPrice], [CarImage]) VALUES (15, N'Figo', N'Ford', 4, 0, N'HATCHBACK', 1000.0000, N'Car15.jpg')
GO
INSERT [dbo].[Cars] ([CarID], [CarModel], [CarBrand], [CarSeats], [CarAvailability], [CarType], [CarPrice], [CarImage]) VALUES (16, N'Aspire', N'Ford', 5, 1, N'SUV', 1500.0000, N'Car16.jpg')
GO
INSERT [dbo].[Cars] ([CarID], [CarModel], [CarBrand], [CarSeats], [CarAvailability], [CarType], [CarPrice], [CarImage]) VALUES (17, N'Figo', N'Ford', 7, 1, N'HATCHBACK', 2500.0000, N'Car17.jpg')
GO
INSERT [dbo].[Cars] ([CarID], [CarModel], [CarBrand], [CarSeats], [CarAvailability], [CarType], [CarPrice], [CarImage]) VALUES (18, N'Figo', N'Ford', 7, 1, N'HATCHBACK', 2500.0000, N'Car18.jpg')
GO
INSERT [dbo].[Cars] ([CarID], [CarModel], [CarBrand], [CarSeats], [CarAvailability], [CarType], [CarPrice], [CarImage]) VALUES (19, N'City', N'Honda', 7, 1, N'SUV', 1000.0000, N'Car19.jpg')
GO
INSERT [dbo].[Cars] ([CarID], [CarModel], [CarBrand], [CarSeats], [CarAvailability], [CarType], [CarPrice], [CarImage]) VALUES (20, N'Jazz', N'Honda', 5, 0, N'SUV', 1000.0000, N'Car20.jpg')
GO
SET IDENTITY_INSERT [dbo].[Cars] OFF
GO

SET IDENTITY_INSERT [dbo].[Rental] ON 
GO
INSERT [dbo].[Rental] ([RentalID], [PickDate], [ReturnDate], [CarID], [CustID], [CityID], [Amount]) VALUES (1066, N'2022-08-25', N'2022-08-27', 1, 2, 2, 2000.0000)
GO
SET IDENTITY_INSERT [dbo].[Rental] OFF
GO