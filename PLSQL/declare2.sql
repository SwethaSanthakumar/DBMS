Declare
a student.sno%type;
b student.sname%type;
BEGIN 
   select sno,sname into a,b from student
   where sage=39; 
   dbms_output.put_line('Student id ='|| a); 
   dbms_output.put_line('Student name='|| b); 
END; 
/