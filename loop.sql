SET SERVEROUTPUT ON
ACCEPT n PROMPT 'Enter limit: '

DECLARE
    i NUMBER := 1;
    limit NUMBER := &n;
BEGIN
    DBMS_OUTPUT.PUT_LINE('--- FOR LOOP ---');
    FOR j IN 1..limit LOOP
        DBMS_OUTPUT.PUT_LINE(j);
    END LOOP;

    DBMS_OUTPUT.PUT_LINE('--- WHILE LOOP ---');
    WHILE i <= limit LOOP
        DBMS_OUTPUT.PUT_LINE(i);
        i := i + 1;
    END LOOP;
END;
/