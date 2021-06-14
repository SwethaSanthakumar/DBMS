CREATE OR REPLACE PACKAGE pkg_warehouse IS
	PROCEDURE  updateRecord;
	PROCEDURE  deleteRecord(o_id orders.oid%type);
		
END pkg_warehouse;
/
CREATE OR REPLACE PACKAGE BODY pkg_warehouse IS
	PROCEDURE updateRecord IS
		BEGIN
			UPDATE warehouse set wlocation='Row 5 Slot 6'  where wid=301;
			IF  SQL%FOUND THEN
				dbms_output.put_line('RECORD UPDATED');
			ELSE
				dbms_output.put_line('RECORD NOT UPDATED');
			END IF;
		END updateRecord;

	PROCEDURE deleteRecord(o_id orders.oid%type) 
IS
		BEGIN
			DELETE from orders where oid=o_id;
			IF SQL%FOUND THEN
                            dbms_output.put_line('RECORD DELETED');
                        ELSE
				dbms_output.put_line('RECORD NOT DELETED');
			END IF;
		END deleteRecord;
END pkg_warehouse;
/
