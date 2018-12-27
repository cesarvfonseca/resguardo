SELECT pe.employee,pe.emp_name,pe.em_id03,pe.emp_status,aw.password,aw.counter_login,aw.estado
		FROM PJEMPLOY pe
		INNER JOIN P1ACCESOWEB aw
		ON pe.employee = aw.employee
		WHERE aw.employee = '08444'


SELECT * FROM PJEMPLOY where employee = '08444'
SELECT * FROM P1ACCESOWEB WHERE employee = '08444'
SELECT defaultdeptid, * FROM userinfo WHERE RIGHT(badgenumber,5) = '00167'
SELECT * FROM	departments --DEPARTAMENTOS

SELECT * FROM rh_empelados2

SELECT pe.employee Anomina, ui.badgenumber Bnomina,pe.emp_name, ui.name,ui.lastname,dp.code,dp.deptname,aw.password
FROM 
PJEMPLOY pe
RIGHT JOIN P1ACCESOWEB aw
ON pe.employee = aw.employee
INNER JOIN userinfo ui
ON RIGHT(ui.badgenumber, 5) = aw.employee
INNER JOIN departments dp
ON ui.defaultdeptid = dp.deptid
WHERE aw.employee = '00167'