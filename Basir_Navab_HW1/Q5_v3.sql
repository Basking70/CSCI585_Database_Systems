/*  I used MySQL 
Question 5 sulotion number 3
*/
CREATE SCHEMA `HW1_Q5_v3`;

CREATE TABLE `HW1_Q5_v3`.`Q5_1` (
  `Chef` VARCHAR(45) NULL,
  `Dish` VARCHAR(45) NULL
  );

CREATE TABLE `HW1_Q5_v3`.`Q5_2` (
  `selected_dishes` VARCHAR(45) NULL
  );
use HW1_Q5_v3;
INSERT INTO q5_1 (Chef,Dish)
VALUES 	('A','Mint chocolate brownie'),('B','Upside down pineapple cake'),
				('B','Creme brulee'),('B','Mint chocolate brownie'),
                ('C','Upside down pineapple cake'),('C','Creme brulee'),
                ('D','Apple pie'),('D','Upside down pineapple cake'),('D','Creme brulee'),
                ('E','Apple pie'),('E','Upside down pineapple cake'),('E','Creme brulee'),('E','Bananas Foster');

use HW1_Q5_v3;
INSERT INTO q5_2 (selected_dishes)
VALUES 	('Apple pie'),('Upside down pineapple cake'),
				('Creme brulee');



use HW1_Q5_v3;

SELECT DISTINCT x.chef FROM q5_1 AS x
WHERE NOT EXISTS
	( SELECT * FROM q5_2  y
              WHERE NOT EXISTS
             ( SELECT * FROM q5_1 AS z
                 WHERE (z.chef=x.chef) AND
                 (z.dish=y.selected_dishes)) );