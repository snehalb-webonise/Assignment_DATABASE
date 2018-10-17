create table orders(id int NOT NULL,
user_id int,
 total double,
delivery_address varchar(60),
discount_id int,
PRIMARY KEY(id),
FOREIGN KEY (discount_id) REFERENCES discounts(id),
FOREIGN KEY (user_id) REFERENCES users(id));