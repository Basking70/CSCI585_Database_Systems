/*  I used MySQL 
Question 5 sulotion number 5
*/
SET SQL_SAFE_UPDATES=0;

CREATE SCHEMA `HW1_Q5_v5`;

CREATE TABLE `HW1_Q5_v5`.`Q5_1` (
  `Chef` VARCHAR(45) NULL,
  `Dish` VARCHAR(45) NULL
  );

CREATE TABLE `HW1_Q5_v5`.`Q5_2` (
  `selected_dishes` VARCHAR(45) NULL
  );
  
use HW1_Q5_v5;
INSERT INTO q5_1 (Chef,Dish)
VALUES 	('A','Mint chocolate brownie'),('B','Upside down pineapple cake'),
				('B','Creme brulee'),('B','Mint chocolate brownie'),
                ('C','Upside down pineapple cake'),('C','Creme brulee'),
                ('D','Apple pie'),('D','Upside down pineapple cake'),('D','Creme brulee'),
                ('E','Apple pie'),('E','Upside down pineapple cake'),('E','Creme brulee'),('E','Bananas Foster');

use HW1_Q5_v5;
INSERT INTO q5_2 (selected_dishes)
VALUES 	('Apple pie'),('Upside down pineapple cake'),
				('Creme brulee');


use HW1_Q5_v5;


CREATE VIEW w1 AS
SELECT chef,dish
FROM  Q5_1;


DELETE FROM w1
      WHERE dish='Upside down pineapple cake';

DELETE FROM w1
      WHERE dish='Creme brulee';
      
DELETE FROM w1
      WHERE dish='Mint chocolate brownie';

select distinct chef 
from w1;

DROP VIEW w1;

