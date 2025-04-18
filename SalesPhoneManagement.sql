USE [master]
GO
/****** Object:  Database [SalesPhoneManagement]    Script Date: 12/12/2023 7:16:42 PM ******/
CREATE DATABASE [SalesPhoneManagement]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'SalesPhoneManagement', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.ASUS\MSSQL\DATA\SalesPhoneManagement.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'SalesPhoneManagement_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.ASUS\MSSQL\DATA\SalesPhoneManagement_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [SalesPhoneManagement] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [SalesPhoneManagement].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [SalesPhoneManagement] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [SalesPhoneManagement] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [SalesPhoneManagement] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [SalesPhoneManagement] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [SalesPhoneManagement] SET ARITHABORT OFF 
GO
ALTER DATABASE [SalesPhoneManagement] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [SalesPhoneManagement] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [SalesPhoneManagement] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [SalesPhoneManagement] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [SalesPhoneManagement] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [SalesPhoneManagement] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [SalesPhoneManagement] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [SalesPhoneManagement] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [SalesPhoneManagement] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [SalesPhoneManagement] SET  ENABLE_BROKER 
GO
ALTER DATABASE [SalesPhoneManagement] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [SalesPhoneManagement] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [SalesPhoneManagement] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [SalesPhoneManagement] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [SalesPhoneManagement] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [SalesPhoneManagement] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [SalesPhoneManagement] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [SalesPhoneManagement] SET RECOVERY FULL 
GO
ALTER DATABASE [SalesPhoneManagement] SET  MULTI_USER 
GO
ALTER DATABASE [SalesPhoneManagement] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [SalesPhoneManagement] SET DB_CHAINING OFF 
GO
ALTER DATABASE [SalesPhoneManagement] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [SalesPhoneManagement] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [SalesPhoneManagement] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [SalesPhoneManagement] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'SalesPhoneManagement', N'ON'
GO
ALTER DATABASE [SalesPhoneManagement] SET QUERY_STORE = ON
GO
ALTER DATABASE [SalesPhoneManagement] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [SalesPhoneManagement]
GO
/****** Object:  User [E05]    Script Date: 12/12/2023 7:16:42 PM ******/
CREATE USER [E05] FOR LOGIN [E05] WITH DEFAULT_SCHEMA=[E05]
GO
/****** Object:  User [E03]    Script Date: 12/12/2023 7:16:42 PM ******/
CREATE USER [E03] FOR LOGIN [E03] WITH DEFAULT_SCHEMA=[E03]
GO
/****** Object:  User [E02]    Script Date: 12/12/2023 7:16:42 PM ******/
CREATE USER [E02] FOR LOGIN [E02] WITH DEFAULT_SCHEMA=[E02]
GO
/****** Object:  User [E01]    Script Date: 12/12/2023 7:16:42 PM ******/
CREATE USER [E01] FOR LOGIN [E01] WITH DEFAULT_SCHEMA=[E01]
GO
/****** Object:  DatabaseRole [QuanLy]    Script Date: 12/12/2023 7:16:42 PM ******/
CREATE ROLE [QuanLy]
GO
/****** Object:  DatabaseRole [Kho]    Script Date: 12/12/2023 7:16:42 PM ******/
CREATE ROLE [Kho]
GO
/****** Object:  DatabaseRole [CSKH]    Script Date: 12/12/2023 7:16:42 PM ******/
CREATE ROLE [CSKH]
GO
ALTER ROLE [CSKH] ADD MEMBER [E05]
GO
ALTER ROLE [CSKH] ADD MEMBER [E03]
GO
ALTER ROLE [QuanLy] ADD MEMBER [E02]
GO
ALTER ROLE [db_owner] ADD MEMBER [E02]
GO
ALTER ROLE [db_accessadmin] ADD MEMBER [E02]
GO
ALTER ROLE [db_securityadmin] ADD MEMBER [E02]
GO
ALTER ROLE [db_ddladmin] ADD MEMBER [E02]
GO
ALTER ROLE [db_backupoperator] ADD MEMBER [E02]
GO
ALTER ROLE [db_datareader] ADD MEMBER [E02]
GO
ALTER ROLE [Kho] ADD MEMBER [E01]
GO
ALTER ROLE [db_owner] ADD MEMBER [QuanLy]
GO
ALTER ROLE [db_accessadmin] ADD MEMBER [QuanLy]
GO
ALTER ROLE [db_securityadmin] ADD MEMBER [QuanLy]
GO
ALTER ROLE [db_ddladmin] ADD MEMBER [QuanLy]
GO
ALTER ROLE [db_backupoperator] ADD MEMBER [QuanLy]
GO
ALTER ROLE [db_datareader] ADD MEMBER [QuanLy]
GO
/****** Object:  Schema [CSKH]    Script Date: 12/12/2023 7:16:42 PM ******/
CREATE SCHEMA [CSKH]
GO
/****** Object:  Schema [E01]    Script Date: 12/12/2023 7:16:42 PM ******/
CREATE SCHEMA [E01]
GO
/****** Object:  Schema [E02]    Script Date: 12/12/2023 7:16:42 PM ******/
CREATE SCHEMA [E02]
GO
/****** Object:  Schema [E03]    Script Date: 12/12/2023 7:16:42 PM ******/
CREATE SCHEMA [E03]
GO
/****** Object:  Schema [E05]    Script Date: 12/12/2023 7:16:42 PM ******/
CREATE SCHEMA [E05]
GO
/****** Object:  Schema [Kho]    Script Date: 12/12/2023 7:16:42 PM ******/
CREATE SCHEMA [Kho]
GO
/****** Object:  Schema [QuanLy]    Script Date: 12/12/2023 7:16:42 PM ******/
CREATE SCHEMA [QuanLy]
GO
/****** Object:  UserDefinedFunction [dbo].[FUNC_CONVERTER_DT_TO_UXT]    Script Date: 12/12/2023 7:16:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Datetime to unix timestamp
CREATE FUNCTION [dbo].[FUNC_CONVERTER_DT_TO_UXT]
( 
    @dt DATETIME 
) 
RETURNS BIGINT 
AS 
BEGIN 
    DECLARE @diff BIGINT 
    IF @dt >= '20380119' 
    BEGIN 
        SET @diff = CONVERT(BIGINT, DATEDIFF(S, '19700101', '20380119')) 
            + CONVERT(BIGINT, DATEDIFF(S, '20380119', @dt)) 
    END 
    ELSE 
        SET @diff = DATEDIFF(S, '19700101', @dt) 
    RETURN @diff 
END
GO
/****** Object:  UserDefinedFunction [dbo].[PATH_DATA]    Script Date: 12/12/2023 7:16:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE FUNCTION [dbo].[PATH_DATA]()
RETURNS NVARCHAR(MAX)
AS
BEGIN
    RETURN 'D:\HK1_2023-2024(HK7)\PTUDTM\DoAn\QuanLyBanDienThoai\Database\TXT'
END
GO
/****** Object:  Table [dbo].[ADDRESSOFCUSTOMER]    Script Date: 12/12/2023 7:16:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ADDRESSOFCUSTOMER](
	[AddressOfCustomerID] [varchar](10) NOT NULL,
	[AparmentNo] [varchar](40) NOT NULL,
	[Street] [nvarchar](100) NOT NULL,
	[Ward] [nvarchar](30) NOT NULL,
	[District] [nvarchar](30) NOT NULL,
	[City] [nvarchar](100) NOT NULL,
	[Email] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[AddressOfCustomerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BILL]    Script Date: 12/12/2023 7:16:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BILL](
	[BillID] [varchar](10) NOT NULL,
	[Datetimestamp] [varchar](11) NOT NULL,
	[Total] [bigint] NULL,
	[State] [bit] NULL,
	[Payment] [bit] NULL,
	[AddressOfCustomerID] [varchar](10) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[BillID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BRAND]    Script Date: 12/12/2023 7:16:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BRAND](
	[BrandID] [varchar](10) NOT NULL,
	[BrandName] [varchar](30) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[BrandID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CAPACITY]    Script Date: 12/12/2023 7:16:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CAPACITY](
	[CapacityID] [varchar](10) NOT NULL,
	[Capacity] [int] NOT NULL,
	[Unit] [varchar](10) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[CapacityID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[COLOR]    Script Date: 12/12/2023 7:16:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[COLOR](
	[ColorID] [varchar](10) NOT NULL,
	[ColorName] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[ColorID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[COMMENT]    Script Date: 12/12/2023 7:16:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[COMMENT](
	[CommentID] [varchar](10) NOT NULL,
	[Body] [nvarchar](300) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[PhoneNO] [varchar](10) NOT NULL,
	[PhoneID] [varchar](10) NOT NULL,
	[Datetimestamp] [varchar](11) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[CommentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CUSTOMER]    Script Date: 12/12/2023 7:16:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CUSTOMER](
	[Email] [varchar](100) NOT NULL,
	[CustomerName] [nvarchar](50) NOT NULL,
	[Password] [varchar](30) NULL,
	[PhoneNO] [varchar](10) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DETAILSBILL]    Script Date: 12/12/2023 7:16:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DETAILSBILL](
	[BillID] [varchar](10) NOT NULL,
	[DetailsPhoneID] [varchar](10) NOT NULL,
	[QuantityPurchased] [int] NOT NULL,
	[Star] [int] NULL,
 CONSTRAINT [PK_DETAILSBILL] PRIMARY KEY CLUSTERED 
(
	[BillID] ASC,
	[DetailsPhoneID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DETAILSPHONE]    Script Date: 12/12/2023 7:16:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DETAILSPHONE](
	[DetailsPhoneID] [varchar](10) NOT NULL,
	[PhoneID] [varchar](10) NULL,
	[ColorID] [varchar](10) NULL,
	[CapacityID] [varchar](10) NULL,
	[Price] [int] NULL,
	[DetailImage] [varchar](max) NULL,
	[Quantity] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[DetailsPhoneID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DETAILSWAREHOUSERECEIPT]    Script Date: 12/12/2023 7:16:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DETAILSWAREHOUSERECEIPT](
	[WarehouseReceiptID] [varchar](10) NOT NULL,
	[DetailsPhoneID] [varchar](10) NOT NULL,
	[QuantityOdered] [int] NOT NULL,
	[Price] [int] NOT NULL,
 CONSTRAINT [PK_DETAILSWAREHOUSERECEIPT] PRIMARY KEY CLUSTERED 
(
	[WarehouseReceiptID] ASC,
	[DetailsPhoneID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EMPLOYEE]    Script Date: 12/12/2023 7:16:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EMPLOYEE](
	[EmployeeID] [varchar](10) NOT NULL,
	[EmployeeName] [nvarchar](50) NOT NULL,
	[Password] [varchar](15) NOT NULL,
	[Avatar] [varchar](max) NULL,
	[ChucVu] [nvarchar](30) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[EmployeeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PHONE]    Script Date: 12/12/2023 7:16:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PHONE](
	[PhoneID] [varchar](10) NOT NULL,
	[PhoneName] [nvarchar](100) NOT NULL,
	[MainImage] [nvarchar](max) NOT NULL,
	[ScreenTeachnology] [varchar](50) NULL,
	[PhysicalWidth] [int] NULL,
	[PhysicalHeight] [int] NULL,
	[ScreenDiagonal] [decimal](5, 1) NULL,
	[Chip] [nvarchar](50) NULL,
	[OperatingSystem] [varchar](100) NULL,
	[Sim] [varchar](50) NULL,
	[Wifi] [varchar](200) NULL,
	[Bluetooth] [varchar](50) NULL,
	[BatteryCapacity] [int] NULL,
	[TypeOfPin] [varchar](50) NULL,
	[BrandID] [varchar](10) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[PhoneID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RESPONECOMMENT]    Script Date: 12/12/2023 7:16:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RESPONECOMMENT](
	[ResponeCommentID] [varchar](10) NOT NULL,
	[Body] [nvarchar](max) NOT NULL,
	[Datetimestamp] [varchar](11) NOT NULL,
	[CommentID] [varchar](10) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ResponeCommentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SUPPLIER]    Script Date: 12/12/2023 7:16:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SUPPLIER](
	[SupplierID] [varchar](10) NOT NULL,
	[SupplierName] [nvarchar](200) NOT NULL,
	[PhoneNO] [varchar](10) NOT NULL,
	[Address] [nvarchar](200) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[SupplierID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[WAREHOUSERECEIPT]    Script Date: 12/12/2023 7:16:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WAREHOUSERECEIPT](
	[WarehouseReceiptID] [varchar](10) NOT NULL,
	[Datetimestamp] [varchar](11) NOT NULL,
	[Total] [bigint] NULL,
	[State] [bit] NULL,
	[EmployeeID] [varchar](10) NOT NULL,
	[SupplierID] [varchar](10) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[WarehouseReceiptID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[ADDRESSOFCUSTOMER] ([AddressOfCustomerID], [AparmentNo], [Street], [Ward], [District], [City], [Email]) VALUES (N'453a6dce-c', N'140', N'Lê Trọng Tấn', N'10', N'10 ', N'HCM', N'phuongviet.huit@gmail.com')
INSERT [dbo].[ADDRESSOFCUSTOMER] ([AddressOfCustomerID], [AparmentNo], [Street], [Ward], [District], [City], [Email]) VALUES (N'AOC1', N'57/15', N'Hồ Thị Kỷ', N'1', N'10', N'Thành phố Hồ Chí Minh', N'phuongviet.huit@gmail.com')
INSERT [dbo].[ADDRESSOFCUSTOMER] ([AddressOfCustomerID], [AparmentNo], [Street], [Ward], [District], [City], [Email]) VALUES (N'AOC10', N'3/1/2/3', N'Hồ Thị Kỷ', N'2', N'10', N'Thành phố Hồ Chí Minh', N'tiengiangtran@gmail.com')
INSERT [dbo].[ADDRESSOFCUSTOMER] ([AddressOfCustomerID], [AparmentNo], [Street], [Ward], [District], [City], [Email]) VALUES (N'AOC11', N'19/5', N'Lê Hồng Phong', N'3', N'10', N'Thành phố Hồ Chí Minh', N'phuongviet.huit@gmail.com')
INSERT [dbo].[ADDRESSOFCUSTOMER] ([AddressOfCustomerID], [AparmentNo], [Street], [Ward], [District], [City], [Email]) VALUES (N'AOC12', N'3', N'Lý Thái Tổ', N'12', N'10', N'Thành phố Hồ Chí Minh', N'phuongviet.huit@gmail.com')
INSERT [dbo].[ADDRESSOFCUSTOMER] ([AddressOfCustomerID], [AparmentNo], [Street], [Ward], [District], [City], [Email]) VALUES (N'AOC13', N'14', N'Cao Bá Quát', N'3', N'Bình Thạnh', N'Thành phố Hồ Chí Minh', N'hieuxinh@gmail.com')
INSERT [dbo].[ADDRESSOFCUSTOMER] ([AddressOfCustomerID], [AparmentNo], [Street], [Ward], [District], [City], [Email]) VALUES (N'AOC14', N'21/12/3', N'An Dương Vương', N'12', N'Tân Phú', N'Thành phố Hồ Chí Minh', N'daoanh@gmail.com')
INSERT [dbo].[ADDRESSOFCUSTOMER] ([AddressOfCustomerID], [AparmentNo], [Street], [Ward], [District], [City], [Email]) VALUES (N'AOC15', N'28/2', N'Hồ Hảo Hớn', N'1', N'10', N'Thành phố Hồ Chí Minh', N'tungngoc@gmail.com')
INSERT [dbo].[ADDRESSOFCUSTOMER] ([AddressOfCustomerID], [AparmentNo], [Street], [Ward], [District], [City], [Email]) VALUES (N'AOC2', N'201', N'Lê Hồng Phong', N'1', N'10', N'Thành phố Hồ Chí Minh', N'hieuxinh@gmail.com')
INSERT [dbo].[ADDRESSOFCUSTOMER] ([AddressOfCustomerID], [AparmentNo], [Street], [Ward], [District], [City], [Email]) VALUES (N'AOC3', N'203', N'Lê Hồng Phong', N'1', N'10', N'Thành phố Hồ Chí Minh', N'daoanh@gmail.com')
INSERT [dbo].[ADDRESSOFCUSTOMER] ([AddressOfCustomerID], [AparmentNo], [Street], [Ward], [District], [City], [Email]) VALUES (N'AOC4', N'182/12/13', N'Nguyễn Thị Minh Khai', N'12', N'1', N'Thành phố Hồ Chí Minh', N'tungngoc@gmail.com')
INSERT [dbo].[ADDRESSOFCUSTOMER] ([AddressOfCustomerID], [AparmentNo], [Street], [Ward], [District], [City], [Email]) VALUES (N'AOC5', N'187', N'Hồ Hảo Hớn', N'5', N'10', N'Thành phố Hồ Chí Minh', N'thinhdn@gmail.com')
INSERT [dbo].[ADDRESSOFCUSTOMER] ([AddressOfCustomerID], [AparmentNo], [Street], [Ward], [District], [City], [Email]) VALUES (N'AOC6', N'28/12', N'Lý Thái Tổ', N'1', N'10', N'Thành phố Hồ Chí Minh', N'tintrung@gmail.com')
INSERT [dbo].[ADDRESSOFCUSTOMER] ([AddressOfCustomerID], [AparmentNo], [Street], [Ward], [District], [City], [Email]) VALUES (N'AOC7', N'68/12', N'Nguyễn Văn Lương', N'4', N'7', N'Thành phố Hồ Chí Minh', N'quangsn@gmail.com')
INSERT [dbo].[ADDRESSOFCUSTOMER] ([AddressOfCustomerID], [AparmentNo], [Street], [Ward], [District], [City], [Email]) VALUES (N'AOC8', N'39/12/3', N'Hùng Vương', N'5', N'5', N'Thành phố Hồ Chí Minh', N'quangsieunhan@gmail.com')
INSERT [dbo].[ADDRESSOFCUSTOMER] ([AddressOfCustomerID], [AparmentNo], [Street], [Ward], [District], [City], [Email]) VALUES (N'AOC9', N'1203/1', N'Trần Hưng Đạo', N'1', N'1', N'Thành phố Hồ Chí Minh', N'tuanh@gmail.com')
GO
INSERT [dbo].[BILL] ([BillID], [Datetimestamp], [Total], [State], [Payment], [AddressOfCustomerID]) VALUES (N'1bf46c9d-f', N'1702289766', 34590000, 0, 0, N'AOC14')
INSERT [dbo].[BILL] ([BillID], [Datetimestamp], [Total], [State], [Payment], [AddressOfCustomerID]) VALUES (N'B1', N'1695647446', 73580000, 1, 1, N'AOC1')
INSERT [dbo].[BILL] ([BillID], [Datetimestamp], [Total], [State], [Payment], [AddressOfCustomerID]) VALUES (N'B2', N'1682372663', 258930000, 0, 0, N'AOC4')
INSERT [dbo].[BILL] ([BillID], [Datetimestamp], [Total], [State], [Payment], [AddressOfCustomerID]) VALUES (N'B3', N'1694966151', 285220000, 0, 1, N'AOC4')
INSERT [dbo].[BILL] ([BillID], [Datetimestamp], [Total], [State], [Payment], [AddressOfCustomerID]) VALUES (N'B4', N'1696350170', 314410000, 0, 0, N'AOC1')
INSERT [dbo].[BILL] ([BillID], [Datetimestamp], [Total], [State], [Payment], [AddressOfCustomerID]) VALUES (N'B5', N'1676138167', 446370000, 1, 1, N'AOC4')
INSERT [dbo].[BILL] ([BillID], [Datetimestamp], [Total], [State], [Payment], [AddressOfCustomerID]) VALUES (N'B6', N'1673231247', 481360000, 0, 1, N'AOC4')
INSERT [dbo].[BILL] ([BillID], [Datetimestamp], [Total], [State], [Payment], [AddressOfCustomerID]) VALUES (N'B7', N'1690941595', 648310000, 0, 0, N'AOC12')
INSERT [dbo].[BILL] ([BillID], [Datetimestamp], [Total], [State], [Payment], [AddressOfCustomerID]) VALUES (N'B8', N'1686168713', 684700000, 1, 1, N'AOC15')
INSERT [dbo].[BILL] ([BillID], [Datetimestamp], [Total], [State], [Payment], [AddressOfCustomerID]) VALUES (N'e69322a9-a', N'1702289250', 81980000, 0, 0, N'AOC12')
GO
INSERT [dbo].[BRAND] ([BrandID], [BrandName]) VALUES (N'BR1', N'Apple')
INSERT [dbo].[BRAND] ([BrandID], [BrandName]) VALUES (N'BR2', N'Samsung')
INSERT [dbo].[BRAND] ([BrandID], [BrandName]) VALUES (N'BR3', N'Vertu')
INSERT [dbo].[BRAND] ([BrandID], [BrandName]) VALUES (N'BR4', N'OPPO')
INSERT [dbo].[BRAND] ([BrandID], [BrandName]) VALUES (N'BR5', N'Xiaomi')
INSERT [dbo].[BRAND] ([BrandID], [BrandName]) VALUES (N'BR6', N'Realme')
INSERT [dbo].[BRAND] ([BrandID], [BrandName]) VALUES (N'BR7', N'Honor')
INSERT [dbo].[BRAND] ([BrandID], [BrandName]) VALUES (N'BR8', N'Nokia')
GO
INSERT [dbo].[CAPACITY] ([CapacityID], [Capacity], [Unit]) VALUES (N'CA1', 32, N'GB')
INSERT [dbo].[CAPACITY] ([CapacityID], [Capacity], [Unit]) VALUES (N'CA2', 64, N'GB')
INSERT [dbo].[CAPACITY] ([CapacityID], [Capacity], [Unit]) VALUES (N'CA3', 128, N'GB')
INSERT [dbo].[CAPACITY] ([CapacityID], [Capacity], [Unit]) VALUES (N'CA4', 256, N'GB')
INSERT [dbo].[CAPACITY] ([CapacityID], [Capacity], [Unit]) VALUES (N'CA5', 512, N'GB')
INSERT [dbo].[CAPACITY] ([CapacityID], [Capacity], [Unit]) VALUES (N'CA6', 1, N'TB')
GO
INSERT [dbo].[COLOR] ([ColorID], [ColorName]) VALUES (N'CL1', N'Titan Blue')
INSERT [dbo].[COLOR] ([ColorID], [ColorName]) VALUES (N'CL10', N'Purple')
INSERT [dbo].[COLOR] ([ColorID], [ColorName]) VALUES (N'CL11', N'Gray')
INSERT [dbo].[COLOR] ([ColorID], [ColorName]) VALUES (N'CL12', N'Cream')
INSERT [dbo].[COLOR] ([ColorID], [ColorName]) VALUES (N'CL13', N'White')
INSERT [dbo].[COLOR] ([ColorID], [ColorName]) VALUES (N'CL14', N'Green')
INSERT [dbo].[COLOR] ([ColorID], [ColorName]) VALUES (N'CL2', N'Titan Black')
INSERT [dbo].[COLOR] ([ColorID], [ColorName]) VALUES (N'CL3', N'Titan White')
INSERT [dbo].[COLOR] ([ColorID], [ColorName]) VALUES (N'CL4', N'Titan Natural')
INSERT [dbo].[COLOR] ([ColorID], [ColorName]) VALUES (N'CL5', N'Blue')
INSERT [dbo].[COLOR] ([ColorID], [ColorName]) VALUES (N'CL6', N'Gold')
INSERT [dbo].[COLOR] ([ColorID], [ColorName]) VALUES (N'CL7', N'Silver')
INSERT [dbo].[COLOR] ([ColorID], [ColorName]) VALUES (N'CL8', N'Black')
INSERT [dbo].[COLOR] ([ColorID], [ColorName]) VALUES (N'CL9', N'Yellow')
GO
INSERT [dbo].[COMMENT] ([CommentID], [Body], [Name], [PhoneNO], [PhoneID], [Datetimestamp]) VALUES (N'552de390-4', N'Điện thoại đẹp quá', N'thịnh', N'097856787', N'PH1', N'1702289339')
INSERT [dbo].[COMMENT] ([CommentID], [Body], [Name], [PhoneNO], [PhoneID], [Datetimestamp]) VALUES (N'CM1', N'Điện thoại này còn không ad?', N'Hồ Phương Anh', N'0909212312', N'PH1', N'1685156936')
INSERT [dbo].[COMMENT] ([CommentID], [Body], [Name], [PhoneNO], [PhoneID], [Datetimestamp]) VALUES (N'CM10', N'cùng loại máy mà bên TGDĐ và FPT là 8G còn bên này để 6G là sao.', N'Zai Đẹp', N'0909212321', N'PH5', N'1675266640')
INSERT [dbo].[COMMENT] ([CommentID], [Body], [Name], [PhoneNO], [PhoneID], [Datetimestamp]) VALUES (N'CM11', N'Cửa hàng 16nguyen an ninh di an cô sẵn máy này không giá tại cua hang la bao nhiêu', N'Ơ Kìa', N'0909212322', N'PH5', N'1673833618')
INSERT [dbo].[COMMENT] ([CommentID], [Body], [Name], [PhoneNO], [PhoneID], [Datetimestamp]) VALUES (N'CM12', N'Sản phẩm này còn hàng khu vực Cà mau không ạ?', N'Anti Iphone', N'0909212323', N'PH3', N'1674969281')
INSERT [dbo].[COMMENT] ([CommentID], [Body], [Name], [PhoneNO], [PhoneID], [Datetimestamp]) VALUES (N'CM13', N'Em bị rơi và bể mặt kính điện thoại..và mới mua 3 ngày thì bên mình có hỗ trợ cho em thấy mặt kính không ạ..và thay mặt kính nhiêu ạ', N'Khoa Đình', N'0909212324', N'PH3', N'1681311781')
INSERT [dbo].[COMMENT] ([CommentID], [Body], [Name], [PhoneNO], [PhoneID], [Datetimestamp]) VALUES (N'CM14', N'bên mình có cơ sở ở nghệ an ko ạ', N'Su', N'0909212325', N'PH4', N'1673134914')
INSERT [dbo].[COMMENT] ([CommentID], [Body], [Name], [PhoneNO], [PhoneID], [Datetimestamp]) VALUES (N'CM2', N'Tôi bốc phốt điện thoại này', N'TuAnh', N'0909212313', N'PH1', N'1679793924')
INSERT [dbo].[COMMENT] ([CommentID], [Body], [Name], [PhoneNO], [PhoneID], [Datetimestamp]) VALUES (N'CM3', N'Bản có mác BHĐT ở phía sau khác gì với các bản còn lại v nhỉ', N'Dzai Dog', N'0909212314', N'PH1', N'1684593182')
INSERT [dbo].[COMMENT] ([CommentID], [Body], [Name], [PhoneNO], [PhoneID], [Datetimestamp]) VALUES (N'CM4', N'Sao mua lại mất phí chuyển đổi 2 lần ad', N'Hai', N'0909212315', N'PH1', N'1674705923')
INSERT [dbo].[COMMENT] ([CommentID], [Body], [Name], [PhoneNO], [PhoneID], [Datetimestamp]) VALUES (N'CM5', N'quotChỉ kích hoạt trực tuyến_quot là sao vậy shop', N'Nguyễn Ánh', N'0909212316', N'PH1', N'1678553220')
INSERT [dbo].[COMMENT] ([CommentID], [Body], [Name], [PhoneNO], [PhoneID], [Datetimestamp]) VALUES (N'CM6', N'Bên kia bản 256m mà ngót nghét 37t.giá bên mình OK quá.', N'Đồ Anh Tài', N'0909212317', N'PH2', N'1683899017')
INSERT [dbo].[COMMENT] ([CommentID], [Body], [Name], [PhoneNO], [PhoneID], [Datetimestamp]) VALUES (N'CM7', N'cho em hỏi sự khác biệt giữa phiên bản 256gb vs 256gb(BH19T)', N'Balala', N'0909212318', N'PH2', N'1675272516')
INSERT [dbo].[COMMENT] ([CommentID], [Body], [Name], [PhoneNO], [PhoneID], [Datetimestamp]) VALUES (N'CM8', N'Mua về có sẵn rom tiếng việt k shop', N'blublu', N'0909212319', N'PH2', N'1685383659')
INSERT [dbo].[COMMENT] ([CommentID], [Body], [Name], [PhoneNO], [PhoneID], [Datetimestamp]) VALUES (N'CM9', N'Sản phẩm có bao gồm củ sạc không shop?', N'Ngô Tất Tố', N'0909212320', N'PH5', N'1676615608')
GO
INSERT [dbo].[CUSTOMER] ([Email], [CustomerName], [Password], [PhoneNO]) VALUES (N'daoanh@gmail.com', N'Nguyễn Anh Đào', N'Huit@123456', N'0909212314')
INSERT [dbo].[CUSTOMER] ([Email], [CustomerName], [Password], [PhoneNO]) VALUES (N'hieuxinh@gmail.com', N'Hồ Thị Minh Hiếu', N'Huit@123456', N'0909212313')
INSERT [dbo].[CUSTOMER] ([Email], [CustomerName], [Password], [PhoneNO]) VALUES (N'phuongviet.huit@gmail.com', N'Nguyễn Phương Việt', N'Huit@123456', N'0909212312')
INSERT [dbo].[CUSTOMER] ([Email], [CustomerName], [Password], [PhoneNO]) VALUES (N'quangsieunhan@gmail.com', N'Nguyễn Minh Quang', N'Huit@123456', N'0909212319')
INSERT [dbo].[CUSTOMER] ([Email], [CustomerName], [Password], [PhoneNO]) VALUES (N'quangsn@gmail.com', N'Ngô Sĩ Quang', N'Huit@123456', N'0909212318')
INSERT [dbo].[CUSTOMER] ([Email], [CustomerName], [Password], [PhoneNO]) VALUES (N'thinhdn@gmail.com', N'Đặng Ngọc Thịnh', N'Huit@123456', N'0909212316')
INSERT [dbo].[CUSTOMER] ([Email], [CustomerName], [Password], [PhoneNO]) VALUES (N'tiengiangtran@gmail.com', N'Lê Thị Thuỳ Tiên', N'Huit@123456', N'0909212321')
INSERT [dbo].[CUSTOMER] ([Email], [CustomerName], [Password], [PhoneNO]) VALUES (N'tintrung@gmail.com', N'Trần Đình Trung Tín', N'Huit@123456', N'0909212317')
INSERT [dbo].[CUSTOMER] ([Email], [CustomerName], [Password], [PhoneNO]) VALUES (N'tuanh@gmail.com', N'Cao Anh Tú', N'Huit@123456', N'0909212320')
INSERT [dbo].[CUSTOMER] ([Email], [CustomerName], [Password], [PhoneNO]) VALUES (N'tungngoc@gmail.com', N'Hồ Thanh Tùng', N'Huit@123456', N'0909212315')
GO
INSERT [dbo].[DETAILSBILL] ([BillID], [DetailsPhoneID], [QuantityPurchased], [Star]) VALUES (N'1bf46c9d-f', N'DP1', 1, NULL)
INSERT [dbo].[DETAILSBILL] ([BillID], [DetailsPhoneID], [QuantityPurchased], [Star]) VALUES (N'B1', N'DP1', 1, 5)
INSERT [dbo].[DETAILSBILL] ([BillID], [DetailsPhoneID], [QuantityPurchased], [Star]) VALUES (N'B1', N'DP5', 1, NULL)
INSERT [dbo].[DETAILSBILL] ([BillID], [DetailsPhoneID], [QuantityPurchased], [Star]) VALUES (N'B2', N'DP10', 2, NULL)
INSERT [dbo].[DETAILSBILL] ([BillID], [DetailsPhoneID], [QuantityPurchased], [Star]) VALUES (N'B2', N'DP12', 2, NULL)
INSERT [dbo].[DETAILSBILL] ([BillID], [DetailsPhoneID], [QuantityPurchased], [Star]) VALUES (N'B2', N'DP14', 1, NULL)
INSERT [dbo].[DETAILSBILL] ([BillID], [DetailsPhoneID], [QuantityPurchased], [Star]) VALUES (N'B3', N'DP21', 1, NULL)
INSERT [dbo].[DETAILSBILL] ([BillID], [DetailsPhoneID], [QuantityPurchased], [Star]) VALUES (N'B4', N'DP25', 1, NULL)
INSERT [dbo].[DETAILSBILL] ([BillID], [DetailsPhoneID], [QuantityPurchased], [Star]) VALUES (N'B5', N'DP33', 3, 4)
INSERT [dbo].[DETAILSBILL] ([BillID], [DetailsPhoneID], [QuantityPurchased], [Star]) VALUES (N'B5', N'DP35', 1, 3)
INSERT [dbo].[DETAILSBILL] ([BillID], [DetailsPhoneID], [QuantityPurchased], [Star]) VALUES (N'B6', N'DP36', 1, NULL)
INSERT [dbo].[DETAILSBILL] ([BillID], [DetailsPhoneID], [QuantityPurchased], [Star]) VALUES (N'B7', N'DP12', 2, NULL)
INSERT [dbo].[DETAILSBILL] ([BillID], [DetailsPhoneID], [QuantityPurchased], [Star]) VALUES (N'B7', N'DP5', 1, NULL)
INSERT [dbo].[DETAILSBILL] ([BillID], [DetailsPhoneID], [QuantityPurchased], [Star]) VALUES (N'B7', N'DP53', 2, NULL)
INSERT [dbo].[DETAILSBILL] ([BillID], [DetailsPhoneID], [QuantityPurchased], [Star]) VALUES (N'B8', N'DP3', 1, NULL)
INSERT [dbo].[DETAILSBILL] ([BillID], [DetailsPhoneID], [QuantityPurchased], [Star]) VALUES (N'e69322a9-a', N'DP41', 1, NULL)
INSERT [dbo].[DETAILSBILL] ([BillID], [DetailsPhoneID], [QuantityPurchased], [Star]) VALUES (N'e69322a9-a', N'DP5', 1, NULL)
GO
INSERT [dbo].[DETAILSPHONE] ([DetailsPhoneID], [PhoneID], [ColorID], [CapacityID], [Price], [DetailImage], [Quantity]) VALUES (N'DP1', N'PH1', N'CL1', N'CA4', 34590000, N'https://firebasestorage.googleapis.com/v0/b/shop-mobile-274e7.appspot.com/o/Iphone%2Fip15pm_black.jpg?alt=media&token=95679dc8-a17d-4854-9c67-6788d7a5a542', 18)
INSERT [dbo].[DETAILSPHONE] ([DetailsPhoneID], [PhoneID], [ColorID], [CapacityID], [Price], [DetailImage], [Quantity]) VALUES (N'DP10', N'PH1', N'CL2', N'CA6', 47990000, N'https://firebasestorage.googleapis.com/v0/b/shop-mobile-274e7.appspot.com/o/Iphone%2Fip15pm_black.jpg?alt=media&token=95679dc8-a17d-4854-9c67-6788d7a5a542', 10)
INSERT [dbo].[DETAILSPHONE] ([DetailsPhoneID], [PhoneID], [ColorID], [CapacityID], [Price], [DetailImage], [Quantity]) VALUES (N'DP11', N'PH1', N'CL3', N'CA6', 47990000, N'https://firebasestorage.googleapis.com/v0/b/shop-mobile-274e7.appspot.com/o/Iphone%2Fip15pm_white.jpg?alt=media&token=4b3329be-e46a-4afb-8990-940b5c440d3b', 5)
INSERT [dbo].[DETAILSPHONE] ([DetailsPhoneID], [PhoneID], [ColorID], [CapacityID], [Price], [DetailImage], [Quantity]) VALUES (N'DP12', N'PH1', N'CL4', N'CA6', 38990000, N'https://firebasestorage.googleapis.com/v0/b/shop-mobile-274e7.appspot.com/o/Iphone%2Fip15pm_natural.jpg?alt=media&token=b603f136-40c3-4391-be5c-487b06395cb4', 10)
INSERT [dbo].[DETAILSPHONE] ([DetailsPhoneID], [PhoneID], [ColorID], [CapacityID], [Price], [DetailImage], [Quantity]) VALUES (N'DP13', N'PH2', N'CL5', N'CA2', 11390000, N'https://firebasestorage.googleapis.com/v0/b/shop-mobile-274e7.appspot.com/o/Iphone%2Fip11pm_green.jpg?alt=media&token=a3ccfc87-a392-4bc4-b4a7-4046edac7bac', 20)
INSERT [dbo].[DETAILSPHONE] ([DetailsPhoneID], [PhoneID], [ColorID], [CapacityID], [Price], [DetailImage], [Quantity]) VALUES (N'DP14', N'PH2', N'CL6', N'CA2', 11390000, N'https://firebasestorage.googleapis.com/v0/b/shop-mobile-274e7.appspot.com/o/Iphone%2Fip11pm_gold.jpg?alt=media&token=64a050f4-8612-4700-8fd2-04eab3ef4951', 30)
INSERT [dbo].[DETAILSPHONE] ([DetailsPhoneID], [PhoneID], [ColorID], [CapacityID], [Price], [DetailImage], [Quantity]) VALUES (N'DP15', N'PH2', N'CL7', N'CA2', 11390000, N'https://firebasestorage.googleapis.com/v0/b/shop-mobile-274e7.appspot.com/o/Iphone%2Fip11pm_white.jpg?alt=media&token=80655c8a-8d2a-4e42-8802-e83411676f89', 5)
INSERT [dbo].[DETAILSPHONE] ([DetailsPhoneID], [PhoneID], [ColorID], [CapacityID], [Price], [DetailImage], [Quantity]) VALUES (N'DP16', N'PH2', N'CL8', N'CA2', 0, N'https://firebasestorage.googleapis.com/v0/b/shop-mobile-274e7.appspot.com/o/Iphone%2Fip11pm_black.jpg?alt=media&token=6e2e53f6-0a00-47f2-a13c-06b3cc744f2a', 0)
INSERT [dbo].[DETAILSPHONE] ([DetailsPhoneID], [PhoneID], [ColorID], [CapacityID], [Price], [DetailImage], [Quantity]) VALUES (N'DP17', N'PH2', N'CL5', N'CA4', 12390000, N'https://firebasestorage.googleapis.com/v0/b/shop-mobile-274e7.appspot.com/o/Iphone%2Fip11pm_green.jpg?alt=media&token=a3ccfc87-a392-4bc4-b4a7-4046edac7bac', 10)
INSERT [dbo].[DETAILSPHONE] ([DetailsPhoneID], [PhoneID], [ColorID], [CapacityID], [Price], [DetailImage], [Quantity]) VALUES (N'DP18', N'PH2', N'CL6', N'CA4', 12390000, N'https://firebasestorage.googleapis.com/v0/b/shop-mobile-274e7.appspot.com/o/Iphone%2Fip11pm_gold.jpg?alt=media&token=64a050f4-8612-4700-8fd2-04eab3ef4951', 15)
INSERT [dbo].[DETAILSPHONE] ([DetailsPhoneID], [PhoneID], [ColorID], [CapacityID], [Price], [DetailImage], [Quantity]) VALUES (N'DP19', N'PH2', N'CL7', N'CA4', 12590000, N'https://firebasestorage.googleapis.com/v0/b/shop-mobile-274e7.appspot.com/o/Iphone%2Fip11pm_white.jpg?alt=media&token=80655c8a-8d2a-4e42-8802-e83411676f89', 20)
INSERT [dbo].[DETAILSPHONE] ([DetailsPhoneID], [PhoneID], [ColorID], [CapacityID], [Price], [DetailImage], [Quantity]) VALUES (N'DP2', N'PH1', N'CL2', N'CA4', 35790000, N'https://firebasestorage.googleapis.com/v0/b/shop-mobile-274e7.appspot.com/o/Iphone%2Fip15pm_black.jpg?alt=media&token=95679dc8-a17d-4854-9c67-6788d7a5a542', 50)
INSERT [dbo].[DETAILSPHONE] ([DetailsPhoneID], [PhoneID], [ColorID], [CapacityID], [Price], [DetailImage], [Quantity]) VALUES (N'DP20', N'PH2', N'CL8', N'CA4', 12590000, N'https://firebasestorage.googleapis.com/v0/b/shop-mobile-274e7.appspot.com/o/Iphone%2Fip11pm_black.jpg?alt=media&token=6e2e53f6-0a00-47f2-a13c-06b3cc744f2a', 10)
INSERT [dbo].[DETAILSPHONE] ([DetailsPhoneID], [PhoneID], [ColorID], [CapacityID], [Price], [DetailImage], [Quantity]) VALUES (N'DP21', N'PH3', N'CL5', N'CA3', 26290000, N'https://firebasestorage.googleapis.com/v0/b/shop-mobile-274e7.appspot.com/o/Iphone%2Fip14pm_black.jpg?alt=media&token=4b7a0317-c4fe-430f-b52f-75f9b3820dd4', 5)
INSERT [dbo].[DETAILSPHONE] ([DetailsPhoneID], [PhoneID], [ColorID], [CapacityID], [Price], [DetailImage], [Quantity]) VALUES (N'DP22', N'PH3', N'CL9', N'CA3', 26390000, N'https://firebasestorage.googleapis.com/v0/b/shop-mobile-274e7.appspot.com/o/Iphone%2Fip14pm_gold.jpg?alt=media&token=7005ac2f-a98c-4db0-a9ce-030c8cd7fd31', 20)
INSERT [dbo].[DETAILSPHONE] ([DetailsPhoneID], [PhoneID], [ColorID], [CapacityID], [Price], [DetailImage], [Quantity]) VALUES (N'DP23', N'PH3', N'CL10', N'CA3', 26590000, N'https://firebasestorage.googleapis.com/v0/b/shop-mobile-274e7.appspot.com/o/Iphone%2Fip14pm_purple.jpg?alt=media&token=c89d4dea-20ad-4914-bc20-f881fec43436', 25)
INSERT [dbo].[DETAILSPHONE] ([DetailsPhoneID], [PhoneID], [ColorID], [CapacityID], [Price], [DetailImage], [Quantity]) VALUES (N'DP24', N'PH3', N'CL11', N'CA3', 0, N'https://firebasestorage.googleapis.com/v0/b/shop-mobile-274e7.appspot.com/o/Iphone%2Fip14pm_white.jpg?alt=media&token=bd211386-77f2-47f5-8718-b4509205a721', 0)
INSERT [dbo].[DETAILSPHONE] ([DetailsPhoneID], [PhoneID], [ColorID], [CapacityID], [Price], [DetailImage], [Quantity]) VALUES (N'DP25', N'PH3', N'CL5', N'CA4', 29190000, N'https://firebasestorage.googleapis.com/v0/b/shop-mobile-274e7.appspot.com/o/Iphone%2Fip14pm_black.jpg?alt=media&token=4b7a0317-c4fe-430f-b52f-75f9b3820dd4', 15)
INSERT [dbo].[DETAILSPHONE] ([DetailsPhoneID], [PhoneID], [ColorID], [CapacityID], [Price], [DetailImage], [Quantity]) VALUES (N'DP26', N'PH3', N'CL9', N'CA4', 29190000, N'https://firebasestorage.googleapis.com/v0/b/shop-mobile-274e7.appspot.com/o/Iphone%2Fip14pm_gold.jpg?alt=media&token=7005ac2f-a98c-4db0-a9ce-030c8cd7fd31', 5)
INSERT [dbo].[DETAILSPHONE] ([DetailsPhoneID], [PhoneID], [ColorID], [CapacityID], [Price], [DetailImage], [Quantity]) VALUES (N'DP27', N'PH3', N'CL10', N'CA4', 0, N'https://firebasestorage.googleapis.com/v0/b/shop-mobile-274e7.appspot.com/o/Iphone%2Fip14pm_purple.jpg?alt=media&token=c89d4dea-20ad-4914-bc20-f881fec43436', 0)
INSERT [dbo].[DETAILSPHONE] ([DetailsPhoneID], [PhoneID], [ColorID], [CapacityID], [Price], [DetailImage], [Quantity]) VALUES (N'DP28', N'PH3', N'CL11', N'CA4', 29890000, N'https://firebasestorage.googleapis.com/v0/b/shop-mobile-274e7.appspot.com/o/Iphone%2Fip14pm_white.jpg?alt=media&token=bd211386-77f2-47f5-8718-b4509205a721', 5)
INSERT [dbo].[DETAILSPHONE] ([DetailsPhoneID], [PhoneID], [ColorID], [CapacityID], [Price], [DetailImage], [Quantity]) VALUES (N'DP29', N'PH3', N'CL5', N'CA5', 0, N'https://firebasestorage.googleapis.com/v0/b/shop-mobile-274e7.appspot.com/o/Iphone%2Fip14pm_black.jpg?alt=media&token=4b7a0317-c4fe-430f-b52f-75f9b3820dd4', 0)
INSERT [dbo].[DETAILSPHONE] ([DetailsPhoneID], [PhoneID], [ColorID], [CapacityID], [Price], [DetailImage], [Quantity]) VALUES (N'DP3', N'PH1', N'CL3', N'CA4', 36390000, N'https://firebasestorage.googleapis.com/v0/b/shop-mobile-274e7.appspot.com/o/Iphone%2Fip15pm_white.jpg?alt=media&token=4b3329be-e46a-4afb-8990-940b5c440d3b', 29)
INSERT [dbo].[DETAILSPHONE] ([DetailsPhoneID], [PhoneID], [ColorID], [CapacityID], [Price], [DetailImage], [Quantity]) VALUES (N'DP30', N'PH3', N'CL9', N'CA5', 0, N'https://firebasestorage.googleapis.com/v0/b/shop-mobile-274e7.appspot.com/o/Iphone%2Fip14pm_gold.jpg?alt=media&token=7005ac2f-a98c-4db0-a9ce-030c8cd7fd31', 0)
INSERT [dbo].[DETAILSPHONE] ([DetailsPhoneID], [PhoneID], [ColorID], [CapacityID], [Price], [DetailImage], [Quantity]) VALUES (N'DP31', N'PH3', N'CL10', N'CA5', 0, N'https://firebasestorage.googleapis.com/v0/b/shop-mobile-274e7.appspot.com/o/Iphone%2Fip14pm_purple.jpg?alt=media&token=c89d4dea-20ad-4914-bc20-f881fec43436', 0)
INSERT [dbo].[DETAILSPHONE] ([DetailsPhoneID], [PhoneID], [ColorID], [CapacityID], [Price], [DetailImage], [Quantity]) VALUES (N'DP32', N'PH3', N'CL11', N'CA5', 0, N'https://firebasestorage.googleapis.com/v0/b/shop-mobile-274e7.appspot.com/o/Iphone%2Fip14pm_white.jpg?alt=media&token=bd211386-77f2-47f5-8718-b4509205a721', 0)
INSERT [dbo].[DETAILSPHONE] ([DetailsPhoneID], [PhoneID], [ColorID], [CapacityID], [Price], [DetailImage], [Quantity]) VALUES (N'DP33', N'PH4', N'CL5', N'CA4', 32990000, N'https://firebasestorage.googleapis.com/v0/b/shop-mobile-274e7.appspot.com/o/Samsung%2Fssgzf5_green.jpg?alt=media&token=80af775e-638d-4683-876d-4414c8253e70', 2)
INSERT [dbo].[DETAILSPHONE] ([DetailsPhoneID], [PhoneID], [ColorID], [CapacityID], [Price], [DetailImage], [Quantity]) VALUES (N'DP34', N'PH4', N'CL8', N'CA4', 32990000, N'https://firebasestorage.googleapis.com/v0/b/shop-mobile-274e7.appspot.com/o/Samsung%2Fssgzf5_purple.jpg?alt=media&token=a6ac9794-5f80-4baf-a888-f3fda0a8836c', 10)
INSERT [dbo].[DETAILSPHONE] ([DetailsPhoneID], [PhoneID], [ColorID], [CapacityID], [Price], [DetailImage], [Quantity]) VALUES (N'DP35', N'PH4', N'CL12', N'CA4', 32990000, N'https://firebasestorage.googleapis.com/v0/b/shop-mobile-274e7.appspot.com/o/Samsung%2Fssgzf5_white.jpg?alt=media&token=65f7fef0-0c7a-4a33-bd5c-999a8b8376d6', 14)
INSERT [dbo].[DETAILSPHONE] ([DetailsPhoneID], [PhoneID], [ColorID], [CapacityID], [Price], [DetailImage], [Quantity]) VALUES (N'DP36', N'PH4', N'CL5', N'CA5', 34990000, N'https://firebasestorage.googleapis.com/v0/b/shop-mobile-274e7.appspot.com/o/Samsung%2Fssgzf5_green.jpg?alt=media&token=80af775e-638d-4683-876d-4414c8253e70', 5)
INSERT [dbo].[DETAILSPHONE] ([DetailsPhoneID], [PhoneID], [ColorID], [CapacityID], [Price], [DetailImage], [Quantity]) VALUES (N'DP37', N'PH4', N'CL8', N'CA5', 34990000, N'https://firebasestorage.googleapis.com/v0/b/shop-mobile-274e7.appspot.com/o/Samsung%2Fssgzf5_purple.jpg?alt=media&token=a6ac9794-5f80-4baf-a888-f3fda0a8836c', 10)
INSERT [dbo].[DETAILSPHONE] ([DetailsPhoneID], [PhoneID], [ColorID], [CapacityID], [Price], [DetailImage], [Quantity]) VALUES (N'DP38', N'PH4', N'CL12', N'CA5', 34990000, N'https://firebasestorage.googleapis.com/v0/b/shop-mobile-274e7.appspot.com/o/Samsung%2Fssgzf5_white.jpg?alt=media&token=65f7fef0-0c7a-4a33-bd5c-999a8b8376d6', 15)
INSERT [dbo].[DETAILSPHONE] ([DetailsPhoneID], [PhoneID], [ColorID], [CapacityID], [Price], [DetailImage], [Quantity]) VALUES (N'DP39', N'PH4', N'CL5', N'CA6', 42990000, N'https://firebasestorage.googleapis.com/v0/b/shop-mobile-274e7.appspot.com/o/Samsung%2Fssgzf5_green.jpg?alt=media&token=80af775e-638d-4683-876d-4414c8253e70', 5)
INSERT [dbo].[DETAILSPHONE] ([DetailsPhoneID], [PhoneID], [ColorID], [CapacityID], [Price], [DetailImage], [Quantity]) VALUES (N'DP4', N'PH1', N'CL4', N'CA4', 37900000, N'https://firebasestorage.googleapis.com/v0/b/shop-mobile-274e7.appspot.com/o/Iphone%2Fip15pm_natural.jpg?alt=media&token=b603f136-40c3-4391-be5c-487b06395cb4', 10)
INSERT [dbo].[DETAILSPHONE] ([DetailsPhoneID], [PhoneID], [ColorID], [CapacityID], [Price], [DetailImage], [Quantity]) VALUES (N'DP40', N'PH4', N'CL8', N'CA6', 42990000, N'https://firebasestorage.googleapis.com/v0/b/shop-mobile-274e7.appspot.com/o/Samsung%2Fssgzf5_purple.jpg?alt=media&token=a6ac9794-5f80-4baf-a888-f3fda0a8836c', 5)
INSERT [dbo].[DETAILSPHONE] ([DetailsPhoneID], [PhoneID], [ColorID], [CapacityID], [Price], [DetailImage], [Quantity]) VALUES (N'DP41', N'PH4', N'CL12', N'CA6', 42990000, N'https://firebasestorage.googleapis.com/v0/b/shop-mobile-274e7.appspot.com/o/Samsung%2Fssgzf5_white.jpg?alt=media&token=65f7fef0-0c7a-4a33-bd5c-999a8b8376d6', 4)
INSERT [dbo].[DETAILSPHONE] ([DetailsPhoneID], [PhoneID], [ColorID], [CapacityID], [Price], [DetailImage], [Quantity]) VALUES (N'DP42', N'PH5', N'CL5', N'CA4', 0, N'https://firebasestorage.googleapis.com/v0/b/shop-mobile-274e7.appspot.com/o/Samsung%2Fssgzf4_purple.jpg?alt=media&token=5a58c4e9-f9d8-4d53-a52f-a8bcb05869d0', 0)
INSERT [dbo].[DETAILSPHONE] ([DetailsPhoneID], [PhoneID], [ColorID], [CapacityID], [Price], [DetailImage], [Quantity]) VALUES (N'DP43', N'PH5', N'CL8', N'CA4', 0, N'https://firebasestorage.googleapis.com/v0/b/shop-mobile-274e7.appspot.com/o/Samsung%2Fssgzf4_black.jpg?alt=media&token=335ac9d0-84c9-4556-9ba6-8ccf3bb96831', 0)
INSERT [dbo].[DETAILSPHONE] ([DetailsPhoneID], [PhoneID], [ColorID], [CapacityID], [Price], [DetailImage], [Quantity]) VALUES (N'DP44', N'PH5', N'CL13', N'CA4', 0, N'https://firebasestorage.googleapis.com/v0/b/shop-mobile-274e7.appspot.com/o/Samsung%2Fssgzf4_gold.jpg?alt=media&token=65a06e00-583a-4a7c-bf7e-3d69b240a81b', 0)
INSERT [dbo].[DETAILSPHONE] ([DetailsPhoneID], [PhoneID], [ColorID], [CapacityID], [Price], [DetailImage], [Quantity]) VALUES (N'DP45', N'PH5', N'CL5', N'CA5', 30490000, N'https://firebasestorage.googleapis.com/v0/b/shop-mobile-274e7.appspot.com/o/Samsung%2Fssgzf4_purple.jpg?alt=media&token=5a58c4e9-f9d8-4d53-a52f-a8bcb05869d0', 10)
INSERT [dbo].[DETAILSPHONE] ([DetailsPhoneID], [PhoneID], [ColorID], [CapacityID], [Price], [DetailImage], [Quantity]) VALUES (N'DP46', N'PH5', N'CL8', N'CA5', 30490000, N'https://firebasestorage.googleapis.com/v0/b/shop-mobile-274e7.appspot.com/o/Samsung%2Fssgzf4_black.jpg?alt=media&token=335ac9d0-84c9-4556-9ba6-8ccf3bb96831', 5)
INSERT [dbo].[DETAILSPHONE] ([DetailsPhoneID], [PhoneID], [ColorID], [CapacityID], [Price], [DetailImage], [Quantity]) VALUES (N'DP47', N'PH5', N'CL13', N'CA5', 30490000, N'https://firebasestorage.googleapis.com/v0/b/shop-mobile-274e7.appspot.com/o/Samsung%2Fssgzf4_gold.jpg?alt=media&token=65a06e00-583a-4a7c-bf7e-3d69b240a81b', 10)
INSERT [dbo].[DETAILSPHONE] ([DetailsPhoneID], [PhoneID], [ColorID], [CapacityID], [Price], [DetailImage], [Quantity]) VALUES (N'DP48', N'PH6', N'CL5', N'CA4', 21490000, N'https://firebasestorage.googleapis.com/v0/b/shop-mobile-274e7.appspot.com/o/Samsung%2Fssg23u_green.jpg?alt=media&token=94557dd8-38b9-4ebe-92a8-f4d77785b4b2', 5)
INSERT [dbo].[DETAILSPHONE] ([DetailsPhoneID], [PhoneID], [ColorID], [CapacityID], [Price], [DetailImage], [Quantity]) VALUES (N'DP49', N'PH6', N'CL8', N'CA4', 21490000, N'https://firebasestorage.googleapis.com/v0/b/shop-mobile-274e7.appspot.com/o/Samsung%2Fssg23u_black.jpg?alt=media&token=a53a864c-468d-420a-aa37-3a0433c31bf1', 15)
INSERT [dbo].[DETAILSPHONE] ([DetailsPhoneID], [PhoneID], [ColorID], [CapacityID], [Price], [DetailImage], [Quantity]) VALUES (N'DP5', N'PH1', N'CL1', N'CA5', 38990000, N'https://firebasestorage.googleapis.com/v0/b/shop-mobile-274e7.appspot.com/o/Iphone%2Fip15pm_black.jpg?alt=media&token=95679dc8-a17d-4854-9c67-6788d7a5a542', 3)
INSERT [dbo].[DETAILSPHONE] ([DetailsPhoneID], [PhoneID], [ColorID], [CapacityID], [Price], [DetailImage], [Quantity]) VALUES (N'DP50', N'PH6', N'CL10', N'CA4', 21490000, N'https://firebasestorage.googleapis.com/v0/b/shop-mobile-274e7.appspot.com/o/Samsung%2Fssg23u_purple.jpg?alt=media&token=30cf087d-c772-4f8c-b08f-1056ded4e56e', 5)
INSERT [dbo].[DETAILSPHONE] ([DetailsPhoneID], [PhoneID], [ColorID], [CapacityID], [Price], [DetailImage], [Quantity]) VALUES (N'DP51', N'PH6', N'CL13', N'CA4', 21490000, N'https://firebasestorage.googleapis.com/v0/b/shop-mobile-274e7.appspot.com/o/Samsung%2Fssg23u_white.jpg?alt=media&token=1075a5c4-d0a3-4d3e-a8fb-6fa57aa0ac04', 0)
INSERT [dbo].[DETAILSPHONE] ([DetailsPhoneID], [PhoneID], [ColorID], [CapacityID], [Price], [DetailImage], [Quantity]) VALUES (N'DP52', N'PH6', N'CL5', N'CA5', 24990000, N'https://firebasestorage.googleapis.com/v0/b/shop-mobile-274e7.appspot.com/o/Samsung%2Fssg23u_green.jpg?alt=media&token=94557dd8-38b9-4ebe-92a8-f4d77785b4b2', 0)
INSERT [dbo].[DETAILSPHONE] ([DetailsPhoneID], [PhoneID], [ColorID], [CapacityID], [Price], [DetailImage], [Quantity]) VALUES (N'DP53', N'PH6', N'CL8', N'CA5', 24990000, N'https://firebasestorage.googleapis.com/v0/b/shop-mobile-274e7.appspot.com/o/Samsung%2Fssg23u_black.jpg?alt=media&token=a53a864c-468d-420a-aa37-3a0433c31bf1', 5)
INSERT [dbo].[DETAILSPHONE] ([DetailsPhoneID], [PhoneID], [ColorID], [CapacityID], [Price], [DetailImage], [Quantity]) VALUES (N'DP54', N'PH6', N'CL10', N'CA5', 24990000, N'https://firebasestorage.googleapis.com/v0/b/shop-mobile-274e7.appspot.com/o/Samsung%2Fssg23u_purple.jpg?alt=media&token=30cf087d-c772-4f8c-b08f-1056ded4e56e', 10)
INSERT [dbo].[DETAILSPHONE] ([DetailsPhoneID], [PhoneID], [ColorID], [CapacityID], [Price], [DetailImage], [Quantity]) VALUES (N'DP55', N'PH6', N'CL13', N'CA5', 24990000, N'https://firebasestorage.googleapis.com/v0/b/shop-mobile-274e7.appspot.com/o/Samsung%2Fssg23u_white.jpg?alt=media&token=1075a5c4-d0a3-4d3e-a8fb-6fa57aa0ac04', 20)
INSERT [dbo].[DETAILSPHONE] ([DetailsPhoneID], [PhoneID], [ColorID], [CapacityID], [Price], [DetailImage], [Quantity]) VALUES (N'DP56', N'PH6', N'CL5', N'CA6', 33990000, N'https://firebasestorage.googleapis.com/v0/b/shop-mobile-274e7.appspot.com/o/Samsung%2Fssg23u_green.jpg?alt=media&token=94557dd8-38b9-4ebe-92a8-f4d77785b4b2', 10)
INSERT [dbo].[DETAILSPHONE] ([DetailsPhoneID], [PhoneID], [ColorID], [CapacityID], [Price], [DetailImage], [Quantity]) VALUES (N'DP57', N'PH6', N'CL8', N'CA6', 33990000, N'https://firebasestorage.googleapis.com/v0/b/shop-mobile-274e7.appspot.com/o/Samsung%2Fssg23u_black.jpg?alt=media&token=a53a864c-468d-420a-aa37-3a0433c31bf1', 5)
INSERT [dbo].[DETAILSPHONE] ([DetailsPhoneID], [PhoneID], [ColorID], [CapacityID], [Price], [DetailImage], [Quantity]) VALUES (N'DP58', N'PH6', N'CL10', N'CA6', 0, N'https://firebasestorage.googleapis.com/v0/b/shop-mobile-274e7.appspot.com/o/Samsung%2Fssg23u_purple.jpg?alt=media&token=30cf087d-c772-4f8c-b08f-1056ded4e56e', 0)
INSERT [dbo].[DETAILSPHONE] ([DetailsPhoneID], [PhoneID], [ColorID], [CapacityID], [Price], [DetailImage], [Quantity]) VALUES (N'DP59', N'PH6', N'CL13', N'CA6', 0, N'https://firebasestorage.googleapis.com/v0/b/shop-mobile-274e7.appspot.com/o/Samsung%2Fssg23u_white.jpg?alt=media&token=1075a5c4-d0a3-4d3e-a8fb-6fa57aa0ac04', 0)
INSERT [dbo].[DETAILSPHONE] ([DetailsPhoneID], [PhoneID], [ColorID], [CapacityID], [Price], [DetailImage], [Quantity]) VALUES (N'DP6', N'PH1', N'CL2', N'CA5', 39790000, N'https://firebasestorage.googleapis.com/v0/b/shop-mobile-274e7.appspot.com/o/Iphone%2Fip15pm_black.jpg?alt=media&token=95679dc8-a17d-4854-9c67-6788d7a5a542', 10)
INSERT [dbo].[DETAILSPHONE] ([DetailsPhoneID], [PhoneID], [ColorID], [CapacityID], [Price], [DetailImage], [Quantity]) VALUES (N'DP60', N'PH7', N'CL5', N'CA2', 3690000, N'https://firebasestorage.googleapis.com/v0/b/shop-mobile-274e7.appspot.com/o/Oppo%2Foa17_blue.jpg?alt=media&token=0deb5aed-087d-48e2-8883-0bc9981ea98f', 5)
INSERT [dbo].[DETAILSPHONE] ([DetailsPhoneID], [PhoneID], [ColorID], [CapacityID], [Price], [DetailImage], [Quantity]) VALUES (N'DP61', N'PH7', N'CL8', N'CA2', 3690000, N'https://firebasestorage.googleapis.com/v0/b/shop-mobile-274e7.appspot.com/o/Oppo%2Foa17_black.jpg?alt=media&token=4e02469e-4fdf-482a-b00a-1ec3842c099c', 10)
INSERT [dbo].[DETAILSPHONE] ([DetailsPhoneID], [PhoneID], [ColorID], [CapacityID], [Price], [DetailImage], [Quantity]) VALUES (N'DP62', N'PH8', N'CL14', N'CA3', 3790000, N'https://firebasestorage.googleapis.com/v0/b/shop-mobile-274e7.appspot.com/o/Oppo%2Foa57_green.png?alt=media&token=80f05e79-6aa6-4c1a-bd38-d3630b159795', 5)
INSERT [dbo].[DETAILSPHONE] ([DetailsPhoneID], [PhoneID], [ColorID], [CapacityID], [Price], [DetailImage], [Quantity]) VALUES (N'DP63', N'PH8', N'CL9', N'CA3', 3890000, N'https://firebasestorage.googleapis.com/v0/b/shop-mobile-274e7.appspot.com/o/Oppo%2Foa57_yellow.jpg?alt=media&token=50f90f2d-32ca-48ef-8710-1763216d02a7', 0)
INSERT [dbo].[DETAILSPHONE] ([DetailsPhoneID], [PhoneID], [ColorID], [CapacityID], [Price], [DetailImage], [Quantity]) VALUES (N'DP64', N'PH8', N'CL8', N'CA3', 3890000, N'https://firebasestorage.googleapis.com/v0/b/shop-mobile-274e7.appspot.com/o/Oppo%2Foa57_black.jpg?alt=media&token=77186596-39ec-4ab7-8c67-abb4917d6f3d', 5)
INSERT [dbo].[DETAILSPHONE] ([DetailsPhoneID], [PhoneID], [ColorID], [CapacityID], [Price], [DetailImage], [Quantity]) VALUES (N'DP65', N'PH9', N'CL8', N'CA4', 6290000, N'https://firebasestorage.googleapis.com/v0/b/shop-mobile-274e7.appspot.com/o/Oppo%2Foa78_black.jpg?alt=media&token=814cb2bf-c335-4460-93c6-dc0cf9a0399f', 5)
INSERT [dbo].[DETAILSPHONE] ([DetailsPhoneID], [PhoneID], [ColorID], [CapacityID], [Price], [DetailImage], [Quantity]) VALUES (N'DP66', N'PH9', N'CL14', N'CA4', 6390000, N'https://firebasestorage.googleapis.com/v0/b/shop-mobile-274e7.appspot.com/o/Oppo%2Foa78_cyan.jpg?alt=media&token=ac981258-409b-4db8-88d6-15ab4350caaa', 15)
INSERT [dbo].[DETAILSPHONE] ([DetailsPhoneID], [PhoneID], [ColorID], [CapacityID], [Price], [DetailImage], [Quantity]) VALUES (N'DP67', N'PH10', N'CL10', N'CA4', 18990000, N'https://firebasestorage.googleapis.com/v0/b/shop-mobile-274e7.appspot.com/o/Oppo%2Fofn2f_purple.jpg?alt=media&token=5f0814e5-5de3-44db-825a-ded9b4daf814', 2)
INSERT [dbo].[DETAILSPHONE] ([DetailsPhoneID], [PhoneID], [ColorID], [CapacityID], [Price], [DetailImage], [Quantity]) VALUES (N'DP68', N'PH10', N'CL8', N'CA4', 19990000, N'https://firebasestorage.googleapis.com/v0/b/shop-mobile-274e7.appspot.com/o/Oppo%2Fofn2f_black.jpg?alt=media&token=79d290ff-bcc0-444e-be55-93421194c0d1', 2)
INSERT [dbo].[DETAILSPHONE] ([DetailsPhoneID], [PhoneID], [ColorID], [CapacityID], [Price], [DetailImage], [Quantity]) VALUES (N'DP69', N'PH11', N'CL5', N'CA2', 2490000, N'https://firebasestorage.googleapis.com/v0/b/shop-mobile-274e7.appspot.com/o/Xiaomi%2Fxr12_cyan.jpg?alt=media&token=798b173a-e6e1-4779-963a-08ccc33d7a8f', 0)
INSERT [dbo].[DETAILSPHONE] ([DetailsPhoneID], [PhoneID], [ColorID], [CapacityID], [Price], [DetailImage], [Quantity]) VALUES (N'DP7', N'PH1', N'CL3', N'CA5', 41990000, N'https://firebasestorage.googleapis.com/v0/b/shop-mobile-274e7.appspot.com/o/Iphone%2Fip15pm_white.jpg?alt=media&token=4b3329be-e46a-4afb-8990-940b5c440d3b', 10)
INSERT [dbo].[DETAILSPHONE] ([DetailsPhoneID], [PhoneID], [ColorID], [CapacityID], [Price], [DetailImage], [Quantity]) VALUES (N'DP70', N'PH11', N'CL11', N'CA2', 2490000, N'https://firebasestorage.googleapis.com/v0/b/shop-mobile-274e7.appspot.com/o/Xiaomi%2Fxr12_white.jpg?alt=media&token=23ff7b07-43c1-4507-80ac-f6169833a422', 5)
INSERT [dbo].[DETAILSPHONE] ([DetailsPhoneID], [PhoneID], [ColorID], [CapacityID], [Price], [DetailImage], [Quantity]) VALUES (N'DP71', N'PH11', N'CL14', N'CA2', 2490000, N'https://firebasestorage.googleapis.com/v0/b/shop-mobile-274e7.appspot.com/o/Xiaomi%2Fxr12_black.jpg?alt=media&token=7199c1cb-88a8-4bde-87b5-69988e91d254', 10)
INSERT [dbo].[DETAILSPHONE] ([DetailsPhoneID], [PhoneID], [ColorID], [CapacityID], [Price], [DetailImage], [Quantity]) VALUES (N'DP72', N'PH12', N'CL5', N'CA4', 3590000, N'https://firebasestorage.googleapis.com/v0/b/shop-mobile-274e7.appspot.com/o/Xiaomi%2Fxrn12p_blue.jpg?alt=media&token=6a8c5012-be31-432d-bbf7-5c3e3c693953', 5)
INSERT [dbo].[DETAILSPHONE] ([DetailsPhoneID], [PhoneID], [ColorID], [CapacityID], [Price], [DetailImage], [Quantity]) VALUES (N'DP73', N'PH12', N'CL8', N'CA4', 3590000, N'https://firebasestorage.googleapis.com/v0/b/shop-mobile-274e7.appspot.com/o/Xiaomi%2Fxrn12p_black.jpg?alt=media&token=fd40ffd4-fdb8-426b-a007-d8e74adeb93a', 5)
INSERT [dbo].[DETAILSPHONE] ([DetailsPhoneID], [PhoneID], [ColorID], [CapacityID], [Price], [DetailImage], [Quantity]) VALUES (N'DP74', N'PH12', N'CL13', N'CA4', 3590000, N'https://firebasestorage.googleapis.com/v0/b/shop-mobile-274e7.appspot.com/o/Xiaomi%2Fxrn12p_lightblue.jpg?alt=media&token=49e44ad9-afb1-4007-a221-b30c73cf85ec', 5)
INSERT [dbo].[DETAILSPHONE] ([DetailsPhoneID], [PhoneID], [ColorID], [CapacityID], [Price], [DetailImage], [Quantity]) VALUES (N'DP75', N'PH13', N'CL5', N'CA4', 5890000, N'https://firebasestorage.googleapis.com/v0/b/shop-mobile-274e7.appspot.com/o/Xiaomi%2Fxrn12s_blue.jpg?alt=media&token=77d9e1d3-c1aa-4ec1-958c-bece5c3f67b3', 0)
INSERT [dbo].[DETAILSPHONE] ([DetailsPhoneID], [PhoneID], [ColorID], [CapacityID], [Price], [DetailImage], [Quantity]) VALUES (N'DP76', N'PH13', N'CL8', N'CA4', 5890000, N'https://firebasestorage.googleapis.com/v0/b/shop-mobile-274e7.appspot.com/o/Xiaomi%2Fxrn12s_black.jpg?alt=media&token=19dc30da-13ee-47ba-adeb-9c9863625060', 0)
INSERT [dbo].[DETAILSPHONE] ([DetailsPhoneID], [PhoneID], [ColorID], [CapacityID], [Price], [DetailImage], [Quantity]) VALUES (N'DP77', N'PH13', N'CL14', N'CA4', 5890000, N'https://firebasestorage.googleapis.com/v0/b/shop-mobile-274e7.appspot.com/o/Xiaomi%2Fxrn12s_green.jpg?alt=media&token=1afb35f7-2769-48df-8acc-6d2d95eedf9f', 5)
INSERT [dbo].[DETAILSPHONE] ([DetailsPhoneID], [PhoneID], [ColorID], [CapacityID], [Price], [DetailImage], [Quantity]) VALUES (N'DP78', N'PH14', N'CL5', N'CA1', 1890000, N'https://firebasestorage.googleapis.com/v0/b/shop-mobile-274e7.appspot.com/o/Xiaomi%2Fxra2_blue.jpg?alt=media&token=264d502b-3757-4c84-9001-d9ecc701c142', 20)
INSERT [dbo].[DETAILSPHONE] ([DetailsPhoneID], [PhoneID], [ColorID], [CapacityID], [Price], [DetailImage], [Quantity]) VALUES (N'DP79', N'PH14', N'CL8', N'CA1', 1890000, N'https://firebasestorage.googleapis.com/v0/b/shop-mobile-274e7.appspot.com/o/Xiaomi%2Fxra2_black.jpg?alt=media&token=4f71b38a-9989-499c-821a-345b13392fa7', 20)
INSERT [dbo].[DETAILSPHONE] ([DetailsPhoneID], [PhoneID], [ColorID], [CapacityID], [Price], [DetailImage], [Quantity]) VALUES (N'DP8', N'PH1', N'CL4', N'CA5', 42990000, N'https://firebasestorage.googleapis.com/v0/b/shop-mobile-274e7.appspot.com/o/Iphone%2Fip15pm_natural.jpg?alt=media&token=b603f136-40c3-4391-be5c-487b06395cb4', 5)
INSERT [dbo].[DETAILSPHONE] ([DetailsPhoneID], [PhoneID], [ColorID], [CapacityID], [Price], [DetailImage], [Quantity]) VALUES (N'DP9', N'PH1', N'CL1', N'CA6', 45990000, N'https://firebasestorage.googleapis.com/v0/b/shop-mobile-274e7.appspot.com/o/Iphone%2Fip15pm_black.jpg?alt=media&token=95679dc8-a17d-4854-9c67-6788d7a5a542', 20)
GO
INSERT [dbo].[DETAILSWAREHOUSERECEIPT] ([WarehouseReceiptID], [DetailsPhoneID], [QuantityOdered], [Price]) VALUES (N'WR01', N'DP1', 20, 34590000)
INSERT [dbo].[DETAILSWAREHOUSERECEIPT] ([WarehouseReceiptID], [DetailsPhoneID], [QuantityOdered], [Price]) VALUES (N'WR01', N'DP10', 10, 47990000)
INSERT [dbo].[DETAILSWAREHOUSERECEIPT] ([WarehouseReceiptID], [DetailsPhoneID], [QuantityOdered], [Price]) VALUES (N'WR01', N'DP2', 50, 35790000)
INSERT [dbo].[DETAILSWAREHOUSERECEIPT] ([WarehouseReceiptID], [DetailsPhoneID], [QuantityOdered], [Price]) VALUES (N'WR01', N'DP3', 30, 36390000)
INSERT [dbo].[DETAILSWAREHOUSERECEIPT] ([WarehouseReceiptID], [DetailsPhoneID], [QuantityOdered], [Price]) VALUES (N'WR01', N'DP4', 10, 37900000)
INSERT [dbo].[DETAILSWAREHOUSERECEIPT] ([WarehouseReceiptID], [DetailsPhoneID], [QuantityOdered], [Price]) VALUES (N'WR01', N'DP5', 5, 38990000)
INSERT [dbo].[DETAILSWAREHOUSERECEIPT] ([WarehouseReceiptID], [DetailsPhoneID], [QuantityOdered], [Price]) VALUES (N'WR01', N'DP6', 10, 39790000)
INSERT [dbo].[DETAILSWAREHOUSERECEIPT] ([WarehouseReceiptID], [DetailsPhoneID], [QuantityOdered], [Price]) VALUES (N'WR01', N'DP7', 10, 41990000)
INSERT [dbo].[DETAILSWAREHOUSERECEIPT] ([WarehouseReceiptID], [DetailsPhoneID], [QuantityOdered], [Price]) VALUES (N'WR01', N'DP8', 5, 42990000)
INSERT [dbo].[DETAILSWAREHOUSERECEIPT] ([WarehouseReceiptID], [DetailsPhoneID], [QuantityOdered], [Price]) VALUES (N'WR01', N'DP9', 20, 45990000)
INSERT [dbo].[DETAILSWAREHOUSERECEIPT] ([WarehouseReceiptID], [DetailsPhoneID], [QuantityOdered], [Price]) VALUES (N'WR02', N'DP11', 5, 47990000)
INSERT [dbo].[DETAILSWAREHOUSERECEIPT] ([WarehouseReceiptID], [DetailsPhoneID], [QuantityOdered], [Price]) VALUES (N'WR02', N'DP12', 10, 38990000)
INSERT [dbo].[DETAILSWAREHOUSERECEIPT] ([WarehouseReceiptID], [DetailsPhoneID], [QuantityOdered], [Price]) VALUES (N'WR02', N'DP13', 20, 11390000)
INSERT [dbo].[DETAILSWAREHOUSERECEIPT] ([WarehouseReceiptID], [DetailsPhoneID], [QuantityOdered], [Price]) VALUES (N'WR02', N'DP14', 30, 11390000)
INSERT [dbo].[DETAILSWAREHOUSERECEIPT] ([WarehouseReceiptID], [DetailsPhoneID], [QuantityOdered], [Price]) VALUES (N'WR02', N'DP15', 5, 11390000)
INSERT [dbo].[DETAILSWAREHOUSERECEIPT] ([WarehouseReceiptID], [DetailsPhoneID], [QuantityOdered], [Price]) VALUES (N'WR02', N'DP17', 10, 12390000)
INSERT [dbo].[DETAILSWAREHOUSERECEIPT] ([WarehouseReceiptID], [DetailsPhoneID], [QuantityOdered], [Price]) VALUES (N'WR02', N'DP18', 15, 12390000)
INSERT [dbo].[DETAILSWAREHOUSERECEIPT] ([WarehouseReceiptID], [DetailsPhoneID], [QuantityOdered], [Price]) VALUES (N'WR02', N'DP19', 20, 12590000)
INSERT [dbo].[DETAILSWAREHOUSERECEIPT] ([WarehouseReceiptID], [DetailsPhoneID], [QuantityOdered], [Price]) VALUES (N'WR02', N'DP20', 10, 12590000)
INSERT [dbo].[DETAILSWAREHOUSERECEIPT] ([WarehouseReceiptID], [DetailsPhoneID], [QuantityOdered], [Price]) VALUES (N'WR02', N'DP21', 5, 26290000)
INSERT [dbo].[DETAILSWAREHOUSERECEIPT] ([WarehouseReceiptID], [DetailsPhoneID], [QuantityOdered], [Price]) VALUES (N'WR02', N'DP22', 20, 26390000)
INSERT [dbo].[DETAILSWAREHOUSERECEIPT] ([WarehouseReceiptID], [DetailsPhoneID], [QuantityOdered], [Price]) VALUES (N'WR02', N'DP23', 25, 26590000)
INSERT [dbo].[DETAILSWAREHOUSERECEIPT] ([WarehouseReceiptID], [DetailsPhoneID], [QuantityOdered], [Price]) VALUES (N'WR03', N'DP25', 15, 29190000)
INSERT [dbo].[DETAILSWAREHOUSERECEIPT] ([WarehouseReceiptID], [DetailsPhoneID], [QuantityOdered], [Price]) VALUES (N'WR03', N'DP26', 5, 29190000)
INSERT [dbo].[DETAILSWAREHOUSERECEIPT] ([WarehouseReceiptID], [DetailsPhoneID], [QuantityOdered], [Price]) VALUES (N'WR03', N'DP28', 5, 29890000)
INSERT [dbo].[DETAILSWAREHOUSERECEIPT] ([WarehouseReceiptID], [DetailsPhoneID], [QuantityOdered], [Price]) VALUES (N'WR03', N'DP33', 5, 32990000)
INSERT [dbo].[DETAILSWAREHOUSERECEIPT] ([WarehouseReceiptID], [DetailsPhoneID], [QuantityOdered], [Price]) VALUES (N'WR03', N'DP34', 10, 32990000)
INSERT [dbo].[DETAILSWAREHOUSERECEIPT] ([WarehouseReceiptID], [DetailsPhoneID], [QuantityOdered], [Price]) VALUES (N'WR04', N'DP35', 15, 32990000)
INSERT [dbo].[DETAILSWAREHOUSERECEIPT] ([WarehouseReceiptID], [DetailsPhoneID], [QuantityOdered], [Price]) VALUES (N'WR04', N'DP36', 5, 34990000)
INSERT [dbo].[DETAILSWAREHOUSERECEIPT] ([WarehouseReceiptID], [DetailsPhoneID], [QuantityOdered], [Price]) VALUES (N'WR04', N'DP37', 10, 34990000)
INSERT [dbo].[DETAILSWAREHOUSERECEIPT] ([WarehouseReceiptID], [DetailsPhoneID], [QuantityOdered], [Price]) VALUES (N'WR04', N'DP38', 15, 34990000)
INSERT [dbo].[DETAILSWAREHOUSERECEIPT] ([WarehouseReceiptID], [DetailsPhoneID], [QuantityOdered], [Price]) VALUES (N'WR04', N'DP39', 5, 42990000)
INSERT [dbo].[DETAILSWAREHOUSERECEIPT] ([WarehouseReceiptID], [DetailsPhoneID], [QuantityOdered], [Price]) VALUES (N'WR04', N'DP40', 5, 42990000)
INSERT [dbo].[DETAILSWAREHOUSERECEIPT] ([WarehouseReceiptID], [DetailsPhoneID], [QuantityOdered], [Price]) VALUES (N'WR04', N'DP41', 5, 42990000)
INSERT [dbo].[DETAILSWAREHOUSERECEIPT] ([WarehouseReceiptID], [DetailsPhoneID], [QuantityOdered], [Price]) VALUES (N'WR05', N'DP45', 10, 30490000)
INSERT [dbo].[DETAILSWAREHOUSERECEIPT] ([WarehouseReceiptID], [DetailsPhoneID], [QuantityOdered], [Price]) VALUES (N'WR05', N'DP46', 5, 30490000)
INSERT [dbo].[DETAILSWAREHOUSERECEIPT] ([WarehouseReceiptID], [DetailsPhoneID], [QuantityOdered], [Price]) VALUES (N'WR05', N'DP47', 10, 30490000)
INSERT [dbo].[DETAILSWAREHOUSERECEIPT] ([WarehouseReceiptID], [DetailsPhoneID], [QuantityOdered], [Price]) VALUES (N'WR05', N'DP48', 5, 21490000)
INSERT [dbo].[DETAILSWAREHOUSERECEIPT] ([WarehouseReceiptID], [DetailsPhoneID], [QuantityOdered], [Price]) VALUES (N'WR05', N'DP49', 15, 21490000)
INSERT [dbo].[DETAILSWAREHOUSERECEIPT] ([WarehouseReceiptID], [DetailsPhoneID], [QuantityOdered], [Price]) VALUES (N'WR06', N'DP50', 5, 21490000)
INSERT [dbo].[DETAILSWAREHOUSERECEIPT] ([WarehouseReceiptID], [DetailsPhoneID], [QuantityOdered], [Price]) VALUES (N'WR06', N'DP51', 0, 21490000)
INSERT [dbo].[DETAILSWAREHOUSERECEIPT] ([WarehouseReceiptID], [DetailsPhoneID], [QuantityOdered], [Price]) VALUES (N'WR06', N'DP52', 0, 24990000)
INSERT [dbo].[DETAILSWAREHOUSERECEIPT] ([WarehouseReceiptID], [DetailsPhoneID], [QuantityOdered], [Price]) VALUES (N'WR06', N'DP53', 5, 24990000)
INSERT [dbo].[DETAILSWAREHOUSERECEIPT] ([WarehouseReceiptID], [DetailsPhoneID], [QuantityOdered], [Price]) VALUES (N'WR06', N'DP54', 10, 24990000)
INSERT [dbo].[DETAILSWAREHOUSERECEIPT] ([WarehouseReceiptID], [DetailsPhoneID], [QuantityOdered], [Price]) VALUES (N'WR06', N'DP55', 20, 24990000)
INSERT [dbo].[DETAILSWAREHOUSERECEIPT] ([WarehouseReceiptID], [DetailsPhoneID], [QuantityOdered], [Price]) VALUES (N'WR06', N'DP56', 10, 33990000)
INSERT [dbo].[DETAILSWAREHOUSERECEIPT] ([WarehouseReceiptID], [DetailsPhoneID], [QuantityOdered], [Price]) VALUES (N'WR06', N'DP57', 5, 33990000)
INSERT [dbo].[DETAILSWAREHOUSERECEIPT] ([WarehouseReceiptID], [DetailsPhoneID], [QuantityOdered], [Price]) VALUES (N'WR07', N'DP60', 5, 3690000)
INSERT [dbo].[DETAILSWAREHOUSERECEIPT] ([WarehouseReceiptID], [DetailsPhoneID], [QuantityOdered], [Price]) VALUES (N'WR07', N'DP61', 10, 3690000)
INSERT [dbo].[DETAILSWAREHOUSERECEIPT] ([WarehouseReceiptID], [DetailsPhoneID], [QuantityOdered], [Price]) VALUES (N'WR07', N'DP62', 5, 3790000)
INSERT [dbo].[DETAILSWAREHOUSERECEIPT] ([WarehouseReceiptID], [DetailsPhoneID], [QuantityOdered], [Price]) VALUES (N'WR07', N'DP63', 0, 3890000)
INSERT [dbo].[DETAILSWAREHOUSERECEIPT] ([WarehouseReceiptID], [DetailsPhoneID], [QuantityOdered], [Price]) VALUES (N'WR08', N'DP64', 5, 3890000)
INSERT [dbo].[DETAILSWAREHOUSERECEIPT] ([WarehouseReceiptID], [DetailsPhoneID], [QuantityOdered], [Price]) VALUES (N'WR08', N'DP65', 5, 6290000)
INSERT [dbo].[DETAILSWAREHOUSERECEIPT] ([WarehouseReceiptID], [DetailsPhoneID], [QuantityOdered], [Price]) VALUES (N'WR08', N'DP66', 15, 6390000)
INSERT [dbo].[DETAILSWAREHOUSERECEIPT] ([WarehouseReceiptID], [DetailsPhoneID], [QuantityOdered], [Price]) VALUES (N'WR08', N'DP67', 2, 18990000)
INSERT [dbo].[DETAILSWAREHOUSERECEIPT] ([WarehouseReceiptID], [DetailsPhoneID], [QuantityOdered], [Price]) VALUES (N'WR08', N'DP68', 2, 19990000)
INSERT [dbo].[DETAILSWAREHOUSERECEIPT] ([WarehouseReceiptID], [DetailsPhoneID], [QuantityOdered], [Price]) VALUES (N'WR08', N'DP69', 0, 2490000)
INSERT [dbo].[DETAILSWAREHOUSERECEIPT] ([WarehouseReceiptID], [DetailsPhoneID], [QuantityOdered], [Price]) VALUES (N'WR09', N'DP70', 5, 2490000)
INSERT [dbo].[DETAILSWAREHOUSERECEIPT] ([WarehouseReceiptID], [DetailsPhoneID], [QuantityOdered], [Price]) VALUES (N'WR09', N'DP71', 10, 2490000)
INSERT [dbo].[DETAILSWAREHOUSERECEIPT] ([WarehouseReceiptID], [DetailsPhoneID], [QuantityOdered], [Price]) VALUES (N'WR09', N'DP72', 5, 3590000)
INSERT [dbo].[DETAILSWAREHOUSERECEIPT] ([WarehouseReceiptID], [DetailsPhoneID], [QuantityOdered], [Price]) VALUES (N'WR09', N'DP73', 5, 3590000)
INSERT [dbo].[DETAILSWAREHOUSERECEIPT] ([WarehouseReceiptID], [DetailsPhoneID], [QuantityOdered], [Price]) VALUES (N'WR09', N'DP74', 5, 3590000)
INSERT [dbo].[DETAILSWAREHOUSERECEIPT] ([WarehouseReceiptID], [DetailsPhoneID], [QuantityOdered], [Price]) VALUES (N'WR09', N'DP75', 0, 5890000)
INSERT [dbo].[DETAILSWAREHOUSERECEIPT] ([WarehouseReceiptID], [DetailsPhoneID], [QuantityOdered], [Price]) VALUES (N'WR10', N'DP76', 0, 5890000)
INSERT [dbo].[DETAILSWAREHOUSERECEIPT] ([WarehouseReceiptID], [DetailsPhoneID], [QuantityOdered], [Price]) VALUES (N'WR10', N'DP77', 5, 5890000)
INSERT [dbo].[DETAILSWAREHOUSERECEIPT] ([WarehouseReceiptID], [DetailsPhoneID], [QuantityOdered], [Price]) VALUES (N'WR10', N'DP78', 20, 1890000)
INSERT [dbo].[DETAILSWAREHOUSERECEIPT] ([WarehouseReceiptID], [DetailsPhoneID], [QuantityOdered], [Price]) VALUES (N'WR10', N'DP79', 20, 1890000)
GO
INSERT [dbo].[EMPLOYEE] ([EmployeeID], [EmployeeName], [Password], [Avatar], [ChucVu]) VALUES (N'E01', N'Nguyễn Văn A', N'Aa123456', N'Avatar0', N'Kho')
INSERT [dbo].[EMPLOYEE] ([EmployeeID], [EmployeeName], [Password], [Avatar], [ChucVu]) VALUES (N'E02', N'Nguyễn Thị B', N'Bb123456', N'Avatar1', N'Quản lý')
INSERT [dbo].[EMPLOYEE] ([EmployeeID], [EmployeeName], [Password], [Avatar], [ChucVu]) VALUES (N'E03', N'Trần Văn C', N'Cc123456', N'Avatar2', N'CSKH')
INSERT [dbo].[EMPLOYEE] ([EmployeeID], [EmployeeName], [Password], [Avatar], [ChucVu]) VALUES (N'E04', N'Lê Thị D', N'Dd123456', N'Avatar3', N'Kho')
INSERT [dbo].[EMPLOYEE] ([EmployeeID], [EmployeeName], [Password], [Avatar], [ChucVu]) VALUES (N'E05', N'Phạm Văn E', N'Ee123456', N'Avatar4', N'CSKH')
GO
INSERT [dbo].[PHONE] ([PhoneID], [PhoneName], [MainImage], [ScreenTeachnology], [PhysicalWidth], [PhysicalHeight], [ScreenDiagonal], [Chip], [OperatingSystem], [Sim], [Wifi], [Bluetooth], [BatteryCapacity], [TypeOfPin], [BrandID]) VALUES (N'PH1', N'iPhone 15 Pro Max', N'https://firebasestorage.googleapis.com/v0/b/shop-mobile-274e7.appspot.com/o/Iphone%2Fip15pm_black.jpg?alt=media&token=95679dc8-a17d-4854-9c67-6788d7a5a542', N'Super Retina XDR OLED', 828, 1792, CAST(6.1 AS Decimal(5, 1)), N'Apple A13 Bionic', N'iOS 13', N'Nano SIM', N'"Wi-Fi 802.11 a/b/g/n/ac/ax, dual-band, hotspot"', N'"5.0, A2DP, LE"', 3110, N'Li-Ion', N'BR1')
INSERT [dbo].[PHONE] ([PhoneID], [PhoneName], [MainImage], [ScreenTeachnology], [PhysicalWidth], [PhysicalHeight], [ScreenDiagonal], [Chip], [OperatingSystem], [Sim], [Wifi], [Bluetooth], [BatteryCapacity], [TypeOfPin], [BrandID]) VALUES (N'PH10', N'OPPO Find N2 Flip', N'https://firebasestorage.googleapis.com/v0/b/shop-mobile-274e7.appspot.com/o/Oppo%2Fofn2f_purple.jpg?alt=media&token=5f0814e5-5de3-44db-825a-ded9b4daf814', N'AMOLED', 2520, 1080, CAST(6.8 AS Decimal(5, 1)), N'Arm Mali-G710 MC10 GPU', N'Android 13 - ColorOS 13.0', N'2 Nano-SIM card', N'Dual-band (2.4 GHz/5 GHz) / Wi-Fi hotspot Wi-Fi Direct / Wi-Fi 802.11 a/b/g/n/ac/ax', N'v5.3 và BLE', 4300, N'Li-Po', N'BR4')
INSERT [dbo].[PHONE] ([PhoneID], [PhoneName], [MainImage], [ScreenTeachnology], [PhysicalWidth], [PhysicalHeight], [ScreenDiagonal], [Chip], [OperatingSystem], [Sim], [Wifi], [Bluetooth], [BatteryCapacity], [TypeOfPin], [BrandID]) VALUES (N'PH11', N'Xiaomi Redmi 12C', N'https://firebasestorage.googleapis.com/v0/b/shop-mobile-274e7.appspot.com/o/Xiaomi%2Fxr12_cyan.jpg?alt=media&token=798b173a-e6e1-4779-963a-08ccc33d7a8f', N'IPS LCD', 720, 1650, CAST(6.7 AS Decimal(5, 1)), N'Mediatek Helio G85', N'Android 13', N'2 SIM (Nano-SIM)', N'802.11 a/b/g/n/ac', N'v5.1', 5000, N'Li-Po', N'BR5')
INSERT [dbo].[PHONE] ([PhoneID], [PhoneName], [MainImage], [ScreenTeachnology], [PhysicalWidth], [PhysicalHeight], [ScreenDiagonal], [Chip], [OperatingSystem], [Sim], [Wifi], [Bluetooth], [BatteryCapacity], [TypeOfPin], [BrandID]) VALUES (N'PH12', N'Xiaomi Redmi Note 12 Pro', N'https://firebasestorage.googleapis.com/v0/b/shop-mobile-274e7.appspot.com/o/Xiaomi%2Fxrn12p_blue.jpg?alt=media&token=6a8c5012-be31-432d-bbf7-5c3e3c693953', N'AMOLED', 1080, 2400, CAST(6.7 AS Decimal(5, 1)), N'MediaTek Dimensity 1080', N'Android 13', N'2 Nano SIM', N'Wi-Fi Direct / Dual-band (2.4 GHz/5 GHz) / 6 GHz', N'A2DP / LE / v5.2', 5000, N'Li-Po', N'BR5')
INSERT [dbo].[PHONE] ([PhoneID], [PhoneName], [MainImage], [ScreenTeachnology], [PhysicalWidth], [PhysicalHeight], [ScreenDiagonal], [Chip], [OperatingSystem], [Sim], [Wifi], [Bluetooth], [BatteryCapacity], [TypeOfPin], [BrandID]) VALUES (N'PH13', N'Xiaomi Redmi Note 12S', N'https://firebasestorage.googleapis.com/v0/b/shop-mobile-274e7.appspot.com/o/Xiaomi%2Fxrn12s_blue.jpg?alt=media&token=77d9e1d3-c1aa-4ec1-958c-bece5c3f67b3', N'AMOLED', 1080, 2400, CAST(6.4 AS Decimal(5, 1)), N'MediaTek Helio G96 8 nhân', N'Android 12', N'2 Nano SIM', N'Wi-Fi 802.11 a/b/g/n/ac / Dual-band (2.4 GHz/5 GHz) / DLNA / Wi-Fi Direct / Wi-Fi hotspot', N'v5.0', 5000, N'Li-Ion', N'BR5')
INSERT [dbo].[PHONE] ([PhoneID], [PhoneName], [MainImage], [ScreenTeachnology], [PhysicalWidth], [PhysicalHeight], [ScreenDiagonal], [Chip], [OperatingSystem], [Sim], [Wifi], [Bluetooth], [BatteryCapacity], [TypeOfPin], [BrandID]) VALUES (N'PH14', N'Xiaomi Redmi A2', N'https://firebasestorage.googleapis.com/v0/b/shop-mobile-274e7.appspot.com/o/Xiaomi%2Fxra2_blue.jpg?alt=media&token=264d502b-3757-4c84-9001-d9ecc701c142', N'IPS LCD', 720, 1600, CAST(6.5 AS Decimal(5, 1)), N'Helio G36', N'Android 12 or 13 (Go edition)', N'2 Nano SIM', N'Wi-Fi Direct / Dual-band (2.4 GHz/5 GHz) / 6 GHz', N'v5.0', 5000, N'Li-Po', N'BR5')
INSERT [dbo].[PHONE] ([PhoneID], [PhoneName], [MainImage], [ScreenTeachnology], [PhysicalWidth], [PhysicalHeight], [ScreenDiagonal], [Chip], [OperatingSystem], [Sim], [Wifi], [Bluetooth], [BatteryCapacity], [TypeOfPin], [BrandID]) VALUES (N'PH2', N'iPhone 11 Pro Max', N'https://firebasestorage.googleapis.com/v0/b/shop-mobile-274e7.appspot.com/o/Iphone%2Fip11pm_green.jpg?alt=media&token=a3ccfc87-a392-4bc4-b4a7-4046edac7bac', N'IPS LCD', 1242, 2688, CAST(6.5 AS Decimal(5, 1)), N'Apple A13 Bionic', N'iOS 13', N'Nano SIM', N'"Wi-Fi 802.11 a/b/g/n/ac/ax, dual-band, hotspot"', N'"5.0, A2DP, LE"', 3969, N'Li-Ion', N'BR1')
INSERT [dbo].[PHONE] ([PhoneID], [PhoneName], [MainImage], [ScreenTeachnology], [PhysicalWidth], [PhysicalHeight], [ScreenDiagonal], [Chip], [OperatingSystem], [Sim], [Wifi], [Bluetooth], [BatteryCapacity], [TypeOfPin], [BrandID]) VALUES (N'PH3', N'iPhone 14 Pro', N'https://firebasestorage.googleapis.com/v0/b/shop-mobile-274e7.appspot.com/o/Iphone%2Fip14pm_black.jpg?alt=media&token=4b7a0317-c4fe-430f-b52f-75f9b3820dd4', N'OLED', 1170, 2532, CAST(6.1 AS Decimal(5, 1)), N'Apple A16 Bionic 6', N'iOS 16', N'1 Nano SIM & 1 eSIM', N'"Wi-Fi 802.11 a/b/g/n/ac/6e, Dual-band, Wi-Fi Direct, Wi-Fi hotspot"', N'v5.3', 3520, N'Li-Ion', N'BR1')
INSERT [dbo].[PHONE] ([PhoneID], [PhoneName], [MainImage], [ScreenTeachnology], [PhysicalWidth], [PhysicalHeight], [ScreenDiagonal], [Chip], [OperatingSystem], [Sim], [Wifi], [Bluetooth], [BatteryCapacity], [TypeOfPin], [BrandID]) VALUES (N'PH4', N'Samsung Galaxy Z Fold5 5G', N'https://firebasestorage.googleapis.com/v0/b/shop-mobile-274e7.appspot.com/o/Samsung%2Fssgzf5_green.jpg?alt=media&token=80af775e-638d-4683-876d-4414c8253e70', N'Dynamic AMOLED 2X', 2176, 1812, CAST(7.6 AS Decimal(5, 1)), N'Adreno 740', N'Android 13', N'1 Nano SIM & 1 eSIM', N'"Wi-Fi 802.11 a/b/g/n/ac/6e/7, tri-band, Wi-Fi Direct"', N'"5.3, A2DP, LE, aptX HD"', 4400, N'Li-Po', N'BR2')
INSERT [dbo].[PHONE] ([PhoneID], [PhoneName], [MainImage], [ScreenTeachnology], [PhysicalWidth], [PhysicalHeight], [ScreenDiagonal], [Chip], [OperatingSystem], [Sim], [Wifi], [Bluetooth], [BatteryCapacity], [TypeOfPin], [BrandID]) VALUES (N'PH5', N'Samsung Galaxy Z Fold4 5G', N'https://firebasestorage.googleapis.com/v0/b/shop-mobile-274e7.appspot.com/o/Samsung%2Fssgzf4_purple.jpg?alt=media&token=5a58c4e9-f9d8-4d53-a52f-a8bcb05869d0', N'Dynamic AMOLED 2X', 2176, 1812, CAST(7.6 AS Decimal(5, 1)), N'Qualcomm SM8475 Snapdragon 8+ Gen 1 (4 nm)', N'Android 12 - One UI 4.1.1', N'Nano SIM / E-SIM', N'802.11 a/b/g/n/ac/ax 2.4G+5GHz+6GHz / HE160 / MIMO / 1024-QAM', N'v5.2 / A2DP / LE / aptX HD', 4400, N'Li-Po', N'BR2')
INSERT [dbo].[PHONE] ([PhoneID], [PhoneName], [MainImage], [ScreenTeachnology], [PhysicalWidth], [PhysicalHeight], [ScreenDiagonal], [Chip], [OperatingSystem], [Sim], [Wifi], [Bluetooth], [BatteryCapacity], [TypeOfPin], [BrandID]) VALUES (N'PH6', N'Samsung Galaxy S23 Ultra 5G', N'https://firebasestorage.googleapis.com/v0/b/shop-mobile-274e7.appspot.com/o/Samsung%2Fssg23u_green.jpg?alt=media&token=94557dd8-38b9-4ebe-92a8-f4d77785b4b2', N'Dynamic AMOLED 2X', 3088, 1440, CAST(6.8 AS Decimal(5, 1)), N'Qualcomm Snapdragon 8 Gen 2 (4 nm)', N'Android 13 - OneUI 5.1', N'2 Nano-SIM và 1 eSIM', N'Wi-Fi 802.11 a/b/g/n/ac/6e Wi-Fi Direct', N'v5.3 A2DP LE', 5000, N'Li-Ion', N'BR2')
INSERT [dbo].[PHONE] ([PhoneID], [PhoneName], [MainImage], [ScreenTeachnology], [PhysicalWidth], [PhysicalHeight], [ScreenDiagonal], [Chip], [OperatingSystem], [Sim], [Wifi], [Bluetooth], [BatteryCapacity], [TypeOfPin], [BrandID]) VALUES (N'PH7', N'OPPO A17', N'https://firebasestorage.googleapis.com/v0/b/shop-mobile-274e7.appspot.com/o/Oppo%2Foa17_blue.jpg?alt=media&token=0deb5aed-087d-48e2-8883-0bc9981ea98f', N'IPS LCD', 720, 1612, CAST(6.6 AS Decimal(5, 1)), N'IMG PowerVR GE8320', N'Android 12', N'2 Nano SIM', N'Wi-Fi Direct Wi-Fi hotspot Dual-band (2.4 GHz/5 GHz) Wi-Fi 802.11 a/b/g/n/ac', N'v5.3 / LE', 5000, N'Li-Po', N'BR4')
INSERT [dbo].[PHONE] ([PhoneID], [PhoneName], [MainImage], [ScreenTeachnology], [PhysicalWidth], [PhysicalHeight], [ScreenDiagonal], [Chip], [OperatingSystem], [Sim], [Wifi], [Bluetooth], [BatteryCapacity], [TypeOfPin], [BrandID]) VALUES (N'PH8', N'OPPO A57', N'https://firebasestorage.googleapis.com/v0/b/shop-mobile-274e7.appspot.com/o/Oppo%2Foa57_green.png?alt=media&token=80f05e79-6aa6-4c1a-bd38-d3630b159795', N'IPS LCD', 720, 1612, CAST(6.6 AS Decimal(5, 1)), N'MediaTek Helio G35 8 nhân', N'Android 12', N'2 Nano SIM', N'Wi-Fi Direct / Wi-Fi hotspot / Dual-band (2.4 GHz/5 GHz) / Wi-Fi 802.11 a/b/g/n/ac', N'v5.3', 5000, N'Li-Po', N'BR4')
INSERT [dbo].[PHONE] ([PhoneID], [PhoneName], [MainImage], [ScreenTeachnology], [PhysicalWidth], [PhysicalHeight], [ScreenDiagonal], [Chip], [OperatingSystem], [Sim], [Wifi], [Bluetooth], [BatteryCapacity], [TypeOfPin], [BrandID]) VALUES (N'PH9', N'OPPO A78', N'https://firebasestorage.googleapis.com/v0/b/shop-mobile-274e7.appspot.com/o/Oppo%2Foa78_black.jpg?alt=media&token=814cb2bf-c335-4460-93c6-dc0cf9a0399f', N'AMOLED', 2400, 1080, CAST(6.4 AS Decimal(5, 1)), N'Snapdragon 680 4G (6 nm)', N'"Android 13, ColorOS 13.1"', N'2 Nano SIM', N'Wi-Fi Direct Wi-Fi hotspot Dual-band (2.4 GHz/5 GHz) Wi-Fi 802.11 a/b/g/n/ac', N'"5.0, A2DP, LE"', 5000, N'Li-Po', N'BR4')
GO
INSERT [dbo].[RESPONECOMMENT] ([ResponeCommentID], [Body], [Datetimestamp], [CommentID]) VALUES (N'RC1', N'"Di Động Việt xin chào ạ !
Dạ (BH19T) là phiên bản giá ưu đãi ạ, MÁY MỚI 100% và Tặng thêm 1 tháng bảo hành độc quyền tại Di Động Việt. Hoàn tiền 100% nếu đâu rẻ hơn ạ.
Dạ Anh có thể đến trực tiếp cửa hàng trải nghiệm hoặc liên hệ 1800 6018 (Miễn phí cước gọi) để bên em hỗ trợ mình được tốt nhất."', N'1691873869', N'CM1')
INSERT [dbo].[RESPONECOMMENT] ([ResponeCommentID], [Body], [Datetimestamp], [CommentID]) VALUES (N'RC10', N'"Di Động Việt xin chào anh !
dja bộ phận cskh sẽ liên hệ ngay tư vấn Anh ạ
Dạ em thông tin đến anh ạ"', N'1688688101', N'CM10')
INSERT [dbo].[RESPONECOMMENT] ([ResponeCommentID], [Body], [Datetimestamp], [CommentID]) VALUES (N'RC11', N'"Dạ Di Động Việt chào anh ạ !

Dạ Didongviet tạm chưa có chi nhánh ở Nghệ An ạ , tuy nhiên Didongviet có giao hàng tận nơi ạ .
Đơn hàng từ 3-5 ngày mình nhận được sản phẩm (không tính T7-CN) ạ"', N'1691592343', N'CM11')
INSERT [dbo].[RESPONECOMMENT] ([ResponeCommentID], [Body], [Datetimestamp], [CommentID]) VALUES (N'RC12', N'Di Động Việt xin chào Anh ạ ! Bộ phận chăm sóc khách hàng của Di Động Việt sẽ liên hệ tư vấn sản phẩm và chương trình khuyến mãi cho Anh trong ít phút nữa ạ', N'1690333973', N'CM12')
INSERT [dbo].[RESPONECOMMENT] ([ResponeCommentID], [Body], [Datetimestamp], [CommentID]) VALUES (N'RC13', N'"Di Động Việt xin chào Anh ạ !
Dạ Redmi Note 12 Pro 5G 256GB (BH19T) bên em đang có giá hấp dẫn chỉ 7.990.000 Ưu đãi độc quyền Di Động Việt Bảo hành 19 tháng - 1 ĐỔI 1 trong 33 ngày khi có lỗi phần cứng nhà sản xuất"', N'1697471305', N'CM13')
INSERT [dbo].[RESPONECOMMENT] ([ResponeCommentID], [Body], [Datetimestamp], [CommentID]) VALUES (N'RC14', N'"Di Động Việt xin chào Anh! Dạ Redmi Note 12 Pro 5G 256GB (BH19T) bên em đang có giá hấp dẫn chỉ 7.990.000
Ưu đãi độc quyền Di Động Việt Bảo hành 19 tháng - 1 ĐỔI 1 trong 33 ngày khi có lỗi phần cứng nhà sản xuất
Tặng thêm đến 500.000đ khi thu cũ đổi mới
Miễn phí dán PPF và cường lực trị giá 300.000đ
Trả góp 0% lãi suất qua công ty tài chính
Cần thêm thông tin tư vấn sản phẩm và đặt hàng Anh liên hệ tổng đài 1800 6018 (miễn phí) để được hỗ trợ nhanh nhất ạ"', N'1696527048', N'CM14')
INSERT [dbo].[RESPONECOMMENT] ([ResponeCommentID], [Body], [Datetimestamp], [CommentID]) VALUES (N'RC2', N'"Di Động Việt xin chào Anh An ạ !

Dạ Xiaomi Redmi Note 12 Pro 5G 256GB Chính Hãng hiện vẫn còn hàng ở khu vực Rạch Giá - Kiên Giang ạ

Bộ phận chăm sóc khách hàng của Di Động Việt sẽ liên hệ tư vấn sản phẩm và chương trình khuyến mãi cho Anh trong ít phút nữa ạ"', N'1692945881', N'CM2')
INSERT [dbo].[RESPONECOMMENT] ([ResponeCommentID], [Body], [Datetimestamp], [CommentID]) VALUES (N'RC3', N'"Dạ Di Động Việt xin chào ạ!
Hiện sản phẩm Xiaomi Redmi Note 12 Pro 5G 256GB Chính Hãng (BH19T) có giá 8.290.000 Đây là ưu đãi độc quyền tại Di Động Việt hợp tác với hãng để sản phẩm khi đến tay của khách hàng luôn luôn có giá ưu đãi nhất ạ ! Máy vẫn đảm bảo chính hãng chưa qua sử dụng nên Anh cứ yên tâm ạ . Anh An vui lòng liên hệ 1800 6018 (miễn phí) để được hỗ trợ tư vấn sản phẩm và đặt hàng nhanh nhất Anh nhé ! Di Động Việt xin cảm ơn !"', N'1694061672', N'CM3')
INSERT [dbo].[RESPONECOMMENT] ([ResponeCommentID], [Body], [Datetimestamp], [CommentID]) VALUES (N'RC4', N'"Di Động Việt xin chào anh.
Dạ sản phẩm anh quan tâm Xiaomi Redmi Note 12 Pro 5G 256GB Chính Hãng (BH19T) hiện sản phẩm khi mua về đã có Tiếng Việt sẵn và bảo hành chính hãng Xiaomi VN 18 tháng Di Động Việt tặng thêm 1 tháng bảo hành ạ
Anh vui lòng chú ý điện thoại nhé bộ phận chăm sóc khách hàng Di Động Việt sẽ liên hệ ngay ạ
Cám ơn anh."', N'1690088371', N'CM4')
INSERT [dbo].[RESPONECOMMENT] ([ResponeCommentID], [Body], [Datetimestamp], [CommentID]) VALUES (N'RC5', N'"Di Động Việt Xin chào Anh Cao ạ, 
Sản phẩm mình đang quan tâm Xiaomi Redmi Note 12 Pro 5G 256GB Chính Hãng (BH19T) bên em đang bán với giá ưu đãi chỉ từ 8.290.000 Tặng thêm đến 500.000đ khi thu cũ đổi mới ạ. 
Bộ sản phẩm gồm: Hộp, Sách hướng dẫn, Cây lấy sim, Ốp lưng, Cáp Type C, Củ sạc nhanh rời đầu Type A ạ. Cần thêm thông tin tham khảo Anh liên hệ tổng đài 1800 6018 (miễn phí) để được hỗ trợ nhanh nhất ạ."', N'1686341811', N'CM5')
INSERT [dbo].[RESPONECOMMENT] ([ResponeCommentID], [Body], [Datetimestamp], [CommentID]) VALUES (N'RC6', N'"Di Động Việt xin chào Anh! Xiaomi Redmi Note 12 Pro 5G 256GB Chính Hãng ram 8gb Anh nhé, giá hấp dẫn chỉ còn 8,290,000 máy mới 100% nguyên seal bảo hành 19 tháng
Tặng thêm đến 500.000đ khi thu cũ đổi mới
Giảm 600.000đ khi mở thẻ qua TPBank Evo
Độc quyền Di Động Việt Dùng thử 7 ngày miễn phí
Cần thêm thông tin tư vấn sản phẩm và đặt hàng Anh liên hệ tổng đài 1800 6018 (miễn phí) để được hỗ trợ nhanh nhất ạ"', N'1696048828', N'CM6')
INSERT [dbo].[RESPONECOMMENT] ([ResponeCommentID], [Body], [Datetimestamp], [CommentID]) VALUES (N'RC7', N'"Dạ Di Động Việt chào anh ạ !

Cám ơn Anh đã quan tâm đến sản phẩm và dịch vụ Di Động Việt, sẽ có nhân viên liên hệ tư vấn ngay ạ"', N'1685659458', N'CM7')
INSERT [dbo].[RESPONECOMMENT] ([ResponeCommentID], [Body], [Datetimestamp], [CommentID]) VALUES (N'RC8', N'"Di Động Việt xin chào Anh ạ ! Hiện sản phẩm XIAOMI REDMI NOTE 12 PRO 5G 8GB/256GB(CTY) (BH19T) - Đen - New
8,290,000
Hiện em đang có CTKM dành cho KH tham gia thu cũ đổi mới trợ giá 500.000 khi lên đời ạ
Giảm thêm 30% tối đa 600k khi có đăng ký mở thẻ thành công TPBANK EVO ạ"', N'1696140286', N'CM8')
INSERT [dbo].[RESPONECOMMENT] ([ResponeCommentID], [Body], [Datetimestamp], [CommentID]) VALUES (N'RC9', N'Di Động Việt xin chào Anh! Xiaomi Redmi Note 12 Pro 5G 256GB Chính Hãng (BH19T) giá ưu đãi chỉ 8.290.000 Máy mới 100% bảo hành 19 tháng Độc quyền Di Động Việt', N'1693746863', N'CM9')
GO
INSERT [dbo].[SUPPLIER] ([SupplierID], [SupplierName], [PhoneNO], [Address]) VALUES (N'S01', N'Văn Phòng Đại Diện - Công Ty Nokia', N'0812345678', N'134 Trần Phú, phường 4, quận 5, Tp. Hồ Chí Minh, Việt Nam')
INSERT [dbo].[SUPPLIER] ([SupplierID], [SupplierName], [PhoneNO], [Address]) VALUES (N'S02', N'Thế Giới Di Động - Công Ty TNHH Thế Giới Di Động', N'0954321987', N'8/38 Đinh Bô Lĩnh, P.24, Q. Bình Thạnh, Tp. Hồ Chí Minh, Việt Nam')
INSERT [dbo].[SUPPLIER] ([SupplierID], [SupplierName], [PhoneNO], [Address]) VALUES (N'S03', N'Công Ty TNHH Thương Mại Công Nghệ Bạch Long', N'0908765432', N'261P Trần Hưng Đạo, Hẻm 8, Mỹ Xuyên, Long Xuyên, An Giang, Việt Nam')
INSERT [dbo].[SUPPLIER] ([SupplierID], [SupplierName], [PhoneNO], [Address]) VALUES (N'S04', N'Công Ty TNHH Bao La', N'0843219876', N'73-75-77-79 Nguyễn Đình Chiểu, P. 1, Bến Tre, Việt Nam')
INSERT [dbo].[SUPPLIER] ([SupplierID], [SupplierName], [PhoneNO], [Address]) VALUES (N'S05', N'Doanh Nghiệp Tư Nhân Ngọc An Khang', N'0912345678', N'Số 464 Đường Lương Ngọc Quyến, Tổ 11, P. Đồng Quang, TP. Thái Nguyên, Thái Nguyên, Việt Nam')
INSERT [dbo].[SUPPLIER] ([SupplierID], [SupplierName], [PhoneNO], [Address]) VALUES (N'S06', N'Công Ty TNHH Đầu Tư & Phân Phối Thiết Bị Viễn Thông Long Hưng', N'0556789432', N'1133/6 (Lầu 1) Đường 26/3, P. châu Văn Liêm, Q. Ô Môn, TP. Cần Thơ, Việt Nam')
INSERT [dbo].[SUPPLIER] ([SupplierID], [SupplierName], [PhoneNO], [Address]) VALUES (N'S07', N'Công Ty Cổ Phần Thế Giới Số', N'0856781234', N'Võ Nguyên Giáp, Đông Anh, Hà Nội, Việt Nam')
INSERT [dbo].[SUPPLIER] ([SupplierID], [SupplierName], [PhoneNO], [Address]) VALUES (N'S08', N'Công Ty TNHH MTV TMDV Kiến Quốc', N'0943218765', N'217A Quốc Lộ 15, P. Tây Tiến, Tp. Biên Hòa, Đồng Nai, Việt Nam')
INSERT [dbo].[SUPPLIER] ([SupplierID], [SupplierName], [PhoneNO], [Address]) VALUES (N'S09', N'Phụ Kiện Bán Buôn', N'0902139968', N'117 Nguyễn Bỉnh Khiêm, P. Đa Kao, Q. 1, Tp. Hồ Chí Minh, Việt Nam')
INSERT [dbo].[SUPPLIER] ([SupplierID], [SupplierName], [PhoneNO], [Address]) VALUES (N'S10', N'Cty Thế Giới Di Động Cổ Phần-Cn Biên Hòa', N'0987654321', N'308-310-312 Hồng Bàng, P. 15, Q. 10, Tp. Hồ Chí Minh, Việt Nam')
GO
INSERT [dbo].[WAREHOUSERECEIPT] ([WarehouseReceiptID], [Datetimestamp], [Total], [State], [EmployeeID], [SupplierID]) VALUES (N'WR01', N'1671473533', 6579400000, 1, N'E01', N'S01')
INSERT [dbo].[WAREHOUSERECEIPT] ([WarehouseReceiptID], [Datetimestamp], [Total], [State], [EmployeeID], [SupplierID]) VALUES (N'WR02', N'1667186474', 9847150000, 1, N'E01', N'S01')
INSERT [dbo].[WAREHOUSERECEIPT] ([WarehouseReceiptID], [Datetimestamp], [Total], [State], [EmployeeID], [SupplierID]) VALUES (N'WR03', N'1668903661', 11075250000, 1, N'E01', N'S03')
INSERT [dbo].[WAREHOUSERECEIPT] ([WarehouseReceiptID], [Datetimestamp], [Total], [State], [EmployeeID], [SupplierID]) VALUES (N'WR04', N'1671515624', 13264650000, 1, N'E01', N'S04')
INSERT [dbo].[WAREHOUSERECEIPT] ([WarehouseReceiptID], [Datetimestamp], [Total], [State], [EmployeeID], [SupplierID]) VALUES (N'WR05', N'1670715860', 14456700000, 1, N'E01', N'S05')
INSERT [dbo].[WAREHOUSERECEIPT] ([WarehouseReceiptID], [Datetimestamp], [Total], [State], [EmployeeID], [SupplierID]) VALUES (N'WR06', N'1669400389', 15948650000, 1, N'E04', N'S05')
INSERT [dbo].[WAREHOUSERECEIPT] ([WarehouseReceiptID], [Datetimestamp], [Total], [State], [EmployeeID], [SupplierID]) VALUES (N'WR07', N'1670844358', 16022950000, 1, N'E04', N'S05')
INSERT [dbo].[WAREHOUSERECEIPT] ([WarehouseReceiptID], [Datetimestamp], [Total], [State], [EmployeeID], [SupplierID]) VALUES (N'WR08', N'1670768352', 16247660000, 1, N'E04', N'S08')
INSERT [dbo].[WAREHOUSERECEIPT] ([WarehouseReceiptID], [Datetimestamp], [Total], [State], [EmployeeID], [SupplierID]) VALUES (N'WR09', N'1671672976', 16338860000, 1, N'E04', N'S09')
INSERT [dbo].[WAREHOUSERECEIPT] ([WarehouseReceiptID], [Datetimestamp], [Total], [State], [EmployeeID], [SupplierID]) VALUES (N'WR10', N'1670566280', 16443910000, 1, N'E04', N'S10')
GO
ALTER TABLE [dbo].[BILL] ADD  DEFAULT ((0)) FOR [Total]
GO
ALTER TABLE [dbo].[BILL] ADD  DEFAULT ((0)) FOR [State]
GO
ALTER TABLE [dbo].[WAREHOUSERECEIPT] ADD  DEFAULT ((0)) FOR [Total]
GO
ALTER TABLE [dbo].[WAREHOUSERECEIPT] ADD  DEFAULT ((0)) FOR [State]
GO
ALTER TABLE [dbo].[ADDRESSOFCUSTOMER]  WITH NOCHECK ADD  CONSTRAINT [FK_ADDRESSOFCUSTOMER_CUSTOMER] FOREIGN KEY([Email])
REFERENCES [dbo].[CUSTOMER] ([Email])
GO
ALTER TABLE [dbo].[ADDRESSOFCUSTOMER] CHECK CONSTRAINT [FK_ADDRESSOFCUSTOMER_CUSTOMER]
GO
ALTER TABLE [dbo].[BILL]  WITH NOCHECK ADD  CONSTRAINT [FK_BILL_ADDRESSOFCUSTOMER] FOREIGN KEY([AddressOfCustomerID])
REFERENCES [dbo].[ADDRESSOFCUSTOMER] ([AddressOfCustomerID])
GO
ALTER TABLE [dbo].[BILL] CHECK CONSTRAINT [FK_BILL_ADDRESSOFCUSTOMER]
GO
ALTER TABLE [dbo].[COMMENT]  WITH NOCHECK ADD  CONSTRAINT [FK_COMMNENT_PHONE] FOREIGN KEY([PhoneID])
REFERENCES [dbo].[PHONE] ([PhoneID])
GO
ALTER TABLE [dbo].[COMMENT] CHECK CONSTRAINT [FK_COMMNENT_PHONE]
GO
ALTER TABLE [dbo].[DETAILSBILL]  WITH NOCHECK ADD  CONSTRAINT [FK_DETAILSBILL_BILL] FOREIGN KEY([BillID])
REFERENCES [dbo].[BILL] ([BillID])
GO
ALTER TABLE [dbo].[DETAILSBILL] CHECK CONSTRAINT [FK_DETAILSBILL_BILL]
GO
ALTER TABLE [dbo].[DETAILSBILL]  WITH NOCHECK ADD  CONSTRAINT [FK_DETAILSBILL_DetailsPhoneIDSTATUS] FOREIGN KEY([DetailsPhoneID])
REFERENCES [dbo].[DETAILSPHONE] ([DetailsPhoneID])
GO
ALTER TABLE [dbo].[DETAILSBILL] CHECK CONSTRAINT [FK_DETAILSBILL_DetailsPhoneIDSTATUS]
GO
ALTER TABLE [dbo].[DETAILSPHONE]  WITH NOCHECK ADD  CONSTRAINT [FK_DETAILSPHONESTATUS_CAPACITY] FOREIGN KEY([CapacityID])
REFERENCES [dbo].[CAPACITY] ([CapacityID])
GO
ALTER TABLE [dbo].[DETAILSPHONE] CHECK CONSTRAINT [FK_DETAILSPHONESTATUS_CAPACITY]
GO
ALTER TABLE [dbo].[DETAILSPHONE]  WITH NOCHECK ADD  CONSTRAINT [FK_DETAILSPHONESTATUS_COLOR] FOREIGN KEY([ColorID])
REFERENCES [dbo].[COLOR] ([ColorID])
GO
ALTER TABLE [dbo].[DETAILSPHONE] CHECK CONSTRAINT [FK_DETAILSPHONESTATUS_COLOR]
GO
ALTER TABLE [dbo].[DETAILSPHONE]  WITH NOCHECK ADD  CONSTRAINT [FK_DETAILSPHONESTATUS_PHONE] FOREIGN KEY([PhoneID])
REFERENCES [dbo].[PHONE] ([PhoneID])
GO
ALTER TABLE [dbo].[DETAILSPHONE] CHECK CONSTRAINT [FK_DETAILSPHONESTATUS_PHONE]
GO
ALTER TABLE [dbo].[DETAILSWAREHOUSERECEIPT]  WITH NOCHECK ADD  CONSTRAINT [FK_DETAILSWAREHOUSERECEIPT_DETAILSPHONE] FOREIGN KEY([DetailsPhoneID])
REFERENCES [dbo].[DETAILSPHONE] ([DetailsPhoneID])
GO
ALTER TABLE [dbo].[DETAILSWAREHOUSERECEIPT] CHECK CONSTRAINT [FK_DETAILSWAREHOUSERECEIPT_DETAILSPHONE]
GO
ALTER TABLE [dbo].[DETAILSWAREHOUSERECEIPT]  WITH NOCHECK ADD  CONSTRAINT [FK_DETAILSWAREHOUSERECEIPT_WAREHOUSERECEIPT] FOREIGN KEY([WarehouseReceiptID])
REFERENCES [dbo].[WAREHOUSERECEIPT] ([WarehouseReceiptID])
GO
ALTER TABLE [dbo].[DETAILSWAREHOUSERECEIPT] CHECK CONSTRAINT [FK_DETAILSWAREHOUSERECEIPT_WAREHOUSERECEIPT]
GO
ALTER TABLE [dbo].[PHONE]  WITH NOCHECK ADD  CONSTRAINT [FK_PHONE_BRAND] FOREIGN KEY([BrandID])
REFERENCES [dbo].[BRAND] ([BrandID])
GO
ALTER TABLE [dbo].[PHONE] CHECK CONSTRAINT [FK_PHONE_BRAND]
GO
ALTER TABLE [dbo].[RESPONECOMMENT]  WITH NOCHECK ADD  CONSTRAINT [FK_COMMNENT_COMMNENT] FOREIGN KEY([CommentID])
REFERENCES [dbo].[COMMENT] ([CommentID])
GO
ALTER TABLE [dbo].[RESPONECOMMENT] CHECK CONSTRAINT [FK_COMMNENT_COMMNENT]
GO
ALTER TABLE [dbo].[WAREHOUSERECEIPT]  WITH NOCHECK ADD  CONSTRAINT [FK_WAREHOUSERECEIPT_EMPLOYEE] FOREIGN KEY([EmployeeID])
REFERENCES [dbo].[EMPLOYEE] ([EmployeeID])
GO
ALTER TABLE [dbo].[WAREHOUSERECEIPT] CHECK CONSTRAINT [FK_WAREHOUSERECEIPT_EMPLOYEE]
GO
ALTER TABLE [dbo].[WAREHOUSERECEIPT]  WITH NOCHECK ADD  CONSTRAINT [FK_WAREHOUSERECEIPT_WAREHOUSERECEIPT] FOREIGN KEY([SupplierID])
REFERENCES [dbo].[SUPPLIER] ([SupplierID])
GO
ALTER TABLE [dbo].[WAREHOUSERECEIPT] CHECK CONSTRAINT [FK_WAREHOUSERECEIPT_WAREHOUSERECEIPT]
GO
/****** Object:  StoredProcedure [dbo].[PROC_CSKH_PERMISSION]    Script Date: 12/12/2023 7:16:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[PROC_CSKH_PERMISSION] @tk varchar(10), @mk varchar(15)
AS
	BEGIN
		exec sp_addlogin @tk, @mk
		exec sp_adduser @tk, @tk
		exec sp_addrolemember 'CSKH', @tk
	END
GO
/****** Object:  StoredProcedure [dbo].[PROC_DELETE_DETAILS_BILL]    Script Date: 12/12/2023 7:16:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--EXEC [dbo].[PROC_INSERT_DETAILS_BILL] 'B1', 'DP6', 11, 'CT5', 0
--GO
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- DELETE A PRODUCT IN DETAILS BILL
CREATE PROC [dbo].[PROC_DELETE_DETAILS_BILL]
@Bill_ID varchar(10), @Details_Phone_ID varchar(10)
AS
BEGIN
	DECLARE @Dcl_Bill_ID varchar(10), @Dcl_Phone_ID varchar(10)
	SELECT @Dcl_Bill_ID = @Bill_ID, 
	@Dcl_Phone_ID = @Details_Phone_ID

	delete DETAILSBILL where BillID = @Dcl_Bill_ID and DetailsPhoneID = @Dcl_Phone_ID

	-- update tổng hoá đơn bill đó
	EXEC [dbo].[PROC_UPDATE_TOTAL_BILL] @Dcl_Bill_ID

	-- delete luôn bill nếu khong con san pham trong chi tiet bill
	if (select count(*) from BILL, DETAILSBILL where BILL.BillID = @Dcl_Bill_ID and DETAILSBILL.BillID = BILL.BillID group by BILL.BillID) is null
	BEGIN
		delete BILL where BillID = @Dcl_Bill_ID
	END
END
GO
/****** Object:  StoredProcedure [dbo].[PROC_INSERT_DETAILS_BILL]    Script Date: 12/12/2023 7:16:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--EXEC [dbo].[PROC_UPDATE_TOTAL_BILL] 'B9'
--GO
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- INSERT A PRODUCT IN DETAILS BILL
CREATE PROC [dbo].[PROC_INSERT_DETAILS_BILL]
@Bill_ID varchar(10), @Details_Phone_ID varchar(10), @Quantity_Purchased int, @Address_Customer_ID varchar(10), @Payment_Method bit
AS
BEGIN
	DECLARE @Dcl_Bill_ID varchar(10), @Dcl_Phone_ID varchar(10), @Dcl_Quantity_Purchased int, @Dcl_Address_Customer_ID varchar(10), @Dcl_Payment_Method bit -- 0 COD, 1 CARD
	SELECT @Dcl_Bill_ID = @Bill_ID, 
	@Dcl_Phone_ID = @Details_Phone_ID, 
	@Dcl_Quantity_Purchased = @Quantity_Purchased, 
	@Dcl_Address_Customer_ID = @Address_Customer_ID, 
	@Dcl_Payment_Method = @Payment_Method

	-- insert bill nếu chưa có bill
	if not exists (select BillID from BILL where BillID = @Bill_ID)
	BEGIN
		insert into BILL(BillID, Datetimestamp, Payment, AddressOfCustomerID) values (@Bill_ID, (SELECT dbo.FUNC_CONVERTER_DT_TO_UXT(GETDATE())), @Dcl_Payment_Method, @Dcl_Address_Customer_ID)
	END

	-- insert chi tiết tiết bill
	insert into DETAILSBILL(BillID, DetailsPhoneID, QuantityPurchased) values (@Dcl_Bill_ID, @Dcl_Phone_ID, @Dcl_Quantity_Purchased)

	-- update tổng hoá đơn bill đó
	EXEC [dbo].[PROC_UPDATE_TOTAL_BILL] @Dcl_Bill_ID
END
GO
/****** Object:  StoredProcedure [dbo].[PROC_KHO_PERMISSION]    Script Date: 12/12/2023 7:16:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--------------------------------------------------------------
------------------------FUNCTION/PROC-------------------------
--------------------------------------------------------------
-- Giant permission to account
CREATE PROC [dbo].[PROC_KHO_PERMISSION] @tk varchar(10), @mk varchar(15)
AS
	BEGIN
		exec sp_addlogin @tk, @mk
		exec sp_adduser @tk, @tk
		exec sp_addrolemember 'Kho', @tk
	END
GO
/****** Object:  StoredProcedure [dbo].[PROC_UPDATE_ALL_TOTAL_BILL]    Script Date: 12/12/2023 7:16:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- UPDATE TOTAL OF ALL BILL
CREATE PROC [dbo].[PROC_UPDATE_ALL_TOTAL_BILL]
AS
BEGIN
	DECLARE @Bill_ID varchar(10), @Details_Phone_ID varchar(10), @Quantity_Purchased int, @Total bigint = 0
	DECLARE Cur_Bill_ID CURSOR
	FOR SELECT BillID FROM BILL
		OPEN Cur_Bill_ID
		WHILE (1=1)
			BEGIN
				fetch next from Cur_Bill_ID into @Bill_ID
				if(@@FETCH_STATUS = 0)
					BEGIN
						print N'Duyệt mã  bill: ' + convert(varchar,@Bill_ID)
						DECLARE Cur_Details_Bill_ID CURSOR
						FOR SELECT DetailsPhoneID, QuantityPurchased  FROM DETAILSBILL WHERE BillID = @Bill_ID
							OPEN Cur_Details_Bill_ID
							WHILE (1=1)
								BEGIN
									fetch next from Cur_Details_Bill_ID into @Details_Phone_ID, @Quantity_Purchased
									if(@@FETCH_STATUS = 0)
										BEGIN
											SET @Total = @Total + (@Quantity_Purchased * (select Price from DETAILSPHONE where DetailsPhoneID = @Details_Phone_ID))
										END
									else
										BEGIN
											-- UPDATE TOTAL
											print N'=> Tổng ' + convert(varchar, @Bill_ID) + ': ' + convert(varchar, @Total)
											update BILL 
											set Total = @Total
											where BillID = @Bill_ID
											break
										END
								END
							CLOSE Cur_Details_Bill_ID
							DEALLOCATE Cur_Details_Bill_ID
					END
				else
					BEGIN
						break
					END
			END
		CLOSE Cur_Bill_ID	
		DEALLOCATE Cur_Bill_ID
END
GO
/****** Object:  StoredProcedure [dbo].[PROC_UPDATE_ALL_WAREHOUSE_RECEIPT]    Script Date: 12/12/2023 7:16:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- UPDATE TOTAL OF ALL WAREHOUSE RECEIPT
CREATE PROC [dbo].[PROC_UPDATE_ALL_WAREHOUSE_RECEIPT]
AS
BEGIN
	DECLARE @WarehouseReceipt_ID varchar(10), @Details_Phone_ID varchar(10), @Quantity_Ordered int, @Total bigint = 0, @Price bigint
	DECLARE Cur_WarehouseReceipt_ID CURSOR
	FOR SELECT WarehouseReceiptID FROM WAREHOUSERECEIPT
		OPEN Cur_WarehouseReceipt_ID
		WHILE (1=1)
			BEGIN
				fetch next from Cur_WarehouseReceipt_ID into @WarehouseReceipt_ID
				if(@@FETCH_STATUS = 0)
					BEGIN
						print N'Duyệt mã phiếu nhập: ' + convert(varchar,@WarehouseReceipt_ID)
						DECLARE Cur_Details_WarehouseReceipt_ID CURSOR
						FOR SELECT DetailsPhoneID, QuantityOdered, Price FROM DETAILSWAREHOUSERECEIPT WHERE WarehouseReceiptID = @WarehouseReceipt_ID
							OPEN Cur_Details_WarehouseReceipt_ID
							WHILE (1=1)
								BEGIN
									fetch next from Cur_Details_WarehouseReceipt_ID into @Details_Phone_ID, @Quantity_Ordered, @Price
									if(@@FETCH_STATUS = 0)
										BEGIN
											SET @Total = @Total + (@Quantity_Ordered * @Price)
										END
									else
										BEGIN
											-- UPDATE TOTAL
											print N'=> Tổng ' + convert(varchar, @WarehouseReceipt_ID) + ': ' + convert(varchar, @Total)
											update WAREHOUSERECEIPT 
											set Total = @Total
											where WarehouseReceiptID = @WarehouseReceipt_ID
											break
										END
								END
							CLOSE Cur_Details_WarehouseReceipt_ID
							DEALLOCATE Cur_Details_WarehouseReceipt_ID
					END
				else
					BEGIN
						break
					END
			END
		CLOSE Cur_WarehouseReceipt_ID	
		DEALLOCATE Cur_WarehouseReceipt_ID
END
GO
/****** Object:  StoredProcedure [dbo].[PROC_UPDATE_QUANTITY_PHONE_ONCE]    Script Date: 12/12/2023 7:16:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- UPDATE QUANTITY PHONE WHEN IMPORT DATA (*JUST RUN ONCE*)
CREATE PROC [dbo].[PROC_UPDATE_QUANTITY_PHONE_ONCE]
AS
BEGIN
	DECLARE @Bill_ID varchar(10), @Details_Phone_ID varchar(10), @Quantity_Purchased int
	DECLARE Cur_Bill_ID CURSOR
	FOR SELECT BillID FROM BILL WHERE State = 1
		OPEN Cur_Bill_ID
		WHILE (1=1)
			BEGIN
				fetch next from Cur_Bill_ID into @Bill_ID
				if(@@FETCH_STATUS = 0)
					BEGIN
						print N'Duyệt mã  bill: ' + convert(varchar,@Bill_ID)
						DECLARE Cur_Details_Bill_ID CURSOR
						FOR SELECT DetailsPhoneID, QuantityPurchased  FROM DETAILSBILL WHERE BillID = @Bill_ID
							OPEN Cur_Details_Bill_ID
							WHILE (1=1)
								BEGIN
									fetch next from Cur_Details_Bill_ID into @Details_Phone_ID, @Quantity_Purchased
									if(@@FETCH_STATUS = 0)
										BEGIN
											print N'   Duyệt chi tiết mã điện thoại: ' + convert(varchar,@Details_Phone_ID)
											print N'   Số lượng mua: ' + convert(varchar,@Quantity_Purchased)

											-- UPDATE QUANTITY
											update DETAILSPHONE 
											set Quantity = Quantity - @Quantity_Purchased 
											where DetailsPhoneID = @Details_Phone_ID
										END
									else
										BEGIN
											break
										END
								END
							CLOSE Cur_Details_Bill_ID
							DEALLOCATE Cur_Details_Bill_ID
					END
				else
					BEGIN
						break
					END
			END
		CLOSE Cur_Bill_ID	
		DEALLOCATE Cur_Bill_ID
END
GO
/****** Object:  StoredProcedure [dbo].[PROC_UPDATE_QUANTITY_PHONE_WHEN_INSERT_A_WR]    Script Date: 12/12/2023 7:16:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- UPDATE QUANTITY PHONE WHEN INSERT A WAREHOUSE RECEIPT
CREATE PROC [dbo].[PROC_UPDATE_QUANTITY_PHONE_WHEN_INSERT_A_WR]
@WarehouseReceiptID varchar(10)
AS
BEGIN
	DECLARE @Dcl_WarehouseReceiptID varchar(10)
	SELECT @Dcl_WarehouseReceiptID = @WarehouseReceiptID

	-- con tiep ...
END
GO
/****** Object:  StoredProcedure [dbo].[PROC_UPDATE_TOTAL_BILL]    Script Date: 12/12/2023 7:16:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- UPDATE TOTAL OF A BILL
CREATE PROC [dbo].[PROC_UPDATE_TOTAL_BILL]
@Bill_ID varchar(10)
AS
BEGIN
	DECLARE @Details_Phone_ID varchar(10), @Quantity_Purchased int, @Total bigint = 0
	DECLARE Cur_Details_Bill CURSOR
	FOR SELECT DetailsPhoneID, QuantityPurchased  FROM DETAILSBILL WHERE BillID = @Bill_ID
		OPEN Cur_Details_Bill
		WHILE (1=1)
			BEGIN
				fetch next from Cur_Details_Bill into @Details_Phone_ID, @Quantity_Purchased
				if(@@FETCH_STATUS = 0)
					BEGIN
						print N'   Duyệt chi tiết mã điện thoại: ' + convert(varchar, @Details_Phone_ID)
						print N'   Số lượng mua: ' + convert(varchar, @Quantity_Purchased)
						SET @Total = @Total + (@Quantity_Purchased * (select Price from DETAILSPHONE where DetailsPhoneID = @Details_Phone_ID))
					END
				else
					BEGIN
						print N'=> Tổng ' + convert(varchar, @Total)
						update BILL 
						set Total = @Total
						where BillID = @Bill_ID
						break
					END
			END
		CLOSE Cur_Details_Bill
		DEALLOCATE Cur_Details_Bill
END
GO
USE [master]
GO
ALTER DATABASE [SalesPhoneManagement] SET  READ_WRITE 
GO
