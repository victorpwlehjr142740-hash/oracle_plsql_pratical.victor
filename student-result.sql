SET SERVEROUTPUT ON
ACCEPT name PROMPT 'Enter Student Name: '
ACCEPT m1 PROMPT 'Enter Marks 1: '
ACCEPT m2 PROMPT 'Enter Marks 2: '
ACCEPT m3 PROMPT 'Enter Marks 3: '

DECLARE
    sname VARCHAR2(50) := '&name';
    m1 NUMBER := &m1;
    m2 NUMBER := &m2;
    m3 NUMBER := &m3;
    total NUMBER;
    per NUMBER;
    grade VARCHAR2(2);
BEGIN
    total := m1 + m2 + m3;
    per := total / 3;

    IF per >= 75 THEN
        grade := 'A';
    ELSIF per >= 60 THEN
        grade := 'B';
    ELSIF per >= 50 THEN
        grade := 'C';
    ELSE
        grade := 'F';
    END IF;

    DBMS_OUTPUT.PUT_LINE('Name: ' || sname);
    DBMS_OUTPUT.PUT_LINE('Total: ' || total);
    DBMS_OUTPUT.PUT_LINE('Percentage: ' || per);
    DBMS_OUTPUT.PUT_LINE('Grade: ' || grade);
END;
/