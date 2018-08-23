create table Employee3160(eid number(4), project varchar(10), status varchar(1), deadline date);
create table incentive_list3160(eid number(4), project varchar(10));
create table pending_list3160(eid number(4), project varchar(10), deadline date);

DECLARE 
	v_cur_date date;
	v_deadline date;
	v_status varchar(1);
	v_project varchar(10);
	v_eid int;
	cursor emp_cursor(max_id number) is select eid, project, status, deadline from Employee3160 where eid<max_id;
BEGIN
	v_cur_date := sysdate();
	OPEN emp_cursor(5);
	LOOP
	FETCH emp_cursor into v_eid, v_project, v_status, v_deadline;
		EXIT WHEN emp_cursor%notfound;
		IF (v_cur_date - v_deadline < 0 and v_status = 'd') THEN
			INSERT INTO incentive_list3160 values(v_eid, v_project);
		END IF;
	END LOOP;

	CLOSE emp_cursor;
	
	FOR emp in emp_cursor(5)
	LOOP
		IF emp.status = 'p' THEN
			insert into pending_list3160 values(emp.eid, emp.project, emp.deadline);
		END IF;
	END LOOP;
	
END;
/


OUTPUT:


SQL> 
SQL> select * from pending_list3160;

       EID PROJECT    DEADLINE
---------- ---------- ------------------
	 1 DL	      31-AUG-18
	 3 DL3	      12-AUG-18

SQL> select * from incentive_list3160;

       EID PROJECT
---------- ----------
	 2 DL2
	 2 DL2
	 2 DL2

SQL> select * from Employee3160;

       EID PROJECT    S DEADLINE
---------- ---------- - ------------------
	 1 DL	      p 31-AUG-18
	 2 DL2	      d 26-AUG-18
	 3 DL3	      p 12-AUG-18





