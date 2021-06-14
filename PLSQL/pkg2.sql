CREATE PACKAGE pr_price AS 
   PROCEDURE find_price(p_id product.pid%type); 
END p_price;
/

CREATE OR REPLACE PACKAGE BODY pr_price AS  
   PROCEDURE find_price(p_id product.pid%type) IS 
    p_price product.price%TYPE; 
   BEGIN 
      SELECT price INTO p_price 
      FROM product
      WHERE pid = p_id; 
      dbms_output.put_line('Price: '|| c_sal); 
   END find_price; 
END product_price; 
/
DECLARE 
   code product.pid%type := &product_id; 
BEGIN 
   product_price.find_price(code); 
END; 
/