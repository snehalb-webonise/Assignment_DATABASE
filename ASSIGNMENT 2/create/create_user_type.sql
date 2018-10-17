create table user_type(id int primary key,type varchar(10),
user_id int,foreign key(user_id) references users(id));