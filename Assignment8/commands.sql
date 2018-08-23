create table Student3160(rollno int primary key, name varchar2(100), doa date, branch varchar2(100), percent number, status int);
create table Alumni3160(rollno int primary key, name varchar2(100), doa date, branch varchar2(100), percent number, status int);

INSERT INTO Student3160 values(1, 'Daksh Pokar', '31-AUG-2018', 'Computer', 91.16, 1);
INSERT INTO Student3160 values(2, 'Aniket Kotalwar', '30-SEP-2018', 'Computer', 41.16, 1);
INSERT INTO Student3160 values(3, 'Pratik Patil', '31-OCT-2018', 'Computer', 96.16, 1);
INSERT INTO Student3160 values(4, 'Mandar Pandey', '30-NOV-2018', 'Computer', 13.16, 1);

#############################################################################################################################

create or replace trigger before_delete_each_row
	BEFORE DELETE ON Student3160
	FOR EACH ROW
BEGIN
	dbms_output.put_line('Executed Before Deletion of each row')
	insert into Alumni3160 values(:old.rollno, :old.name, :old.doa, :old.branch, :old.percent, :old.status); 
END;

#############################################################################################################################

create or replace trigger after_delete_each_row
	AFTER DELETE ON Student3160
	FOR EACH ROW
BEGIN
	dbms_output.put_line('Executed after deletion of each row');
	insert into Alumni3160 values(:old.rollno, :old.name, :old.doa, :old.branch, :old.percent, :old.status); 
END;

#############################################################################################################################

create or replace trigger before_update_each_row
	BEFORE UPDATE ON Student3160
	FOR EACH ROW
BEGIN
	dbms_output.put_line('Executed Before Deletion of each row')
	insert into Alumni3160 values(:old.rollno, :old.name, :old.doa, :old.branch, :old.percent, :old.status); 
END;

#############################################################################################################################

create or replace trigger after_update_each_row
	AFTER UPDATE ON Student3160
	FOR EACH ROW
BEGIN
	dbms_output.put_line('Executed after deletion of each row');
	insert into Alumni3160 values(:old.rollno, :old.name, :old.doa, :old.branch, :old.percent, :old.status); 
END;

#############################################################################################################################

create or replace trigger before_delete_statement_level
	BEFORE DELETE ON Student3160
BEGIN
	dbms_output.put_line('Executed after deletion statement wise');
	insert into Alumni3160 values(:old.rollno, :old.name, :old.doa, :old.branch, :old.percent, :old.status); 
END;

#############################################################################################################################


