SET SERVEROUTPUT ON
ACCEPT cm PROMPT 'Enter length in cm: '

DECLARE
    length_cm NUMBER := &cm;
    inch NUMBER;
    meter NUMBER;
BEGIN
    inch := length_cm / 2.54;
    meter := length_cm / 100;

    DBMS_OUTPUT.PUT_LINE('Inches = ' || inch);
    DBMS_OUTPUT.PUT_LINE('Meters = ' || meter);
END;
/