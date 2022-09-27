

--1) Numero de Palabras en Department_Name
SELECT Department_name,
(LENGTH(Department_name)-LENGTH(REPlace(Department_name,1,'')))+1 as NumeroPalabras
FROM departments;

--2) Vocales remplazadas por puntos en first_name 
SELECT first_name, REGEXP_REPLACE(first_name,'[aeiou]' , '.', 1, 0, 'i')
FROM employees;

--3) Dos vocales juntas pero diferentes en Last name   
SELECT employee_id, last_name 
FROM employees
WHERE regexp_like(last_name, '([aeiou][aeiou])', 'i') and not regexp_like(last_name, '(aa|ee|ii|oo|uu)', 'i');

--4) Mostrar First_name con vocales en la primera y 4ta posición
SELECT first_name
FROM employees
WHERE regexp_like(Lower(first_name), '^[aeiou].{2}[aeiou]');



-- 5)Mostar la dirreccion de la calle en Locations que inicien con letra y terminen con número
SELECT Street_address
From Locations
WHERE regexp_like(STREET_ADDRESS, '^[[:alpha:]].*[[:digit:]]$');
