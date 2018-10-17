CREATE TABLE works(
	employee_id int NOT NULL,
	department_id int NOT NULL,
	pct_time int,
	FOREIGN KEY (employee_id) REFERENCES employees(id),
	FOREIGN KEY (department_id) REFERENCES departments(id)
);