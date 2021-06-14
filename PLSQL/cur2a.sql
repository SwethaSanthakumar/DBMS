DECLARE
name patient.pname%type;
h patient.pheight%type;
w patient.pweight%type;
bmi float(10);
CURSOR pat is
SELECT pname,pheight,pweight FROM patient;
BEGIN
OPEN pat;
LOOP
FETCH pat into name,h,w;
EXIT WHEN pat%notfound;
bmi:=(w/(h*h))*10000;
IF bmi<18 THEN
dbms_output.put_line(name||':Underweight BMI:'||bmi);
ELSIF bmi<25 THEN
dbms_output.put_line(name||': Normal BMI:'||bmi);
ELSE
dbms_output.put_line(name||': Overweight BMI:'||bmi);
END IF;
END LOOP;
CLOSE pat;
END;
/