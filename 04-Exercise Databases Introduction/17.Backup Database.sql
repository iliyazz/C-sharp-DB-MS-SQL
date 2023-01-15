--04.Exercise: Databases Introduction
--Exercise 17 Backup Database
BACKUP DATABASE Softuni TO DISK='D:\MS SQL - януари 2023\04-Exercise Databases Introduction\Backup\Softuni_2023-01-14-backup.bak';
USE master
DROP DATABASE Softuni
RESTORE DATABASE Softuni FROM DISK='D:\MS SQL - януари 2023\04-Exercise Databases Introduction\Backup\Softuni_2023-01-14-backup.bak';
USE SoftUni
