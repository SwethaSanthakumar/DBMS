create or replace procedure "INSERTCUSTOMER"
(cid IN NUMBER,
cname IN VARCHAR2,
caddress IN VARCHAR2,
email IN VARCHAR2)
is
begin
insert into customer values(cid,cname,caddress,email);
dbms_output.put_line('New Customer added');
END;
/