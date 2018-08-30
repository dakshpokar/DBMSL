CREATE OR REPLACE FUNCTION get_Name(id IN number) 
RETURN varchar2 is
	v_name varchar2(100) := '';
BEGIN
	select name into v_name from Custom where cust_id = id;
	return v_name;
END;
/
CREATE OR REPLACE PROCEDURE proc_Grade(id IN number) as
	v_name varchar2(100);
	v_amt int;
	v_class varchar2(100);
	no_need EXCEPTION
BEGIN
	select total_purchase into v_amt from Custom where cust_id = id;
	v_name := get_Name(id);
	if (v_amt >= 10000 and v_amt <=20000) then
		dbms_output.put_line('Platinum Customer');
		v_class := 'Platinum';

	elsif (v_amt >=5000 and v_amt <=9999) then
		dbms_output.put_line('Gold Customer');
		v_class := 'Gold';

	elsif (v_amt <= 4999 and v_amt >=2000) then
		dbms_output.put_line('Silver Customer');
		v_class := 'Silver';
	else
		raise no_need;
	end if;
	insert into Cat values(id, 'name', 'v_class');
	EXCEPTION 
	WHEN no_need THEN
		dbms_output.put_line('No Category');
END;
/


