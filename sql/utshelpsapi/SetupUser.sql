USE [master]
GO

/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [usr_db]    Script Date: 7/08/2015 1:47:26 PM ******/
CREATE LOGIN [usr_db] WITH PASSWORD=N'passw0rd', DEFAULT_DATABASE=[elssa_booking], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF
GO

USE [elssa_booking]
GO
/****** Object:  User [usr_db]    Script Date: 7/08/2015 1:47:12 PM ******/
CREATE USER [usr_db] FOR LOGIN [usr_db] WITH DEFAULT_SCHEMA=[dbo]
GO
ALTER ROLE [db_owner] ADD MEMBER [usr_db]
GO
ALTER ROLE [db_datareader] ADD MEMBER [usr_db]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [usr_db]
GO
