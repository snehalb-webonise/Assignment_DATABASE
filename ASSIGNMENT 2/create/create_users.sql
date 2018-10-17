create table users(id int(10) primary key ,name char(20),
email varchar(20) not null unique,password varchar(20) check (password > 8));