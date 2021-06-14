CREATE OR REPLACE TRIGGER patientexercise
BEFORE UPDATE ON PATIENT
FOR EACH ROW
WHEN(NEW.PID>0)
DECLARE
weightdiff NUMBER(20);
BEGIN
weightdiff:=:NEW.pweight -:OLD.pweight;
dbms_output.put_line('At time of admission'||:OLD.pweight):
dbms_output.put_line('After admission:'||:NEW.pweight);
dbms_output.put_line('Increment in weight is of:"'||weightdiff);
END;
/

DECLARE
total_rows number(2);
BEGIN
UPDATE patient
SET pweight = 54 where pid=103;
IF sql%notfound THEN
dbms_output.put_line('No weight updated');
ELSIF sql%found THEN
total_rows := sql%rowcount;
dbms_output.put_line( total_rows|| 'weight updated');
END IF;
END;
/
