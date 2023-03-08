CREATE DATABASE skypro;

CREATE TABLE employee
(
    id         BIGSERIAL   NOT NULL PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name  VARCHAR(50) NOT NULL,
    gender     VARCHAR(6)  NOT NULL,
    age        INT         NOT NULL
);

INSERT INTO employee (first_name, last_name, gender, age)
VALUES ('Maksim', 'Syrov', 'Male', 23);

INSERT INTO employee (first_name, last_name, gender, age)
VALUES ('Dmitriy', 'Osintsev', 'Male', 26);

INSERT INTO employee (first_name, last_name, gender, age)
VALUES ('Evgeny', 'Pekhtelev', 'Male', 28);

INSERT INTO employee (first_name, last_name, gender, age)
VALUES ('Oleg', 'Bocharov', 'Male', 60);

INSERT INTO employee (first_name, last_name, gender, age)
VALUES ('Roman', 'Filchenkov', 'Male', 35);

SELECT first_name AS Имя,
       last_name  AS Фамилия
FROM employee;

SELECT *
FROM employee
WHERE age < 30
   OR age > 50;

SELECT *
FROM employee
WHERE age BETWEEN 30 AND 50;

SELECT *
FROM employee
ORDER BY last_name DESC;

SELECT *
FROM employee
WHERE length(first_name) > 4;

UPDATE employee
SET first_name = 'Maksim'
WHERE last_name = 'Bocharov';
UPDATE employee
SET first_name = 'Evgeny'
WHERE last_name = 'Filchenkov';

SELECT first_name AS Имя,
       SUM(age)   AS Суммарный_возраст
FROM employee
GROUP BY Имя;

SELECT first_name AS Имя,
       MIN(age)   AS Минимальный_возраст
FROM employee
GROUP BY Имя;

SELECT first_name AS Имя,
       MAX(age)   AS Максимальный_возраст
FROM employee
GROUP BY Имя
HAVING COUNT(first_name) > 1
ORDER BY Максимальный_возраст;