USE resguardo;
CREATE TABLE MAINT(
    	id INT AUTO_INCREMENT PRIMARY KEY,
    	code VARCHAR(10),
    	scheduled_date date,
    	accomplished_date date,
    	maint_status INT(1),
    	maint_notes TEXT,
    	maint_user_notes TEXT,
    	crtd_time DATETIME DEFAULT CURRENT_TIMESTAMP,
    	update_time DATETIME ON UPDATE CURRENT_TIMESTAMP,
    	uptade_user VARCHAR(15)
    ) ENGINE = INNODBNNODB

	SELECT r.code,r.employee_name FROM `maint` m RIGHT JOIN `registry` r ON m.code = r.code WHERE r.