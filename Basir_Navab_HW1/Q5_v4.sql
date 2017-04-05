/*  I used MySQL 
Question 5 sulotion number 4
*/
CREATE SCHEMA `HW1_Q5_v4`;

CREATE TABLE `HW1_Q5_v4`.`Q5_1` (
  `Chef` VARCHAR(45) NULL,
  `Dish` VARCHAR(45) NULL
  );

CREATE TABLE `HW1_Q5_v4`.`Q5_2` (
  `selected_dishes` VARCHAR(45) NULL
  );
  
use HW1_Q5_v4;
INSERT INTO q5_1 (Chef,Dish)
VALUES 	('A','Mint chocolate brownie'),('B','Upside down pineapple cake'),
				('B','Creme brulee'),('B','Mint chocolate brownie'),
                ('C','Upside down pineapple cake'),('C','Creme brulee'),
                ('D','Apple pie'),('D','Upside down pineapple cake'),('D','Creme brulee'),
                ('E','Apple pie'),('E','Upside down pineapple cake'),('E','Creme brulee'),('E','Bananas Foster');


use HW1_Q5_v4;
INSERT INTO q5_2 (selected_dishes)
VALUES 	('Apple pie'),('Upside down pineapple cake'),
				('Creme brulee');



use HW1_Q5_v4;

CREATE VIEW w1 AS
SELECT chef
FROM Q5_1
WHERE dish='Upside down pineapple cake';

CREATE VIEW w2 AS
SELECT chef
FROM Q5_1
WHERE dish='Creme brulee';


CREATE VIEW w3 AS
SELECT chef
FROM Q5_1
WHERE dish='Apple pie';

SELECT w1.chef value
FROM w1
    INNER JOIN w2
        ON w1.chef=w2.chef
    INNER JOIN w3
        ON w2.chef=w3.chef;

DROP VIEW w1;
DROP VIEW w2;
DROP VIEW w3;
