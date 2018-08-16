create table Student3160(rollno int primary key, name varchar2(100), doa date, branch varchar2(100), percent number, status int);
create table Alumni3160(rollno int primary key, name varchar2(100), doa date, branch varchar2(100), percent number, status int);

create or replace trigger StudentUpdater
	before DELETE ON Student3160
	FOR EACH ROW

BEGIN
	CASE
		WHEN DELETING THEN
			insert into Alumni3160 values(:old.rollno, :old.name, :old.doa, :old.branch, :old.percent, :old.status); 
	END CASE;
END;
