-- REQUERIMIENTO 1
SELECT 
    e.first_name || ' ' || e.last_name AS "NOMBRE EMPLEADO",
    d.department_name AS "NOMBRE DEPARTAMENTO",
    j.job_title AS "NOMBRE CARGO"
FROM employees e
JOIN departments d ON e.department_id = d.department_id
JOIN jobs j ON e.job_id = j.job_id
WHERE e.salary IN (
    SELECT salary 
    FROM employees 
    WHERE last_name = 'Smith'
)
ORDER BY e.last_name DESC;

-- REQUERIMIENTO 2
SELECT e.employee_id, 
       e.first_name || ' ' || e.last_name AS nombre_completo,
       j.job_title,
       e.salary
FROM employees e JOIN jobs j
    ON (e.job_id = j.job_id)
WHERE e.department_id = 110;
CREATE OR REPLACE VIEW V_EMPLEADOS_110
    (ID_EMPLEADO, NOMBRE_COMPLETO, NOMBRE_TRABAJO, SALARIO)
AS
SELECT e.employee_id,
       e.first_name || ' ' || e.last_name,
       j.job_title,
       TO_CHAR(e.salary, '$999G999')
FROM employees e JOIN jobs j
    ON (e.job_id = j.job_id)
WHERE e.department_id = 110;

--REQUERIMIENTO 3
SELECT ROUND(AVG(salary)) AS "SALARIO PROMEDIO",
       MIN(salary)        AS "SALARIO MINIMO",
       MAX(salary)        AS "SALARIO MAXIMO"
FROM employees
WHERE department_id = 50
  AND commission_pct IS NULL;
  
-- REQUERIMIENTO 4
SELECT d.department_name AS "NOMBRE DEPARTAMENTO",
       CASE 
           WHEN e.employee_id IS NULL THEN 'VACANTE'
           ELSE e.first_name || ' ' || e.last_name
       END AS "GERENTE DEL DEPARTAMENTO"
FROM departments d LEFT OUTER JOIN employees e
    ON (d.manager_id = e.employee_id)
ORDER BY d.department_name;