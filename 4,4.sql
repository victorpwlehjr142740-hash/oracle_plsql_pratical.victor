SET SERVEROUTPUT ON

CREATE OR REPLACE FUNCTION square_num (n NUMBER)
RETURN NUMBER IS
BEGIN
    RETURN n * n;
END;
/

-- Calling
BEGIN
    DBMS_OUTPUT.PUT_LINE('Square: ' || square_num(5));
END;
/

-- Command line
SELECT square_num(5) FROM dual;CREATE TABLE account (
    acno NUMBER PRIMARY KEY,
    cname VARCHAR2(50),
    bname VARCHAR2(50),
    balance NUMBER
);