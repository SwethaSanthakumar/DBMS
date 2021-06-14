create or replace package hospi
as
procedure patient_count;
procedure doctor_count;
end hospi;
/
create or replace package body hospi as
procedure patient_count
as
b number;
begin
select count(pid) into b from patient;
dbms_output.put_line('Total number of patients in the hospital is  ' || b);
end;
procedure doctor_count
as
c number;
begin
select count(did) into c from doctor;
dbms_output.put_line('Total number of doctors in the hospital is  ' || c);
end;
end hospi;
/