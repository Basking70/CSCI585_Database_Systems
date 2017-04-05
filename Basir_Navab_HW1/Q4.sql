/* I used MySQL
Question 4
 */
 SET SQL_SAFE_UPDATES=0;
 
 CREATE SCHEMA `HW1_Q4` ;

CREATE TABLE `HW1_Q4`.`Q4` (
  `Name` VARCHAR(45) NULL,
  `Address` VARCHAR(45) NULL,
  `ID` VARCHAR(45) NULL,
  `SameFam` VARCHAR(45) NULL);

use HW1_Q4;
INSERT INTO q4 (Name,Address,ID,SameFam)
VALUES 	('Alice','A','10','NULL'),('Bob','B','15','NULL'),
				('Carmen','C','22','NULL'),('Diego','A','9','10'),
                ('Ella','B','3','15'),('Farkhad','D','11','NULL');

 
USE HW1_Q4;
Delete t1 
FROM q4
t1 INNER JOIN q4 t2
 where t1.id=t2.samefam;

