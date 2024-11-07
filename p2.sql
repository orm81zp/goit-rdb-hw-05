SET @shipper_id = 3;
SELECT * FROM order_details WHERE order_id IN (SELECT id FROM orders WHERE shipper_id = @shipper_id);