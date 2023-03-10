CREATE TABLE city
(
    city_id   BIGSERIAL   NOT NULL PRIMARY KEY,
    city_name VARCHAR(50) NOT NULL
);

ALTER TABLE employee
    ADD COLUMN city_id BIGINT;

ALTER TABLE employee
    ADD FOREIGN KEY (city_id)
        REFERENCES city (city_id);

INSERT INTO city (city_name)
VALUES ('Novotroitsk'),
       ('Yoshkar-ola'),
       ('Moscow'),
       ('Yekaterinburg'),
       ('Orsk'),
       ('Saint Petersburg');

UPDATE employee
SET city_id=1
WHERE last_name = 'Syrov';

UPDATE employee
SET city_id=3
WHERE last_name = 'Osintsev';

UPDATE employee
SET city_id=2
WHERE last_name = 'Pekhtelev';

UPDATE employee
SET city_id=4
WHERE last_name = 'Filchenkov';

UPDATE employee
SET city_id=5
WHERE last_name = 'Bocharov';

SELECT first_name AS Имя,
       last_name  AS Фамилия,
       city_name  AS Город_проживания
FROM employee
         INNER JOIN city on employee.city_id = city.city_id;

SELECT city_name  AS Город_проживания,
       first_name AS Имя,
       last_name  AS Фамилия
FROM city
         LEFT JOIN employee on city.city_id = employee.city_id;

SELECT first_name AS Имя,
       city_name  AS Город_проживания
FROM employee
         FULL JOIN city on employee.city_id = city.city_id;

SELECT first_name AS Имя,
       city_name AS Город_проживания
FROM employee
CROSS JOIN city;