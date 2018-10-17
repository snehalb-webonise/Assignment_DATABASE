DELIMITER //
create PROCEDURE payment_proc1(IN user_id int,IN tran_id int,IN tran_mode varchar(20),IN tran_stat varchar(20))
BEGIN
   	DECLARE product_cost int;
   	DECLARE discount int;

    select count(user_id) as product_count from cart;
    select amount into discount from discounts where type ="flat";
    select sum(cost)*discount/100 into product_cost from cart;
   
    insert into payment(trans_id,trans_mode,user_id,total_amount,trans_status,trans_date)
    values(tran_id,tran_mode,user_id,product_cost,tran_stat,current_date());
    
    call order_proc(user_id,300,"hjgsj",total,700);
     END //
     
DELIMITER ;



DELIMITER //

CREATE PROCEDURE order_proc(IN user_id int,IN ord_id int,IN address varchar(255), IN total int,IN dis_id int)
BEGIN
    
 insert into orders(id,user_id,total,delivery_address,discount_id)values(ord_id,user_id,total,address,dis_id);   
 end //

     