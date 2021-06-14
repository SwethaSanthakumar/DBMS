create or replace function calc(n1 in number, n2 in number)
return number
is
cost number(10);
begin
cost:= (n1-n2);
return cost;
end;
/
DECLARE
p number;
d number;
productprice number;
BEGIN
select price,discount into p,d
from product where pid=203;
productprice:=calc(p,d);
dbms_output.put_line('Product price is: ' || productprice);
END;
/