create table cart(id int primary key,user_id int, product_id int,varient_id int,
quantity int,cost int, 
foreign key(user_id) references users(id), 
foreign key(product_id) references products(id) ,
foreign key(varient_id) references varients(id));