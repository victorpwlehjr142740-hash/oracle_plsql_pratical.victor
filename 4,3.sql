SET SERVEROUTPUT ON

CREATE OR REPLACE PROCEDURE find_employee (
    emp_id IN NUMBER,
    emp_name OUT VARCHAR2
) IS
BEGIN
    SELECT ename INTO emp_name
    FROM emp
    WHERE empno = emp_id;

EXCEPTION
    WHEN NO_DATA_FOUND THEN
        emp_name := 'Employee Not Found';
END;
/

-- Calling
DECLARE
    name VARCHAR2(50);
BEGIN
    find_employee(101, name);
    DBMS_OUTPUT.PUT_LINE(name);
END;
/