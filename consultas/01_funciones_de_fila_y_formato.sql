-- Requerimiento 1
SELECT employee_id AS "EMPLEADO",
       department_id AS "DEPARTAMENTO",
       salary AS "SALARIO ACTUAL",
       ROUND(salary * 0.332) AS "REAJUSTE",
       ROUND(salary + (salary * 0.332)) AS "SALARIO REAJUSTADO"
FROM employees
WHERE salary < 12000
ORDER BY department_id ASC, "SALARIO REAJUSTADO" DESC;

-- Requerimiento 2
SELECT 'El empleado ' || INITCAP(last_name) || 
       ' posee un salario mensual de  ' || TO_CHAR(salary, '$999,999.00') ||
       ' pero su sueño es ganar ' || TO_CHAR(salary * 3, '$999,999.00') AS "Salario Soñado"
FROM employees
WHERE manager_id IS NOT NULL;

-- Requerimiento 3
SELECT employee_id AS "ID_EMPLEADO",
       TO_CHAR(hire_date, 'DD/MM/YY') AS "FECHA_CONTRATO",
       salary AS "SALARIO",
       FLOOR(MONTHS_BETWEEN(SYSDATE, hire_date) / 12) AS "ANNOS_CONTRATADO",
       ROUND(salary * (FLOOR(MONTHS_BETWEEN(SYSDATE, hire_date) / 12) / 100)) AS "AUMENTO"
FROM employees
WHERE salary BETWEEN 1000 AND 5000
ORDER BY "ANNOS_CONTRATADO" DESC;

--Requerimiento 4
SELECT INITCAP(first_name) || ' ' || INITCAP(last_name) AS "NOMBRE COMPLETO",
       employee_id AS "CODIGO EMPLEADO",
       TO_CHAR(hire_date, 'fmDAY DD "de" Month "del" YYYY', 'NLS_DATE_LANGUAGE=SPANISH') AS "FECHA DE CONTRATO",
       email || '@hr.cl' AS "CORREO ELECTRONICO",
       TO_CHAR(salary, '$9,999') AS "salario"
FROM employees
WHERE hire_date < TO_DATE('22-05-2005', 'DD-MM-YYYY')
  AND salary < 10000;