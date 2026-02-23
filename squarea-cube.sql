SET SERVEROUTPUT ON
ACCEPT n PROMPT 'Enter a number: '

DECLARE
    num NUMBER := &n;
BEGIN
    DBMS_OUTPUT.PUT_LINE('Square = ' || (num*num));
    DBMS_OUTPUT.PUT_LINE('Cube = ' || (num*num*num));
END;
/