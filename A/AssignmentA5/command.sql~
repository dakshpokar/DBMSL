DECLARE 
v_cust_id number;
v_diff number;
v_cur_date date;
v_id_user_date date;
v_status number;
ex_invalid EXCEPTION;
BEGIN
v_cust_id := &cust_id;
v_cur_date := sysdate();

select dop into v_id_user_date from Customer3160 where cust_id = v_cust_id;
select status into v_status from Customer3160 where cust_id = v_cust_id;
v_diff := v_cur_date - v_id_user_date;
dbms_output.put_line(v_diff);
if(v_status = 1) then
	raise ex_invalid;
elsif(v_diff >= 15 and v_diff < 30) then
	dbms_output.put_line('Fine is: ' || v_diff * 5);
	insert into Fine3160 values(v_cust_id, v_cur_date, v_diff * 5);
elsif(v_diff >= 30) then
	dbms_output.put_line('Fine is: ' || v_diff * 50);
	insert into Fine3160 values(v_cust_id, v_cur_date, v_diff * 50);
elsif(v_diff < 15) then
	dbms_output.put_line('No fine');
end if;

exception 
when no_data_found then
	dbms_output.put_line('No such data');
when ex_invalid then
	dbms_output.put_line('Due already paid.');
END;

