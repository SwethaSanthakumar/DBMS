DECLARE
c number;
BEGIN
c:=max_cost();
dbms_output.put_line('Product with maximum price is:' ||c);
END;
/
