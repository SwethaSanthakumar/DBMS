DECLARE
total_rows number(2);
BEGIN
UPDATE inventories
SET stock=stock+10;
IF sql%notfound THEN
dbms_output.put_line('No records updated');
ELSIF sql%found THEN
total_rows:= sql%rowcount;
dbms_output.put_line(total_rows || '  Records updates');
END IF;
END;
/