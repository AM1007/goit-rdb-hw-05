USE orders_db;

DROP FUNCTION IF EXISTS divide_floats;

DELIMITER //
CREATE FUNCTION divide_floats(num1 FLOAT, num2 FLOAT)
RETURNS FLOAT
DETERMINISTIC
BEGIN
    RETURN num1 / num2;
END //
DELIMITER ;

SELECT order_id, divide_floats(quantity, 2) AS half_quantity FROM order_details;