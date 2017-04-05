/* I used MySQL 
Question 5 sulotion number 1
*/
CREATE SCHEMA `HW1_Q5_v1`;

CREATE TABLE `HW1_Q5_v1`.`Q5_1` (
  `Chef` VARCHAR(45) NULL,
  `Dish` VARCHAR(45) NULL
  );

CREATE TABLE `HW1_Q5_v1`.`Q5_2` (
  `selected_dishes` VARCHAR(45) NULL
  );
use HW1_Q5_v1;
INSERT INTO q5_1 (Chef,Dish)
VALUES 	('A','Mint chocolate brownie'),('B','Upside down pineapple cake'),
				('B','Creme brulee'),('B','Mint chocolate brownie'),
                ('C','Upside down pineapple cake'),('C','Creme brulee'),
                ('D','Apple pie'),('D','Upside down pineapple cake'),('D','Creme brulee'),
                ('E','Apple pie'),('E','Upside down pineapple cake'),('E','Creme brulee'),('E','Bananas Foster');

use HW1_Q5_v1;
INSERT INTO q5_2 (selected_dishes)
VALUES 	('Apple pie'),('Upside down pineapple cake'),
				('Creme brulee');



use HW1_Q5_v1;
select chef 
from q5_1
where dish in ('Creme brulee','Apple pie','Upside down pineapple cake') group by chef having count(*) = '3';
