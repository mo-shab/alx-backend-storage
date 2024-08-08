-- Assuming the orders table has columns: order_id, item_id, order_quantity

DELIMITER $$

CREATE TRIGGER decrease_item_quantity
AFTER INSERT ON orders
FOR EACH ROW
BEGIN
    UPDATE items
    SET quantity = quantity - NEW.order_quantity
    WHERE id = NEW.item_id;
END$$

DELIMITER ;
