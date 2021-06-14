Declare
a student%rowtype;

BEGIN 
   select * into a from student
   where sage=39; 
   dbms_output.put_line(a.sno||'|'||a.sname||'|'||a.sdept ||'|'||a.sage); 
END; 
/