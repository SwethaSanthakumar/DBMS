create or replace PROCEDURE deleteRecord(ware_id warehouse.wid%type) 
IS
		BEGIN
			DELETE from warehouse where wid=ware_id;
			IF SQL%FOUND THEN
                            dbms_output.put_line('RECORD DELETED');
                        ELSE
				dbms_output.put_line('RECORD NOT DELETED');
			END IF;
		END deleteRecord;
end;
/
