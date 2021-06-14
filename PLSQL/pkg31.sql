CREATE OR REPLACE PACKAGE BODY pkg_whouse IS
PROCEDURE updateRecord(w_location warehouse.wlocation%type) IS
BEGIN
UPDATE warehouse set wlocation='Row 5 Slot 7' where wid=w_id;
IF  SQL%FOUND THEN
dbms_output.put_line('RECORD UPDATED');
ELSE
dbms_output.put_line('RECORD NOT UPDATED');
END IF;
END updateRecord;

PROCEDURE deleteRecord(w_id warehouse.wid%type) IS
		BEGIN
			DELETE from warehouse where wid=w_id;
			IF SQL%FOUND THEN
                            dbms_output.put_line('RECORD DELETED');
                        ELSE
				dbms_output.put_line('RECORD NOT DELETED');
			END IF;
		END deleteRecord;
END pkg_whouse;
/