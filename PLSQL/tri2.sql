CREATE OR REPLACE TRIGGER display_stock_changes 
BEFORE DELETE OR INSERT OR UPDATE ON inventories 
FOR EACH ROW 
WHEN (NEW.pid > 0) 
DECLARE 
   stock_diff number; 
BEGIN 
   stock_diff := :NEW.stock  - :OLD.stock; 
   dbms_output.put_line('Old Stock : ' || :OLD.stock); 
   dbms_output.put_line('New Stock : ' || :NEW.stock); 
   dbms_output.put_line('Difference in Stock : ' || stock_diff); 
END; 
/
