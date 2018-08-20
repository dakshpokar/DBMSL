create table Employee3160(eid number(4), project varchar(10), status varchar(1), deadline date);
create table incentive_list3160(eid number(4), project varchar(10));

DECLARE 
	v_cur_date date;
	v_deadline date;
	v_status varchar(1);
	v_project varchar(10);
	v_eid int;
	cursor emp_cursor is select eid, project, status, deadline from Employee3160;
BEGIN
	v_cur_date := sysdate();
	OPEN emp_cursor;
	LOOP
	FETCH emp_cursor into v_eid, v_project, v_status, v_deadline;
		EXIT WHEN emp_cursor%notfound;
		IF (v_cur_date - v_deadline < 0 and v_status = 'y') THEN
			INSERT INTO incentive_list3160 values(v_eid, v_project);
		END IF;
	END LOOP;
	CLOSE emp_cursor;
END;
/
