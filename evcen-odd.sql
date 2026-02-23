SET SERVEROUTPUT ON
ACCEPT n PROMPT 'Enter limit: '

DECLARE
    num NUMBER := &n;
BEGIN
    FOR i IN 1..num LOOP
        IF MOD(i,2) = 0 THEN
            DBMS_OUTPUT.PUT_LINE(i || ' is Even');
        ELSE
            DBMS_OUTPUT.PUT_LINE(i || ' is Odd');
        END IF;
    END LOOP;
END;
/