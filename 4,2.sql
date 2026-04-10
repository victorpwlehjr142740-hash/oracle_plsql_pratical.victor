SET SERVEROUTPUT ON

CREATE OR REPLACE PROCEDURE inc_salary (
    dept_no IN NUMBER,
    percent IN NUMBER
) IS
BEGIN
    UPDATE emp
    SET salary = salary + (salary * percent / 100)
    WHERE deptno = dept_no;

    DBMS_OUTPUT.PUT_LINE('Salary updated successfully');
END;
/

-- Calling
BEGIN
    inc_salary(10, 10); -- 10% increase for department 10
END;