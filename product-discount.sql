SET SERVEROUTPUT ON
ACCEPT name PROMPT 'Enter Product Name: '
ACCEPT qty PROMPT 'Enter Quantity: '
ACCEPT price PROMPT 'Enter Price per item: '

DECLARE
    pname VARCHAR2(50) := '&name';
    quantity NUMBER := &qty;
    price NUMBER := &price;
    total NUMBER;
    discount NUMBER;
    final_amt NUMBER;
BEGIN
    total := quantity * price;

    IF total > 1000 THEN
        discount := total * 0.10;
    ELSE
        discount := total * 0.05;
    END IF;

    final_amt := total - discount;

    DBMS_OUTPUT.PUT_LINE('Product: ' || pname);
    DBMS_OUTPUT.PUT_LINE('Total: ' || total);
    DBMS_OUTPUT.PUT_LINE('Discount: ' || discount);
    DBMS_OUTPUT.PUT_LINE('Final Amount: ' || final_amt);
END;
/