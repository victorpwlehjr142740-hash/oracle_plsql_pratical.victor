SET SERVEROUTPUT ON

CREATE OR REPLACE PROCEDURE show_message IS
BEGIN
    DBMS_OUTPUT.PUT_LINE('Hello! This is a user-defined message.');
END;
/

-- Calling using PL/SQL block
BEGIN
    show_message;
END;
/

-- Calling using command line
EXEC show_message;