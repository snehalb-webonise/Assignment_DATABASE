create table payment(trans_id int primary key ,
trans_mode varchar(20), 
user_id int ,total_amount int ,trans_status varchar(20),trans_date date,foreign key(user_id) references users(id));
