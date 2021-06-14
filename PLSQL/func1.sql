CREATE OR REPLACE FUNCTION max_cost 
RETURN number IS
maxcost number(10):=0;
BEGIN
   SELECT max(price) into maxcost FROM product;
   RETURN maxcost;
END;
/
DECLARE
c number(10);
BEGIN
c:=max_cost();
dbms_output.put_line('Product with maximum price is:' ||c);
END;
/

