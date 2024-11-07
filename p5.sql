DROP FUNCTION IF EXISTS DevidedBy;
DELIMITER //

CREATE FUNCTION DevidedBy(value FLOAT, devider FLOAT) RETURNS FLOAT DETERMINISTIC NO SQL
BEGIN
	DECLARE result FLOAT;
    SET result = value / devider;
    RETURN result;
END //

DELIMITER ;
	
SELECT order_id, products.name, quantity, DevidedBy(quantity, 2) AS updated_quantity 
FROM order_details 
	INNER JOIN products on products.id = product_id;