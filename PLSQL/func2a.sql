create or replace function bmicalc(n1 in number, n2 in number)
return float
is
bmi float(8);
begin
bmi :=(n1/(n2*n2))*10000;
return bmi;
end;
/
DECLARE
h number;
W number;
patientbmi float;
BEGIN
select pheight,pweight into h,w
from patient where pid=104;
patientbmi:=bmicalc(w,h);
dbms_output.put_line('Patient BMI is: '||patientbmi);
END;
/
