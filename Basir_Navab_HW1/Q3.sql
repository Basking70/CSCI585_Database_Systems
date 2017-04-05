/* I used MySQL 
Question 3
*/
CREATE SCHEMA `HW1_Q3` ;

CREATE TABLE `HW1_Q3`.`Q3` (
  `ProjectID` VARCHAR(45) NULL,
  `Step` VARCHAR(45) NULL,
  `Statuss` VARCHAR(45) NULL);

use HW1_Q3;
INSERT INTO q3 (ProjectID,Step,Statuss)
VALUES 	('P100','0','C'),('P100','1','W'),('P100','2','W'),
				('P201','0','C'),('P201','1','C'),('P333','0','W'),
				('P333','1','W'),('P333','2','W'),('P333','3','W');

USE HW1_Q3;
select ProjectID
from q3
where statuss = 'c'
group by projectID HAVING count(statuss)='1';

