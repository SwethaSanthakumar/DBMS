create or replace procedure patient_fee
(id in treatment.pid'%TYPE)
is
cost treatment.feeTYPE;
begin
select fee into cost from treatment where pid=id;
dbms_output.put_line ("The patient fee is '|| cost) ;
end;
/