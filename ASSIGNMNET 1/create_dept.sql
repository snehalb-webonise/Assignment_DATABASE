CREATE TABLE departments(
	id int NOT NULL AUTO_INCREMENT,
    name varchar(50) NOT NULL,
	budget double NOT NULL,
	manager_id int,
	PRIMARY KEY(id),
	FOREIGN KEY (manager_id ) REFERENCES employees(id)
);
