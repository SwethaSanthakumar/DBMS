declare
    trows number(2);
    BEGIN
    UPDATE patient
    set page = page +1;
    if sql%notfound then
    dbms_output.put_line('No patients selected');
    elsif sql%found then
    trows:=sql%rowcount;
   dbms_output.put_line(trows || 'Patients selected');
   end if;
   end;
  /