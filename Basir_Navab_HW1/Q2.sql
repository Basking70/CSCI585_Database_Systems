/* I used MySQL
Question 2
*/

 CREATE SCHEMA `HW1_q2` ;

CREATE TABLE `HW1_q2`.`Q2` (
  `SID` INT NULL,
  `ClassName` VARCHAR(45) NULL,
  `Grade` VARCHAR(45) NULL);

use HW1_q2;
INSERT INTO q2 (SID,ClassName,Grade)
VALUES 	('123','ART123','A'),('123','BUS456','B'),('666','REL100','D'),
				('666','ECO966','A'),('666','BUS456','B'),('345','BUS456','A'),
				('345','ECO966','F');
            
USE HW1_q2;
SELECT classname , COUNT(classname) as total
FROM q2
GROUP BY classname;
