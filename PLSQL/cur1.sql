DECLARE
CURSOR c IS SELECT pname,price from product order by price DESC;
BEGIN
FOR r in c
LOOP
dbms_output.put_line(r.pname || ' : Rs. ' || r.price);
END LOOP;
END;
/