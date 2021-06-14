create or replace procedure "UPDATECUSTOMER"
is
begin
update customer set email='swetha.py09@pec.edu' where cid=101;
dbms_output.put_line('Customer Updated');
end;
/