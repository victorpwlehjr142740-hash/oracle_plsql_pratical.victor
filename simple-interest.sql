SET SERVEROUTPUT ON
ACCEPT p PROMPT 'Enter Principal: '
ACCEPT r PROMPT 'Enter Rate: '
ACCEPT t PROMPT 'Enter Time (years): '

DECLARE
    principal NUMBER := &p;
    rate NUMBER := &r;
    time NUMBER := &t;
    si NUMBER;
BEGIN
    si := (principal * rate * time) / 100;
    DBMS_OUTPUT.PUT_LINE('Simple Interest = ' || si);
END;
/                   