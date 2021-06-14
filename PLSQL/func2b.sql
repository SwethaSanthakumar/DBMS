create or replace function calc(n1 in number, n2 in number)
return float
is
inc float(8);
begin
inc :=n1*(1+(n2/100));
return inc;
end;
/
DECLARE
sal number;
increment float;
BEGIN
select salary into sal
from doctor where did=201;
increment:=calc(sal,10);
dbms_output.put_line('Doctors salary after 10 percent increment is: '||increment);
END;
/
