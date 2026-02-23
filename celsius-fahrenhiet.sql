SET SERVEROUTPUT ON
ACCEPT c PROMPT 'Enter temperature in Celsius: '

DECLARE
    celsius NUMBER := &c;
    fahrenheit NUMBER;
BEGIN
    fahrenheit := (celsius * 9/5) + 32;
    DBMS_OUTPUT.PUT_LINE('Fahrenheit = ' || fahrenheit);
END;
/