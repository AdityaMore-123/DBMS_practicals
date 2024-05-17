delimiter //
create procedure proc_copy()
begin
declare vfinished int default 0;
declare r int;
declare c char(20);
declare n char(20);

declare stud_cursor cursor for select * from stud1;
declare continue handler for NOT FOUND set vfinished=1;

open stud_cursor;
getdata:loop

fetch stud_cursor into r,n,c;

if vfinished=1 then
leave getdata;
end if;

insert into stud2 values(r,n,c);
end loop getdata;

close stud_cursor;
DEALLOCATE stud_cursor;

end;
//
