create table varients(id int(10) primary key,product_id int, 
name varchar(20),color varchar(10),size varchar(10),price int(10), 
foreign key(product_id) references products(id));