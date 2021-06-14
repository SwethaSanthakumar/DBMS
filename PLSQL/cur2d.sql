DECLARE
variable :]sal number(10);
variable name varchar2(20);
CURSOR doc is
SELECT dname,salary FROM :doctor;
BEGIN
OPEN doc;
LOOP
FETCH doc into :name,:sal;
EXIT WHEN doc%notfound;
IF sal>100000 THEN
dbms_output.put_line(:name||':Chief Doctor);
ELSE
dbms output.put_line(:name||':Doctor);END IF;
END LOOP;
CLOSE pat;
END;
/