DECLARE
total_rows number(2);
BEGIN
UPDATE treatment
SET fee=fee+500;
IF sql%notfound THEN
dbms_output.put_line('No records updated');
ELSIF sql%found THEN
total_rows:= sql%rowcount;
dbms_output.put_line(total_rows || '  Records updated');
END IF;
END;
/