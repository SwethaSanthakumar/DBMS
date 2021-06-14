Declare
a student.sno%type;
b student.sname%type;
c student.sal%type;
BEGIN 
   select sno,sname,sal into a,b,c from student where sage=42;
   dbms_output.put_line(a ||':'|| c); 
   if a=1 then
      c:=c+5000;
   else 
      c:=c+10000;
   
   end if; 
   dbms_output.put_line(a ||':'|| c); 
END; 
/