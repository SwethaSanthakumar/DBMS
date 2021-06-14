create or replace procedure deleteRecord(o_id in warehouse.pid%type)
is
begin
delete warehouse where pid=p_id;
end;
/