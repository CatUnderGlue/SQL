CREATE DATABASE skypro;
\с skypro;

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

SELECT *
FROM employee;

UPDATE employee
SET first_name = 'Dmitriy',
    last_name  = 'Kuplinov',
    gender     = 'Male',
    age        = '34'
WHERE last_name = 'Pekhtelev';

SELECT *
FROM employee;

DELETE
FROM employee
WHERE last_name = 'Syrov';

SELECT *
FROM employee;