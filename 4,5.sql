SET SERVEROUTPUT ON

CREATE TABLE account (
    acno NUMBER PRIMARY KEY,
    cname VARCHAR2(50),
    bname VARCHAR2(50),
    balance NUMBER
);

--creating function

CREATE OR REPLACE FUNCTION get_balance (acc_no NUMBER)
RETURN NUMBER IS
    bal NUMBER;
BEGIN
    SELECT balance INTO bal
    FROM account
    WHERE acno = acc_no;

    RETURN bal;

EXCEPTION
    WHEN NO_DATA_FOUND THEN
        RETURN -1;
END;
/

-- Calling
SELECT get_balance(101) FROM dual;