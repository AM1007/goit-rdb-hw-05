USE orders_db;

 SELECT * FROM order_details od
 WHERE (SELECT shipper_id FROM orders o WHERE o.id = od.order_id) = 3;