CREATE OR REPLACE TRIGGER insert_order
AFTER INSERT ON orders
BEGIN
   dbms_output.put_line('New Order inserted');
END;
/
