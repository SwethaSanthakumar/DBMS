CREATE OR REPLACE PACKAGE pkg_whouse IS
PROCEDURE  updateRecord(w_location warehouse.wlocation%type);
PROCEDURE  deleteRecord(w_id warehouse.wid%type);

END pkg_whouse;
/


